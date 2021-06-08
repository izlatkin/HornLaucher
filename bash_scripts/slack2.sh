#
#/bin/bash
export REPO_PATH=/tmp/aws-c-common
export SEAHOR_BIN=/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin
export SEAHORN_OPT=-I${REPO_PATH}/include/:${REPO_PATH}/verification/cbmc/include/:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/
export C_FILE=verification/cbmc/proofs/aws_nospec_mask/aws_nospec_mask_harness.c
#export C_FILE=verification/cbmc/proofs/aws_hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c

rm test*
# dep list
#['/tmp/aws-c-common/verification/cbmc/sources/make_common_data_structures.c', '/tmp/aws-c-common/source/allocator.c', '/tmp/aws-c-common/source/error.c', '/tmp/aws-c-common/verification/cbmc/stubs/error.c', '/tmp/aws-c-common/verification/cbmc/uninline/error.c', '/tmp/aws-c-common/source/byte_buf.c', '/tmp/aws-c-common/source/common.c']
${SEAHOR_BIN}/sea fe ${SEAHORN_OPT} ${REPO_PATH}/${C_FILE} \
${REPO_PATH}/source/allocator.c \
${REPO_PATH}/source/error.c \
${REPO_PATH}/verification/cbmc/stubs/error.c \
${REPO_PATH}/verification/cbmc/uninline/error.c \
${REPO_PATH}/source/byte_buf.c \
${REPO_PATH}/source/common.c \
${REPO_PATH}/source/hash_table.c \
-o test.bc.txt
${SEAHOR_BIN}/llvm-dis test.bc.txt
${SEAHOR_BIN}/sea horn --horn-no-verif test.bc.txt -o test.smt2.txt
cat test.smt2.txt | wc -l


#['/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin/sea',
# '-I/tmp/aws-c-common/include/:/tmp/aws-c-common/verification/cbmc/include/:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/',
# 'fe',
# '/tmp/aws-c-common/verification/cbmc/proofs/aws_hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c',
# '/tmp/aws-c-common/source/allocator.c',
# '/tmp/aws-c-common/source/error.c',
# '/tmp/aws-c-common/verification/cbmc/stubs/error.c',
# '/tmp/aws-c-common/verification/cbmc/uninline/error.c',
# '/tmp/aws-c-common/verification/cbmc/stubs/memset_override_no_op.c',
# '/tmp/aws-c-common/source/common.c',
# '/tmp/aws-c-common/source/hash_table.c',
# '-o', '../out/aws_hash_table_init_unbounded_harness.c/aws_hash_table_init_unbounded_harness4b27b.bc.txt']