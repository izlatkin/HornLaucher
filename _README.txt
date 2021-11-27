The archive contains text generation results from the article:
"Maximizing Branch Coverage with Constrained Horn Clauses"
Ilia Zlatkin, Grigory Fedyukovich

Below is the brief structure of content:

Following directories contains results of test generation performed by Horntinuum for 5 different modes

1. Horntinuum_inv_mode_0
2. Horntinuum_inv_mode_1
3. Horntinuum_inv_mode_2_lookahead
4. Horntinuum_inv_mode_2_no_term
5. Horntinuum_inv_mode_2_phase_prop_no_term
inside each directory there is html report (1_html_report.html) and excel report (1_report.xlsx)

6. Fusebmc
Fusebmc/1_html_report.html - html report for testg eneration results for Fusebmc
steps to execute:
    fusebmc/fusebmc.py --propertyfile coverage-branches.prp --timeout 900 cfile.c
    TestCov/test-suite-validator/bin/testcov --use-gcov --test-suite test-suite.zip cfile.c

7. Klee
Klee/1_html_report.html - html report for testg eneration results for Klee
steps to execute:
    klee/bin/klee --coverage-only --property-file coverage-statements.prp --max-time 900 cfile.c
    TestCov/test-suite-validator/bin/testcov --use-gcov --test-suite tests.zip cfile.c

8. Verifuzz
Verifuzz/1_html_report.html - html report for test generation results for Verifuzz
steps to execute:
    verifuzz/scripts/verifuzz.py --testcomp --propertyFile coverage-branches.prp
    TestCov/test-suite-validator/bin/testcov --use-gcov --test-suite tests.zip cfile.c