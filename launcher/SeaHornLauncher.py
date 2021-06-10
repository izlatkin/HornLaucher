import os
import subprocess
import pickle
import hashlib
import shutil
import ReportBuilder

#SOURCE_PATH = "/Users/ilyazlatkin/CLionProjects/aws-c-common"
SOURCE_PATH = "/tmp/aws-c-common"
SEA_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea"
SEA_OPTIONS = ['-I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/:/tmp/aws-c-common/verification/cbmc/include/:/tmp/aws-c-common/include/']
#  ,'--show-invars'
   # ,'clang', '/Library/Developer/CommandLineTools_9.0.0/usr/bin/clang']
#SEA_OPTIONS = ['-I/tmp/cbmc/include/']
#SEA_OPTIONS = ['--step=small']
OUTPUT_DIR = "../out2"
Z3_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/z3"
Z3_TIMEOUT = 60
SEA_TIMEOUT = 30
# #SOURSE_PATH = "/Users/ilyazlatkin/CLionProjects/aws-c-common/verification/cbmc"
# SOURSE_PATH = "/home/usea/cbmc/regression/acceleration/"
# #SOURSE_PATH = "/Users/ilyazlatkin/CLionProjects/cbmc/regression/acceleration/"
# SEA_PATH = "sea"
# OUTPUT_DIR = "../out"
# Z3_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/z3"
# Z3_TIMEOUT = 30
LLVM_DIS_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/llvm-prefix/src/llvm-build/bin/llvm-dis"
EXCLUDE_LIST = ['make_common_data_structures.c','utils.c']
#EXCLUDE_LIST = ['utils.c']


def contains_assert(s):
    assert_string = 'assert('
    not_assert_1 = '_assert'
    file = open(s, "r", encoding='ISO-8859-1')
    readfile = file.read()
    file.close()
    if assert_string in readfile and not_assert_1 not in readfile:
        return True
    else:
        return False


def get_cfiles_with_assertions():
    cfiles = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SOURCE_PATH)
                       for f in filenames if os.path.splitext(f)[1] == '.c']
    print('number of .c files {} in "{}"'.format(len(cfiles), SOURCE_PATH))
    cfiles_with_assertion = []
    for f in cfiles:
        if contains_assert(f):
            cfiles_with_assertion.append(f)
        #print(f)
    print('number of .c files with assertions {} in "{}"'.format(len(cfiles_with_assertion), SOURCE_PATH))
    return cfiles_with_assertion


def command_executer(command, timeout, content):
    responce = subprocess.run(command,
                                 stdout=subprocess.PIPE,
                                 stderr=subprocess.PIPE,
                                 timeout=timeout)
    content.append(str(command))
    content.append(responce.returncode)
    content.append(responce.stdout.decode())
    content.append(responce.stderr.decode())



def run_sea_smt(files):
    if not os.path.exists(OUTPUT_DIR):
        os.mkdir(OUTPUT_DIR)
    else:
        print('clear output directory {}'.format(OUTPUT_DIR))
        shutil.rmtree(OUTPUT_DIR)
        os.mkdir(OUTPUT_DIR)

    results = []   # variable stors commands, respons for all files
    index = 0
    for f in files:
        content = []  # variable, which store all files, commands, response and errors for particular file
        tmp_dir = OUTPUT_DIR + "/" + os.path.basename(f)
        os.mkdir(tmp_dir)
        c_file = tmp_dir + "/" + os.path.splitext(os.path.basename(f))[0]+".c"
        shutil.copyfile(f, c_file)
        content.append(c_file)
        index += 1
        hash_object = hashlib.sha1(str(f).encode('utf-8'))
        bc_file = str(tmp_dir + "/" + os.path.splitext(os.path.basename(f))[0] + hash_object.hexdigest()[:5] + ".bc.txt")
        smt2file = str(tmp_dir + "/" + os.path.splitext(os.path.basename(f))[0]+ hash_object.hexdigest()[:5] + ".smt2.txt")
        ll_file = str(
            tmp_dir + "/" + os.path.splitext(os.path.basename(f))[0] + hash_object.hexdigest()[:5] + ".ll")
        content.append(bc_file)
        content.append(smt2file)
        content.append(ll_file)
        command = [SEA_PATH]
        command.append('fe')
        command += SEA_OPTIONS
        command.append(f)
        command += get_dependencies_list(f)
        command.append('-o')
        command.append(bc_file)
        print("{:.2f}".format(100 * index / len(files)), "%", " ".join(command))
        # run sea command
        try:
            command_executer(command,SEA_TIMEOUT, content)

            command = [SEA_PATH]
            command += SEA_OPTIONS
            command.append('--horn-no-verif')
            command.append('horn')
            command.append(bc_file)
            command.append('-o')
            command.append(smt2file)
            print("\t%", " ".join(command))
            command_executer(command, SEA_TIMEOUT, content)
            if os.path.exists(smt2file):
                content.append("smt2")
                number_of_lines = len(open(smt2file).readlines(  ))
                content.append(number_of_lines)
                if number_of_lines > 4:
                    print(" ".join([Z3_PATH, smt2file]))
                    try:
                        command = [Z3_PATH, smt2file]
                        command_executer(command, Z3_TIMEOUT, content)
                        command = [LLVM_DIS_PATH, bc_file, '-o', ll_file]
                        command_executer(command, Z3_TIMEOUT, content)
                    except subprocess.TimeoutExpired:
                        #process.kill()
                        #output, unused_err = process.communicate()
                        #raise TimeoutExpired(process.args, Z3_TIMEOUT, output=output)
                        content.append("z3_error")
                        print("z3 timeout: {} seconds".format(Z3_TIMEOUT))

            results.append(content)
            log_str = ""
            for i in content:
                log_str += str(i) + "\n"
            pickle.dump(log_str, open(tmp_dir + "/log.txt", "wb"))

        except subprocess.TimeoutExpired:
            process.kill()
            output, unused_err = process.communicate()
            raise TimeoutExpired(process.args, SEA_TIMEOUT, output=output)
            print("skipped", f)


    # return format: c_filesname(0),bc_filesname(1), smt_filesname(2), ll_filesname(3),
    # [bc_command (4), return_code_bc(5), stdout_bc(6), stderr_bc(7)
    # horn_command (8), return_code_horn(9), stdout_horn(10), stderr_horn(11),
    # "smt2"(12) - if smt2-files was created, "location of smt2 file and it's name"(2),
    # number_of_lines in smt2 file (13)
    # z3 - error (16) or z3 status {command (14), return code(15), stdout(16), stderr(17)}
    # ll - {return code(18), stdout(19), stderr(20)}
    pickle.dump(results, open("save_aws.p", "wb"))
    return results

def print_statistics(stat):
    logger = ""
    logger += 'number of .c files with assertions {} in "{}"'.format(len(stat), SOURCE_PATH) + "\n"
    logger += get_git_remote_url()
    logger += 'SEA_OPTIONS: {}'.format(" ".join(SEA_OPTIONS)) + "\n"
    # [x for x in range(1, 10) if x % 2]
    smt2 = [i for i in stat if "smt2" in i]
    logger += 'number of .smt2 files created {}'.format(len(smt2)) + "\n"
    small_smt2 = [i for i in smt2 if i[13] <=4 ]
    for i in small_smt2:
        if 'error:' in str(i[6]) or 'error:' in str(i[10]):
            logger += "ERROR" + "\n"
            logger += i[0] + "\n"
        # else:
        #     print("WARNING?NO ERROR")
        #     print(i[0])
    logger += '-      number of small(<= 4 lines) .smt2 files {}'.format(len(small_smt2))+ "\n"
    medium_smt2 = [i for i in smt2 if i[13] <=200 and i[13] > 4]
    logger += '-      number of medium(<= 200 lines) .smt2 files {}'.format(len(medium_smt2))+ "\n"
    logger += print_z3_info(medium_smt2)
    large_smt2 = [i for i in smt2 if i[13] > 200]
    logger += '-      number of large(> 200 lines) .smt2 files {}'.format(len(large_smt2))+ "\n"
    logger += print_z3_info(large_smt2)
    errors = [i[6] for i in stat if len(i[6]) > 0 and "smt2" not in i]
    logger += 'number of errors  {}'.format(len(errors))+ "\n"
    # fatal error: file not found, implicit declaration of function is invalid in C99
    # static_assert, conflicting types
    error_message = ["error:","file not found", "invalid in C99", "static_assert", "conflicting types"]
    for e in error_message:
        logger += error_parser(errors,e)
    o = []
    for i in errors:
        f = False
        for e in error_message:
            if e in str(i):
                f = True
        if not f: o.append(i)
    logger +='-      number of other errors is {}'.format(len(o))+ "\n"
    print(logger)
    return logger


def print_z3_info(stat):
    logger = ""
    z3_timeout = [i for i in stat if "z3_error" in i]
    logger +='*          number of z3 timeout errors  {}'.format(len(z3_timeout))+ "\n"
    z3_without_errors = [i for i in stat if "z3_error" not in i]
    print(z3_without_errors)
    z3_sat = [i for i in z3_without_errors if 'sat' in i[16] and 'unsat' not in i[16]]
    logger +='*          number of sat {}'.format(len(z3_sat))+ "\n"
    # for i in z3_sat:
    #     print(i)
    z3_unsat = [i for i in z3_without_errors if 'unsat' in i[16]]
    logger +='*          number of unsat {}'.format(len(z3_unsat))+ "\n"
    return logger


def error_parser(errors, message):
    logger = ""
    fnf = [i for i in errors if message in str(i)]
    logger +='-      number of errors "{}" is {}'.format(message, len(fnf))+ "\n"
    # for e in errors:
    #     print(e)
    return logger


def get_git_remote_url():
    command = "cd {}; git config --get remote.origin.url".format(SOURCE_PATH)
    ret = subprocess.run(command, capture_output=True, shell=True)
    url = ret.stdout.decode()
    return url


def get_dependencies_list(filename):
    result = []
    path = os.path.dirname(filename)
    if os.path.exists(path + "/Makefile"):
        print("exist")
        result += parse_makefile(path + "/Makefile")
    else:
        print("doesn't exist")
        return result
    print(result)
    return result


def find_all_files(name):
    path = SOURCE_PATH
    result = []
    for root, dirs, files in os.walk(path):
        if name in files and name not in EXCLUDE_LIST:
            result.append(os.path.join(root, name))
    return result[:1]


def parse_makefile(filename):
    print("parse_makefile {} ".format(filename))
    result = []
    file = open(filename, 'r')
    lines = file.readlines()
    for line in lines:
        if ".c\n" in line and '/' in line:
            potential_c_file = line[line.rindex('/') + 1:line.rindex('\n')]
            #result.append(potential_c_file)
            tmp = find_all_files(potential_c_file)
            if (len(tmp) > 0):
                result += tmp
    return result

if __name__ == '__main__':
    files = get_cfiles_with_assertions()
    # for f in files:
    #     print(f)
    #     print(get_dependencies_list(f))
    #ifiles = ["/tmp/aws-c-common/verification/cbmc/proofs/aws_string_new_from_array/aws_string_new_from_array_harness.c"]
    run_sea_smt(files)
    out = pickle.load(open("save_aws.p", "rb"))
    stat = print_statistics(out)
    ReportBuilder.html_report.buildReport(OUTPUT_DIR, stat)
