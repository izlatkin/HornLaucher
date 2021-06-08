export REPO_PATH=/tmp/aws-c-common
export SEAHOR_BIN=/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin
#export CLANG_PATH=/usr/bin/clang
export CLANG_PATH=/Users/ilyazlatkin/CLionProjects/clang+llvm-10.0.0-x86_64-apple-darwin/bin/clang
#export CLANG_PATH=/usr/bin/gcc
export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

rm tmp.*
${CLANG_PATH} \
-I${REPO_PATH}/include/ -I${REPO_PATH}/verification/cbmc/include/ -I/usr/include \
-c  -emit-llvm -m32  -S -O0 "$1" -o "tmp.ll"

${SEAHOR_BIN}/seapp -o "tmp.bc"  --horn-mixed-sem  "tmp.ll"
${SEAHOR_BIN}/llvm-dis "tmp.bc" -o "tmp.pp.ll"
${SEAHOR_BIN}/seahorn \
--keep-shadows=true --horn-no-verif --sea-dsa=ci -horn-inter-proc -horn-sem-lvl=mem \
--horn-step=large --horn-inline-all   -o "tmp.smt2" "tmp.bc"
${SEAHOR_BIN}/z3 "tmp.smt2"