import argparse
import os
import time


def is_int(val):
    try:
        int(val)
    except ValueError:
        return False
    return True


def get_branchs(benchmark_name, file, is_tg):
    if not os.path.isfile(file):
        return set()
    covers = open(file, "r").readlines()
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
                        if is_tg:
                            line_number = str(int(line_number) - 6)
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
    for u in sorted(unc):
        uline += u + "<br/>"
    return uline

def build_coverage_stat_report(tg_dir, other_tools_dir, other_tools):
    fileout = open("{}/1_html_coverage.html".format(other_tools_dir), "w")

    table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
    header = ["No.", "Benchmark", "Horntinuum"] + other_tools
    table += "  <tr>\n"
    for column in header:
        table += "    <th>{0}</th>\n".format(column.strip())
    table += "  </tr>\n"

    # Create the table's row data
    i = 1
    exclude = ['final_coverage_report_wc_header', 'final_coverage_report', '4TestCov']
    source_files = [f.path for f in os.scandir(tg_dir) if f.is_dir() and os.path.basename(f) not in exclude]
    for line in sorted(source_files):
        print(line)
        benchmark_name = os.path.basename(line)
        tg_file = line + '/summary/summary_coverage.info'
        tg_cov = get_branchs(benchmark_name, tg_file, True)
        remove_max(tg_cov)
        remove_max(tg_cov)
        other_tools_coverage_files = [other_tools_dir + '/' + t + "/" + os.path.basename(line) + "/coverage.info" for t in other_tools]
        other_tools_cov = [get_branchs(benchmark_name, c, False) for c in other_tools_coverage_files]

        uline = get_unique(tg_cov, other_tools_cov)

        table += "  <tr>\n"
        table += "    <td>{0}</td>\n".format(i)
        table += "    <td>{0}</td>\n".format(os.path.basename(line))
        table += "    <td>{0}<br/>{1}<br/>{2}\n".format(
            create_hyperlinnk_to_file(tg_file), get_report(line), uline)
        for i, t in enumerate(other_tools):
            uline = get_unique(other_tools_cov[i], [tg_cov] + [t for j,t in enumerate(other_tools_cov) if j != i])
            other_tools_coverage_file = other_tools_dir + '/' + t + "/" + os.path.basename(line) + "/coverage.info"
            table += "    <td>{0}<br/>{1}<br/>{2}\n".format(create_hyperlinnk_to_file(other_tools_coverage_file),
                                                         get_report_klee(other_tools_dir + '/' + t +
                                                                         "/" + os.path.basename(line)),
                                                            uline)


        # table += "  </tr>\n"
        i += 1


    table += "</table>"
    # table = table.replace("../{}".format(dir), ".")
    table = table.replace(other_tools_dir, ".")
    fileout.writelines(table)
    fileout.close()


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
                       and other_tools_dir + "/" + e not in tg_dir]
        print(other_tools)
    else:
        print('no other tools: {}'.format(args.other_tools))
        exit(1)

    build_coverage_stat_report(tg_dir, other_tools_dir, other_tools)

    tt = time.time() - start_time
    print('TG total time: {} seconds or {} hours'.format(tt, tt / 3600))
    #Build Report like ReportBuilder.html_report


if __name__ == "__main__":
    main()