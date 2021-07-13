import os
import random
import re
import shutil
import subprocess
from multiprocessing import process

from launcher.CoverageUtil import CoverageUtil

SOURCE_PATH = "../resourses/c_files"
SEA_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea"
SEA_OPTIONS = []
OUTPUT_DIR = "../sandbox"
Z3_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/z3"
Z3_TIMEOUT = 60
SEA_TIMEOUT = 30
GCC = "gcc"
LCOV = "lcov"


def get_cfiles_with_conditions():
    cfiles = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SOURCE_PATH)
                       for f in filenames if os.path.splitext(f)[1] == '.c']
    print('number of .c files {} in "{}"'.format(len(cfiles), SOURCE_PATH))
    cfiles_with_conditions = []
    for f in cfiles:
        if check_conditions(f):
            cfiles_with_conditions.append(f)
    print('number of .c files {} in "{} which sat conditions"'.format(len(cfiles_with_conditions), SOURCE_PATH))
    return cfiles_with_conditions


def check_conditions(f):
    print('check file: {}'.format(f))
    line_cycle_ends = 0
    line_main = get_line(f, "int main(")
    print(line_main)
    if (line_main <= 0):
        return False
    line_cycle_begins = get_line(f, "while")
    print(line_cycle_begins)
    if (line_cycle_begins <= 0 or line_cycle_begins < line_main):
        return False
    # ToDo develop method to find the end of while cycle
    # ToDo add "for" cycle support
    list_of_int_variables = get_int_variables_list(f, line_main, line_cycle_begins)
    if (len(list_of_int_variables) == 0):
        return False
    return True


def get_int_variables_list(f, line_main, line_cycle_begins):
    # Done: int name = value;
    # ToDo int i=0, j=0;
    # ToDo int (*functionPtr)(int,int);
    # ToDo int char variable;
    # ToDo int a=3, b=9, c, N
    int_vars = []
    pattern ="^\s*(?!return |typedef )((\w+\s*\*?\s+)+)+(\w+)(\[\w*\])?(\s*=|;)"
    file = open(f, "r", encoding='ISO-8859-1')
    lines_to_check = file.readlines()[line_main:line_cycle_begins - 1]
    for i, line in enumerate(lines_to_check):
        if(re.search(pattern, line)):
            print("match, index = {}".format(i + line_main))
            int_vars.append(i + line_main)
        else:
            print("not match")
    print(int_vars)
    return int_vars


def get_line(f, exp):
    index = -1
    file = open(f, "r", encoding='ISO-8859-1')
    for i, line in enumerate(file):
        if exp in line:
            index = i
            break
    file.close()
    return index + 1


def move_to_sandbox(files):
    print("========move_to_sandbox===========")
    if not os.path.exists(OUTPUT_DIR):
        os.mkdir(OUTPUT_DIR)
    else:
        print('clear output directory {}'.format(OUTPUT_DIR))
        shutil.rmtree(OUTPUT_DIR)
        os.mkdir(OUTPUT_DIR)
    new_file_list = []
    for f in files:
        # create subdir for each .c file
        print('filename: {}'.format(f))
        basename = os.path.basename(f)
        name_wo_ext = os.path.splitext(basename)[0]
        print(name_wo_ext)
        subdir = OUTPUT_DIR + "/" + name_wo_ext
        print(subdir)
        os.mkdir(subdir)
        # copy file to individual sandbox
        new_file = subdir + "/" + basename
        shutil.copyfile(f, new_file)
        new_file_list.append(new_file)
    return new_file_list


def get_left_splitter(s, eq_index):
    comma_index = 0
    try:
        comma_index = s.rindex(',', 0, eq_index - 1)
    except ValueError:
        pass
    space_index = s.rindex(' ', 0, eq_index - 1)
    return max(space_index, comma_index)


def get_right_splitter(s, start):
    comma_index = len(s)
    try:
        comma_index = s.index(',', start - 1)
    except ValueError:
        pass
    semicolon_index = s.index(';', start - 1)
    return min(semicolon_index, comma_index)

def update_line(s):
    # case:  int x = 10;
    # count # of '='
    # if #= == 1
    # find position of '=' and ';'
    # else
    print(s)
    count = s.count("=")
    print(count)
    if (count == 1):
        eq_index = s.index('=')
        left = s.rindex(' ', 0, eq_index - 1)
        var = s[left: eq_index].strip()
        new_value = str(random.randrange(100000))
        print(var + ' = ' + new_value)
        var_file.write(var + ' = ' + new_value + '\n')
        out = s[:eq_index + 1] + " " + new_value + ';'
        print(out)
        return out
    else:
        # start = s.index('=')
        tmp = 1
        out = s
        for i in range(1, count + 1):
            print(i)
            start = out.index('=', tmp - 1)
            eq_index = out.index('=', start - 1)
            left = get_left_splitter(out, eq_index)
            var = out[left: eq_index].strip()
            new_value = str(random.randrange(100000))
            print(var + ' = ' + new_value)
            var_file.write(var + ' = ' + new_value + '\n')
            splitter = get_right_splitter(out, start)
            tmp = len(out[:eq_index + 1] + " " + new_value)
            out = out[:eq_index + 1] + " " + new_value + out[splitter:]
            print(out)
        return out

def update_line_with_testcase(s):
    # case:  int x = 10;
    # count # of '='
    # if #= == 1
    # find position of '=' and ';'
    # else
    print(s)
    count = s.count("=")
    print(count)
    if (count == 1):
        eq_index = s.index('=')
        left = s.rindex(' ', 0, eq_index - 1)
        var = s[left: eq_index].strip()
        new_value = str(testcase.pop(0))
        print(var + ' = ' + new_value)
        #var_file.write(var + ' = ' + new_value + '\n')
        out = s[:eq_index + 1] + " " + new_value + ';'
        print(out)
        return out
    else:
        # start = s.index('=')
        tmp = 1
        out = s
        for i in range(1, count + 1):
            print(i)
            start = out.index('=', tmp - 1)
            eq_index = out.index('=', start - 1)
            left = get_left_splitter(out, eq_index)
            var = out[left: eq_index].strip()
            new_value = str(testcase.pop(0))
            print(var + ' = ' + new_value)
            #var_file.write(var + ' = ' + new_value + '\n')
            splitter = get_right_splitter(out, start)
            tmp = len(out[:eq_index + 1] + " " + new_value)
            out = out[:eq_index + 1] + " " + new_value + out[splitter:]
            print(out)
        return out

def update_c_file(f):
    vars = os.path.dirname(f) + '/vars.txt'
    global var_file
    var_file = open(vars, "w")
    var_file.writelines([f+'\n'])
    line_main = get_line(f, "int main(")
    line_cycle_begins = get_line(f, "while")
    list_of_int_variables = get_int_variables_list(f, line_main, line_cycle_begins)
    a_file = open(f, "r")
    list_of_lines = a_file.readlines()
    for i in list_of_int_variables:
        list_of_lines[i] = update_line(list_of_lines[i]) + '\n'
    a_file = open(f, "w")
    a_file.writelines(list_of_lines)
    a_file.close()
    var_file.close()


def update_c_file_with_testdata(f):
    line_main = get_line(f, "int main(")
    line_cycle_begins = get_line(f, "while")
    list_of_int_variables = get_int_variables_list(f, line_main, line_cycle_begins)
    a_file = open(f, "r")
    list_of_lines = a_file.readlines()
    for i in list_of_int_variables:
        list_of_lines[i] = update_line_with_testcase(list_of_lines[i]) + '\n'
    a_file = open(f, "w")
    a_file.writelines(list_of_lines)
    a_file.close()


def update_c_files(files):
    print("========update_c_files===========")
    for f in files:
        print("updating file: {}".format(f))
        update_c_file(f)


def command_executer(command, timeout, content):
    print("command: {}".format(str(command)))
    try:
        responce = subprocess.run(command,
                                 stdout=subprocess.PIPE,
                                 stderr=subprocess.PIPE,
                                 timeout=timeout)
        content.append(str(command))
        content.append(responce.returncode)
        content.append(responce.stdout.decode())
        content.append(responce.stderr.decode())
    except subprocess.TimeoutExpired:
        process.kill()
        output, unused_err = process.communicate()
        raise subprocess.TimeoutExpired(process.args, SEA_TIMEOUT, output=output)
        print("[skipped] command {} was executed with error: {}". format(list_to_string(command)), unused_err)


def list_to_string(lst):
    out = ''
    for item in lst:
        out += ' ' + str(item)
    return out

def to_smt(f):
    print('converting .c file to smt, filename: {}'.format(f))
    basename = os.path.basename(f)
    name_wo_ext = os.path.splitext(basename)[0]
    bc_file = os.path.dirname(f) + '/' + name_wo_ext + '.bc'
    command = [SEA_PATH, 'fe', f, '-o', bc_file]
    content = []
    # ToDo: add content to log.txt file
    command_executer(command, SEA_TIMEOUT, content)
    smt_file = os.path.dirname(f) + '/' + name_wo_ext + '.smt2'
    command = [SEA_PATH, '--horn-no-verif','horn', bc_file, '-o', smt_file]
    command_executer(command, SEA_TIMEOUT, content)


def convert_c_to_smt(files):
    print("========convert_c_to_smt===========")
    for f in files:
        to_smt(f)


def gather_coverage_old(new_file):
    #compile //example: gcc -O0 --coverage main.c -o test-coverage
    basename = os.path.basename(new_file)
    exe_file = os.path.dirname(new_file) + "/" + os.path.splitext(basename)[0]
    print(exe_file)
    #'-fprofile-dir', os.path.dirname(new_file),
    command = ['rm', '-f', '*.gcno', '*.gcda']
    content = []
    command_executer(command, 60, content)
    command = [GCC, '-O0', '--coverage', new_file, '-o', exe_file]
    command_executer(command, 60, content)
    command = ['./' + exe_file]
    command_executer(command, 60, content)
    command = ['./' + exe_file, '\"SecondParam for complete branch testing\"']
    command_executer(command, 60, content)
    # example: lcov --capture --rc lcov_branch_coverage=1 --directory .
    # --config-file ./lcovrc --output coverage.info
    command = [LCOV, '--capture', '--rc', 'lcov_branch_coverage=1', '--directory',
               os.path.dirname(new_file), '--config-file', '../lcovrc',
               '--output', os.path.dirname(new_file) + "/coverage.info"]
    command_executer(command, 60, content)


def gather_coverage(new_file):
    #compile //example: gcc -O0 --coverage main.c -o test-coverage
    basename = os.path.basename(new_file)
    exe_file = os.path.dirname(new_file) + "/" + os.path.splitext(basename)[0]
    shutil.copyfile("../Makefile", os.path.dirname(new_file) + "/Makefile")
    save = os.getcwd()
    os.chdir(os.path.dirname(new_file))
    command = ['make']
    content = []
    command_executer(command, 60, content)
    os.chdir(save)


def stub_generate_testcases():
    stub = open("testdata.txt", "r")
    testdata = stub.readlines()
    filename = "/tmp/test"
    for i in testdata:
        print(os.path.isfile(i.strip()))
        if (os.path.isfile(i.strip())):
            testcase_number = 1
            filename = i.strip()
            print("a file: {}".format(filename))
        elif ("break" in i):
            dir = os.path.dirname(filename)
            print("build summery report: {}".format(dir))
            covs = [dir + '/' + str(i) + '/coverage.info' for i in range(1, testcase_number)]
            print(covs)
            result = CoverageUtil.merge(covs)
            #change dir to dir
            save = os.getcwd()
            os.chdir(dir)
            #make new dir summary
            os.mkdir('summary')
            #write file to summary dir
            summary_file = open('summary/summary_coverage.info', "w")
            summary_file.writelines(result)
            summary_file.close()
            #write coverage command:
            #genhtml --branch-coverage --output ./generated-coverage/ coverage.info
            os.chdir('summary')
            command = ['genhtml','--branch-coverage','--output','./generated-coverage/', 'summary_coverage.info']
            command_executer(command, 30, [])
            os.chdir(save)
        else:
            print('a testcase_{}: {}'.format(testcase_number, i))
            #create subdir
            subdir = os.path.dirname(filename) + "/" + str(testcase_number)
            if(os.path.exists(subdir)):
                shutil.rmtree(subdir)
            os.mkdir(subdir)
            #copy file to testcase subdir
            #new_file = subdir + "/" + os.path.basename(filename)
            new_file = subdir + "/Main.c"
            shutil.copyfile(filename, new_file)
            #update c_file
            global testcase
            testcase = i.strip().split(",")
            print(testcase)
            update_c_file_with_testdata(new_file)
            #generate coverage
            gather_coverage(new_file)
            testcase_number += 1


if __name__ == '__main__':
    print('=== TestGen ===')
    # 1. Init Variable (+)
    # 2. Find all .c files for test gen (creatia:
    #       1. Has main method (+)
    #       2. Has while/for cycle (+/-)
    #       3. Has int bofore it and inside(-?)
    files = get_cfiles_with_conditions()
    print(files)
    # 3. Move .c file to the specail sandbox
    files = move_to_sandbox(files)
    print(files)
    # 4. Update int variable to unice value (develop special class/method for this)
    update_c_files(files)
    # 5. Create smt file for updated .c file and store metadate to the specail log
    convert_c_to_smt(files)
    # 6. Implemented by Wesley Harris, Grigory Fedyukovich - provides set of test values
    # 7. Generate .c file for each of this values
    # 8. Compile this .c and run it with coverage
    stub_generate_testcases()
    # 9. Merge all coverage
    # 10 Build Report like ReportBuilder.html_report