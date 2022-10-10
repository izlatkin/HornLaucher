import argparse
import os
import re
import time

import xlsxwriter as xls


def is_int(val):
    try:
        int(val)
    except ValueError:
        return False
    return True


def get_branchs(benchmark_name, file, is_tg, tg_dir=False):
    if not os.path.isfile(file):
        return set()
    covers = open(file, "r").readlines()

    # ToDo
    # find files names
    # read files and find shift
    find_shift = 6
    if is_tg:
        dir_location = os.path.dirname(os.path.dirname(file))
        orig_file = dir_location + "/orig_" + benchmark_name + ".c"
        updated_file = dir_location + "/" + benchmark_name + "_with_pthread.c"
        lines_orig_file = open(orig_file, "r").readlines()
        lines_updated_file = open(updated_file, "r").readlines()
        for i, l in enumerate(lines_updated_file):
            if l == lines_orig_file[0]:
                find_shift = i
                break
        print("shift_in_file: {}".format(find_shift))

    elif tg_dir:
        dir_location = os.path.dirname(file)
        orig_file = dir_location + "/orig_" + benchmark_name + ".c"
        updated_file = dir_location + "/main.c"
        lines_orig_file = open(orig_file, "r").readlines()
        lines_updated_file = open(updated_file, "r").readlines()
        for i, l in enumerate(lines_updated_file):
            if l == lines_orig_file[0]:
                find_shift = i
                break
        print("shift_in_file: {}".format(find_shift))

    # exclude branches around [+/- 2]
    # 1. reach_error() 2. abort() 3. time_t start = time(0); time_t seconds = 10; time_t endwait = start + seconds;
    exclude_branches_indexeis = set()
    if is_tg or tg_dir:
        dir_location = os.path.dirname(os.path.dirname(file))
        updated_file = dir_location + "/" + benchmark_name + "_with_pthread.c"
        if tg_dir:
            dir_location = os.path.dirname(file)
            updated_file = dir_location + "/" + benchmark_name + ".c"
        lines_updated_file = open(updated_file, "r").readlines()
        for i, l in enumerate(lines_updated_file):
            line_index_in_orig_file = i - find_shift
            if 'reach_error()' in l and 'void' not in l:
                exclude_branches_indexeis.add(line_index_in_orig_file)
                exclude_branches_indexeis.add(line_index_in_orig_file - 1)
                exclude_branches_indexeis.add(line_index_in_orig_file + 1)
            if 'abort()' in l:
                exclude_branches_indexeis.add(line_index_in_orig_file)
                exclude_branches_indexeis.add(line_index_in_orig_file - 1)
                exclude_branches_indexeis.add(line_index_in_orig_file + 1)
            if 'time_t start = time(0); time_t seconds = 10; time_t endwait = start + seconds;' in l:
                exclude_branches_indexeis.add(line_index_in_orig_file)
    else:
        dir_location = os.path.dirname(file)
        updated_file = dir_location + "/" + benchmark_name + ".c"
        lines_updated_file = open(updated_file, "r").readlines()
        for i, l in enumerate(lines_updated_file):
            line_index_in_orig_file = i
            if 'reach_error()' in l and 'void' not in l:
                exclude_branches_indexeis.add(line_index_in_orig_file)
                exclude_branches_indexeis.add(line_index_in_orig_file - 1)
                exclude_branches_indexeis.add(line_index_in_orig_file + 1)
            if 'abort()' in l:
                exclude_branches_indexeis.add(line_index_in_orig_file)
                exclude_branches_indexeis.add(line_index_in_orig_file - 1)
                exclude_branches_indexeis.add(line_index_in_orig_file + 1)


    extract = []
    trigger = False
    for l in covers:
        if trigger and "end_of_record" in l:
            break
        if trigger:
            extract.append(l)
        if "SF" in l and ("main.c" in l or benchmark_name + '.c' in l):
            trigger = True

    brancher = set()
    current_branch = 0
    branch_index = 1
    for index, line in enumerate(extract):
        if 'end_of_record' in line:
            continue
        else:
            tmp = line.split(':')
            tag = tmp[0]
            data = tmp[1].strip()

            if tag == 'BRDA':
                c = data.split(',')[-1]
                tmp_c = int(data.split(',')[0])
                if tmp_c == current_branch:
                    branch_index += 1
                if tmp_c != current_branch:
                    current_branch = tmp_c
                    branch_index = 0
                if is_int(c):
                    if int(c) > 0:
                        line_number = data.split(',')[0]
                        if is_tg or tg_dir:
                            line_number = str(int(line_number) - find_shift)
                            if line_number not in exclude_branches_indexeis:
                                brancher.add(line_number + "_" + str(branch_index))
                        else:
                            brancher.add(line_number + "_" + str(branch_index))
            elif tag == 'BRH':
                continue
            elif tag == 'DA':
                continue
    return brancher


def get_report_klee(dir):
    sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'generated-coverage']
    if len(sub_dirs) != 1:
        return "<font color=\"red\">{}</font>\n".format('no report')
    else:
        report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
        if len(report_dir) != 1:
            return "<font color=\"red\">{}</font>\n".format('no report')
        else:
            return "<a href=\"{0}\">{1} </a>\n".format(report_dir[0] + '/index.html', "coverage_report")


def is_empty_file(file):
    if os.path.exists(file):
        lines = open(file, "r").readlines()
        if len(lines) > 1:
            return True
    return False



def create_hyperlinnk_to_file(text):
    if not text:
        return "NaN"
    name = os.path.basename(text)
    if os.path.exists(text):
        return "<a href=\"{0}\">{1} </a>\n".format(text, name)
    else:
        return "NaN"


def get_report(dir):
    sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'summary']
    if len(sub_dirs) != 1:
        return "<font color=\"red\">{}</font>\n".format('no report')
    else:
        report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
        if len(report_dir) != 1:
            return "<font color=\"red\">{}</font>\n".format('no report')
        else:
            return "<a href=\"{0}\">{1} </a>\n".format(report_dir[0] + '/index.html', "coverage_report")


def remove_max(s):
    max = 0
    s_max = ""
    for i in s:
        if int(i.split('_')[0]) > max:
            max = int(i.split('_')[0])
            s_max = i
    if s:
        s.remove(s_max)


def get_unique(target, other_tools_cov):
    unc = set()
    for t in target:
        flag = True
        for c in other_tools_cov:
            if t in c:
                flag = False
                break
        if flag:
            unc.add(t)
    uline = ""
    n = len(unc)
    for u in sorted(unc):
        uline += u + "<br/>"
    return n, uline


def read_lcov_html_report(file_name):
    file = open(file_name, "r")
    lines = file.readlines()
    brench_lines = []
    flag = False
    i = 0
    for line in lines:
        if flag:
            brench_lines.append(re.sub('<[^<]+?>', '', line))
            i += 1
        if 'Branches:' in line:
            brench_lines.append(re.sub('<[^<]+?>', '', line))
            flag = True
        if i == 3:
            break
    return 'Coverage: {}\n'.format(brench_lines[3])
    # return '{}<br/>\nHit: {}<br/>\nTotal: {}<br/>\nCoverage: {}\n'.format(brench_lines[0], brench_lines[1],
    #                                                                           brench_lines[2], brench_lines[3])


def get_coverage_data(dir):
    sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'summary']
    if len(sub_dirs) != 1:
        return "<font color=\"red\">{}</font>\n".format('no data')
    else:
        report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
        exclude = ['usr']
        report_dir = [d for d in report_dir if os.path.basename(d) not in exclude]
        if len(report_dir) != 1:
            return "<font color=\"red\">{}</font>\n".format('no report')
        else:
            file_name = report_dir[0] + '/main.c.gcov.html'
            #out = "<a href=\"{0}\">{1} </a>\n".format(file_name, "coverage_c_file_TG") + '<br/>\n'
            out = read_lcov_html_report(file_name) + '<br/>'
            return out


def get_tests_info_klee(dir):
    log = [f.path for f in os.scandir(dir) if f.is_file() and os.path.basename(f) == 'log.txt']
    if len(log) >= 1:
        file = open(log[0], "r")
        lines = file.readlines()
        for i, line in enumerate(lines):
            if "Tests run:" in line:
                out = ''
                for j in range(1, 2):
                    out += "{}<br/>".format(lines[i + j])
                file.close()
                return out
        file.close()
        return "<font color=\"red\">{}</font>\n".format('no tests')
    else:
        return "<font color=\"red\">{}</font>\n".format('no tests')


def build_coverage_stat_report(tg_dir, other_tools_dir, other_tools, old_tg=None):
    other_tools = []
    fileout = open("{}/1_html_coverage.html".format(other_tools_dir), "w")

    table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
    header = ["No.", "Benchmark", "Horntinuum"]
    if old_tg:
        header += ['Old Tg']
    header += other_tools
    table += "  <tr>\n"
    for column in header:
        table += "    <th>{0}</th>\n".format(column.strip())
    table += "  </tr>\n"

    # Create the table's row data
    i = 1
    exclude = ['final_coverage_report_wc_header', 'final_coverage_report', '4TestCov']
    source_files = [f.path for f in os.scandir(tg_dir) if f.is_dir() and os.path.basename(f) not in exclude]
    is_old_tg = 1 if old_tg else 0
    u_b = [0] * (1 + is_old_tg+ len(other_tools))
    benchmark_index = 1
    for k, line in enumerate(sorted(source_files)):
        print(line)
        is_all_tools_works = True
        table_dump = ""
        benchmark_name = os.path.basename(line)
        tg_file = line + '/summary/summary_coverage.info'
        if not os.path.exists(tg_file):
            tg_file = line + '/coverage.info'
            tg_cov = get_branchs(benchmark_name, tg_file, False, True)
        else:
            tg_cov = get_branchs(benchmark_name, tg_file, True)
        remove_max(tg_cov)
        remove_max(tg_cov)
        other_tools_coverage_files = [other_tools_dir + '/' + t + "/" + os.path.basename(line) + "/coverage.info" for t in other_tools]
        other_tools_cov = [get_branchs(benchmark_name, c, False) for c in other_tools_coverage_files]

        benchmark_name = os.path.basename(line)
        old_tg_file = other_tools_dir + '/' + old_tg + "/" + os.path.basename(line) + '/summary/summary_coverage.info'
        if not os.path.exists(old_tg_file):
            old_tg_file = line + '/coverage.info'
            old_tg_cov = get_branchs(benchmark_name, old_tg_file, False, True)
        else:
            old_tg_cov = get_branchs(benchmark_name, old_tg_file, True)
        #n, uline = get_unique(tg_cov, other_tools_cov)
        n, uline = get_unique(tg_cov, old_tg_cov)
        dump_u_b = [0] * (1 + is_old_tg + len(other_tools))
        dump_u_b[0] = n

        is_all_tools_works = is_empty_file(tg_file)
        table_dump += "  <tr>\n"
        table_dump += "    <td>{0}</td>\n".format(benchmark_index)
        table_dump += "    <td>{0}</td>\n".format(os.path.basename(line))
        table_dump += "    <td>{0}<br/>{1}<br/>{2}<br/><font color=\"green\">{3}</font>\n".format(
            create_hyperlinnk_to_file(tg_file), get_report(line), get_coverage_data(line), uline)

        if old_tg:
            benchmark_name = os.path.basename(line)
            old_tg_file = other_tools_dir + '/' + old_tg + "/" + os.path.basename(line) + '/summary/summary_coverage.info'
            if not os.path.exists(old_tg_file):
                old_tg_file = line + '/coverage.info'
                old_tg_cov = get_branchs(benchmark_name, old_tg_file, False, True)
            else:
                old_tg_cov = get_branchs(benchmark_name, old_tg_file, True)
            remove_max(old_tg_cov)
            remove_max(old_tg_cov)
            # n, uline = get_unique(old_tg_cov, other_tools_cov)
            n, uline = get_unique(old_tg_cov, tg_cov)
            dump_u_b[1] = n
            table_dump += "    <td>{0}<br/>{1}<br/>{2}<br/><font color=\"green\">{3}</font>\n".format(
                create_hyperlinnk_to_file(old_tg_file), get_report(other_tools_dir + '/' + old_tg + "/" + os.path.basename(line)),
                get_coverage_data(other_tools_dir + '/' + old_tg + "/" + os.path.basename(line)), uline)


        for i, t in enumerate(other_tools):
            n, uline = get_unique(other_tools_cov[i], [tg_cov] + [t for j, t in enumerate(other_tools_cov) if j != i])
            dump_u_b[1 + is_old_tg + i] = n
            other_tools_coverage_file = other_tools_dir + '/' + t + "/" + os.path.basename(line) + "/coverage.info"
            log_file = other_tools_dir + '/' + t + "/" + os.path.basename(line)
            if is_all_tools_works:
                is_all_tools_works = is_empty_file(other_tools_coverage_file)
            table_dump += "    <td>{0}<br/>{1}<br/>{2}<br/><font color=\"green\">{3}</font>\n".format(create_hyperlinnk_to_file(other_tools_coverage_file),
                                                         get_report_klee(other_tools_dir + '/' + t +
                                                                         "/" + os.path.basename(line)),
                                                            get_tests_info_klee(log_file),
                                                            uline)

        if is_all_tools_works:
            table += table_dump
            benchmark_index += 1
            for i in range(len(u_b)):
                u_b[i] += dump_u_b[i]




        # table += "  </tr>\n"
        #i += 1
    table += "  <tr>\n"
    table += "    <td>{0}</td>\n".format("# of unique</br>branches")
    table += "    <td>{0}</td>\n".format("-")
    for u in u_b:
        table += "    <td>{0}</td>\n".format(u)

    table += "</table>"
    # table = table.replace("../{}".format(dir), ".")
    table = table.replace(other_tools_dir, "./")
    fileout.writelines(table)
    fileout.close()


def build_excel_unique_report(tg_dir, other_tools_dir, other_tools, old_tg=None):
    workbook = xls.Workbook(other_tools_dir + '/2_report.xlsx')
    worksheet = workbook.add_worksheet()

    header = ["No.", "Benchmark", "Horntinuum"]
    if old_tg:
        header += ['Old Tg']
    header += other_tools + ['is_all_works']
    unique_branches = [header]

    # Create the table's row data
    i = 1
    exclude = ['final_coverage_report_wc_header', 'final_coverage_report', '4TestCov']
    source_files = [f.path for f in os.scandir(tg_dir) if f.is_dir() and os.path.basename(f) not in exclude]
    is_old_tg = 1 if old_tg else 0
    u_b = [0] * (1 + is_old_tg + len(other_tools))
    benchmark_index = 1
    for k, line in enumerate(sorted(source_files)):
        is_all_tools_works = True
        benchmark_name = os.path.basename(line)
        tg_file = line + '/summary/summary_coverage.info'
        if not os.path.exists(tg_file):
            tg_file = line + '/coverage.info'
            tg_cov = get_branchs(benchmark_name, tg_file, False, True)
        else:
            tg_cov = get_branchs(benchmark_name, tg_file, True)
        remove_max(tg_cov)
        remove_max(tg_cov)
        other_tools_coverage_files = [other_tools_dir + '/' + t + "/" + os.path.basename(line) + "/coverage.info" for t in other_tools]
        other_tools_cov = [get_branchs(benchmark_name, c, False) for c in other_tools_coverage_files]

        n, uline = get_unique(tg_cov, other_tools_cov)
        dump_u_b = [0] * (1 + is_old_tg + len(other_tools))
        dump_u_b[0] = n


        is_all_tools_works = is_empty_file(tg_file)
        dump = [k, os.path.basename(line) + ".c"]
        dump.append(n)

        if old_tg:
            benchmark_name = os.path.basename(line)
            old_tg_file = other_tools_dir + '/' + old_tg + "/" + os.path.basename(line) + '/summary/summary_coverage.info'
            if not os.path.exists(old_tg_file):
                old_tg_file = line + '/coverage.info'
                old_tg_cov = get_branchs(benchmark_name, old_tg_file, False, True)
            else:
                old_tg_cov = get_branchs(benchmark_name, old_tg_file, True)
            remove_max(old_tg_cov)
            remove_max(old_tg_cov)
            n, uline = get_unique(old_tg_cov, other_tools_cov)
            dump_u_b[1] = n
            dump.append(n)


        for i, t in enumerate(other_tools):
            n, uline = get_unique(other_tools_cov[i], [tg_cov] + [t for j, t in enumerate(other_tools_cov) if j != i])
            dump_u_b[1 + is_old_tg + i] = n
            other_tools_coverage_file = other_tools_dir + '/' + t + "/" + os.path.basename(line) + "/coverage.info"
            if is_all_tools_works:
                is_all_tools_works = is_empty_file(other_tools_coverage_file)
            dump.append(n)

        # unique_branches.append(dump)
        if is_all_tools_works:
            unique_branches.append(dump + [is_all_tools_works])
            benchmark_index += 1
            for i in range(len(u_b)):
                u_b[i] += int(dump_u_b[i])
        else:
            unique_branches.append(dump[:2] + [0] * (len(dump) - 2)  +  [is_all_tools_works])


    unique_branches.append(['','# of unique branches'] + u_b)

    row = 0
    col = 0
    for uc in unique_branches:
        for j, u in enumerate(uc):
            worksheet.write(row, col + j, u)
        row += 1

    workbook.close()


def main():
    start_time = time.time()
    parser = argparse.ArgumentParser(description='python script for coverage statistics parsing')
    insourse = ['--tg_dir']
    kwsourse = {'type': str, 'help': 'dir: where TG run is located'}

    outdir = ['--other_tools']
    kwoutdir = {'type': str, 'help': 'dir: where all sandboxes are located'}

    parser.add_argument(*insourse, **kwsourse)
    parser.add_argument(*outdir, **kwoutdir)

    args = parser.parse_args()
    tg_dir = ""
    other_tools = []
    other_tools_dir = ""
    if args.tg_dir is not None:
        if os.path.isdir(args.tg_dir):
            tg_dir = args.tg_dir
            print('TG dir set to {}'.format(tg_dir))
        else:
            print('invalid input_source: {}'.format(args.tg_dir))
            exit(1)

    if args.other_tools is not None:
        other_tools_dir = args.other_tools
        print('other_tools set to {}'.format(other_tools_dir))
        directory_contents = os.listdir(other_tools_dir)
        other_tools = [e for e in directory_contents if os.path.isdir(other_tools_dir + "/" + e)
                       and other_tools_dir + "/" + e not in tg_dir and "TG" not in e]
        print(other_tools)
    else:
        print('no other tools: {}'.format(args.other_tools))
        exit(1)

    is_old_tg = [ot for ot in other_tools if 'tg_old' in ot]
    old_tg = None
    if is_old_tg:
        old_tg = is_old_tg[0]
        other_tools.remove(old_tg)
    build_coverage_stat_report(tg_dir, other_tools_dir, other_tools, old_tg)
    #build_excel_unique_report(tg_dir, other_tools_dir, other_tools, old_tg)

    tt = time.time() - start_time
    print('TG total time: {} seconds or {} hours'.format(tt, tt / 3600))
    #Build Report like ReportBuilder.html_report


if __name__ == "__main__":
    main()