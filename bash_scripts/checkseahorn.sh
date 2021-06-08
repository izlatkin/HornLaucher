#!/bin/bash

rm test.*
#../run/bin/clang -c  -emit-llvm -m64 -S -O0 "$1" -o "$1.ll"
#/usr/bin/clang -I/tmp/aws-c-common/include -I/tmp/aws-c-common/verification/cbmc/include -I/tmp/aws-c-common-build/generated/include  -c -emit-llvm -m32 -S -O0 "$1" -o "test.bc"
/usr/bin/clang -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns -fgnu89-inline -m32 -I/tmp/aws-c-common/include/ -I/tmp/aws-c-common/verification/cbmc/include/ -I/tmp/aws-c-common/source -I/Users/ilyazlatkin/CLionProjects/seahorn/build/run/include -o test.bc "$1"
#/usr/bin/clang -c -emit-llvm -m64 -S -O0 "$1" -o "$1.ll"

#../bin/seapp  -o "$1.bc"  --horn-mixed-sem  "$1.ll"
#/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seapp -o "test.bc"  --horn-mixed-sem  "test.ll"
/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seapp -o "test.pp.bc" --simplifycfg-sink-common=false --strip-extern=false --promote-assumptions=false --kill-vaarg=true --horn-keep-arith-overflow=false "test.bc"

#../run/bin/llvm-dis "$1.bc" -o "$1.pp.ll"
/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/llvm-dis "test.bc" -o "test.pp.ll"

#../bin/seahorn --keep-shadows=true --horn-no-verif --sea-dsa=ci -horn-inter-proc -horn-sem-lvl=mem --horn-step=large --horn-inline-all   -o "$1.smt2" "$1.bc"
#/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seahorn --keep-shadows=true --horn-no-verif --sea-dsa=ci -horn-inter-proc -horn-sem-lvl=mem --horn-step=large --horn-inline-all   -o "test.smt2" "test.bc"
/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/seahorn --keep-shadows=true --sea-dsa=ci -horn-inter-proc -horn-sem-lvl=mem --horn-step=large -o "test.smt2" "test.pp.bc"

#../run/bin/z3 "$1.smt2"
/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/z3 "test.smt2"