import argparse
import time
from datetime import datetime
import os
import shutil
import subprocess

from ReportBuilder import html_report

""" Tools location
"""
def init():
    global SOURCE_PATH, SANDBOX_DIR, PRTEST_PATH, PRTEST_TIMEOUT, TESTCOV, PRTEST_WD, START_WITH
    SANDBOX_DIR = "/home/fmfsu/PyCharm/prttest_sandbox/"
    SOURCE_PATH = "/home/fmfsu/Benchs/openssl-simplified"
    PRTEST_PATH = "/home/fmfsu/Dev/prtest/bin/prtest"
    # PRTEST
    PRTEST_WD = "/home/fmfsu/Dev/prtest"
    PRTEST_TIMEOUT = 900
    TESTCOV = "/home/fmfsu/Dev/TestCov/test-suite-validator/bin/testcov"
    START_WITH = 21


def clean_dir(dir):
    try:
        for root, dirs, files in os.walk(dir):
            for d in dirs:
                clean_dir(os.path.join(root, d))
                shutil.rmtree(os.path.join(root, d))
            for f in files:
                os.remove(os.path.join(root, f))
                #os.unlink(os.path.join(root, f))
    except Exception as e:
        print(e)


def move_to_sandbox(files):
    print("========move_to_sandbox===========")
    if not os.path.exists(SANDBOX_DIR):
        os.mkdir(SANDBOX_DIR)
    else:
        print('clear output directory {}'.format(SANDBOX_DIR))
        #remove dir
        os_info = os.uname()
        if (os_info.sysname != 'Darwin'):
            clean_dir(SANDBOX_DIR)
        else:
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


def get_cfiles_with_conditions():
    #case when single file
    if os.path.isfile(SOURCE_PATH):
        return [SOURCE_PATH]
    # whole directory run
    cfiles = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SOURCE_PATH)
              for f in filenames if os.path.splitext(f)[1] == '.c']
    return cfiles


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


def command_executer_testcov(command, timeout, file):
    print("command: {}".format(str(command)))
    logger(file, " ".join(command))
    env = {
        **os.environ,
        "gcc": "/usr/bin/gcc-8",
    }
    with subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, env=env) as process:
        try:
            stdout, stderr = process.communicate(input, timeout=timeout)
        except subprocess.TimeoutExpired:
            process.kill()
            mesage = 'command: {} has been killed after timeout {}'.format(" ".join(command), timeout)
            print(mesage)
            stdout, stderr = process.communicate()
            logger(file, str(stdout))
            logger(file, str(stderr))
        except Exception:
            process.kill()
            process.wait()
            mesage = 'command: {} has been killed after timeout {}'.format(" ".join(command), timeout)
            print(mesage)
            logger(file, mesage)
            raise
        retcode = process.poll()
        logger(file, [process.args, retcode, stdout, stderr])
        if retcode and retcode != 254:
            return False
        else:
            return True

def command_executer(command, timeout, file):
    print("command: {}".format(str(command)))
    logger(file, " ".join(command))
    with subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE) as process:
        try:
            stdout, stderr = process.communicate(input, timeout=timeout)
        except subprocess.TimeoutExpired:
            process.kill()
            mesage = 'command: {} has been killed after timeout {}'.format(" ".join(command), timeout)
            print(mesage)
            # stdout, stderr = process.communicate()
            # logger(file, str(stdout))
            # logger(file, str(stderr))
        except Exception:
            process.kill()
            process.wait()
            mesage = 'command: {} has been killed after timeout {}'.format(" ".join(command), timeout)
            print(mesage)
            logger(file, mesage)
            raise
        retcode = process.poll()
        #logger(file, [process.args, retcode, stdout, stderr])
        logger(file, [process.args, retcode])
        if retcode and retcode != 254:
            return False
        else:
            return True


def zip_results():
    os.chdir("./output/test-suite")
    xml_files = [os.path.join(dp, f) for dp, dn, filenames in os.walk('.')
              for f in filenames if os.path.splitext(f)[1] == '.xml']
    zip_command = ['zip', 'tests.zip'] + xml_files
    try:
        command_executer(zip_command,  PRTEST_TIMEOUT, 'log.txt')
    except subprocess.CalledProcessError as e:
        logger('log.txt', [" ".join(zip_command), "FAIL"])
    os.chdir("../../")



def run_prtest(file):
    print("run prtest for {}".format(file))
    save = os.getcwd()
    #os.chdir(os.path.dirname(file))
    os.chdir(PRTEST_WD)
    clean_dir("output")  # clean fusebmc output dir
    # prtest_command = ['python3.9', PRTEST_PATH, '--propertyfile',
    #                 '/home/fmfsu/Benchs/sv-benchmarks/c/properties/coverage-branches.prp',
    #                 '--timeout', str(PRTEST_TIMEOUT),
    #                 file]
    prtest_command = [PRTEST_PATH, file]
    try:
        command_executer(prtest_command, PRTEST_TIMEOUT, os.path.dirname(file) + '/log.txt')
    except subprocess.CalledProcessError as e:
        logger(os.path.dirname(file) + '/log.txt', [" ".join(prtest_command), "FAIL"])


    if (os.path.isdir("output/test-suite")):
        zip_results()
        if (os.path.isfile("output/test-suite/tests.zip")):
            shutil.move("output/test-suite/tests.zip", os.path.dirname(file) + "/tests.zip")

    os.chdir(save)



def run_testcov(file):
    print("run testcov for {}".format(file))
    save = os.getcwd()
    os.chdir(os.path.dirname(file))
    test_suite = os.path.dirname(file) + "/tests.zip"
    if not os.path.isfile(test_suite):
        logger('log.txt', ["NO TEST SUITE", "FAIL"])
        return
    testcov_command = [TESTCOV, '--use-gcov', '--test-suite', 'tests.zip',
                    os.path.basename(file)]
    try:
        command_executer_testcov(testcov_command, 30, 'log.txt')
        command = ['lcov', '--capture', '--rc', 'lcov_branch_coverage=1', '--directory', '.',
                   '--output', 'coverage.info']
        command_executer(command, 20, 'log.txt')
        command = ['genhtml', '--branch-coverage', '--output', './generated-coverage/', 'coverage.info']
        command_executer(command, 20, '../log.txt')
    except subprocess.CalledProcessError as e:
        logger('log.txt', [" ".join(testcov_command), "FAIL"])
    os.chdir(save)


def main_pipeline(files):
    print("number of files: {}".format(len(files)))
    for i, f in enumerate(sorted(files)):
        if not os.path.isfile(os.path.dirname(f)+"/log.txt"):
            start_time = time.time()
            print("{:.2f}".format(100 * i / len(files)), "%", f)
            run_prtest(f)
            run_testcov(f)
            to_print_var = 'total time: {} seconds'.format(time.time() - start_time)
            logger(os.path.dirname(f) + '/log.txt', to_print_var)


def main():
    init()
    global SOURCE_PATH, SANDBOX_DIR
    parser = argparse.ArgumentParser(description='python script to run PrTest')
    insourse = ['-i', '--input_source']
    kwsourse = {'type': str, 'help': 'Input .c-file. or directory'}

    outdir = ['-o', '--output_dir']
    kwoutdir = {'type': str, 'help': 'Output direcory name. Default: SANDBOX_DIR.'}

    parser.add_argument(*insourse, **kwsourse)
    parser.add_argument(*outdir, **kwoutdir)

    args = parser.parse_args()
    files = []
    if args.input_source is not None:
        if os.path.isfile(args.input_source):
            file = args.input_source
            print('input file was set to {}'.format(file))
            files = [file]
        elif os.path.isdir(args.input_source):
            print('input directory was set to {}'.format(args.input_source))
            SOURCE_PATH = args.input_source
            files = get_cfiles_with_conditions()
        else:
            print('invalid input_source: {}'.format(args.input_source))
            exit(1)

    if args.output_dir is not None:
        print('sandbox set to {}'.format(args.output_dir))
        SANDBOX_DIR = args.output_dir

    #parse and prepare sourse file
    files = move_to_sandbox(sorted(files))
    # files = sorted([os.path.join(dp, f) for dp, dn, filenames in os.walk(SANDBOX_DIR)
    #                 for f in filenames if os.path.splitext(f)[1] == '.c'
    #                 and os.path.splitext(f)[0] != "harness"])

    main_pipeline(files)
    html_report.buildReport_fusebmc(SANDBOX_DIR)
    html_report.buildReport_Excel_klee(SANDBOX_DIR)



if __name__ == "__main__":
    main()