import os
import re
import shutil

SOURCE_PATH = "../resourses/c_files"
SEA_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea"
SEA_OPTIONS = []
OUTPUT_DIR = "../sandbox"
Z3_PATH = "/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/z3"
Z3_TIMEOUT = 60
SEA_TIMEOUT = 30


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
    #pattern = "[ \t]+(int)[ \t]+"
    pattern ="^\s*(?!return |typedef )((\w+\s*\*?\s+)+)+(\w+)(\[\w*\])?(\s*=|;)"
    file = open(f, "r", encoding='ISO-8859-1')
    lines_to_check = file.readlines()[line_main:line_cycle_begins - 1]
    for line in lines_to_check:
        if(re.search(pattern, line)):
            print("match")
            int_vars.append(line)
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
        # create subdir
        print('filename: {}'.format(f))
        basename = os.path.basename(f)
        name_wo_ext = os.path.splitext(basename)[0]
        print(name_wo_ext)
        subdir = OUTPUT_DIR + "/" + name_wo_ext
        print(subdir)
        os.mkdir(subdir)
        #copy file to individual sandbox
        new_file = subdir + "/" + basename
        shutil.copyfile(f, new_file)
        new_file_list.append(new_file)

    return new_file_list


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
    # 5. Create smt file for updated .c file and store metadate to the specail log
    # 6. Implemented by Wesley Harris, Grigory Fedyukovich - provides set of test values
    # 7. Generate .c file for each of this values
    # 8. Compile this .c and run it with coverage
    # 9. Merge all coverage 