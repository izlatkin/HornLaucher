import os
import pickle


class html_report:

    def create_header(table):
        header_line = "No.,Sourse code / Bit Code / SMT 2 / LL, SMT2 (# lines), Z3 run, Logs"
        header = header_line.split(",")
        table += "  <tr>\n"
        for column in header:
            table += "    <th>{0}</th>\n".format(column.strip())
        table += "  </tr>\n"
        return table

    def create_hyperlinnk_to_file(text):
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


    def link_to_log(p):
        name = os.path.dirname(p) + "/log.txt"
        return "<a href=\"{0}\">{1}</a>\n".format(name, "log")


    def get_z3_results(p):
        if "z3_error" in p:
            return "timeout"
        if len(p)>15:
            if ('sat' in p[16] and 'unsat' not in p[16]):
                return 'sat'
            if ('unsat' in p[16]):
                return 'unsat'
        else:
            return "-"


    def buildReport(dir, stat):
        # filein = open("forReport", "r", encoding='ISO-8859-1')
        filein = pickle.load(open("save_aws.p", "rb"))
        fileout = open("{}/1_html_report.html".format(dir), "w")
        # data = filein.readlines()
        stat = stat.replace("\n","<br />\n")
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


if __name__ == '__main__':
    html_report.buildReport("../out",'')
