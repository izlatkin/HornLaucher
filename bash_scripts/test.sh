/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea fe \
/Users/ilyazlatkin/CLionProjects/cpp_practise/test/testgen.c -o test.bc

/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea --horn-no-verif horn \
test.bc -o test.smt2


${PATH_TO_SEAHORN}/seahorn/build/run/bin/sea fe testgen.c -o test.bc
${PATH_TO_SEAHORN}/seahorn/build/run/bin/sea --horn-no-verif horn test.bc -o test.smt2