#/bin/xsh -x
set +x
MAX_BUFFER_SIZE ?= 10
DEFINES += -DMAX_BUFFER_SIZE=$(MAX_BUFFER_SIZE)

export SEA_PATH=/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin
export LLVM_DIS_PATH=/Users/ilyazlatkin/CLionProjects/seahorn/build/llvm-prefix/src/llvm-build/bin/llvm-dis
export REPO_PATH=/tmp/aws-c-common
export OUT_BC="out.bc"
export OUT_SMT2="out.smt2"
export OUT_LL="out.ll"
export OPT_1="-I${REPO_PATH}/include/:${REPO_PATH}/verification/cbmc/include/:${REPO_PATH}/source"
#export OPT_1="-I${REPO_PATH}/include/:${REPO_PATH}/verification/cbmc/include/:${REPO_PATH}/source:${REPO_PATH}/verification/cbmc/sources:${REPO_PATH}/verification/cbmc/sources/make_common_data_structures.c:${REPO_PATH}/source/allocator.c:${REPO_PATH}/verification/cbmc/stubs/error.c:${REPO_PATH}/source/byte_buf.c:${REPO_PATH}/source/common.c"
echo "OPT1: " + ${OPT_1}
export OPT_2="-DDEBUG_BUILD -DHAVE_SYSCONF -I${REPO_PATH}/tests -I${REPO_PATH}/include -I${REPO_PATH}/aws-c-common-build/generated/include -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk -Wall -Wstrict-prototypes -fno-omit-frame-pointer -Wno-long-long -fPIC -Wgnu -Wno-gnu-zero-variadic-macro-arguments -Wno-overflow -std=gnu99"
export OPT_2="-I${REPO_PATH}/verification/cbmc/include:${REPO_PATH}/tests:${REPO_PATH}/include:${REPO_PATH}/aws-c-common-build/generated/include -Wall -Wstrict-prototypes -fno-omit-frame-pointer -Wno-long-long -fPIC -Wgnu -Wno-gnu-zero-variadic-macro-arguments -Wno-overflow -std=gnu99"
echo "OPT_2: " + ${OPT_2}
# =======================
# include all files:
#PROOF_SOURCES += $(PROOF_SOURCE)/make_common_data_structures.c
#${REPO_PATH}/verification/cbmc/sources/make_common_data_structures.c
#PROJECT_SOURCES += $(SRCDIR)/source/allocator.c
#${REPO_PATH}/source/allocator.c
#PROOF_SOURCES += $(PROOF_STUB)/error.c
#${REPO_PATH}/verification/cbmc/stubs/error.c
#PROJECT_SOURCES += $(SRCDIR)/source/byte_buf.c
#${REPO_PATH}/source/byte_buf.c
#PROJECT_SOURCES += $(SRCDIR)/source/common.c
#${REPO_PATH}/source/common.c


# bite code
${SEA_PATH}/sea \
${OPT_1} \
fe \
${REPO_PATH}/verification/cbmc/proofs/aws_nospec_mask/aws_nospec_mask_harness.c \
-o \
${OUT_BC}

echo "number of lines in: " + ${OUT_BC}
cat ${OUT_BC} | wc -l

# smt2
${SEA_PATH}/sea horn ${OUT_BC} -o ${OUT_SMT2}
echo "number of lines in: " + ${OUT_SMT2}
cat ${OUT_SMT2} | wc -l


# ll
${LLVM_DIS_PATH} ${OUT_BC} -o ${OUT_LL}
echo "number of lines in: " + ${OUT_LL}
cat ${OUT_LL} | wc -l

#make SHELL='sh -x' 2> make.log