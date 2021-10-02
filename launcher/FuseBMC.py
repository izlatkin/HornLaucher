import time
from datetime import datetime
import os
import shutil
import subprocess

from ReportBuilder import html_report

""" Tools location
"""
def init():
    global SOURCE_PATH, SANDBOX_DIR, FUSEBMC_PATH, FUSEBMC_TIMEOUT, TESTCOV, FSUEBMV_WD
    SANDBOX_DIR = "/home/fmfsu/PyCharm/fusebmc_sandbox/"
    SOURCE_PATH = "/home/fmfsu/Benchs/sv-benchmarks/c/loop-invariants"
    #SOURCE_PATH = "/home/fmfsu/Benchs/sv-benchmarks/c/loop-invariants/eq1.c"
    #SOURCE_PATH = "/home/fmfsu/Benchs/loop_benckmarks/loop-acceleration/"
    #SOURCE_PATH = "/home/fmfsu/Benchs/loop_benckmarks"
    FUSEBMC_PATH = "/home/fmfsu/Dev/fusebmc/fusebmc.py"
    FSUEBMV_WD = "/home/fmfsu/Dev/fusebmc"
    FUSEBMC_TIMEOUT = 60
    TESTCOV = "/home/fmfsu/Dev/TestCov/test-suite-validator/bin/testcov"


def clean_dir(dir):
    for root, dirs, files in os.walk(dir):
        for f in files:
            os.unlink(os.path.join(root, f))
        for d in dirs:
            shutil.rmtree(os.path.join(root, d))


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


def zip_results():
    os.chdir("test-suite")
    xml_files = [os.path.join(dp, f) for dp, dn, filenames in os.walk('.')
              for f in filenames if os.path.splitext(f)[1] == '.xml']
    zip_command = ['zip', 'tests.zip'] + xml_files
    try:
        command_executer(zip_command, 2 * FUSEBMC_TIMEOUT, 'log.txt')
    except subprocess.CalledProcessError as e:
        logger('log.txt', [" ".join(zip_command), "FAIL"])
    os.chdir("../")



def run_fusebmc(file):
    print("run FuseBMC for {}".format(file))
    save = os.getcwd()
    #os.chdir(os.path.dirname(file))
    os.chdir(FSUEBMV_WD)
    clean_dir("fusebmc_output") # clean fusebmc output dir
    klee_command = ['python3.9', FUSEBMC_PATH, '--propertyfile',
                    '/home/fmfsu/Benchs/sv-benchmarks/c/properties/coverage-branches.prp',
                    '--timeout', str(FUSEBMC_TIMEOUT),
                    file]
    try:
        command_executer(klee_command, 2 * FUSEBMC_TIMEOUT, os.path.dirname(file) + '/log.txt')
    except subprocess.CalledProcessError as e:
        logger(os.path.dirname(file) + '/log.txt', [" ".join(klee_command), "FAIL"])
    dirs = [f.path for f in os.scandir("fusebmc_output") if f.is_dir()]
    #[x[0] for x in os.walk("fusebmc_output")]
    print(dirs)
    file_basename = os.path.basename(file)
    for d in dirs:
        if file_basename in d:
            print(d)
            test_sute = d + "/test-suite.zip"
            if os.path.isfile(test_sute):
                shutil.move(test_sute, os.path.dirname(file) + "/test-suite.zip")
                break
    os.chdir(save)



def run_testcov(file):
    print("run testcov for {}".format(file))
    save = os.getcwd()
    os.chdir(os.path.dirname(file))
    if not os.path.isfile("test-suite.zip"):
        logger('log.txt', ["NO TEST SUITE", "FAIL"])
        return
    testcov_command = [TESTCOV, '--use-gcov', '--test-suite', 'test-suite.zip',
                    os.path.basename(file)]
    try:
        command_executer(testcov_command, 30, 'log.txt')
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
        start_time = time.time()
        print("{:.2f}".format(100 * i / len(files)), "%", f)
        run_fusebmc(f)
        run_testcov(f)
        to_print_var = 'total time: {} seconds'.format(time.time() - start_time)
        logger(os.path.dirname(f) + '/log.txt', to_print_var)


def main():
    init()
    #parse and prepare sourse file
    files = get_cfiles_with_conditions()
    files = move_to_sandbox(sorted(files))
    main_pipeline(files)
    html_report.buildReport_fusebmc(SANDBOX_DIR)
    html_report.buildReport_Excel_klee(SANDBOX_DIR)



if __name__ == "__main__":
    main()