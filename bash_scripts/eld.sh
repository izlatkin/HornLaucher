#/bin/bash
PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home/bin:${PATH}
#PATH=/Users/ilyazlatkin/Library/Java/JavaVirtualMachines/openjdk-16.0.1/Contents/Home/bin/:${PATH}
JAVA_HOME=/Users/ilyazlatkin/Library/Java/JavaVirtualMachines/openjdk-16.0.1/Contents/Home/
SEAHOR_BIN=/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin
#SMT_FILE=/Users/ilyazlatkin/PycharmProjects/HornLauncher/out/aws_add_size_checked_harness.c/aws_add_size_checked_harness28824.smt2
#SMT_FILE=../bench_horn/const_mod_2.smt2
#SMT_FILE=../bench_horn/1_test1.smt2
SMT_FILE=/Users/ilyazlatkin/PycharmProjects/tmp_horn/bench_horn_java_0.smt2
#SMT_FILE=../out/assert_harness.c/assert_harness3ab4e.smt2
#SMT_FILE=/Users/ilyazlatkin/IdeaProjects/eldarica/regression-tests/horn-smt-lib/a_1.source.smt2
#SMT_FILE=/Users/ilyazlatkin/IdeaProjects/eldarica/regression-tests/horn-arrays/array-elim.smt2
ELD=/Users/ilyazlatkin/IdeaProjects/eldarica/eld
#${ELD} -logSimplifiedSMT ${SMT_FILE}
#${ELD}  -horn -log:1 -hsmt -logSimplifiedSMT ${SMT_FILE}
${ELD} -log:3 -logSimplifiedSMT ${SMT_FILE}