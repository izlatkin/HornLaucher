import os
import glob
import subprocess
import pickle
import hashlib

H_SOURSE_PATH = "/Users/ilyazlatkin/CLionProjects/aws-c-common/include/"
H_SOURSE_PATH = "/Users/ilyazlatkin/CLionProjects/aws-c-common/verification/cbmc/include/"
H_OUTPUT_DIR = "../converted_headers"

def get_hfiles():
    hfiles = [os.path.join(dp, f) for dp, dn, filenames in os.walk(H_SOURSE_PATH)
                       for f in filenames if os.path.splitext(f)[1] == '.h']
    print('number of .h files {} in "{}"'.format(len(hfiles), H_SOURSE_PATH))
    # for f in hfiles:
    #     print(f)

    print('number of .h files with assertions {} in "{}"'.format(len(hfiles), H_SOURSE_PATH))
    return hfiles

def convert_h(files):
    if not os.path.exists(H_OUTPUT_DIR):
        os.mkdir(H_OUTPUT_DIR)
    else:
        print('clear output directory {}'.format(H_OUTPUT_DIR))
        files_to_del = glob.glob(str(H_OUTPUT_DIR + "/*"))
        for f in files_to_del:
            os.remove(f)

    for f in files:
        new_file_path = str(H_OUTPUT_DIR + "/" + os.path.splitext(os.path.basename(f))[0] + ".h")
        print(f, new_file_path)
        replace_header(f, new_file_path)


def replace_header(file, new_file_name):
    file1 = open(file, 'r')
    new_file = open(new_file_name, 'a')
    lines = file1.readlines()
    for line in lines:
        if "#include" in line and "<" in line and (line.find('/') > 0):
            # include <aws/common/common.h>
            index = line.rfind('/')
            l = ""
            if index > 0:
                l = line[index + 1:]
            # else:
            #     l = line[lines.find('<'):]
            new_file.write(str("#include \"" + l[:l.find('>')] + "\"\n"))
        else:
            new_file.write(line)
    new_file.close()


if __name__ == '__main__':
    files = get_hfiles()
    convert_h(files)
    # file = "/Users/ilyazlatkin/CLionProjects/aws-c-common/include/aws/testing/aws_test_allocators.h"
    # replace_header(file,'aws_test_allocators.h')

