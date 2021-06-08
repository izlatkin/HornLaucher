#ifndef _SEAHORN__H_
#define _SEAHORN__H_
#ifdef __cplusplus
extern "C" {
#endif
extern void __VERIFIER_error (void);
extern void __VERIFIER_assume (int);
#ifdef __cplusplus
}
#endif

//ilia definition from aws-c-common
//#define MAX_BUFFER_SIZE         2048
#define MAX_INITIAL_ITEM_ALLOCATION        9223372036854775808ULL
#define MAX_ITEM_SIZE        2
#define MAX_BUFFER_SIZE        10
#define CBMC_OBJECT_BITS        32
#define MAX_STRING_LEN           64
#define MAX_TABLE_SIZE           4
#define MAX_LINKED_LIST_ITEM_ALLOCATION           20
//__CPROVER_size_t    '__CPROVER_size_t'; did you mean '__CPROVER_w_ok'?
//__CPROVER_assume
//__builtin___memset_chk   /verification/cbmc/stubs/memset_override_no_op.c
// __builtin___memset_chk   https://github.com/awslabs/aws-c-common/search?q=__builtin___memset_chk

#define assume __VERIFIER_assume
#define sassert(X) (void)((X) || (__VERIFIER_error (), 0))
#define assert(X) (void)((X) || (__VERIFIER_error (), 0))
//#define __CPROVER_size_t(X) (void)((X) || (__CPROVER_w_ok (), 0))
#endif