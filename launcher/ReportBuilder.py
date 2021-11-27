import os
import pickle
import re
import shutil

import xlsxwriter as xlsxwriter


class html_report:

    def create_header(table):
        header_line = "No.,Sourse code / Bit Code / SMT 2 / LL, SMT2 (# lines), Z3 run, Logs"
        header = header_line.split(",")
        table += "  <tr>\n"
        for column in header:
            table += "    <th>{0}</th>\n".format(column.strip())
        table += "  </tr>\n"
        return table

    def create_header_2(table):
        header_line = "No., Sourse code, Links (smt2 logs reports) , Tests, Coverage, Time"
        header = header_line.split(",")
        table += "  <tr>\n"
        for column in header:
            table += "    <th>{0}</th>\n".format(column.strip())
        table += "  </tr>\n"
        return table

    def create_header_klee(table):
        header_line = "No., Sourse code, Links (logs reports) , Tests / Coverage, Time"
        header = header_line.split(",")
        table += "  <tr>\n"
        for column in header:
            table += "    <th>{0}</th>\n".format(column.strip())
        table += "  </tr>\n"
        return table

    def create_hyperlinnk_to_file(text):
        if not text:
            return "NaN"
        name = os.path.basename(text)
        if os.path.exists(text):
            return "<a href=\"{0}\">{1} </a>\n".format(text, name)
        else:
            return "NaN"

    def smt2_status(ll):
        if "smt2" not in ll:
            return "-"
        else:
            return ll[13]

    def smt2_number_of_lines(smt2file):
        if os.path.exists(smt2file):
            return len(open(smt2file).readlines())
        else:
            return "-"

    def link_to_log(p):
        name = os.path.dirname(p) + "/log.txt"
        return "<a href=\"{0}\">{1}</a>\n".format(name, "log")

    def get_z3_results(p):
        if "z3_error" in p:
            return "timeout"
        if len(p) > 15:
            if ('sat' in p[16] and 'unsat' not in p[16]):
                return 'sat'
            if ('unsat' in p[16]):
                return 'unsat'
        else:
            return "-"

    @classmethod
    def get_extra_info_from_log(cls, dir):
        log = [f.path for f in os.scandir(dir) if f.is_file() and os.path.basename(f) == 'log.txt']
        out = ''
        if len(log) >= 1:
            what_to_check = ["Nonlinear CHCs are currently unsupported",
                             "Error: key \d+ not found",
                             "Bitcode was not properly read"]
            filein = open(log[0], "r", encoding='ISO-8859-1')
            lines = filein.readlines()
            for w in what_to_check:
                for line in lines:
                    if re.search(w, line):
                        out += "<br/>" + "<font color=8B008B>{}</font>\n".format(w)
                        break
        return out

    def buildReport(dir, stat):
        # filein = open("forReport", "r", encoding='ISO-8859-1')
        filein = pickle.load(open("save_aws.p", "rb"))
        fileout = open("{}/1_html_report.html".format(dir), "w")
        # data = filein.readlines()
        stat = stat.replace("\n", "<br />\n")
        fileout.writelines(stat)

        table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
        table = html_report.create_header(table)

        # Create the table's row data
        i = 1
        for line in filein:
            table += "  <tr>\n"
            table += "    <td>{0}</td>\n".format(i)
            table += "    <td>{0}<br/>{1}<br/>{2}<br/>{3}</td>\n".format(html_report.create_hyperlinnk_to_file(line[0]),
                                                                         html_report.create_hyperlinnk_to_file(line[1]),
                                                                         html_report.create_hyperlinnk_to_file(line[2]),
                                                                         html_report.create_hyperlinnk_to_file(line[3]))
            table += "    <td>{0}</td>\n".format(html_report.smt2_status(line))
            table += "    <td>{0}</td>\n".format(html_report.get_z3_results(line))
            table += "    <td>{0}</td>\n".format(html_report.link_to_log(line[0]))
            table += "  </tr>\n"
            i += 1

        table += "</table>"

        fileout.writelines(table)
        fileout.close()

    def buildReport_2(dir, stat):
        # filein = open("forReport", "r", encoding='ISO-8859-1')
        filein = pickle.load(open("save_aws.p", "rb"))
        fileout = open("{}/1_html_report.html".format(dir), "w")
        # data = filein.readlines()
        stat = stat.replace("\n", "<br />\n")
        fileout.writelines(stat)

        table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
        table = html_report.create_header(table)

        # Create the table's row data
        i = 1
        for line in filein:
            print(line)
            table += "  <tr>\n"
            table += "    <td>{0}</td>\n".format(i)
            table += "    <td>{0}<br/>{1}<br/>{2}<br/>{3}</td>\n".format(html_report.create_hyperlinnk_to_file(line[0]),
                                                                         html_report.create_hyperlinnk_to_file(line[1]),
                                                                         html_report.create_hyperlinnk_to_file(line[2]),
                                                                         html_report.create_hyperlinnk_to_file(line[3]))
            table += "    <td>{0}</td>\n".format(html_report.smt2_number_of_lines(line[2]))
            table += "    <td>{0}</td>\n".format("test")
            table += "    <td>{0}</td>\n".format(html_report.link_to_log(line[0]))
            table += "  </tr>\n"
            i += 1

        table += "</table>"

        fileout.writelines(table)
        fileout.close()

    @classmethod
    def buildReport_3(self, dir):
        fileout = open("{}/1_html_report.html".format(dir), "w")
        # stat = stat.replace("\n", "<br />\n")
        # fileout.writelines(stat)

        table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
        table = html_report.create_header_2(table)

        # Create the table's row data
        i = 1
        exclude = ['final_coverage_report_wc_header', 'final_coverage_report']
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for line in sorted(source_files):
            print(line)
            table += "  <tr>\n"
            table += "    <td>{0}</td>\n".format(i)
            table += "    <td>{0}<br/>\n".format(
                html_report.create_hyperlinnk_to_file(line + '/' + os.path.basename(line) + '.c'))
            table += "    <td>{0}<br/>{1}<br/>{2}{3}</td>\n".format(html_report.get_smt2_file(line),
                                                                    html_report.get_log_file(line),
                                                                    html_report.get_report(line),
                                                                    html_report.get_extra_info_from_log(line))
            table += "    <td>{0}</td>\n".format(html_report.get_tests_info(line))
            table += "    <td>{0}</td>\n".format(html_report.get_coverage_data(line))
            # table += "    <td>{0}</td>\n".format(html_report.get_time_consumed(line) + ' seconds')
            table += "    <td>{0}</td>\n".format(str(html_report.get_time_consumed(line)) + ' seconds')
            table += "  </tr>\n"
            i += 1
        table += "</table>"
        # table = table.replace("../{}".format(dir), ".")
        table = table.replace(dir, ".")
        fileout.writelines(table)
        fileout.close()

    def buildReport_klee(dir):
        fileout = open("{}/1_html_report.html".format(dir), "w")

        table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
        table = html_report.create_header_klee(table)

        # Create the table's row data
        i = 1
        exclude = ['final_coverage_report_wc_header', 'final_coverage_report']
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for line in sorted(source_files):
            print(line)
            table += "  <tr>\n"
            table += "    <td>{0}</td>\n".format(i)
            table += "    <td>{0}<br/>\n".format(
                html_report.create_hyperlinnk_to_file(line + '/' + os.path.basename(line) + '.c'))
            table += "    <td>{0}</td>\n".format(html_report.get_log_file(line))
            table += "    <td>{0}<br/>{1}</td>\n".format(html_report.get_tests_info_klee(line),
                                                         html_report.get_report_klee(line))
            # table += "    <td>{0}</td>\n".format(html_report.get_coverage_data(line))
            table += "    <td>{0}</td>\n".format(str(html_report.get_time_consumed(line)) + ' seconds')
            table += "  </tr>\n"
            i += 1
        table += "</table>"
        # table = table.replace("../{}".format(dir), ".")
        table = table.replace(dir, ".")
        fileout.writelines(table)
        fileout.close()

    def buildReport_fusebmc(dir):
        fileout = open("{}/1_html_report.html".format(dir), "w")

        table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
        table = html_report.create_header_klee(table)

        # Create the table's row data
        i = 1
        exclude = ['final_coverage_report_wc_header', 'final_coverage_report']
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for line in sorted(source_files):
            print(line)
            table += "  <tr>\n"
            table += "    <td>{0}</td>\n".format(i)
            table += "    <td>{0}<br/>\n".format(
                html_report.create_hyperlinnk_to_file(line + '/' + os.path.basename(line) + '.c'))
            table += "    <td>{0}</td>\n".format(html_report.get_log_file(line))
            table += "    <td>{0}<br/>{1}</td>\n".format(html_report.get_tests_info_klee(line),
                                                         html_report.get_report_klee(line))
            # table += "    <td>{0}</td>\n".format(html_report.get_coverage_data(line))
            table += "    <td>{0}</td>\n".format(html_report.get_time_consumed(line) + ' seconds')
            table += "  </tr>\n"
            i += 1
        table += "</table>"
        # table = table.replace("../{}".format(dir), ".")
        table = table.replace(dir, "./")
        fileout.writelines(table)
        fileout.close()

    @classmethod
    def get_smt2_file(cls, dir):
        smt2files = [f.path for f in os.scandir(dir) if f.is_file() and os.path.splitext(f)[1] == '.smt2']
        if len(smt2files) >= 1:
            return html_report.create_hyperlinnk_to_file(smt2files[0])
        else:
            return "<font color=\"red\">{}</font>\n".format('no smt')

    @classmethod
    def get_log_file(cls, dir):
        log = [f.path for f in os.scandir(dir) if f.is_file() and os.path.basename(f) == 'log.txt']
        if len(log) >= 1:
            return html_report.create_hyperlinnk_to_file(log[0])
        else:
            return "<font color=\"red\">{}</font>\n".format('no log')

    @classmethod
    def get_report(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'summary']
        if len(sub_dirs) != 1:
            return "<font color=\"red\">{}</font>\n".format('no report')
        else:
            report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
            if len(report_dir) != 1:
                return "<font color=\"red\">{}</font>\n".format('no report')
            else:
                return "<a href=\"{0}\">{1} </a>\n".format(report_dir[0] + '/index.html', "coverage_report")

    @classmethod
    def get_report_klee(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'generated-coverage']
        if len(sub_dirs) != 1:
            return "<font color=\"red\">{}</font>\n".format('no report')
        else:
            report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
            if len(report_dir) != 1:
                return "<font color=\"red\">{}</font>\n".format('no report')
            else:
                return "<a href=\"{0}\">{1} </a>\n".format(report_dir[0] + '/index.html', "coverage_report")

    @classmethod
    def get_tests_info(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in 'summary']
        if len(sub_dirs) == 0:
            return "<font color=\"red\">{}</font>\n".format('no tests were run')
        else:
            tests_links = ''
            tests_passed = 0
            tests_failed = 0
            for t in sorted(sub_dirs):
                result = html_report.get_test_result(t)
                if result == 'passed':
                    tests_passed += 1
                    color = 'green'
                else:
                    tests_failed += 1
                    color = 'red'
                tests_links += '{}<font color=\"{}\">{}</font><br/>\n'.format(html_report.create_hyperlinnk_to_file(t),
                                                                              color, result)
            if len(sub_dirs) == tests_passed:
                tests_links += 'tests: {} [ <font color=\"green\">passed: {}</font> ]'.format(
                    len(sub_dirs), tests_passed)
            elif len(sub_dirs) == tests_failed:
                tests_links += 'tests: {} [ <font color=\"green\"><font color=\"red\">failed: {}</font> ]'.format(
                    len(sub_dirs), tests_failed)
            else:
                tests_links += 'tests: {} [ <font color=\"green\">passed: {}</font>, <font color=\"red\">failed: {}</font> ]'.format(
                    len(sub_dirs), tests_passed, tests_failed)
            return tests_links

    @classmethod
    def get_tests_info_klee(cls, dir):
        log = [f.path for f in os.scandir(dir) if f.is_file() and os.path.basename(f) == 'log.txt']
        if len(log) >= 1:
            file = open(log[0], "r")
            lines = file.readlines()
            for i, line in enumerate(lines):
                if "---Results---" in line:
                    out = ''
                    for j in range(1, 5):
                        out += "{}<br/>".format(lines[i + j])
                    file.close()
                    return out
            file.close()
            return "<font color=\"red\">{}</font>\n".format('no tests')
        else:
            return "<font color=\"red\">{}</font>\n".format('no tests')

    @classmethod
    def get_test_result(cls, t):
        if os.path.exists(t + '/generated-coverage'):
            return 'passed'
        else:
            return 'failed'

    @classmethod
    def get_coverage_data(cls, dir):
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
                out = "<a href=\"{0}\">{1} </a>\n".format(file_name, "coverage_c_file") + '<br/>\n'
                out += html_report.read_lcov_html_report(file_name) + '<br/>'
                return out

    @classmethod
    def read_lcov_html_report(cls, file_name):
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
        return '{}<br/>\nHit: {}<br/>\nTotal: {}<br/>\nCoverage: {}\n'.format(brench_lines[0], brench_lines[1],
                                                                              brench_lines[2], brench_lines[3])

    @classmethod
    def get_time_consumed(cls, dir):
        log = [f.path for f in os.scandir(dir) if f.is_file() and os.path.basename(f) == 'log.txt']
        if len(log) >= 1:
            with open(log[0], 'rb') as f:
                f.seek(-2, os.SEEK_END)
                while f.read(1) != b'\n':
                    f.seek(-2, os.SEEK_CUR)
                last_line = f.readline().decode()
                time_con = last_line.split()
                if len(time_con) > 3 and ("total time" in last_line):
                    return "%8.2f" % (float(time_con[2]))
                else:
                    "<font color=\"red\">{}</font>\n".format('no available')
        else:
            return "<font color=\"red\">{}</font>\n".format('no available')

    def build_Excel_files(cc):
        # Create a workbook and add a worksheet.
        workbook = xlsxwriter.Workbook('tmp.xlsx')
        worksheet = workbook.add_worksheet()

        expenses = [['filename', 'is_tg']]
        for k in sorted(cc):
            expenses.append([k, cc[k]])
        row = 0
        col = 0

        for cfile, is_tg in expenses:
            worksheet.write(row, col, cfile)
            worksheet.write(row, col + 1, is_tg)
            row += 1

        workbook.close()

    @classmethod
    def buildReport_Excel(self, dir):
        # Create a workbook and add a worksheet.
        workbook = xlsxwriter.Workbook(dir + '/1_report.xlsx')
        worksheet = workbook.add_worksheet()

        exclude = ['final_coverage_report_wc_header', 'final_coverage_report']
        expenses = [['filename', 'coverage', 'time', 'hit', 'total']]
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for line in sorted(source_files):
            file_name = os.path.basename(line) + '.c'
            raw_data = html_report.get_coverage_data_plane_text(line)
            if raw_data != "no data" and raw_data != 'no report':
                raw_data = [r.strip("\n") for r in raw_data]
                # coverage = raw_data[3].strip("%")
                hit = raw_data[1]
                total = raw_data[2]
                if float(hit) <= 2:
                    coverage = 100 * (float(hit)) / (float(total))
                else:
                    coverage = 100 * (float(hit) - 2) / (float(total) - 2)
                # workaround, since we add main_orig => main,
                # there are two extra branches which have to be excluded
            else:
                coverage = 0
                hit = ''
                total = ''

            time = html_report.get_time_consumed(line)
            expenses.append([file_name, coverage, time, hit, total])

        row = 0
        col = 0

        for cfile, coverage, time, hit, total in expenses:
            worksheet.write(row, col, cfile)
            worksheet.write(row, col + 1, coverage)
            worksheet.write(row, col + 2, time)
            worksheet.write(row, col + 3, hit)
            worksheet.write(row, col + 4, total)
            row += 1

        workbook.close()

    def buildReport_Excel_klee(dir):
        # Create a workbook and add a worksheet.
        workbook = xlsxwriter.Workbook(dir + '/1_report.xlsx')
        worksheet = workbook.add_worksheet()
        expenses = [['filename', 'coverage', 'time', 'goals']]
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f)]
        for line in sorted(source_files):
            file_name = os.path.basename(line) + '.c'
            raw_data = html_report.get_tests_info_klee(line)
            if "no tests" in raw_data or "No coverage" in raw_data:
                coverage = ''
                goals = ''
            else:
                i = raw_data.index("Number of goals: ") + + len("Number of goals:")
                j = raw_data[i:].index("\n", 2)
                goals = raw_data[i:i + j]
                coverage = raw_data[raw_data.index("Coverage:") + len("Coverage: "): raw_data.index("%")]

            # print(coverage)
            time = html_report.get_time_consumed(line)
            expenses.append([file_name, coverage, time, goals])

        row = 0
        col = 0

        for cfile, coverage, time, goals in expenses:
            worksheet.write(row, col, cfile)
            worksheet.write(row, col + 1, coverage)
            worksheet.write(row, col + 2, time)
            worksheet.write(row, col + 3, goals)
            row += 1

        workbook.close()

    @classmethod
    def get_coverage_data_plane_text(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'summary']
        if len(sub_dirs) != 1:
            return 'no data'
        else:
            report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
            exclude = ['usr']
            report_dir = [d for d in report_dir if os.path.basename(d) not in exclude]
            if len(report_dir) != 1:
                return 'no report'
            else:
                file_name = report_dir[0] + '/main.c.gcov.html'
                out = html_report.read_lcov_html_report_plane_text(file_name)
                return out

    @classmethod
    def get_coverage_data_plane_text_klee(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'summary']
        if len(sub_dirs) != 1:
            return 'no data'
        else:
            report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
            if len(report_dir) != 1:
                return 'no report'
            else:
                file_name = report_dir[0] + '/main.c.gcov.html'
                out = html_report.read_lcov_html_report_plane_text(file_name)
                return out

    @classmethod
    def read_lcov_html_report_plane_text(cls, file_name):
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
        return brench_lines

    def reports_clean_up(dir):
        subdir = [os.path.join(dir, o) for o in os.listdir(dir)]
        subdir = [i for i in subdir if not os.path.isfile(i)]
        print(subdir)
        #subdir = subdir[:1]
        rm_list = ["coverage.info", "main.gcda", "main.gcno", "Makefile", "test-coverage","main.c"]
        rm_dr = "generated-coverage"
        for sd in subdir:
            sdd = [os.path.join(sd, o) for o in os.listdir(sd)]
            sdd = [i for i in sdd if not os.path.isfile(i)]
            print(sdd)
            for td in sdd:
                if os.path.basename(td) == "summary":
                    print("yes")
                    # remove summary
                    shutil.rmtree(td)
                else:
                    # list of all files in td
                    onlyfiles = [os.path.join(td, f) for f in os.listdir(td) if
                                 os.path.isfile(os.path.join(td, f))]
                    print(onlyfiles)
                    for pd in rm_list:
                        for f in onlyfiles:
                            if pd in f:
                                print("yess")
                                os.remove(f)

                    lastdir = [os.path.join(td, o) for o in os.listdir(td)]
                    lastdir = [i for i in lastdir if not os.path.isfile(i)]
                    print(lastdir)
                    for j in lastdir:
                        if rm_dr in j:
                            print("yesss")
                            shutil.rmtree(j)



if __name__ == '__main__':
    dir = "/Users/ilyazlatkin/PycharmProjects/results/to_pack/inv_mode_2_lookahead"
    html_report.reports_clean_up(dir)

    # html_report.buildReport_3("../sandbox")
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/sandbox_openssl_simplified_new/sandbox"
    # dir = "/tmp/klee_sandbox"
    # dir = "/tmp/fusebmc_sandbox"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/other_tools/verifuzz_sandbox"
    # html_report.buildReport_klee(dir)
    # html_report.buildReport_Excel_klee(dir)

    # dir = "/Users/ilyazlatkin/PycharmProjects/results/inv-mode_0/summary"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/inv_mode_1"
    # dir = '/Users/ilyazlatkin/PycharmProjects/results/TG_final_runs/inv_final/inv-mode_2_lookahead'
    # #dir = "/tmp/tmp"
    # html_report.buildReport_Excel(dir)
    # html_report.buildReport_3(dir)
    # # d ='/Users/ilyazlatkin/PycharmProjects/results'
    # subdir = [os.path.join(d, o) for o in os.listdir(d)
    #  if os.path.isdir(os.path.join(d, o))]
    # print(subdir)
    # for s in subdir:
    #     html_report.buildReport_3(s)
