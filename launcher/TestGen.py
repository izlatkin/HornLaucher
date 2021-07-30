import os
import re
import shutil
import subprocess
import time
from datetime import datetime
from multiprocessing import process
from CoverageUtil import CoverageUtil

SOURCE_PATH = "../resourses/c_files"
SEA_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea"
SANDBOX_DIR = "../sandbox"
SEA_TIMEOUT = 30
GCC = "gcc"
LCOV = "lcov"
PYTHONHASHSEED = 0

""" Return list of files, which satisfy the condition (see def check_conditions)
"""


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


""" Return False/True if file satisfies the condition 
- has main method
- has input values __VERIFIER_nondet_int
- has while cycle
"""


def check_conditions(f):
    print('check file: {}'.format(f))
    line_main = get_line(f, "int main(")
    if line_main <= 0:
        return False
    line_cycle_begins = get_line(f, "while")
    if line_cycle_begins <= 0 or line_cycle_begins < line_main:
        return False
    # ToDo add "for" cycle support
    verifier_nondet_int = get_line(f, "__VERIFIER_nondet_int", "extern int __VERIFIER_nondet_int()")
    if verifier_nondet_int == 0:
        print("file: {} doesn't have input values (__VERIFIER_nondet_int) ".format(f))
        return False
    list_of_int_variables = get_nondet_lines(f, line_main)
    if len(list_of_int_variables) == 0:
        return False
    return True


""" Return list of line numbers, which contain __VERIFIER_nondet_int

line number start from 1
"""


def get_nondet_lines(f, line_main):
    int_vars = []
    file = open(f, "r", encoding='ISO-8859-1')
    lines_to_check = file.readlines()[line_main:]
    pattern = "__VERIFIER_nondet_int"
    for i, line in enumerate(lines_to_check):
        if re.search(pattern, line):
            int_vars.append(i + line_main)
    return int_vars


""" Return list of line numbers, which contain __VERIFIER_nondet_int 
and do NOT contain exclude_exp

line number start from 1
"""


def get_line(f, exp, exclude_exp=None):
    index = -1
    file = open(f, "r", encoding='ISO-8859-1')
    for i, line in enumerate(file):
        if exclude_exp is None:
            if exp in line:
                index = i
                break
        else:
            if exp in line and exclude_exp not in line:
                index = i
                break
    file.close()
    return index + 1


""" Copy files to the separate sandbox (OUTPUT_DIR) location
"""


def move_to_sandbox(files):
    print("========move_to_sandbox===========")
    if not os.path.exists(SANDBOX_DIR):
        os.mkdir(SANDBOX_DIR)
    else:
        print('clear output directory {}'.format(SANDBOX_DIR))
        shutil.rmtree(SANDBOX_DIR)
        os.mkdir(SANDBOX_DIR)
    new_file_list = []
    for f in files:
        # create subdir for each .c file
        basename = os.path.basename(f)
        name_wo_ext = os.path.splitext(basename)[0]
        subdir = SANDBOX_DIR + "/" + name_wo_ext
        os.mkdir(subdir)
        # copy file to individual sandbox
        new_file = subdir + "/" + basename
        shutil.copyfile(f, new_file)
        new_file_list.append(new_file)
    return new_file_list


""" Return 8 digit of hash of input value
"""


def get_digit_hash(s):
    # ToDo: replace to random when testgen will be ready.
    # Now it is needed for stub, the value should be constant
    # return abs(hash(s)) % (10 ** 8)
    sum = 0
    for i, c in enumerate(s):
        sum += i * ord(c)
    return sum % (10 ** 8)


""" Updates input line:
replace all __VERIFIER_nondet_int() to nondet_XXXX()
"""


def update_line(s, line_number):
    tmp_line = s
    verifier_nondet_int = '__VERIFIER_nondet_int()'
    while (verifier_nondet_int in tmp_line):
        eq_index = tmp_line.index(verifier_nondet_int)
        nondet_num = get_digit_hash(tmp_line[:eq_index] + str(line_number))
        nondet_numbers.append(nondet_num)
        new_value = "nondet_{}()".format(nondet_num)
        tmp_line = tmp_line.replace(verifier_nondet_int, new_value, 1)
    return tmp_line


""" creates {PATH_OF_C_FILE}/testgen.h file
"""


def generate_testgen_header(f, num):
    fn = os.path.dirname(f) + '/testgen.h'
    file = open(fn, "w")
    # lines_to_write = ['int nondet(){return 42;}\n']
    lines_to_write = ['extern int nondet(void);\n']
    for i in num:
        lines_to_write.append('int nondet_{}(){{\n return {} + nondet();\n}} \n'.format(i, i))
    lines_to_write.append('\n')
    file.writelines(lines_to_write)
    file.close()


""" creates {PATH_OF_C_FILE}/testgen-template.h file () template for testing
"""


def generate_testgen_template_header(f, num):
    fn = os.path.dirname(f) + '/testgen-template.h'
    file = open(fn, "w")
    lines_to_write = []
    for i in num:
        lines_to_write.append("int cnt_{} = 0;\n".format(i))
    lines_to_write.append('\n')
    for i in num:
        lines_to_write.append("static const int inp_{}[] = {{  }};\n".format(i))
    lines_to_write.append('\n')
    for i in num:
        lines_to_write.append('const int nondet_{}(){{\n return inp_{}[cnt_{}++];\n}} \n'.format(i, i, i))
    lines_to_write.append('\n')
    file.writelines(lines_to_write)
    file.close()


""" updates C_FILE (input) and
 creates testgen.h - is needed for encoding to smt2
 creates vars.txt, which contains input values for further test generation
 creates testgen-template.h - is needed for testing
 
"""


def update_c_file(f):
    vars = os.path.dirname(f) + '/vars.txt'
    global var_file, nondet_numbers
    nondet_numbers = []
    var_file = open(vars, "w")
    var_file.writelines([f + '\n'])
    line_main = get_line(f, "int main(")
    list_of_int_variables = get_nondet_lines(f, line_main)
    a_file = open(f, "r")
    list_of_lines = a_file.readlines()
    for i in list_of_int_variables:
        list_of_lines[i] = update_line(list_of_lines[i], i)
    a_file = open(f, "w")
    a_file.writelines(list_of_lines)
    a_file.close()
    var_file.writelines(','.join(str(e) for e in nondet_numbers))
    var_file.close()
    # generate testgen-template.h and testgen.h
    generate_testgen_header(f, nondet_numbers)
    generate_testgen_template_header(f, nondet_numbers)


""" updates all list of file
"""


def update_c_files(files):
    print("========update_c_files===========")
    for f in files:
        print("updating file: {}".format(f))
        update_c_file(f)


""" Executes command line command, terminates command after timeout

"""


def command_executer(command, timeout, file):
    print("command: {}".format(str(command)))
    try:
        responce = subprocess.run(command,
                                  stdout=subprocess.PIPE,
                                  stderr=subprocess.PIPE,
                                  timeout=timeout)
        logger(file, command)
        logger(file, responce.returncode)
        logger(file, responce.stdout.decode())
        logger(file, responce.stderr.decode())
    except subprocess.TimeoutExpired:
        process.kill()
        output, unused_err = process.communicate()
        print("[skipped] command {} was executed with error: {}".format(list_to_string(command), unused_err))
        logger(file, command)
        logger(file, output )
        logger(file, unused_err)
        raise subprocess.TimeoutExpired(process.args, SEA_TIMEOUT, output=output)


""" converts list ot string with spaces"""


def list_to_string(lst):
    return ' '.join([str(e) for e in lst])


""" write content to the file"""


def logger(file, content):
    f = open(file, 'a')
    now = datetime.now()
    time = now.strftime("%H:%M:%S:%f")
    t = str('[{}]'.format(time))
    if type(content) is list:
        f.writelines([t] + content + ['\n'])
    if type(content) is str:
        f.write(t + '\n' + content + '\n')


""" Runs SeaHorn command on local installed SeaHorn

"""


def to_smt(f):
    print('converting .c file to smt, filename: {}'.format(f))
    basename = os.path.basename(f)
    name_wo_ext = os.path.splitext(basename)[0]
    bc_file = os.path.dirname(f) + '/' + name_wo_ext + '.bc'
    logfile = os.path.dirname(f) + '/log.txt'
    command = [SEA_PATH, 'fe', f, '-o', bc_file]
    content = []
    # ToDo: add content to log.txt file
    command_executer(command, SEA_TIMEOUT, logfile)
    smt_file = os.path.dirname(f) + '/' + name_wo_ext + '.smt2'
    command = [SEA_PATH, '--horn-no-verif', 'horn', bc_file, '-o', smt_file]
    command_executer(command, SEA_TIMEOUT, logfile)


""" Runs docker commands for file, use script smt_run.sh

"""


def to_smt_docker(f):
    print('converting .c file to smt, filename: {}'.format(f))
    basename = os.path.basename(f)
    name_wo_ext = os.path.splitext(basename)[0]
    ff = '/app/' + name_wo_ext + '/' + name_wo_ext + '.c'
    smt_file = '/app/' + name_wo_ext + '/' + name_wo_ext + '.smt2'
    log_file = SANDBOX_DIR + '/' + name_wo_ext + '/log.txt'
    docker_image_name = str(subprocess.check_output(
        'docker ps --format "table {{.Names}}" -f ancestor=seahorn/seahorn-llvm10:nightly | tail -1',
        shell=True).strip())[2:-1]
    docker_sea_command = ['cd /app/{};'.format(name_wo_ext), '../smt_run.sh', ff, smt_file]
    docker_command = ['docker', 'exec', docker_image_name, 'bash', '-c', list_to_string(docker_sea_command)]
    print(docker_command)
    # ToDo: add content to log.txt file
    try:
        #output = subprocess.check_output(docker_command)
        command_executer(docker_command, SEA_TIMEOUT, os.path.dirname(f) + '/log.txt')
        #logger(os.path.dirname(f) + '/log.txt', [list_to_string(docker_command), str(output)])
    except subprocess.CalledProcessError as e:
        logger(os.path.dirname(f) + '/log.txt', [list_to_string(docker_command), "FAIL"])


""" Runs docker commands for each file, which is located in SANDBOX

"""


def convert_c_to_smt(files):
    # copy script
    script_file = SANDBOX_DIR + '/smt_run.sh'
    shutil.copyfile('../bash_scripts/smt_run.sh', script_file)
    os.chmod(script_file, 0o777)
    print("========convert_c_to_smt===========")
    for f in files:
        to_smt_docker(f)
        #to_smt(f)


""" runs script (Makefile) to Compile, Execute, gather coverage and generate coverage reports

"""


def gather_coverage(new_file):
    shutil.copyfile("../Makefile", os.path.dirname(new_file) + "/Makefile")
    save = os.getcwd()
    os.chdir(os.path.dirname(new_file))
    command = ['make']
    command_executer(command, 60, '../log.txt')
    os.chdir(save)


""" stub method
- Read prepared tests cases
- Compile, Execute and generate coverage reports

"""


def stub_generate_testcases():
    stub_path = "../stub"
    lod = os.listdir(stub_path)
    for sf in lod:
        print("Test Run for: {}".format(sf))
        test_header_list = [os.path.join(dp, f) for dp, dn, filenames in os.walk(stub_path + '/' + sf)
                            for f in filenames if os.path.splitext(f)[1] == '.h']
        print(test_header_list)
        for i, test in enumerate(test_header_list):
            print('testcase_{}: {}'.format(i, sf))
            # create subdir
            subdir = SANDBOX_DIR + "/" + sf + "/" + str(i + 1)
            if (os.path.exists(subdir)):
                shutil.rmtree(subdir)
            os.mkdir(subdir)
            # copy c file
            new_c_file = subdir + "/Main.c"
            shutil.copyfile(SANDBOX_DIR + "/" + sf + "/" + sf + '.c', new_c_file)
            # copy h file
            new_h_file = subdir + "/testgen.h"
            shutil.copyfile(test, new_h_file)
            gather_coverage(new_c_file)
        # merge coverage for all runs in test_header_list
        dir = SANDBOX_DIR + '/' + sf
        print("build summery report: {}".format(dir))
        # covs = [SANDBOX_DIR + '/' + sf + '/' + str(i) + '/coverage.info' for i in range(1, 1 + len(test_header_list))]
        covs = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SANDBOX_DIR + '/' + sf + '/')
                for f in filenames if os.path.splitext(f)[1] == '.info']
        if covs:
            result = CoverageUtil.merge_coverage_for_test_runs(covs)
            # change dir to dir
            save = os.getcwd()
            os.chdir(dir)
            # make new dir summary
            os.mkdir('summary')
            # write file to summary dir
            summary_file = open('summary/summary_coverage.info', "w")
            summary_file.writelines(result)
            summary_file.close()
            # write coverage command:
            # genhtml --branch-coverage --output ./generated-coverage/ coverage.info
            os.chdir('summary')
            command = ['genhtml', '--branch-coverage', 'summary_coverage.info']
            command_executer(command, 30, 'log.txt')
            os.chdir(save)


""" generates final report for all .c file based on summary report of each .c file
"""


def summary_coverage_report():
    files = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SANDBOX_DIR)
             for f in filenames if os.path.splitext(f)[0] == 'summary_coverage']
    summary_dir = SANDBOX_DIR + '/final_coverage_report'
    os.mkdir(summary_dir)
    final_coverage_file_name = "final_coverage.info"
    summary_file = open(summary_dir + '/' + final_coverage_file_name, "w")
    summary_file.writelines(CoverageUtil.merge_summary_reports(files))
    summary_file.close()
    save = os.getcwd()
    os.chdir(summary_dir)
    command = ['genhtml', '--branch-coverage', '--output', '.', final_coverage_file_name]
    command_executer(command, 30, 'log.txt')
    os.chdir(save)


if __name__ == '__main__':
    print('=== TestGen ===')
    # 1. Init Variable (+)
    # 2. Find all .c files for test gen (creatia:
    #       1. Has main method (+)
    #       2. Has while/for cycle (+/-)
    #       3. Has __VERIFIER_nondet_uint()
    files = get_cfiles_with_conditions()
    [print(files[i]) for i in range(0, min(len(files), 10))]
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
    summary_coverage_report()
    # 10 Build Report like ReportBuilder.html_report
