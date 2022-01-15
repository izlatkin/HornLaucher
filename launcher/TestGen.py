import argparse
import concurrent
import glob
import os
import re
import shutil
import subprocess
import time
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime
from CoverageUtil import CoverageUtil
import ReportBuilder
from multiprocessing.pool import ThreadPool


def init():
    global SOURCE_PATH, SEA_PATH, SANDBOX_DIR, SEA_TIMEOUT, TG_TOOL_PATH, TG_TIMEOUT, COVERAGE_TIMEOUT, PATTERN, COVERAGE
    SOURCE_PATH = "/Users/ilyazlatkin/PycharmProjects/benckmarks/loops"
    SEA_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea"
    SANDBOX_DIR = "../sandbox"
    SEA_TIMEOUT = 60
    TG_TOOL_PATH = "/Users/ilyazlatkin/PycharmProjects/aeval/build/tools/tg/tg"
    #TG_TOOL_PATH = "/home/fmfsu/Dev/aeval/build/tools/tg/tg"
    TG_TIMEOUT = 60
    COVERAGE_TIMEOUT = 20
    PYTHONHASHSEED = 0
    COVERAGE = True
    PATTERN = {"__VERIFIER_nondet_int()": "int",
               '__VERIFIER_nondet_uint()': "unsigned int",
               "__VERIFIER_nondet_char()": "char",
               "__VERIFIER_nondet_uchar()": "unsigned char",
               "__VERIFIER_nondet_bool()": "bool",
               "__VERIFIER_nondet_float()": "float",
               "__VERIFIER_nondet_long()": "long int",
               "__VERIFIER_nondet_ulong()": "unsigned long int",
               "__VERIFIER_nondet_ushort()": "unsigned short"}


""" Return list of files, which satisfy the condition (see def check_conditions)
"""


def get_cfiles_with_conditions():
    cfiles = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SOURCE_PATH)
              for f in filenames if os.path.splitext(f)[1] == '.c']
    print('number of .c files {} in "{}"'.format(len(cfiles), SOURCE_PATH))
    cfiles_with_conditions = []
    cfiles_wo_nondet = []
    for f in cfiles:
        if check_conditions(f):
            cfiles_with_conditions.append(f)
        else:
            cfiles_wo_nondet.append(f)
    print('number of .c files {} in "{} which sat conditions"'.format(len(cfiles_with_conditions), SOURCE_PATH))
    print('number of .c files {} in "{} which DON\'T sat conditions"'.format(len(cfiles_wo_nondet), SOURCE_PATH))
    for f in cfiles_wo_nondet:
        print(f)
    # return cfiles_with_conditions
    return (cfiles_with_conditions, cfiles_wo_nondet)


""" Return False/True if file satisfies the condition 
- has main method
- has input values __VERIFIER_nondet_int
- has while cycle
"""


def check_conditions(f):
    print('check file: {}'.format(f))
    line_main = get_line(f, "int main(")
    if line_main == 0:
        line_main = get_line(f, "void main(")
    if line_main == 0:
        line_main = get_line(f, "int  main(")
    if line_main == 0:
        line_main = get_line(f, "int main (")
    if line_main <= 0:
        return False
    line_cycle_begins = get_line(f, "while")
    # if line_cycle_begins <= 0 or line_cycle_begins < line_main:
    #     return False
    # ToDo add "for" cycle support
    verifier_nondet_int = get_line(f, "__VERIFIER_nondet_uint", "extern int __VERIFIER_nondet_int()")
    verifier_nondet_uint = get_line(f, "__VERIFIER_nondet_int", "extern unsigned int __VERIFIER_nondet_int()")
    verifier_nondet_uchar = get_line(f, "__VERIFIER_nondet_uchar", "extern unsigned char __VERIFIER_nondet_uchar()")
    verifier_nondet_char = get_line(f, "__VERIFIER_nondet_char", "extern char __VERIFIER_nondet_char()")
    verifier_nondet_bool = get_line(f, "__VERIFIER_nondet_bool()", "extern bool __VERIFIER_nondet_uchar()")
    verifier_nondet_long = get_line(f, "__VERIFIER_nondet_long()", "extern long __VERIFIER_nondet_long(")
    verifier_nondet_ulong = get_line(f, "__VERIFIER_nondet_long()", "extern unsigned long __VERIFIER_nondet_ulong(")
    verifier_nondet_ushort = get_line(f, "__VERIFIER_nondet_ushort()", "extern short __VERIFIER_nondet_ushort(")
    if verifier_nondet_int == 0 \
            and verifier_nondet_uint == 0 \
            and verifier_nondet_uchar == 0 \
            and verifier_nondet_char == 0 \
            and verifier_nondet_bool == 0 \
            and verifier_nondet_long == 0 \
            and verifier_nondet_ulong == 0 \
            and verifier_nondet_ushort == 0:
        print("file: {} doesn't have input values (__VERIFIER_nondet_int) ".format(f))
        return False
    # list_of_int_variables = get_nondet_lines(f, line_main)
    list_of_int_variables = get_nondet_lines(f, 0)
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
    # pattern = "__VERIFIER_nondet_int"
    patterns = PATTERN.keys()
    for i, line in enumerate(lines_to_check):
        for pattern in patterns:
            if pattern in line and 'extern' not in line and 'void' not in line \
                    and (PATTERN[pattern] + " " + pattern) not in line:  # re.search(pattern, line):
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


def add_header(new_file):
    line_1 = '#include "testgen.h"'
    line_2 = '#include <stdlib.h>'
    with open(new_file, 'r+') as f:
        content = f.readlines()
        flag = False
        out = []
        for l in content:
            if line_1 in l or line_2 in l:
                flag = True
            tmp = l
            if 'reach_error()' in tmp and 'void' not in tmp:
                tmp = tmp.replace('reach_error()', '/*reach_error()*/')
            if 'abort()' in tmp:
                tmp = tmp.replace('abort()', 'exit(0)')
            out.append(tmp)
            f.seek(0, 0)
        if not flag:
            f.writelines([line_1.rstrip('\r\n') + '\n', line_2.rstrip('\r\n') + '\n'] + out)
        else:
            f.writelines([line_1.rstrip('\r\n') + '\n'] + out)
        f.close()


def replace_reach_error(new_file):
    with open(new_file, 'r+') as f:
        content = f.readlines()
        out = []
        for l in content:
            tmp = l
            if 'reach_error()' in tmp and 'void' not in tmp:
                tmp = tmp.replace('reach_error()', '/*reach_error()*/')
            if 'abort()' in tmp:
                tmp = tmp.replace('abort()', 'return')
            out.append(tmp)
            f.seek(0, 0)
        f.writelines(out)
        f.close()


def add_header_with_pthread(file):
    # '#include "testgen.h"', '#include <stdlib.h>'
    pre = ['#include <pthread.h>', '#include <unistd.h>', '#include <time.h>', '#include <printf.h>']
    post_lines = ['\n ', 'int main(){\n', '    pthread_t tid; pthread_create(&tid, 0, main_oririnal, 0);\n',
                  '    time_t start = time(0); time_t seconds = 10; time_t endwait = start + seconds;',
                  '    while ((start < endwait) & (pthread_kill(tid, 0) == 0)){ sleep(1); start = time(0); }\n',
                  '    pthread_cancel(tid); printf("timeout termination "); return 0; }']
    with open(file, 'r+') as f:
        content = f.readlines()
        out = []
        stripted_content = [l.rstrip('\r\n') for l in content]
        pre_lines = [p.rstrip('\r\n') + '\n' for p in pre if p not in stripted_content]
        for l in content:
            tmp = l
            if 'int main(' in tmp:
                tmp = tmp.replace('int main(', 'int main_oririnal(')
            if 'int  main(' in tmp:
                tmp = tmp.replace('int  main(', 'int main_oririnal(')
            if 'int main (' in tmp:
                tmp = tmp.replace('int main (', 'int main_oririnal(')
            out.append(tmp)
        f.seek(0, 0)
        f.writelines(pre_lines + out + post_lines)
        f.close()


""" Copy files to the separate sandbox (OUTPUT_DIR) location
"""


def clean_dir(dir):
    for root, dirs, files in os.walk(dir):
        for f in files:
            os.unlink(os.path.join(root, f))
        for d in dirs:
            shutil.rmtree(os.path.join(root, d))


def prepare_dir(dir):
    if not os.path.exists(dir):
        os.mkdir(dir)
    else:
        print('clear output directory {}'.format(dir))
        # remove dir
        os_info = os.uname()
        if (os_info.sysname != 'Darwin'):
            clean_dir(dir)
        else:
            shutil.rmtree(dir)
            os.mkdir(dir)


def move_to_sandbox(files, add_h, was_cleaned):
    print("========move_to_sandbox===========")
    if not was_cleaned:
        prepare_dir(SANDBOX_DIR)
    shutil.copyfile("../Makefile", SANDBOX_DIR + "/Makefile")
    shutil.copyfile("../lcovrc", SANDBOX_DIR + "/lcovrc")
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
        # include "testgen.h" if needed
        if add_h:
            add_header(new_file)
        if not os.path.isfile(subdir + "/log.txt"):
            new_file_list.append(new_file)
    return new_file_list


def move_to_sandbox_and_rerun(files):
    print("========move_to_sandbox===========")
    new_file_list = []
    for f in files:
        # create subdir for each .c file
        basename = os.path.basename(f)
        name_wo_ext = os.path.splitext(basename)[0]
        subdir = SANDBOX_DIR + "/" + name_wo_ext
        # copy file to individual sandbox
        new_file = subdir + "/" + basename
        add_header(new_file)
        if not os.path.isfile(subdir + "/log.txt"):
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
    global function_dictionary
    tmp_line = s
    for p in PATTERN.keys():
        # verifier_nondet_int = '__VERIFIER_nondet_int()'
        verifier_nondet = p
        while (verifier_nondet in tmp_line):
            eq_index = tmp_line.index(verifier_nondet)
            nondet_num = get_digit_hash(tmp_line[:eq_index] + str(line_number))
            while (nondet_num in function_dictionary):
                nondet_num += 11;  # plus any number
            function_dictionary[nondet_num] = verifier_nondet
            nondet_numbers.append(nondet_num)
            new_value = "nondet_{}()".format(nondet_num)
            tmp_line = tmp_line.replace(verifier_nondet, new_value, 1)
    return tmp_line


""" creates {PATH_OF_C_FILE}/testgen.h file
"""


def generate_testgen_header(f, num):
    fn = os.path.dirname(f) + '/testgen.h'
    file = open(fn, "w")
    # lines_to_write = ['int nondet(){return 42;}\n']
    lines_to_write = ['#include <stdbool.h>\n', 'extern int nondet(void);\n']
    for i in num:
        #method_type = PATTERN[function_dictionary[i]]
        #lines_to_write.append('{} nondet_{}(){{\n return {} + nondet();\n}} \n'.format(method_type, i, i))
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
    list_of_int_variables = get_nondet_lines(f, 0)  # get_nondet_lines(f, line_main)
    a_file = open(f, "r")
    list_of_lines = a_file.readlines()
    for i in list_of_int_variables:
        list_of_lines[i] = update_line(list_of_lines[i], i)
    a_file.close()
    a_file = open(f, "w")
    a_file.writelines(list_of_lines)
    a_file.close()
    # copy new file for futher updates with pthread
    basename = os.path.basename(f)
    name_wo_ext = os.path.splitext(basename)[0]
    new_file_with_pthread = os.path.dirname(f) + "/" + name_wo_ext + '_with_pthread.c'
    shutil.copyfile(f, new_file_with_pthread)
    add_header_with_pthread(new_file_with_pthread)
    var_file.writelines(','.join(str(e) for e in nondet_numbers))
    var_file.close()
    # generate testgen-template.h and testgen.h
    generate_testgen_header(f, nondet_numbers)
    generate_testgen_template_header(f, nondet_numbers)
    return nondet_numbers


""" Executes command line command, terminates command after timeout

"""


def command_executer(command, timeout, file):
    print("command: {}".format(str(command)))
    logger(file, list_to_string(command))
    with subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE) as process:
        try:
            stdout, stderr = process.communicate(input, timeout=timeout)
        except subprocess.TimeoutExpired:
            process.kill()
            mesage = 'command: {} has been killed after timeout {}'.format(list_to_string(command), timeout)
            print(mesage)
            stdout, stderr = process.communicate()
            logger(file, str(stdout))
            logger(file, str(stderr))
            # raise subprocess.TimeoutExpired(
            #     process.args, timeout, output=stdout, stderr=stderr,
            # )
        except Exception:
            process.kill()
            process.wait()
            mesage = 'command: {} has been killed after timeout {}'.format(list_to_string(command), timeout)
            print(mesage)
            logger(file, mesage)
            raise
        retcode = process.poll()
        # logger(file, str(subprocess.CompletedProcess(process.args, retcode, stdout, stderr)))
        logger(file, [process.args, retcode, stdout, stderr])
        if retcode and retcode != 254:
            return False
        else:
            return True


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
        f.writelines([t] + ['\n'])
        for c in content:
            if type(c) is list:
                f.writelines([' '.join(c)] + ['\n'])
            elif type(c) is bytes:
                cs = str(c)
                list_to_print = [f + '\n' for f in cs.split('\\n')]
                f.writelines(list_to_print + ['\n'])
            else:
                f.writelines([str(c)] + ['\n'])
    elif type(content) is str:
        f.write(t + '\n' + content + '\n')
    f.close()


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
    # docker_image_name = "unruffled_lederberg"
    docker_sea_command = ['cd /app/{};'.format(name_wo_ext), '../smt_run.sh', ff, smt_file]
    docker_command = ['docker', 'exec', docker_image_name, 'bash', '-c', list_to_string(docker_sea_command)]
    print(docker_command)
    try:
        # output = subprocess.check_output(docker_command)
        command_executer(docker_command, SEA_TIMEOUT, os.path.dirname(f) + '/log.txt')
        # logger(os.path.dirname(f) + '/log.txt', [list_to_string(docker_command), str(output)])
    except subprocess.CalledProcessError as e:
        logger(os.path.dirname(f) + '/log.txt', [list_to_string(docker_command), "FAIL"])


""" runs script (Makefile) to Compile, Execute, gather coverage and generate coverage reports

"""


def gather_coverage_backup(new_file):
    shutil.copyfile("../../Makefile", os.path.dirname(new_file) + "/Makefile")
    save = os.getcwd()
    os.chdir(os.path.dirname(new_file))
    command = ['make']
    command_executer(command, COVERAGE_TIMEOUT, '../log.txt')
    os.chdir(save)


def gather_coverage(new_file):
    shutil.copyfile("../Makefile", os.path.dirname(new_file) + "/Makefile")
    save = os.getcwd()
    os.chdir(os.path.dirname(new_file))
    flag = True
    command = ['rm', '-rf', 'main.gc*', 'main.o', 'coverage.info', 'test-coverage', 'generated-coverage']
    if flag and not command_executer(command, COVERAGE_TIMEOUT, '../log.txt'):
        flag = False
    command = ['gcc', '-pthread', '-O0', '--coverage', 'main.c', '-o', 'test-coverage']
    if flag and not command_executer(command, COVERAGE_TIMEOUT, '../log.txt'):
        os.chdir(save)
        return False
    command = ['./test-coverage']
    command_executer(command, COVERAGE_TIMEOUT, '../log.txt')  # test app can return any code
    if not os.path.isfile('main.gcda'):
        flag = False
    command = ['lcov', '--capture', '--rc', 'lcov_branch_coverage=1', '--directory', '.', '--config-file',
               '../../lcovrc', '--output', 'coverage.info']
    if flag and not command_executer(command, COVERAGE_TIMEOUT, '../log.txt'):
        flag = False
    command = ['rm', '-rf', '/tmp/coverage/']  # ToDo not sure that this step is needed, recheck
    if flag and not command_executer(command, COVERAGE_TIMEOUT, '../log.txt'):
        flag = False
    command = ['genhtml', '--branch-coverage', '--output', './generated-coverage/', 'coverage.info']
    if flag and not command_executer(command, COVERAGE_TIMEOUT, '../log.txt'):
        flag = False
    os.chdir(save)
    return flag


""" add function definition for coverage gathering
"""


def update_header_file(filename):
    global function_dictionary, PATTERN
    lines = ['#include <stdio.h>\n', '#include <stdbool.h>\n',
             'void __assert_fail(const char * a, const char * b, unsigned int c, const char * d) {};\n']

    fr = open(filename, 'r+')
    content = fr.readlines()

    out = []
    keys = function_dictionary.keys()
    for c in content:
        flag = False
        for k in keys:
            if 'int nondet_{}()'.format(k) in c:
                new_value = PATTERN[function_dictionary[k]]
                tmp = c.replace('int nondet_', new_value + ' nondet_')
                out.append(tmp)
                flag = True
        if not flag:
            out.append(c)
    out = lines + out
    fr.close()
    fw = open(filename, 'w')
    fw.writelines(out)
    fw.close()


def check_and_update_h_file(new_h_file, keys):
    file = open(new_h_file, "r")
    lines = file.readlines()
    extra_lines = []
    for k in keys:  # ToDo update method to make it faster
        flag = False
        for l in lines:
            if str(k) in l:
                flag = True
        if not flag:
            extra_lines.append('const int nondet_{}(){{return rand();}}\n'.format(k))
    file.close()
    if len(extra_lines) > 0:
        file = open(new_h_file, "w")
        file.writelines(lines + extra_lines)
        file.close()


""" run all testcases generated by tg tool
- move filename.c to <testcase_#>/main.c
- copy filename_x.h to <testcase_#>/testgen.h
- run coverage for each
- build summary report for all testcases

"""


def run_generated_testcases(f, keys):
    print("Test Runs for: {}".format(f))
    build_path = os.path.dirname(f)
    basename = os.path.basename(f)
    sf = os.path.splitext(basename)[0]
    test_header_list = [os.path.join(dp, f) for dp, dn, filenames in os.walk('.')
                        for f in filenames if (os.path.splitext(f)[1] == '.h'
                                               and os.path.splitext(f)[0] not in ['testgen', 'testgen-template'])]
    print(test_header_list)
    for i, test in enumerate(sorted(test_header_list)):
        print('testcase_{}: {}'.format(i, sf))
        # create subdir
        subdir = str(i + 1)
        if (os.path.exists(subdir)):
            shutil.rmtree(subdir)
        os.mkdir(subdir)
        # copy c file
        new_c_file = subdir + "/main.c"
        # replace original .c-file to c-file with pthread and timeouts
        shutil.copyfile(sf + '_with_pthread.c', new_c_file)
        # shutil.copyfile(sf + '.c', new_c_file)
        # copy h file
        new_h_file = subdir + "/testgen.h"
        shutil.move(test, new_h_file)
        # add missings methods to new_h_file
        # ToDo: https://github.com/izlatkin/HornLauncher/issues/12
        # check_and_update_h_file(new_h_file, keys)
        # add extra lines, like assert_fail
        update_header_file(new_h_file)
        gather_coverage(new_c_file)
        # merge coverage for all runs in test_header_list
    # dir = SANDBOX_DIR + '/' + sf
    dir = '.'
    print("build summery report: {}".format(dir))
    covs = [os.path.join(dp, f) for dp, dn, filenames in os.walk(dir)
            for f in filenames if os.path.splitext(f)[1] == '.info']
    print("build summery report: {}".format(covs))
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
    summary_dir_wc_headers = SANDBOX_DIR + '/final_coverage_report_wc_header'
    os.mkdir(summary_dir_wc_headers)
    final_coverage_wo_headers_files_name = "final_coverage_wo_headers.info"
    summary_file = open(summary_dir_wc_headers + '/' + final_coverage_wo_headers_files_name, "w")
    summary_file.writelines(CoverageUtil.remove_headers_coverage(summary_dir + '/' + final_coverage_file_name))
    summary_file.close()
    os.chdir(summary_dir_wc_headers)
    command = ['genhtml', '--branch-coverage', '--output', '.', final_coverage_wo_headers_files_name]
    command_executer(command, 30, 'log.txt')
    os.chdir(save)


def header_testgen(f, keys):
    global COVERAGE
    print('=========Test Gen Step =============')
    print("generating headers for file: {}".format(f))
    # check if smt exist, if not skip
    basename = os.path.basename(f)
    name_wo_ext = os.path.splitext(basename)[0]
    dir = os.path.dirname(f)
    smt_file = dir + '/' + name_wo_ext + '.smt2'
    if (os.path.isfile(smt_file)):
        print('smt file {} exist, perform testgen step'.format(smt_file))
        save = os.getcwd()
        os.chdir(dir)
        command = [TG_TOOL_PATH,'--inv-mode', '0', '--no-term', '--keys',
                   ','.join([str(k) for k in keys]), name_wo_ext + '.smt2']
        #command = [TG_TOOL_PATH, '--inv-mode', '0', '--no-term', '--keys', ','.join([str(k) for k in keys]),
        print(list_to_string(command))
        try:
            command_executer(command, TG_TIMEOUT, 'log.txt')
            if COVERAGE:
                run_generated_testcases(basename, keys)
        except subprocess.CalledProcessError as e:
            logger('log.txt', [list_to_string(command), "FAIL"])
        os.chdir(save)
    else:
        print('smt file doesn\'t {} exist, skip testgen step'.format(smt_file))


def simple_run(file_wo_nondet):
    # cfiles = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SOURCE_PATH)
    #           for f in filenames if os.path.splitext(f)[1] == '.c']
    for f in file_wo_nondet:
        print("gathering coverage for {}".format(f))
        start_time = time.time()
        replace_reach_error(f)
        dir_name = os.path.dirname(f)
        file_name = os.path.basename(f)
        save = os.getcwd()
        os.chdir(dir_name)
        shutil.copy(file_name, "main.c")
        add_header_with_pthread("main.c")
        command = ['touch', 'testgen.h']
        command_executer(command, COVERAGE_TIMEOUT, 'log.txt')
        command = ['gcc', '-pthread', '-O0', '--coverage', 'main.c', '-o', 'test-coverage']
        if command_executer(command, COVERAGE_TIMEOUT, 'log.txt'):
            command = ['./test-coverage']
            command_executer(command, COVERAGE_TIMEOUT, 'log.txt')
            command = ['lcov', '--capture', '--rc', 'lcov_branch_coverage=1', '--directory', '.', '--config-file',
                       '../lcovrc', '--output', 'coverage.info']
            command_executer(command, COVERAGE_TIMEOUT, 'log.txt')
            command = ['genhtml', '--branch-coverage', '--output', './summary', 'coverage.info']
            command_executer(command, COVERAGE_TIMEOUT, 'log.txt')
        # extra attempt
        if not os.path.isfile("./summary/index.html"):
            shutil.copy(file_name, "main.c")
            command = ['gcc', '-pthread', '-O0', '--coverage', 'main.c', '-o', 'test-coverage']
            if command_executer(command, COVERAGE_TIMEOUT, 'log.txt'):
                command = ['./test-coverage']
                command_executer(command, COVERAGE_TIMEOUT, 'log.txt')
                command = ['lcov', '--capture', '--rc', 'lcov_branch_coverage=1', '--directory', '.', '--config-file',
                           '../lcovrc', '--output', 'coverage.info']
                command_executer(command, COVERAGE_TIMEOUT, 'log.txt')
                command = ['genhtml', '--branch-coverage', '--output', './summary', 'coverage.info']
                command_executer(command, COVERAGE_TIMEOUT, 'log.txt')
        to_print_var = 'total time: {} seconds'.format(time.time() - start_time)
        logger('log.txt', to_print_var)
        os.chdir(save)


def main_pipline_atomic(i, f , NN):
    start_time = time.time()
    print("updating file: {}".format(f))
    keys = update_c_file(f)
    # smt convert step
    to_smt_docker(f)
    # testgen step
    print("{:.2f}".format(100 * i / NN), "%", " ".join([f, list_to_string(keys)]))
    header_testgen(f, keys)
    to_print_var = 'total time: {} seconds'.format(time.time() - start_time)
    logger(os.path.dirname(f) + '/log.txt', to_print_var)
    print(to_print_var)


def main_pipline(files):
    # preparation steps
    global function_dictionary
    function_dictionary = {}
    script_file = SANDBOX_DIR + '/smt_run.sh'
    shutil.copyfile('../bash_scripts/smt_run.sh', script_file)
    os.chmod(script_file, 0o777)
    #files = [f for f in files if 'testgen_2' in f]
    for i, f in enumerate(sorted(files)):
        # update step
        start_time = time.time()
        print("updating file: {}".format(f))
        keys = update_c_file(f)
        # smt convert step
        to_smt_docker(f)
        # testgen step
        print("{:.2f}".format(100 * i / len(files)), "%", " ".join([f, list_to_string(keys)]))
        header_testgen(f, keys)
        to_print_var = 'total time: {} seconds'.format(time.time() - start_time)
        logger(os.path.dirname(f) + '/log.txt', to_print_var)
        print(to_print_var)
    # e = ThreadPoolExecutor(max_workers=2)
    # futures = {e.submit(main_pipline_atomic, i, f, len(files)): f for i, f in enumerate(sorted(files))}
    # for f in concurrent.futures.as_completed(futures):
    #     url = futures[f]
    #     try:
    #         data = f.result()
    #     except Exception as exc:
    #         print('%r generated an exception: %s' % (url, exc))
    #     else:
    #         print('%r page is %d bytes' % (url, len(data)))
    # for i, f in enumerate(sorted(files)):
    #     futures.append(e.submit(main_pipline_atomic, i, f, len(files)))
    # for future in concurrent.futures.as_completed(futures):
    #     print(future.result())
    # e.shutdown(wait=True)
    print('function_dictionary: {}'.format(function_dictionary))


def main():
    start_time = time.time()
    init()
    global SOURCE_PATH, SEA_PATH, SANDBOX_DIR, SEA_TIMEOUT, TG_TOOL_PATH, TG_TIMEOUT, COVERAGE_TIMEOUT, PATTERN, COVERAGE
    parser = argparse.ArgumentParser(description='python script for Test Generation')
    insourse = ['-i', '--input_source']
    kwsourse = {'type': str, 'help': 'Input .c-file. or directory'}

    outdir = ['-o', '--output_dir']
    kwoutdir = {'type': str, 'help': 'Output direcory name. Default: SANDBOX_DIR.'}

    tg = ['-tg', '--tg_tool_path']
    kwtg = {'type': argparse.FileType('r'), 'help': 'Path to TG tool. Default: TG_TOOL_PATH.'}

    sea = ['-sea', '--seahorn_tool_path']
    kwsea = {'type': argparse.FileType('r'), 'help': 'Path to SEAHORN tool. Default: SEA_PATH.'}
    kwdocker = {'type': str, 'help': 'true - SeaHorn runs in Docker/false - SeaHorn is local. Default: true.'}
    kwcov = {'type': str, 'help': 'true - run with coverage/false - run without coverage. Default: true.'}

    parser.add_argument(*insourse, **kwsourse)
    parser.add_argument(*outdir, **kwoutdir)
    parser.add_argument(*tg, **kwtg)
    group_sea = parser.add_mutually_exclusive_group()
    group_sea.add_argument(*sea, **kwsea)
    group_sea.add_argument('--docker_sea', **kwdocker)
    parser.add_argument('--coverage', **kwcov)

    args = parser.parse_args()
    print(args)
    files = []
    file_wo_nondet = []
    if args.input_source is not None:
        if os.path.isfile(args.input_source):
            file = args.input_source
            print('input file was set to {}'.format(file))
            if check_conditions(file):
                files = [file]
            else:
                file_wo_nondet = [file]
        elif os.path.isdir(args.input_source):
            print('input directory was set to {}'.format(args.input_source))
            SOURCE_PATH = args.input_source
            files, file_wo_nondet = get_cfiles_with_conditions()
        else:
            print('invalid input_source: {}'.format(args.input_source))
            exit(1)

    if args.output_dir is not None:
        print('sandbox set to {}'.format(args.output_dir))
        SANDBOX_DIR = args.output_dir

    if args.tg_tool_path is not None:
        TG_TOOL_PATH = args.tg_tool_path
        if not os.path.isfile(args.tg_tool_path.name) and args.docker_sea is None:
            print("tg tool path:{} is invalid".format(args.tg_tool_path))
            exit(1)
    else:
        if not os.path.isfile(TG_TOOL_PATH):
            print("tg tool path:{} is invalid, use \"--tg_tool_path\" or "
                  "set TG_TOOL_PATH in the script".format(args.tg_tool_path))
            exit(1)

    if args.seahorn_tool_path is not None:
        if not os.path.isfile(args.seahorn_tool_path.name) and args.docker_sea is None:
            print("tg tool path:{} is invalid".format(args.seahorn_tool_path))
            exit(1)
    else:
        # ToDo bug
        if not os.path.isfile(SEA_PATH):
            print("SeaHorn tool path:{} is invalid, use \"--seahorn_tool_path\" or "
                  "set SEA_PATH in the script".format(args.seahorn_tool_path))
            # exit(1)

    if args.docker_sea is not None:
        docker_image_name = str(subprocess.check_output(
            'docker ps --format "table {{.Names}}" -f ancestor=seahorn/seahorn-llvm10:nightly | tail -1',
            shell=True).strip())[2:-1]
        if 'NAMES' in docker_image_name:
            print("SeaHorn Docker is not running")
            print("run following docker command:")
            print(
                "\tdocker run --rm -it --mount type=bind,source=<SANDBOX_PATH>,target=/app "
                "seahorn/seahorn-llvm10:nightly")
            exit(1)

    if args.coverage is not None:
        if args.coverage == 'false':
            COVERAGE = False

    [print(files[i]) for i in range(0, min(len(files), 10))]
    # Move .c file to the specail sandbox
    # files = files[:100]
    was_cleand = False
    if len(files) > 0:
        files = move_to_sandbox(sorted(files), True, was_cleand)
        files = sorted(files)
        print("final files: {}".format(files))
        main_pipline(files)
        was_cleand = True
    if len(file_wo_nondet) > 0:
        file_wo_nondet = move_to_sandbox(sorted(file_wo_nondet), False, was_cleand)
        simple_run(file_wo_nondet)
        was_cleand = True
    # files = move_to_sandbox_and_rerun(sorted(files))

    # Merge all coverage
    if len(files) > 1:
        summary_coverage_report()
    ReportBuilder.html_report.buildReport_3(SANDBOX_DIR)
    ReportBuilder.html_report.buildReport_Excel(SANDBOX_DIR)
    tt = time.time() - start_time
    print('TG total time: {} seconds or {} hours'.format(tt, tt / 3600))
    # Build Report like ReportBuilder.html_report


if __name__ == "__main__":
    main()
