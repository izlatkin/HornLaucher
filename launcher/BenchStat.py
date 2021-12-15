import argparse
import os
import shutil
import glob
import subprocess
import time
from datetime import datetime

import xlsxwriter

from CoverageUtil import CoverageUtil
import ReportBuilder
import random


def init():
    global SOURCE_PATH
    SOURCE_PATH = "/Users/ilyazlatkin/PycharmProjects/results/loops"


def get_cfiles_with_conditions():
    cfiles = [os.path.join(dp, f) for dp, dn, filenames in os.walk(SOURCE_PATH)
              for f in filenames if os.path.splitext(f)[1] == '.c']
    print('number of .c files {} in "{}"'.format(len(cfiles), SOURCE_PATH))
    return cfiles


def get_number_of_line(file):
    f =  open(file, 'r+')
    result = len(f.readlines())
    f.close()
    return result

def get_number_of_for_while(file):
    f = open(file, 'r+')
    result_for = 0
    result_while = 0
    result_assert = 0
    lines = f.readlines()
    for line in lines:
        if "for" in line:
            result_for += 1
        if "while" in line:
            result_while += 1
        if "VERIFIER_assert(" in line and "void __VERIFIER_assert" not in line:
            result_assert += 1

    f.close()
    return (result_for, result_while, result_assert)



def build_stat_excel(dir, files):
    # Create a workbook and add a worksheet.
    workbook = xlsxwriter.Workbook(dir + '/2_stat_report.xlsx')
    worksheet = workbook.add_worksheet()

    source_files = files
    expenses = [['file_name', 'number_of_lines', 'number_of_for', 'number_of_while','# of assert']]
    for i, file in enumerate(sorted(source_files)):
        file_name = os.path.basename(file)
        number_of_lines = get_number_of_line(file)
        number_of_for, number_of_while, number_of_assert = get_number_of_for_while(file)
        expenses.append([file_name, number_of_lines, number_of_for, number_of_while, number_of_assert])

    row = 0
    col = 0

    for cfile, number_of_lines, number_of_for, number_of_while, number_of_assert in expenses:
        worksheet.write(row, col, cfile)
        worksheet.write(row, col + 1, number_of_lines)
        worksheet.write(row, col + 2, number_of_for)
        worksheet.write(row, col + 3, number_of_while)
        worksheet.write(row, col + 4, number_of_assert)

        row += 1

    workbook.close()


def main():
    start_time = time.time()
    init()
    global SOURCE_PATH
    cfiles = get_cfiles_with_conditions()
    print(cfiles)
    build_stat_excel(SOURCE_PATH, cfiles)



if __name__ == "__main__":
    main()
