export REPO_PATH=/tmp/aws-c-common

/usr/bin/clang -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns -fgnu89-inline -m32 \
-I${REPO_PATH}/include/ -I${REPO_PATH}/verification/cbmc/include/ -I${REPO_PATH}/source -I/Users/ilyazlatkin/CLionProjects/seahorn/build/run/include \
-o test.bc "$1"

/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seapp -o "test.pp.bc" \
--simplifycfg-sink-common=false --strip-extern=false --promote-assumptions=false --kill-vaarg=true --horn-keep-arith-overflow=false \
"test.bc"

/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seapp --simplifycfg-sink-common=false \
-o "test.pp.ms.bc" \
--horn-mixed-sem --ms-reduce-main "test.pp.bc"

/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seaopt \
-f --simplifycfg-sink-common=false -o "test.bc.txt" -O3 --seaopt-enable-indvar=false \
--seaopt-enable-loop-idiom=false --unroll-threshold=150 --unroll-allow-partial=false \
--unroll-partial-threshold=0 --vectorize-loops=false --disable-slp-vectorization=true \
"test.pp.ms.bc"

/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seahorn \
--keep-shadows=true --sea-dsa=ci -horn-inter-proc -horn-sem-lvl=mem \
--horn-step=large -o "test.smt2.txt" "test.bc.txt"

/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/z3 "test.smt2.txt"