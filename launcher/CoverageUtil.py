class CoverageUtil:

    def merge(files):
        #ToDo: add line coverage support
        if (len(files) == 0):
            return 0
        covs = [open(f, "r").readlines() for f in files]
        result = []
        branch_number = 0
        for i, line in enumerate(covs[0]):
            if ('end_of_record' in line):
                result.append(line)
            else:
                tmp = line.split(':')
                tag = tmp[0]
                data = tmp[1]
                if (tag == 'BRDA'):
                    print('merge')
                    c = data.split(',')[-1]
                    print(c)
                    if (c == '1\n'):
                        branch_number += 1
                        result.append(line)
                    else:
                        flag = 0
                        for j in covs[1:]:
                            if j[i].split(',')[-1] == '1\n':
                                branch_number += 1
                                result.append(j[i])
                                flag = 1
                                break
                        if flag == 0:
                            result.append(line)
                elif (tag == 'BRH'):
                    print('summery')
                    result.append(tag + ":" + str(branch_number)+'\n')
                else:
                    print("add line")
                    result.append(line)
        return result






if __name__ == '__main__':
    # result = CoverageUtil.merge(['/tmp/sandbox/testgen_1/1/coverage.info',
    #                     '/tmp/sandbox/testgen_1/2/coverage.info',
    #                     '/tmp/sandbox/testgen_1/3/coverage.info'])
    result = CoverageUtil.merge(['/tmp/sandbox/testgen_2/1/coverage.info',
                                 '/tmp/sandbox/testgen_2/2/coverage.info'])
    print('==============================================')
    for i in result:
        print(i, end='')