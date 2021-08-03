class CoverageUtil:
    """Return a list if strings

    method receives list of files (list of paths to files)
    method merge coverage files to one coverage file (list of str )
    """

    def merge_coverage_for_test_runs(files) -> list[str]:
        if len(files) == 0:
            return []
        covers = [open(f, "r").readlines() for f in files]
        covers = [f for f in covers if len(f) > 1]
        result_list_of_lines = []
        branch_number = 0
        for index, line in enumerate(covers[0]):
            if 'end_of_record' in line:
                result_list_of_lines.append(line)
            else:
                tmp = line.split(':')
                tag = tmp[0]
                data = tmp[1]

                if tag == 'BRDA':
                    c = data.split(',')[-1]
                    if c == '1\n':
                        branch_number += 1
                        result_list_of_lines.append(line)
                    else:
                        flag = 0
                        for j in covers[1:]:
                            if j[index].split(',')[-1] == '1\n':
                                branch_number += 1
                                result_list_of_lines.append(j[index])
                                flag = 1
                                break
                        if flag == 0:
                            result_list_of_lines.append(line)
                elif tag == 'BRH':
                    result_list_of_lines.append("BRH:{}\n".format(branch_number))
                elif tag == 'DA':
                    sum_coverage = 0
                    lc = data.split(',')
                    if is_int(lc[-1]):
                        sum_coverage += int(lc[-1])
                    for j in covers[1:]:
                        if is_int(j[index].split(',')[-1]):
                            sum_coverage += int(j[index].split(',')[-1])
                    nl = 'DA:{},{}\n'.format(lc[0], sum_coverage)
                    result_list_of_lines.append(nl)
                else:
                    result_list_of_lines.append(line)
        return result_list_of_lines

    """ Generate Final Report
    """

    def merge_summary_reports(files):
        if not files:
            return []
        covers = [open(f, "r").readlines() for f in files]
        result_list_of_lines = covers[0]
        for c in covers[1:]:
            result_list_of_lines += c[1:]
        return result_list_of_lines



""" Return True/False

checks if input value can be converted to int
"""


def is_int(val):
    try:
        int(val)
    except ValueError:
        return False
    return True




if __name__ == '__main__':
    # result = CoverageUtil.merge(['/tmp/sandbox/testgen_1/1/coverage.info',
    #                     '/tmp/sandbox/testgen_1/2/coverage.info',
    #                     '/tmp/sandbox/testgen_1/3/coverage.info'])
    # result = CoverageUtil.merge_coverage_for_test_runs(['../sandbox/testgen_2/1/coverage.info', '../sandbox/testgen_2/2/coverage.info'])
    # for i in result:
    #     print(i, end='')
    result = CoverageUtil.merge_coverage_for_test_runs(
        ['../sandbox/testgen_2/summary/summary_coverage.info', '../sandbox/testgen_2/summary/summary_coverage.info'])
    for i in result:
        print(i)