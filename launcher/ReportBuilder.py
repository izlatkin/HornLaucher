import argparse
import glob
import os
import pickle
import re
import shutil
import matplotlib.pyplot as plt
import CoverageUtil

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

    def create_header_4(table):
        header_line = "No., Sourse code, Links (smt2 logs reports) , Tests, Coverage_old, Coverage TestCov, Extra Info, Time"
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
            what_to_check = ["Nonlinear CHC is currently unsupported",
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

    @classmethod
    def get_tg_stat_D(cls, dir):
        log_file = dir + "/log.txt"
        if os.path.isfile(log_file):
            filein = open(log_file, "r", encoding='ISO-8859-1')
            lines = filein.readlines()
            init = False
            to_parse = False
            iteration = 1
            result = []
            for line in lines:
                if init:
                    if to_parse:
                        iteration += 1
                        if line.find("of todos =") > 0:
                            try:
                                result.append(int(line[line.index("of todos =") + len("of todos ="):].strip()))
                            except ValueError:
                                continue
                        to_parse = False
                        continue
                    if "new iter with cur_bnd = " in line:
                        to_parse = True
                if "new iter with cur_bnd = 1" in line and "\nnew iter with cur_bnd" not in line:
                    init = True
                    # ToDo: init other values on the other iteration
                if "Done with TG" in line or "rm -rf" in line:
                    break
            x = range(1, len(result) + 1)
            if (len(result) == 0):
                return ""
            A = result[0]
            D = len(result)
            return D
        else:
            return 0

    @classmethod
    def get_tg_stat(cls, dir):
        log_file = dir + "/log.txt"
        if os.path.isfile(log_file):
            filein = open(log_file, "r", encoding='ISO-8859-1')
            lines = filein.readlines()
            init = False
            to_parse = False
            iteration = 1
            result = []
            for line in lines:
                if init:
                    if to_parse:
                        iteration += 1
                        if line.find("of todos =") > 0:
                            try:
                                result.append(int(line[line.index("of todos =") + len("of todos ="):].strip()))
                            except ValueError:
                                continue
                        to_parse = False
                        continue
                    if "new iter with cur_bnd = " in line:
                        to_parse = True
                if "new iter with cur_bnd = 1" in line and "\nnew iter with cur_bnd" not in line:
                    init = True
                    # ToDo: init other values on the other iteration
                if "Done with TG" in line or "rm -rf" in line:
                    break
            x = range(1, len(result) + 1)
            plt.clf()
            plt.plot(x, result)
            plt.xlabel("x - iteration #\n {}".format(result[:30]))
            plt.ylabel('y - todos')
            plt.title('iteration progress')
            # plt.show()
            plt.savefig(dir + '/iteration_progress.png')
            # return [A, B, C, D] //see https://github.com/izlatkin/HornLauncher/issues/43
            if (len(result) == 0):
                return ""
            A = result[0]
            D = len(result)
            for i, r in enumerate(result):
                if r == result[len(result) - 1]:
                    C = i
                    B = result[i]
                    break
            # print([A, B, C, D])
            Ky = round((A - B) / A * 100)
            color = "green"
            if Ky > 80:
                color = "green"
            elif Ky > 30:
                color = "orange"
            else:
                color = "red"
            out = "<br/>" + "<font color={}>Ky = {}</font>\n".format(color, Ky)
            DC = D - C
            color = "green"
            if round(DC / D * 100) > 80:
                color = "green"
            elif round(DC / D * 100) > 30:
                color = "orange"
            else:
                color = "red"
            out += "<br/>" + "<font color={}>D - C = {}</font>\n".format(color, DC)
            out += "<br/>" + html_report.create_hyperlinnk_to_file(dir + '/iteration_progress.png')
            # out += "<br/>" + str([A, B, C, D])
            return out
        else:
            return ""

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

    @classmethod
    def get_liner_chcs(self, dir):
        out = []
        exclude = ['final_coverage_report_wc_header', 'final_coverage_report', '4TestCov']
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for d in source_files:
            log_file = d + "/log.txt"
            if not html_report.is_nonlinear(log_file):
                tmp = os.path.basename(d)
                out.append(tmp)
                print(tmp)
        return out

    @classmethod
    def clear_sandox(self, dir, nonlinear):
        for n in nonlinear:
            tmp = dir + "/" + n
            if os.path.isdir(tmp):
                # remove dir
                os_info = os.uname()
                if (os_info.sysname != 'Darwin'):
                    for root, dirs, files in os.walk(tmp):
                        for f in files:
                            os.unlink(os.path.join(root, f))
                        for d in dirs:
                            shutil.rmtree(os.path.join(root, d))
                    os.rmdir(tmp)
                else:
                    shutil.rmtree(tmp)

    @classmethod
    def clear_benchmarkdir(self, dir, nonlinear):
        for n in nonlinear:
            tmp = dir + "/" + n + ".c"
            if os.path.isfile(tmp):
                # remove dir
                os.remove(tmp)

    @classmethod
    def buildReport_4(self, dir):
        fileout = open("{}/1_html_report.html".format(dir), "w")
        # stat = stat.replace("\n", "<br />\n")
        # fileout.writelines(stat)

        table = "<table border=\"1\" cellspacing=\"0\" cellpadding=\"4\">\n"
        table = html_report.create_header_4(table)

        # Create the table's row data
        i = 1
        exclude = ['final_coverage_report_wc_header', 'final_coverage_report', '4TestCov']
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for line in sorted(source_files):
            print(line)
            table += "  <tr>\n"
            table += "    <td>{0}</td>\n".format(i)
            table += "    <td>{0}<br/>\n".format(
                html_report.create_hyperlinnk_to_file(line + '/' + os.path.basename(line) + '.c'))
            table += "    <td>{0}<br/>{1}<br/>{2}{3}<br/>{4}</td>\n".format(html_report.get_smt2_file(line),
                                                                            html_report.get_log_file(line),
                                                                            html_report.get_report(line),
                                                                            html_report.get_extra_info_from_log(line),
                                                                            html_report.get_tg_stat(line))
            table += "    <td>{0}</td>\n".format(html_report.get_tests_info(line))
            table += "    <td>{0}</td>\n".format(html_report.get_coverage_data(line))
            table += "    <td>{0}</td>\n".format(html_report.get_coverage_data_testcov(line))
            table += "    <td>number of test: {0}<br/>function info: {1}<br/> number of lines: {2}</td>\n".format(html_report.get_number_of_tests_tg(line),
                                                                                                                  html_report.get_function_coverage_data(line),
                                                                                                                  html_report.get_number_of_line_in_original_sorse_file(line))
            # table += "    <td>{0}</td>\n".format(html_report.get_time_consumed(line) + ' seconds')
            table += "    <td>{0}</td>\n".format(str(html_report.get_time_consumed(line)) + ' seconds')
            table += "  </tr>\n"
            i += 1
        table += "</table>"
        # table = table.replace("../{}".format(dir), ".")
        table = table.replace("{}/.".format(dir), "{}/".format(dir))
        table = table.replace(dir, ".")
        fileout.writelines(table)
        fileout.close()

    def extrac_from_pthread_cancel(file):
        if os.path.exists(file + "/summary/summary_coverage.info"):
            filename = file + "/summary/summary_coverage.info"
        elif os.path.exists(file + "/coverage.info"):
            filename = file + "/coverage.info"
        else:
            return 1
        f = open(filename, "r")
        lines = f.readlines()
        n_lines = len(lines)
        if n_lines < 3:
            return 1
        cu = CoverageUtil.read_coverage_info(filename)
        line_to_extract_data = cu['main.c'][len(cu['main.c']) - 3]#lines[n_lines - 3]
        if "BRDA:" not in line_to_extract_data:
            return 1
        arr = line_to_extract_data.strip('\n').split(':')[1].split(',')
        # print(lines[n_lines - 3])
        # print(arr)
        out = int(arr[2]) + int(arr[3])
        return out

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
            table += "    <td>{0}</td>\n".format(str(html_report.get_time_consumed(line)) + ' seconds')
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
    def get_number_of_tests_tg(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if
                    f.is_dir() and os.path.basename(f) not in ['summary', '4TestCov']]
        return len(sub_dirs)


    @classmethod
    def get_tests_info(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if
                    f.is_dir() and os.path.basename(f) not in ['summary', '4TestCov']]
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
        if os.path.exists(t + '/coverage.info'):
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
                out = "<a href=\"{0}\">{1} </a>\n".format(file_name, "coverage_c_file_TG") + '<br/>\n'
                out += html_report.read_lcov_html_report(file_name) + '<br/>'
                return out

    @classmethod
    def get_function_coverage_data(cls, dir):
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
                out = "<a href=\"{0}\">{1} </a>\n".format(file_name, "coverage_c_file_TG") + '<br/>\n'
                out += html_report.read_lcov_html_report_function_stat(file_name) + '<br/>'
                return out

    @classmethod
    def get_number_of_line_in_original_sorse_file(cls, dir):
        c_file = dir + "/" + os.path.basename(dir) + ".c"
        if os.path.exists(c_file):
            return len(open(c_file, "r").readlines())
        else:
            return 0

    @classmethod
    def get_coverage_data_testcov(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in '4TestCov'
                    and len(os.path.basename(f)) > 2]
        if len(sub_dirs) != 1:
            return "<font color=\"red\">{}</font>\n".format('no data')
        else:
            report_dir = [f.path for f in os.scandir(sub_dirs[0] + "/generated-coverage") if
                          f.is_dir() and f.path and "output" not in f.path]
            # file_name = report_dir[0] + '/main.c.gcov.html'
            out = ""
            if len(report_dir) > 0:
                files = [f for f in glob.glob(report_dir[0] + '/**/*.c.gcov.html', recursive=True) if
                         "harness" not in f]
                # files = [os.path.basename(f) for f in os.listdir(report_dir[0]) if f.endswith('.c.gcov.html')]
                if len(files) != 1:
                    out += "<font color=\"red\">{}</font><br/>".format('no gcov report')
                else:
                    # file_name = report_dir[0] + "/" + files[0]
                    file_name = files[0]
                    out = "<a href=\"{0}\">{1} </a>\n".format(file_name, "coverage_testCov") + '<br/>\n'
                    out += html_report.read_lcov_html_report(file_name) + '<br/>'
            out += html_report.read_testciv_log(sub_dirs[0] + "/../log.txt") + '<br/>'
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
    def read_lcov_html_report_function_stat(cls, file_name):
        file = open(file_name, "r")
        lines = file.readlines()
        brench_lines = []
        flag = False
        i = 0
        for line in lines:
            if flag:
                brench_lines.append(re.sub('<[^<]+?>', '', line))
                i += 1
            if 'Functions:' in line:
                brench_lines.append(re.sub('<[^<]+?>', '', line))
                flag = True
            if i == 3:
                break
        return '{}<br/>\nHit: {}<br/>\nTotal: {}<br/>\nCoverage: {}\n'.format(brench_lines[0], brench_lines[1],
                                                                              brench_lines[2], brench_lines[3])


    @classmethod
    def read_testciv_log(cls, file_name):
        file = open(file_name, "r")
        lines = file.readlines()
        brench_lines = []
        flag = False
        i = 0
        for line in lines:
            if flag:
                brench_lines.append(line)
                i += 1
            if '---Results---' in line:
                flag = True
            if i == 4:
                break
        if len(brench_lines) <= 3:
            return '{}<br/>'.format('no results')
        return '{}<br/>\n{}<br/>\n{}<br/>\n{}\n'.format(brench_lines[0], brench_lines[1],
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
        expenses = [['filename', 'coverage_TG', 'coverage_TestCov', 'time', 'hit', 'total', '#fun_hit', '#fun_total', '#tests', '#lines']]
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for line in sorted(source_files):
            file_name = os.path.basename(line) + '.c'
            raw_data = html_report.get_coverage_data_plane_text(line)
            was_instrumented, fun_number = html_report.get_function_number_plane_text(line)
            raw_testCov = html_report.get_coverage_data_testcov(line)
            coverage_TestCov = 0.0
            if "no data" not in raw_testCov and 'no gcov report' not in raw_testCov:
                rr = [r.strip("\n") for r in raw_testCov.split("\n")]
                if len(rr) >= 5:
                    if "Coverage:" in rr[8]:
                        tmp = rr[8][rr[8].index("Coverage:") + len("Coverage:"):rr[8].index("%") - 1].strip()
                        coverage_TestCov = float(tmp)

            if raw_data != "no data" and raw_data != 'no report':
                raw_data = [r.strip("\n") for r in raw_data]
                # coverage = raw_data[3].strip("%")
                hit = float(raw_data[1])
                total = float(raw_data[2])
                # find covergae value from summary/summary_coverage.info and extrac 1 or 2
                extraction = html_report.extrac_from_pthread_cancel(line)
                if hit <= 2:
                    coverage_TG = 100 * hit / total
                else:
                    coverage_TG = 100 * (hit - extraction) / (total - 2)
                if coverage_TG > 100:
                    print("coverage > 100")
                    coverage_TG = 100
                coverage_TG = round(coverage_TG, 1)
                # workaround, since we add main_orig => main,
                # there are two extra branches which have to be excluded
            else:
                coverage_TG = 0
                hit = ''
                total = ''

            if fun_number != "no data" and raw_data != 'no report':
                fun_number = [r.strip("\n") for r in fun_number]
                # coverage = raw_data[3].strip("%")
                test1 = fun_number[1]
                test2 = fun_number[2]
                if was_instrumented:
                    test2 = int(test2) - 1
                    test1 = int(test1) - 1
                # workaround, since we add main_orig => main,
                # there are two extra branches which have to be excluded
            else:
                coverage_TG = 0
                test1 = ''
                test2 = ''

            number_of_tests = html_report.get_number_of_tests_tg(line)
            number_of_line = html_report.get_number_of_line_in_original_sorse_file(line)


            # table += "    <td>number of test: {0}<br/>function info: {1}<br/> number of lines: {2}</td>\n".format(html_report.get_number_of_tests_tg(line),
            #                                                                                                                   html_report.get_function_coverage_data(line),
            #                                                                                                                   html_report.get_number_of_line_in_original_sorse_file(line))

            time = html_report.get_time_consumed(line)
            expenses.append([file_name, coverage_TG, coverage_TestCov, time, hit, total, test1, test2, number_of_tests, number_of_line])

        row = 0
        col = 0

        for cfile, coverage_TG, coverage_TestCov, time, hit, total, fun_number_hit, fun_number_total, number_of_tests, number_of_line in expenses:
            worksheet.write(row, col, cfile)
            worksheet.write(row, col + 1, coverage_TG)
            worksheet.write(row, col + 2, coverage_TestCov)
            worksheet.write(row, col + 3, time)
            worksheet.write(row, col + 4, hit)
            worksheet.write(row, col + 5, total)
            worksheet.write(row, col + 6, fun_number_hit)
            worksheet.write(row, col + 7, fun_number_total)
            worksheet.write(row, col + 8, number_of_tests)
            worksheet.write(row, col + 9, number_of_line)
            row += 1

        workbook.close()

    @classmethod
    def buildReport_Excel_extra_stat(self, dir):
        # Create a workbook and add a worksheet.
        workbook = xlsxwriter.Workbook(dir + '/1_report.xlsx')
        worksheet = workbook.add_worksheet()

        exclude = ['final_coverage_report_wc_header', 'final_coverage_report']
        expenses = [['filename', 'coverage_TG', 'coverage_TestCov', 'time', 'cur_bnd', 'hit', 'total', '#fun_hit',
                     '#fun_total']]
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) not in exclude]
        for line in sorted(source_files):
            file_name = os.path.basename(line) + '.c'
            raw_data = html_report.get_coverage_data_plane_text(line)
            was_instrumented, fun_number = html_report.get_function_number_plane_text(line)
            raw_testCov = html_report.get_coverage_data_testcov(line)
            coverage_TestCov = 0.0
            cur_bnd = 0
            if "no data" not in raw_testCov and 'no gcov report' not in raw_testCov:
                rr = [r.strip("\n") for r in raw_testCov.split("\n")]
                if len(rr) >= 5:
                    if "Coverage:" in rr[8]:
                        tmp = rr[8][rr[8].index("Coverage:") + len("Coverage:"):rr[8].index("%") - 1].strip()
                        coverage_TestCov = float(tmp)

            if raw_data != "no data" and raw_data != 'no report':
                raw_data = [r.strip("\n") for r in raw_data]
                # coverage = raw_data[3].strip("%")
                hit = float(raw_data[1])
                total = float(raw_data[2])
                # find covergae value from summary/summary_coverage.info and extrac 1 or 2
                extraction = html_report.extrac_from_pthread_cancel(line)
                if hit <= 2:
                    coverage_TG = 100 * hit / total
                else:
                    coverage_TG = 100 * (hit - extraction) / (total - 2)
                coverage_TG = round(coverage_TG, 1)
                cur_bnd = html_report.get_tg_stat_D(line)
                # workaround, since we add main_orig => main,
                # there are two extra branches which have to be excluded
            else:
                coverage_TG = 0
                hit = ''
                total = ''

            if fun_number != "no data" and raw_data != 'no report':
                fun_number = [r.strip("\n") for r in fun_number]
                # coverage = raw_data[3].strip("%")
                test1 = fun_number[1]
                test2 = fun_number[2]
                if was_instrumented:
                    test2 = int(test2) - 1
                    test1 = int(test1) - 1
                # workaround, since we add main_orig => main,
                # there are two extra branches which have to be excluded
            else:
                coverage_TG = 0
                test1 = ''
                test2 = ''

            time = html_report.get_time_consumed(line)
            expenses.append([file_name, coverage_TG, coverage_TestCov, time, cur_bnd, hit, total, test1, test2])

        row = 0
        col = 0

        for cfile, coverage_TG, coverage_TestCov, time, cur_bnd, hit, total, fun_number_hit, fun_number_total in expenses:
            worksheet.write(row, col, cfile)
            worksheet.write(row, col + 1, coverage_TG)
            worksheet.write(row, col + 2, coverage_TestCov)
            worksheet.write(row, col + 3, time)
            worksheet.write(row, col + 4, cur_bnd)
            worksheet.write(row, col + 5, hit)
            worksheet.write(row, col + 6, total)
            worksheet.write(row, col + 7, fun_number_hit)
            worksheet.write(row, col + 8, fun_number_total)
            row += 1

        workbook.close()

    def buildReport_Excel_klee(dir):
        # Create a workbook and add a worksheet.
        workbook = xlsxwriter.Workbook(dir + '/1_report.xlsx')
        worksheet = workbook.add_worksheet()
        expenses = [['filename', 'coverage', 'time', 'goals', '#fun_hit', '#fun_total', '#tests', '#lines']]
        source_files = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f)]
        for line in sorted(source_files):
            file_name = os.path.basename(line) + '.c'
            raw_data = html_report.get_tests_info_klee(line)
            if "Tests run:" in raw_data:
                number_of_tests = raw_data[len("Tests run:"):raw_data.index("\n")]
            else:
                number_of_tests = 0
            if "no tests" in raw_data or "No coverage" in raw_data:
                coverage = ''
                goals = ''
            else:
                i = raw_data.index("Number of goals: ") + + len("Number of goals:")
                j = raw_data[i:].index("\n", 2)
                goals = raw_data[i:i + j]
                coverage = raw_data[raw_data.index("Coverage:") + len("Coverage: "): raw_data.index("%")]

            was_instrumented, fun_number = html_report.get_function_number_plane_text_other_tools(line)
            if fun_number != "no data" and raw_data != 'no report':
                fun_number = [r.strip("\n") for r in fun_number]
                # coverage = raw_data[3].strip("%")
                test1 = fun_number[1]
                test2 = fun_number[2]
            else:
                coverage_TG = 0
                test1 = ''
                test2 = ''

            number_of_line = html_report.get_number_of_line_in_original_sorse_file(line)

            # print(coverage)
            time = html_report.get_time_consumed(line)
            expenses.append([file_name, coverage, time, goals, test1, test2, number_of_tests, number_of_line])

        row = 0
        col = 0

        for cfile, coverage, time, goals, test1, test2, number_of_tests, number_of_lines in expenses:
            worksheet.write(row, col, cfile)
            worksheet.write(row, col + 1, coverage)
            worksheet.write(row, col + 2, time)
            worksheet.write(row, col + 3, goals)
            worksheet.write(row, col + 4, test1)
            worksheet.write(row, col + 5, test2)
            worksheet.write(row, col + 6, number_of_tests)
            worksheet.write(row, col + 7, number_of_lines)
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
    def get_function_number_plane_text(cls, dir):
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'summary']
        if len(sub_dirs) != 1:
            return (False, 'no data')
        else:
            report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
            exclude = ['usr']
            report_dir = [d for d in report_dir if os.path.basename(d) not in exclude]
            if len(report_dir) != 1:
                return (False, 'no report')
            else:
                file_name = report_dir[0] + '/main.c.gcov.html'
                was_inst, out = html_report.read_lcov_html_report_plane_text_function_number(file_name)
                return (was_inst, out)


    @classmethod
    def get_function_number_plane_text_other_tools(cls, dir):
        name = os.path.basename(dir)
        sub_dirs = [f.path for f in os.scandir(dir) if f.is_dir() and os.path.basename(f) in 'generated-coverage']
        if len(sub_dirs) != 1:
            return (False, 'no data')
        else:
            report_dir = [f.path for f in os.scandir(sub_dirs[0]) if f.is_dir()]
            exclude = ['usr']
            report_dir = [d for d in report_dir if os.path.basename(d) not in exclude]
            if len(report_dir) != 1:
                return (False, 'no report')
            else:
                file_name = report_dir[0] + '/{}.c.gcov.html'.format(name)
                was_inst, out = html_report.read_lcov_html_report_plane_text_function_number(file_name)
                return (was_inst, out)

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

    @classmethod
    def read_lcov_html_report_plane_text_function_number(cls, file_name):
        file = open(file_name, "r")
        lines = file.readlines()
        brench_lines = []
        flag = False
        i = 0
        was_instrumented = False
        for line in lines:
            if "main_oririnal" in line:
                was_instrumented = True

        for line in lines:
            if flag:
                brench_lines.append(re.sub('<[^<]+?>', '', line))
                i += 1
            if 'Functions:' in line:
                brench_lines.append(re.sub('<[^<]+?>', '', line))
                flag = True
            if i == 3:
                break
        return (was_instrumented, brench_lines)

    def reports_clean_up(dir):
        subdir = [os.path.join(dir, o) for o in os.listdir(dir)]
        subdir = [i for i in subdir if not os.path.isfile(i)]
        print(subdir)
        # subdir = subdir[:1]
        rm_list = ["coverage.info", "main.gcda", "main.gcno", "Makefile", "test-coverage", "main.c"]
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

    def is_nonlinear(name):
        filein = open(name, "r", encoding='ISO-8859-1')
        lines = filein.readlines()
        for l in lines:
            if "Nonlinear CHC is currently unsupported" in l:
                return False
        return True

    def copy_nonlinear_smts(dir, out_dir):
        files = sorted([os.path.join(dp, f) for dp, dn, filenames in os.walk(dir)
                        for f in filenames if os.path.splitext(f)[1] == '.smt2'])
        for f in files:
            log_file = os.path.dirname(f) + "/log.txt"
            if html_report.is_nonlinear(log_file):
                shutil.copyfile(f, out_dir + '/' + os.path.basename(f))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='python script for Test Generation')
    insourse = ['-i', '--input_dir']
    kwsourse = {'type': str, 'help': 'dir: where TG run is located'}
    parser.add_argument(*insourse, **kwsourse)
    args = parser.parse_args()

    if args.input_dir is not None:
        if os.path.isdir(args.input_dir):
            dir = args.input_dir
            print('report dir set to {}'.format(dir))
            html_report.buildReport_4(dir)
            html_report.buildReport_Excel(dir)
            exit(0)
    else:
        dir = "/Users/ilyazlatkin/PycharmProjects/results/rerun/fusebmc_sandbox"
        dir = "/Users/ilyazlatkin/PycharmProjects/results/rerun/verifuzz_sandbox"
        dir = "/Users/ilyazlatkin/PycharmProjects/results/rerun/tmp/sandbox2"
        dir = "/home/fmfsu/results/s3_openssl/prttest_sandbox"
        dir = "/Users/ilyazlatkin/PycharmProjects/results/loop_new_tools/prtest_sandbox/"
        dir = "/Users/ilyazlatkin/PycharmProjects/HornLaucher/sandbox/"
        dir = "/Users/ilyazlatkin/PycharmProjects/results/rerun/inv_mode_2_no_term"
        dir = "/Users/ilyazlatkin/Downloads/fusebmc_sandbox"
        dir = "/home/fmfsu/results/s3_openssl_updated/verifuzz_sandbox"
        dir = "/home/fmfsu/PyCharm/sandbox"
        dir = "/home/fmfsu/results/loop_new_tools/TG_lb_max_8"

    # nl = html_report.get_liner_chcs(dir)
    # html_report.clear_sandox("/home/fmfsu/results/product-lines_chc/cmaesfuzz_sandbox", nl)
    # html_report.clear_benchmarkdir("/home/fmfsu/Benchs/product-lines_u_linear", nl)
    # dir = "/home/fmfsu/results/product-lines/fusebmc_sandbox"
    # dir = "/home/fmfsu/results/loop_new_tools/fusebmc_sandbox"
    # dir = "/home/fmfsu/results/loop_new_tools/TG_lb_max_2"
    # dir = "/home/fmfsu/results/s3_openssl_updated/TG_lb_max_9"
    # dir = "/home/fmfsu/PyCharm/sandbox"
    # # dir = "/Users/ilyazlatkin/Downloads/tmp/TG_inv_0_new"
    # dir = "/Users/ilyazlatkin/Downloads/tmp/TG_lb_1_update"
    # dir = "/home/fmfsu/results/loop_new_tools/TG_lb_horn_step_large"
    # dir = "/Users/ilyazlatkin/Downloads/TG_lb_horn_step_large"
    # dir = "/home/fmfsu/results/loop_new_tools/TG_inv_2"
    #dir = "/Users/ilyazlatkin/Downloads/sandbox"
    #dir = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/loops/tg_old_loops"
    #dir = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/s3_openssl_updated/tg_old"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/memorysafe/tg_old"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/loops/tg_old_loops"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/memorysafe/tg_old"
    # #dir = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/memorysafe/TG_lb_max_3"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/s3_openssl_updated/fusebmc_sandbox"


    # html_report.buildReport_4(dir)
    # html_report.buildReport_Excel(dir)
    # dir = '/Users/ilyazlatkin/PycharmProjects/results/lb/1_klee'
    # html_report.buildReport_fusebmc(dir)
    # html_report.buildReport_Excel_klee(dir)
    # html_report.buildReport_fusebmc(dir)
    # html_report.buildReport_Excel_klee(dir)
    #html_report.buildReport_4(dir)
    #html_report.buildReport_Excel(dir)
    #html_report.buildReport_fusebmc(dir)
    # html_report.buildReport_Excel_klee(dir)
    # html_report.buildReport_4(dir)
    # html_report.buildReport_Excel_extra_stat(dir)
    # all_tools = "/Users/ilyazlatkin/PycharmProjects/results/LBTG/loops"
    # subdir = [os.path.join(all_tools, o) for o in os.listdir(all_tools)
    #  if os.path.isdir(os.path.join(all_tools, o)) and "tg_" not in os.path.join(all_tools, o)
    #           and "TG_" not in os.path.join(all_tools, o)]
    # for s in subdir:
    #     print(s)
    #     html_report.buildReport_Excel_klee(s)

    # html_report.copy_nonlinear_smts("/home/fmfsu/results/product-lines/TG_lb_horn_step_small/", "/tmp/product-lines-smt2")
    # dir = "/Users/ilyazlatkin/PycharmProjects/HornLaucher/sandbox/minepump_spec1_product14.cil"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/rerun/inv_mode_2_no_term/SpamAssassin-loop"
    # dir = "/Users/ilyazlatkin/PycharmProjects/results/rerun/inv_mode_2_no_term/mcmillan2006"
    # html_report.get_tg_stat(dir)

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
