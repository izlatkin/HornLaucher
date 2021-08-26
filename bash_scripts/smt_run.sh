/usr/bin/clang-10 -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang \
-disable-llvm-optzns -fgnu89-inline -m32 \
-I/home/usea/seahorn/include -o testgen.tmp1.bc ${1}
/home/usea/seahorn/bin/seapp -o testgen.tmp2.bc \
--simplifycfg-sink-common=false --strip-extern=true --promote-assumptions=false \
--kill-vaarg=true --horn-keep-arith-overflow=false testgen.tmp1.bc
/home/usea/seahorn/bin/seapp --simplifycfg-sink-common=false -o testgen.tmp3.bc \
--horn-mixed-sem --ms-reduce-main testgen.tmp2.bc
/home/usea/seahorn/bin/seahorn --keep-shadows=true --sea-dsa=ci -horn-inter-proc \
-horn-sem-lvl=reg -o ${2} testgen.tmp3.bc \
--horn-no-verif --horn-nondet-undef=true --horn-step=small