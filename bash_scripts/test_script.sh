/usr/bin/clang -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns -fgnu89-inline -m32 -I/tmp/aws-c-common/include/ -I/tmp/aws-c-common/verification/cbmc/include/ -I/tmp/aws-c-common/source -I/Users/ilyazlatkin/CLionProjects/seahorn/build/run/include -o aws_nospec_mask_harness.bc /tmp/aws-c-common/verification/cbmc/proofs/aws_nospec_mask/aws_nospec_mask_harness.c \
/tmp/aws-c-common/verification/cbmc/sources/make_common_data_structures.c \
/tmp/aws-c-common/source/allocator.c \
/tmp/aws-c-common/verification/cbmc/stubs/error.c \
/tmp/aws-c-common/source/byte_buf.c \
/tmp/aws-c-common/source/common.c