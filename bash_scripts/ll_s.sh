#/bin/bash
SEAHOR_BIN=/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin
LL_FILE=/Users/ilyazlatkin/PycharmProjects/HornLauncher/out/aws_add_size_checked_harness.c/aws_add_size_checked_harness28824.ll
BC_FILE=/Users/ilyazlatkin/PycharmProjects/HornLauncher/out/aws_add_size_checked_harness.c/aws_add_size_checked_harness28824.bc
#O_FILE=/Users/ilyazlatkin/PycharmProjects/HornLauncher/out/aws_add_size_checked_harness.c/aws_add_size_checked_harness28824.o
O_FILE=aws_add_size_checked_harness28824.o
#${SEAHOR_BIN}/llc  -o test.s $LL_FILE
#gcc/clang -o test test.s
#./test
#clang -o test test.s
${SEAHOR_BIN}/llc -filetype=obj $BC_FILE -o $O_FILE
gcc ${O_FILE}
./a.out