; ModuleID = '../out2/aws_hash_iter_done_harness.c/aws_hash_iter_done_harnessdb1dd.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.__NSConstantString_tag = type { i32*, i32, i8*, i32 }
%struct.aws_error_info_list = type { %struct.aws_error_info*, i16 }
%struct.aws_error_info = type { i32, i8*, i8*, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.aws_log_subject_info_list = type { %struct.aws_log_subject_info*, i32 }
%struct.aws_log_subject_info = type { i32, i8*, i8* }
%struct.aws_hash_table = type { %struct.hash_table_state* }
%struct.hash_table_state = type { i64 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*, %struct.aws_allocator*, i32, i32, i32, i32, double, [0 x %struct.hash_table_entry] }
%struct.hash_table_entry = type { %struct.aws_hash_element, i64 }
%struct.aws_hash_element = type { i8*, i8* }
%struct.aws_hash_iter = type { %struct.aws_hash_table*, %struct.aws_hash_element, i32, i32, i32, i32, i8*, i8* }
%struct.store_byte_from_buffer = type { i32, i8 }
%struct.CFAllocatorContext = type { i32, i8*, i8* (i8*)*, void (i8*)*, %struct.__CFString* (i8*)*, i8* (i32, i32, i8*)*, i8* (i8*, i32, i32, i8*)*, void (i8*, i8*)*, i32 (i32, i32, i8*)* }
%struct.__CFString = type opaque
%struct.__CFAllocator = type opaque
%struct.aws_logger = type { %struct.aws_logger_vtable*, %struct.aws_allocator*, i8* }
%struct.aws_logger_vtable = type { i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32)*, void (%struct.aws_logger*)*, i32 (%struct.aws_logger*, i32)* }
%struct.aws_string = type { %struct.aws_allocator*, i32, [1 x i8] }

@default_allocator = internal unnamed_addr global %struct.aws_allocator { i8* (%struct.aws_allocator*, i32)* @s_default_malloc, void (%struct.aws_allocator*, i8*)* @s_default_free, i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* null }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"allocator != ((void*)0)\00", align 1
@.str.1.2 = private unnamed_addr constant [37 x i8] c"/tmp/aws-c-common/source/allocator.c\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"allocator->mem_acquire != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"size != 0\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"allocator->mem_calloc || allocator->mem_acquire\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"num != 0 && size != 0\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"allocator->mem_release != ((void*)0)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"allocator->mem_realloc || allocator->mem_acquire\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"allocator->mem_release\00", align 1
@_unnamed_cfstring_ = private global %struct.__NSConstantString_tag { i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32 1992, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i32 35 }, section "__DATA,__cfstring", align 4 #0
@__CFConstantStringClassReference = external global [0 x i32]
@.str.9 = private unnamed_addr constant [36 x i8] c"CFAllocator wrapping aws_allocator.\00", section "__TEXT,__cstring,cstring_literals", align 1
@tl_thread_handler_context = internal thread_local unnamed_addr global i8* null, align 4
@ERROR_SLOTS = internal global [16 x %struct.aws_error_info_list*] zeroinitializer, align 4
@tl_thread_handler = internal thread_local unnamed_addr global void (i32, i8*)* null, align 4
@s_global_handler = internal unnamed_addr global void (i32, i8*)* null, align 4
@s_global_error_context = internal unnamed_addr global i8* null, align 4
@.str.1.13 = private unnamed_addr constant [11 x i8] c"error_info\00", align 1
@.str.2.14 = private unnamed_addr constant [33 x i8] c"/tmp/aws-c-common/source/error.c\00", align 1
@.str.3.15 = private unnamed_addr constant [23 x i8] c"error_info->error_list\00", align 1
@.str.4.16 = private unnamed_addr constant [18 x i8] c"error_info->count\00", align 1
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 4
@.str.5.17 = private unnamed_addr constant [25 x i8] c"Bad error slot index %d\0A\00", align 1
@.str.6.18 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7.19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@g_set_mempolicy_ptr = internal unnamed_addr global i32 (i32, i32*, i32)* null, align 4
@g_numa_available_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_num_configured_nodes_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_num_possible_cpus_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_node_of_cpu_ptr = internal unnamed_addr global i32 (i32)* null, align 4
@g_libnuma_handle = internal unnamed_addr global i8* null, align 4
@s_common_library_initialized = internal unnamed_addr global i1 false, align 1
@s_list = internal global %struct.aws_error_info_list { %struct.aws_error_info* getelementptr inbounds ([50 x %struct.aws_error_info], [50 x %struct.aws_error_info]* @errors, i32 0, i32 0), i16 50 }, align 8
@s_common_log_subject_list = internal global %struct.aws_log_subject_info_list { %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), i32 5 }, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"libnuma.so\00", align 1
@.str.1.22 = private unnamed_addr constant [13 x i8] c"libnuma.so.1\00", align 1
@.str.2.23 = private unnamed_addr constant [13 x i8] c"libnuma.so.2\00", align 1
@.str.3.24 = private unnamed_addr constant [26 x i8] c"static: libnuma.so loaded\00", align 1
@.str.4.25 = private unnamed_addr constant [14 x i8] c"set_mempolicy\00", align 1
@.str.5.26 = private unnamed_addr constant [31 x i8] c"static: set_mempolicy() loaded\00", align 1
@.str.6.27 = private unnamed_addr constant [39 x i8] c"static: set_mempolicy() failed to load\00", align 1
@.str.7.28 = private unnamed_addr constant [15 x i8] c"numa_available\00", align 1
@.str.8.29 = private unnamed_addr constant [32 x i8] c"static: numa_available() loaded\00", align 1
@.str.9.30 = private unnamed_addr constant [40 x i8] c"static: numa_available() failed to load\00", align 1
@.str.10.31 = private unnamed_addr constant [26 x i8] c"numa_num_configured_nodes\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"static: numa_num_configured_nodes() loaded\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"static: numa_num_configured_nodes() failed to load\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"numa_num_possible_cpus\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"static: numa_num_possible_cpus() loaded\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"static: numa_num_possible_cpus() failed to load\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"numa_node_of_cpu\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"static: numa_node_of_cpu() loaded\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"static: numa_node_of_cpu() failed to load\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"static: libnuma.so failed to load\00", align 1
@s_common_log_subject_infos = internal global [5 x %struct.aws_log_subject_info] [%struct.aws_log_subject_info { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.175, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.177, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.179, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.183, i32 0, i32 0) }], align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"aws-c-common\00", align 1
@.str.175 = private unnamed_addr constant [80 x i8] c"Subject for aws-c-common logging that doesn't belong to any particular category\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"task-scheduler\00", align 1
@.str.177 = private unnamed_addr constant [53 x i8] c"Subject for task scheduler or task specific logging.\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.179 = private unnamed_addr constant [46 x i8] c"Subject for logging thread related functions.\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"memtrace\00", align 1
@.str.181 = private unnamed_addr constant [44 x i8] c"Output from the aws_mem_trace_dump function\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"xml-parser\00", align 1
@.str.183 = private unnamed_addr constant [41 x i8] c"Subject for xml parser specific logging.\00", align 1
@errors = internal global [50 x %struct.aws_error_info] [%struct.aws_error_info { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0) }, %struct.aws_error_info { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0) }, %struct.aws_error_info { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i32 0, i32 0) }, %struct.aws_error_info { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0) }, %struct.aws_error_info { i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.39, i32 0, i32 0) }, %struct.aws_error_info { i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.42, i32 0, i32 0) }, %struct.aws_error_info { i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i32 0, i32 0) }, %struct.aws_error_info { i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.48, i32 0, i32 0) }, %struct.aws_error_info { i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.51, i32 0, i32 0) }, %struct.aws_error_info { i32 9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.54, i32 0, i32 0) }, %struct.aws_error_info { i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.57, i32 0, i32 0) }, %struct.aws_error_info { i32 11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.60, i32 0, i32 0) }, %struct.aws_error_info { i32 12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.63, i32 0, i32 0) }, %struct.aws_error_info { i32 13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.66, i32 0, i32 0) }, %struct.aws_error_info { i32 14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.69, i32 0, i32 0) }, %struct.aws_error_info { i32 15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.72, i32 0, i32 0) }, %struct.aws_error_info { i32 16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.75, i32 0, i32 0) }, %struct.aws_error_info { i32 17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.78, i32 0, i32 0) }, %struct.aws_error_info { i32 18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.81, i32 0, i32 0) }, %struct.aws_error_info { i32 19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.84, i32 0, i32 0) }, %struct.aws_error_info { i32 20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.87, i32 0, i32 0) }, %struct.aws_error_info { i32 21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.90, i32 0, i32 0) }, %struct.aws_error_info { i32 22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.93, i32 0, i32 0) }, %struct.aws_error_info { i32 23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.96, i32 0, i32 0) }, %struct.aws_error_info { i32 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.99, i32 0, i32 0) }, %struct.aws_error_info { i32 25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.102, i32 0, i32 0) }, %struct.aws_error_info { i32 26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.105, i32 0, i32 0) }, %struct.aws_error_info { i32 27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.108, i32 0, i32 0) }, %struct.aws_error_info { i32 28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.111, i32 0, i32 0) }, %struct.aws_error_info { i32 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.114, i32 0, i32 0) }, %struct.aws_error_info { i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.117, i32 0, i32 0) }, %struct.aws_error_info { i32 31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.120, i32 0, i32 0) }, %struct.aws_error_info { i32 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.123, i32 0, i32 0) }, %struct.aws_error_info { i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.126, i32 0, i32 0) }, %struct.aws_error_info { i32 34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.129, i32 0, i32 0) }, %struct.aws_error_info { i32 35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.132, i32 0, i32 0) }, %struct.aws_error_info { i32 36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.135, i32 0, i32 0) }, %struct.aws_error_info { i32 37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.138, i32 0, i32 0) }, %struct.aws_error_info { i32 38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.141, i32 0, i32 0) }, %struct.aws_error_info { i32 39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.144, i32 0, i32 0) }, %struct.aws_error_info { i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.147, i32 0, i32 0) }, %struct.aws_error_info { i32 41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.150, i32 0, i32 0) }, %struct.aws_error_info { i32 42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.153, i32 0, i32 0) }, %struct.aws_error_info { i32 43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.156, i32 0, i32 0) }, %struct.aws_error_info { i32 44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.159, i32 0, i32 0) }, %struct.aws_error_info { i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.162, i32 0, i32 0) }, %struct.aws_error_info { i32 46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.165, i32 0, i32 0) }, %struct.aws_error_info { i32 47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.168, i32 0, i32 0) }, %struct.aws_error_info { i32 48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.171, i32 0, i32 0) }, %struct.aws_error_info { i32 49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.174, i32 0, i32 0) }], align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"AWS_ERROR_SUCCESS\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Success.\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"aws-c-common: AWS_ERROR_SUCCESS, Success.\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"AWS_ERROR_OOM\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"aws-c-common: AWS_ERROR_OOM, Out of memory.\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"AWS_ERROR_NO_SPACE\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Out of space on disk.\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"aws-c-common: AWS_ERROR_NO_SPACE, Out of space on disk.\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"AWS_ERROR_UNKNOWN\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Unknown error.\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"aws-c-common: AWS_ERROR_UNKNOWN, Unknown error.\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"AWS_ERROR_SHORT_BUFFER\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"Buffer is not large enough to hold result.\00", align 1
@.str.39 = private unnamed_addr constant [81 x i8] c"aws-c-common: AWS_ERROR_SHORT_BUFFER, Buffer is not large enough to hold result.\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"AWS_ERROR_OVERFLOW_DETECTED\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Fixed size value overflow was detected.\00", align 1
@.str.42 = private unnamed_addr constant [83 x i8] c"aws-c-common: AWS_ERROR_OVERFLOW_DETECTED, Fixed size value overflow was detected.\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"AWS_ERROR_UNSUPPORTED_OPERATION\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Unsupported operation.\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"aws-c-common: AWS_ERROR_UNSUPPORTED_OPERATION, Unsupported operation.\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"AWS_ERROR_INVALID_BUFFER_SIZE\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Invalid buffer size.\00", align 1
@.str.48 = private unnamed_addr constant [66 x i8] c"aws-c-common: AWS_ERROR_INVALID_BUFFER_SIZE, Invalid buffer size.\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"AWS_ERROR_INVALID_HEX_STR\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"Invalid hex string.\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c"aws-c-common: AWS_ERROR_INVALID_HEX_STR, Invalid hex string.\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"AWS_ERROR_INVALID_BASE64_STR\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Invalid base64 string.\00", align 1
@.str.54 = private unnamed_addr constant [67 x i8] c"aws-c-common: AWS_ERROR_INVALID_BASE64_STR, Invalid base64 string.\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"AWS_ERROR_INVALID_INDEX\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"Invalid index for list access.\00", align 1
@.str.57 = private unnamed_addr constant [70 x i8] c"aws-c-common: AWS_ERROR_INVALID_INDEX, Invalid index for list access.\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"AWS_ERROR_THREAD_INVALID_SETTINGS\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"Invalid thread settings.\00", align 1
@.str.60 = private unnamed_addr constant [74 x i8] c"aws-c-common: AWS_ERROR_THREAD_INVALID_SETTINGS, Invalid thread settings.\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"AWS_ERROR_THREAD_INSUFFICIENT_RESOURCE\00", align 1
@.str.62 = private unnamed_addr constant [34 x i8] c"Insufficent resources for thread.\00", align 1
@.str.63 = private unnamed_addr constant [88 x i8] c"aws-c-common: AWS_ERROR_THREAD_INSUFFICIENT_RESOURCE, Insufficent resources for thread.\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"AWS_ERROR_THREAD_NO_PERMISSIONS\00", align 1
@.str.65 = private unnamed_addr constant [47 x i8] c"Insufficient permissions for thread operation.\00", align 1
@.str.66 = private unnamed_addr constant [94 x i8] c"aws-c-common: AWS_ERROR_THREAD_NO_PERMISSIONS, Insufficient permissions for thread operation.\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"AWS_ERROR_THREAD_NOT_JOINABLE\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Thread not joinable.\00", align 1
@.str.69 = private unnamed_addr constant [66 x i8] c"aws-c-common: AWS_ERROR_THREAD_NOT_JOINABLE, Thread not joinable.\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"AWS_ERROR_THREAD_NO_SUCH_THREAD_ID\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"No such thread ID.\00", align 1
@.str.72 = private unnamed_addr constant [69 x i8] c"aws-c-common: AWS_ERROR_THREAD_NO_SUCH_THREAD_ID, No such thread ID.\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"AWS_ERROR_THREAD_DEADLOCK_DETECTED\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"Deadlock detected in thread.\00", align 1
@.str.75 = private unnamed_addr constant [79 x i8] c"aws-c-common: AWS_ERROR_THREAD_DEADLOCK_DETECTED, Deadlock detected in thread.\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"AWS_ERROR_MUTEX_NOT_INIT\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"Mutex not initialized.\00", align 1
@.str.78 = private unnamed_addr constant [63 x i8] c"aws-c-common: AWS_ERROR_MUTEX_NOT_INIT, Mutex not initialized.\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"AWS_ERROR_MUTEX_TIMEOUT\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"Mutex operation timed out.\00", align 1
@.str.81 = private unnamed_addr constant [66 x i8] c"aws-c-common: AWS_ERROR_MUTEX_TIMEOUT, Mutex operation timed out.\00", align 1
@.str.82 = private unnamed_addr constant [33 x i8] c"AWS_ERROR_MUTEX_CALLER_NOT_OWNER\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"The caller of a mutex operation was not the owner.\00", align 1
@.str.84 = private unnamed_addr constant [99 x i8] c"aws-c-common: AWS_ERROR_MUTEX_CALLER_NOT_OWNER, The caller of a mutex operation was not the owner.\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"AWS_ERROR_MUTEX_FAILED\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"Mutex operation failed.\00", align 1
@.str.87 = private unnamed_addr constant [62 x i8] c"aws-c-common: AWS_ERROR_MUTEX_FAILED, Mutex operation failed.\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"AWS_ERROR_COND_VARIABLE_INIT_FAILED\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"Condition variable initialization failed.\00", align 1
@.str.90 = private unnamed_addr constant [93 x i8] c"aws-c-common: AWS_ERROR_COND_VARIABLE_INIT_FAILED, Condition variable initialization failed.\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"AWS_ERROR_COND_VARIABLE_TIMED_OUT\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"Condition variable wait timed out.\00", align 1
@.str.93 = private unnamed_addr constant [84 x i8] c"aws-c-common: AWS_ERROR_COND_VARIABLE_TIMED_OUT, Condition variable wait timed out.\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"AWS_ERROR_COND_VARIABLE_ERROR_UNKNOWN\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"Condition variable unknown error.\00", align 1
@.str.96 = private unnamed_addr constant [87 x i8] c"aws-c-common: AWS_ERROR_COND_VARIABLE_ERROR_UNKNOWN, Condition variable unknown error.\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"AWS_ERROR_CLOCK_FAILURE\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"Clock operation failed.\00", align 1
@.str.99 = private unnamed_addr constant [63 x i8] c"aws-c-common: AWS_ERROR_CLOCK_FAILURE, Clock operation failed.\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"AWS_ERROR_LIST_EMPTY\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"Empty list.\00", align 1
@.str.102 = private unnamed_addr constant [48 x i8] c"aws-c-common: AWS_ERROR_LIST_EMPTY, Empty list.\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"AWS_ERROR_DEST_COPY_TOO_SMALL\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"Destination of copy is too small.\00", align 1
@.str.105 = private unnamed_addr constant [79 x i8] c"aws-c-common: AWS_ERROR_DEST_COPY_TOO_SMALL, Destination of copy is too small.\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"AWS_ERROR_LIST_EXCEEDS_MAX_SIZE\00", align 1
@.str.107 = private unnamed_addr constant [60 x i8] c"A requested operation on a list would exceed it's max size.\00", align 1
@.str.108 = private unnamed_addr constant [107 x i8] c"aws-c-common: AWS_ERROR_LIST_EXCEEDS_MAX_SIZE, A requested operation on a list would exceed it's max size.\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"AWS_ERROR_LIST_STATIC_MODE_CANT_SHRINK\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c"Attempt to shrink a list in static mode.\00", align 1
@.str.111 = private unnamed_addr constant [95 x i8] c"aws-c-common: AWS_ERROR_LIST_STATIC_MODE_CANT_SHRINK, Attempt to shrink a list in static mode.\00", align 1
@.str.112 = private unnamed_addr constant [30 x i8] c"AWS_ERROR_PRIORITY_QUEUE_FULL\00", align 1
@.str.113 = private unnamed_addr constant [66 x i8] c"Attempt to add items to a full preallocated queue in static mode.\00", align 1
@.str.114 = private unnamed_addr constant [111 x i8] c"aws-c-common: AWS_ERROR_PRIORITY_QUEUE_FULL, Attempt to add items to a full preallocated queue in static mode.\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"AWS_ERROR_PRIORITY_QUEUE_EMPTY\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"Attempt to pop an item from an empty queue.\00", align 1
@.str.117 = private unnamed_addr constant [90 x i8] c"aws-c-common: AWS_ERROR_PRIORITY_QUEUE_EMPTY, Attempt to pop an item from an empty queue.\00", align 1
@.str.118 = private unnamed_addr constant [34 x i8] c"AWS_ERROR_PRIORITY_QUEUE_BAD_NODE\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"Bad node handle passed to remove.\00", align 1
@.str.120 = private unnamed_addr constant [83 x i8] c"aws-c-common: AWS_ERROR_PRIORITY_QUEUE_BAD_NODE, Bad node handle passed to remove.\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"AWS_ERROR_HASHTBL_ITEM_NOT_FOUND\00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c"Item not found in hash table.\00", align 1
@.str.123 = private unnamed_addr constant [78 x i8] c"aws-c-common: AWS_ERROR_HASHTBL_ITEM_NOT_FOUND, Item not found in hash table.\00", align 1
@.str.124 = private unnamed_addr constant [27 x i8] c"AWS_ERROR_INVALID_DATE_STR\00", align 1
@.str.125 = private unnamed_addr constant [45 x i8] c"Date string is invalid and cannot be parsed.\00", align 1
@.str.126 = private unnamed_addr constant [87 x i8] c"aws-c-common: AWS_ERROR_INVALID_DATE_STR, Date string is invalid and cannot be parsed.\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"AWS_ERROR_INVALID_ARGUMENT\00", align 1
@.str.128 = private unnamed_addr constant [46 x i8] c"An invalid argument was passed to a function.\00", align 1
@.str.129 = private unnamed_addr constant [88 x i8] c"aws-c-common: AWS_ERROR_INVALID_ARGUMENT, An invalid argument was passed to a function.\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"AWS_ERROR_RANDOM_GEN_FAILED\00", align 1
@.str.131 = private unnamed_addr constant [59 x i8] c"A call to the random number generator failed. Retry later.\00", align 1
@.str.132 = private unnamed_addr constant [102 x i8] c"aws-c-common: AWS_ERROR_RANDOM_GEN_FAILED, A call to the random number generator failed. Retry later.\00", align 1
@.str.133 = private unnamed_addr constant [33 x i8] c"AWS_ERROR_MALFORMED_INPUT_STRING\00", align 1
@.str.134 = private unnamed_addr constant [81 x i8] c"An input string was passed to a parser and the string was incorrectly formatted.\00", align 1
@.str.135 = private unnamed_addr constant [129 x i8] c"aws-c-common: AWS_ERROR_MALFORMED_INPUT_STRING, An input string was passed to a parser and the string was incorrectly formatted.\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"AWS_ERROR_UNIMPLEMENTED\00", align 1
@.str.137 = private unnamed_addr constant [47 x i8] c"A function was called, but is not implemented.\00", align 1
@.str.138 = private unnamed_addr constant [86 x i8] c"aws-c-common: AWS_ERROR_UNIMPLEMENTED, A function was called, but is not implemented.\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"AWS_ERROR_INVALID_STATE\00", align 1
@.str.140 = private unnamed_addr constant [34 x i8] c"An invalid state was encountered.\00", align 1
@.str.141 = private unnamed_addr constant [73 x i8] c"aws-c-common: AWS_ERROR_INVALID_STATE, An invalid state was encountered.\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"AWS_ERROR_ENVIRONMENT_GET\00", align 1
@.str.143 = private unnamed_addr constant [58 x i8] c"System call failure when getting an environment variable.\00", align 1
@.str.144 = private unnamed_addr constant [99 x i8] c"aws-c-common: AWS_ERROR_ENVIRONMENT_GET, System call failure when getting an environment variable.\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"AWS_ERROR_ENVIRONMENT_SET\00", align 1
@.str.146 = private unnamed_addr constant [58 x i8] c"System call failure when setting an environment variable.\00", align 1
@.str.147 = private unnamed_addr constant [99 x i8] c"aws-c-common: AWS_ERROR_ENVIRONMENT_SET, System call failure when setting an environment variable.\00", align 1
@.str.148 = private unnamed_addr constant [28 x i8] c"AWS_ERROR_ENVIRONMENT_UNSET\00", align 1
@.str.149 = private unnamed_addr constant [60 x i8] c"System call failure when unsetting an environment variable.\00", align 1
@.str.150 = private unnamed_addr constant [103 x i8] c"aws-c-common: AWS_ERROR_ENVIRONMENT_UNSET, System call failure when unsetting an environment variable.\00", align 1
@.str.151 = private unnamed_addr constant [28 x i8] c"AWS_ERROR_STREAM_UNSEEKABLE\00", align 1
@.str.152 = private unnamed_addr constant [40 x i8] c"Stream does not support seek operations\00", align 1
@.str.153 = private unnamed_addr constant [83 x i8] c"aws-c-common: AWS_ERROR_STREAM_UNSEEKABLE, Stream does not support seek operations\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"AWS_ERROR_NO_PERMISSION\00", align 1
@.str.155 = private unnamed_addr constant [63 x i8] c"User does not have permission to perform the requested action.\00", align 1
@.str.156 = private unnamed_addr constant [102 x i8] c"aws-c-common: AWS_ERROR_NO_PERMISSION, User does not have permission to perform the requested action.\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"AWS_ERROR_FILE_INVALID_PATH\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"Invalid file path.\00", align 1
@.str.159 = private unnamed_addr constant [62 x i8] c"aws-c-common: AWS_ERROR_FILE_INVALID_PATH, Invalid file path.\00", align 1
@.str.160 = private unnamed_addr constant [27 x i8] c"AWS_ERROR_MAX_FDS_EXCEEDED\00", align 1
@.str.161 = private unnamed_addr constant [45 x i8] c"The maximum number of fds has been exceeded.\00", align 1
@.str.162 = private unnamed_addr constant [87 x i8] c"aws-c-common: AWS_ERROR_MAX_FDS_EXCEEDED, The maximum number of fds has been exceeded.\00", align 1
@.str.163 = private unnamed_addr constant [27 x i8] c"AWS_ERROR_SYS_CALL_FAILURE\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"System call failure\00", align 1
@.str.165 = private unnamed_addr constant [62 x i8] c"aws-c-common: AWS_ERROR_SYS_CALL_FAILURE, System call failure\00", align 1
@.str.166 = private unnamed_addr constant [46 x i8] c"AWS_ERROR_C_STRING_BUFFER_NOT_NULL_TERMINATED\00", align 1
@.str.167 = private unnamed_addr constant [103 x i8] c"A c-string like buffer was passed but a null terminator was not found within the bounds of the buffer.\00", align 1
@.str.168 = private unnamed_addr constant [164 x i8] c"aws-c-common: AWS_ERROR_C_STRING_BUFFER_NOT_NULL_TERMINATED, A c-string like buffer was passed but a null terminator was not found within the bounds of the buffer.\00", align 1
@.str.169 = private unnamed_addr constant [33 x i8] c"AWS_ERROR_STRING_MATCH_NOT_FOUND\00", align 1
@.str.170 = private unnamed_addr constant [61 x i8] c"The specified substring was not present in the input string.\00", align 1
@.str.171 = private unnamed_addr constant [109 x i8] c"aws-c-common: AWS_ERROR_STRING_MATCH_NOT_FOUND, The specified substring was not present in the input string.\00", align 1
@.str.172 = private unnamed_addr constant [25 x i8] c"AWS_ERROR_DIVIDE_BY_ZERO\00", align 1
@.str.173 = private unnamed_addr constant [36 x i8] c"Attempt to divide a number by zero.\00", align 1
@.str.174 = private unnamed_addr constant [76 x i8] c"aws-c-common: AWS_ERROR_DIVIDE_BY_ZERO, Attempt to divide a number by zero.\00", align 1
@.str.21.32 = private unnamed_addr constant [89 x i8] c"aws_common_library_init() must be called before using any functionality in aws-c-common.\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"s_common_library_initialized\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"/tmp/aws-c-common/source/common.c\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_iter_done_harness() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %1 = alloca %struct.aws_hash_table, align 4
  %2 = alloca %struct.aws_hash_iter, align 4
  %3 = alloca %struct.store_byte_from_buffer, align 4
  %4 = bitcast %struct.aws_hash_table* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15
  call void @ensure_allocated_hash_table(%struct.aws_hash_table* nonnull %1, i32 4) #15
  call void @seahorn.fn.enter() #15
  %5 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %1, i32 0, i32 0
  %6 = load %struct.hash_table_state*, %struct.hash_table_state** %5, align 4, !tbaa !5
  %7 = icmp eq %struct.hash_table_state* %6, null
  br i1 %7, label %aws_hash_table_is_valid.exit, label %hash_table_state_is_valid.exit.i

hash_table_state_is_valid.exit.i:                 ; preds = %0
  call void @seahorn.fn.enter() #15
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 0
  %9 = load i64 (i8*)*, i64 (i8*)** %8, align 4, !tbaa !10
  %10 = icmp ne i64 (i8*)* %9, null
  %11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 1
  %12 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %11, align 4, !tbaa !10
  %13 = icmp ne i1 (i8*, i8*)* %12, null
  %14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 4
  %15 = load %struct.aws_allocator*, %struct.aws_allocator** %14, align 4, !tbaa !10
  %16 = icmp ne %struct.aws_allocator* %15, null
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 5
  %18 = load i32, i32* %17, align 4, !tbaa !11
  %19 = icmp ugt i32 %18, 1
  call void @seahorn.fn.enter() #15
  %20 = call i32 @llvm.ctpop.i32(i32 %18) #15, !range !13
  %21 = icmp eq i32 %20, 1
  %22 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 6
  %23 = load i32, i32* %22, align 4, !tbaa !11
  %24 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 7
  %25 = load i32, i32* %24, align 4, !tbaa !11
  %26 = icmp ule i32 %23, %25
  %27 = icmp ult i32 %25, %18
  %28 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 8
  %29 = load i32, i32* %28, align 4, !tbaa !11
  %30 = add i32 %18, -1
  %31 = icmp eq i32 %29, %30
  %32 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 9
  %33 = load double, double* %32, align 4, !tbaa !14
  %34 = fcmp oeq double %33, 0x3FEE666666666666
  %or.cond.i.i = and i1 %10, %13
  %or.cond3.i.i = and i1 %or.cond.i.i, %16
  %or.cond5.i.i = and i1 %or.cond3.i.i, %19
  %or.cond7.i.i = and i1 %or.cond5.i.i, %21
  %or.cond9.i.i = and i1 %or.cond7.i.i, %26
  %or.cond11.i.i = and i1 %27, %or.cond9.i.i
  %or.cond13.i.i = and i1 %31, %or.cond11.i.i
  %or.cond15.i.i = and i1 %34, %or.cond13.i.i
  br label %aws_hash_table_is_valid.exit

aws_hash_table_is_valid.exit:                     ; preds = %0, %hash_table_state_is_valid.exit.i
  %35 = phi i1 [ false, %0 ], [ %or.cond15.i.i, %hash_table_state_is_valid.exit.i ]
  call void @verifier.assume(i1 %35)
  %36 = bitcast %struct.aws_hash_iter* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %36) #15
  %37 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %2, i32 0, i32 0
  store %struct.aws_hash_table* %1, %struct.aws_hash_table** %37, align 4, !tbaa !16
  %38 = call fastcc zeroext i1 @aws_hash_iter_is_valid(%struct.aws_hash_iter* nonnull %2)
  call void @verifier.assume(i1 %38)
  %39 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %2, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -3
  %42 = icmp eq i32 %41, 0
  call void @verifier.assume(i1 %42)
  %43 = bitcast %struct.store_byte_from_buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #15
  call void @save_byte_from_hash_table(%struct.aws_hash_table* nonnull %1, %struct.store_byte_from_buffer* nonnull %3) #15
  call void @seahorn.fn.enter() #15
  %44 = call fastcc zeroext i1 @aws_hash_iter_is_valid(%struct.aws_hash_iter* nonnull %2)
  call void @seahorn.fn.enter() #15
  %45 = load %struct.hash_table_state*, %struct.hash_table_state** %5, align 4, !tbaa !5
  %46 = icmp eq %struct.hash_table_state* %45, null
  br i1 %46, label %aws_hash_table_is_valid.exit10, label %hash_table_state_is_valid.exit.i9

hash_table_state_is_valid.exit.i9:                ; preds = %aws_hash_table_is_valid.exit
  call void @seahorn.fn.enter() #15
  call void @seahorn.fn.enter() #15
  br label %aws_hash_table_is_valid.exit10

aws_hash_table_is_valid.exit10:                   ; preds = %aws_hash_table_is_valid.exit, %hash_table_state_is_valid.exit.i9
  call void @check_hash_table_unchanged(%struct.aws_hash_table* nonnull %1, %struct.store_byte_from_buffer* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #15
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %36) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @ensure_allocated_hash_table(%struct.aws_hash_table*, i32) local_unnamed_addr #3

declare void @save_byte_from_hash_table(%struct.aws_hash_table*, %struct.store_byte_from_buffer*) local_unnamed_addr #3

declare void @check_hash_table_unchanged(%struct.aws_hash_table*, %struct.store_byte_from_buffer*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_allocator_is_valid(%struct.aws_allocator* nocapture readnone %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_default_allocator() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15
  store i8* null, i8** %3, align 4, !tbaa !10
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #15
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #1 {
  tail call void @seahorn.fn.enter() #15
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #1 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #15
  %6 = icmp ne i32 %3, 0
  %7 = icmp ne i8* %1, null
  %or.cond = and i1 %7, %6
  br i1 %or.cond, label %9, label %8

8:                                                ; preds = %4
  tail call void @free(i8* %1)
  br label %21

9:                                                ; preds = %4
  %10 = icmp ugt i32 %3, %2
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  tail call void @seahorn.fn.enter() #15
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #15
  store i8* null, i8** %5, align 4, !tbaa !10
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #15
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #15
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #15
  call void @seahorn.fn.enter() #15
  call void @free(i8* nonnull %1) #15
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #1 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #15
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #15
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15
  store i8* null, i8** %4, align 4, !tbaa !10
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #15
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #15
  br label %15

15:                                               ; preds = %14, %3
  ret i8* %12
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nofree
declare i32 @posix_memalign(i8**, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define internal fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 115) #16
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %7 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %6, align 4, !tbaa !20
  %8 = icmp eq i8* (%struct.aws_allocator*, i32)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 116) #16
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 118) #16
  unreachable

13:                                               ; preds = %10
  %14 = tail call i8* %7(%struct.aws_allocator* nonnull %0, i32 %1) #15
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %aws_raise_error.exit

16:                                               ; preds = %13
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %17 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %17(i32 1, i8* %20) #15
  br label %aws_raise_error.exit

21:                                               ; preds = %16
  %22 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %aws_raise_error.exit, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %22(i32 1, i8* %25) #15
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %24, %21, %19, %13
  ret i8* %14
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %2(i32 %0, i8* %5) #15
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %7(i32 %0, i8* %10) #15
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i8* @aws_mem_calloc(%struct.aws_allocator* %0, i32 %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = icmp eq %struct.aws_allocator* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 128) #16
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  %8 = load i8* (%struct.aws_allocator*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)** %7, align 4, !tbaa !22
  %9 = icmp eq i8* (%struct.aws_allocator*, i32, i32)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %12 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %11, align 4, !tbaa !20
  %13 = icmp eq i8* (%struct.aws_allocator*, i32)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 129) #16
  unreachable

15:                                               ; preds = %10, %6
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %2, 0
  %or.cond = and i1 %16, %17
  br i1 %or.cond, label %19, label %18

18:                                               ; preds = %15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 131) #16
  unreachable

19:                                               ; preds = %15
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %20 = mul i32 %2, %1
  br i1 %9, label %34, label %21

21:                                               ; preds = %19
  %22 = tail call i8* %8(%struct.aws_allocator* nonnull %0, i32 %1, i32 %2) #15
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %aws_raise_error.exit

24:                                               ; preds = %21
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %25 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %25(i32 1, i8* %28) #15
  br label %aws_raise_error.exit

29:                                               ; preds = %24
  %30 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %31 = icmp eq void (i32, i8*)* %30, null
  br i1 %31, label %aws_raise_error.exit, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %30(i32 1, i8* %33) #15
  br label %aws_raise_error.exit

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %36 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %35, align 4, !tbaa !20
  %37 = tail call i8* %36(%struct.aws_allocator* nonnull %0, i32 %20) #15
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %40 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %41 = icmp eq void (i32, i8*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %40(i32 1, i8* %43) #15
  br label %aws_raise_error.exit

44:                                               ; preds = %39
  %45 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %46 = icmp eq void (i32, i8*)* %45, null
  br i1 %46, label %aws_raise_error.exit, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %45(i32 1, i8* %48) #15
  br label %aws_raise_error.exit

49:                                               ; preds = %34
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %37, i8 0, i32 %20, i1 false) #15
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %47, %44, %42, %32, %29, %27, %49, %21
  %.1 = phi i8* [ %22, %21 ], [ %37, %49 ], [ null, %27 ], [ null, %29 ], [ null, %32 ], [ null, %42 ], [ null, %44 ], [ null, %47 ]
  ret i8* %.1
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !23
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !23
  ret void
}

; Function Attrs: nounwind ssp uwtable
declare i8* @aws_mem_acquire_many(%struct.aws_allocator*, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_release(%struct.aws_allocator* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #16
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %7 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %6, align 4, !tbaa !24
  %8 = icmp eq void (%struct.aws_allocator*, i8*)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #16
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i8* %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void %7(%struct.aws_allocator* nonnull %0, i8* nonnull %1) #15
  br label %13

13:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %0, i8** nocapture %1, i32 %2, i32 %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %5 = icmp eq %struct.aws_allocator* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 224) #16
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %9 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %8, align 4, !tbaa !25
  %10 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %13 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %12, align 4, !tbaa !20
  %14 = icmp eq i8* (%struct.aws_allocator*, i32)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 225) #16
  unreachable

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %18 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !24
  %19 = icmp eq void (%struct.aws_allocator*, i8*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 226) #16
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8*, i8** %1, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %25 = icmp eq i8* %24, null
  br i1 %25, label %aws_mem_release.exit, label %26

26:                                               ; preds = %23
  tail call void %18(%struct.aws_allocator* nonnull %0, i8* nonnull %24) #15
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %23, %26
  store i8* null, i8** %1, align 4, !tbaa !10
  br label %aws_raise_error.exit

27:                                               ; preds = %21
  br i1 %10, label %43, label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %1, align 4, !tbaa !10
  %30 = tail call i8* %9(%struct.aws_allocator* nonnull %0, i8* %29, i32 %2, i32 %3) #15
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %33(i32 1, i8* %36) #15
  br label %aws_raise_error.exit

37:                                               ; preds = %32
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %38(i32 1, i8* %41) #15
  br label %aws_raise_error.exit

42:                                               ; preds = %28
  store i8* %30, i8** %1, align 4, !tbaa !10
  br label %aws_raise_error.exit

43:                                               ; preds = %27
  %44 = icmp ugt i32 %3, %2
  br i1 %44, label %45, label %aws_raise_error.exit

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %47 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %46, align 4, !tbaa !20
  %48 = tail call i8* %47(%struct.aws_allocator* nonnull %0, i32 %3) #15
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %51 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %51(i32 1, i8* %54) #15
  br label %aws_raise_error.exit

55:                                               ; preds = %50
  %56 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %57 = icmp eq void (i32, i8*)* %56, null
  br i1 %57, label %aws_raise_error.exit, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %56(i32 1, i8* %59) #15
  br label %aws_raise_error.exit

60:                                               ; preds = %45
  %61 = load i8*, i8** %1, align 4, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %48, i8* align 1 %61, i32 %2, i1 false) #15
  %62 = getelementptr inbounds i8, i8* %48, i32 %2
  %63 = sub i32 %3, %2
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %62, i8 0, i32 %63, i1 false) #15
  %64 = load i8*, i8** %1, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %65 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !24
  %66 = icmp eq void (%struct.aws_allocator*, i8*)* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #16
  unreachable

68:                                               ; preds = %60
  %69 = icmp eq i8* %64, null
  br i1 %69, label %aws_mem_release.exit7, label %70

70:                                               ; preds = %68
  tail call void %65(%struct.aws_allocator* nonnull %0, i8* nonnull %64) #15
  br label %aws_mem_release.exit7

aws_mem_release.exit7:                            ; preds = %68, %70
  store i8* %48, i8** %1, align 4, !tbaa !10
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %58, %55, %53, %40, %37, %35, %aws_mem_release.exit7, %43, %42, %aws_mem_release.exit
  %.2 = phi i32 [ 0, %aws_mem_release.exit ], [ 0, %42 ], [ 0, %43 ], [ 0, %aws_mem_release.exit7 ], [ -1, %35 ], [ -1, %37 ], [ -1, %40 ], [ -1, %53 ], [ -1, %55 ], [ -1, %58 ]
  ret i32 %.2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = alloca %struct.CFAllocatorContext, align 4
  %3 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %4 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %3, align 4, !tbaa !25
  %5 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %4, null
  %spec.store.select = select i1 %5, i8* (i8*, i32, i32, i8*)* null, i8* (i8*, i32, i32, i8*)* @s_cf_allocator_reallocate
  %6 = bitcast %struct.CFAllocatorContext* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %6) #15
  %7 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 0
  store i32 0, i32* %7, align 4, !tbaa !26
  %8 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 1
  %9 = bitcast i8** %8 to %struct.aws_allocator**
  store %struct.aws_allocator* %0, %struct.aws_allocator** %9, align 4, !tbaa !28
  %10 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 2
  store i8* (i8*)* null, i8* (i8*)** %10, align 4, !tbaa !29
  %11 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %11, align 4, !tbaa !30
  %12 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 4
  store %struct.__CFString* (i8*)* @s_cf_allocator_copy_description, %struct.__CFString* (i8*)** %12, align 4, !tbaa !31
  %13 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 5
  store i8* (i32, i32, i8*)* @s_cf_allocator_allocate, i8* (i32, i32, i8*)** %13, align 4, !tbaa !32
  %14 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 6
  store i8* (i8*, i32, i32, i8*)* %spec.store.select, i8* (i8*, i32, i32, i8*)** %14, align 4, !tbaa !33
  %15 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 7
  store void (i8*, i8*)* @s_cf_allocator_deallocate, void (i8*, i8*)** %15, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 8
  store i32 (i32, i32, i8*)* @s_cf_allocator_preferred_size, i32 (i32, i32, i8*)** %16, align 4, !tbaa !35
  %17 = call %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator* null, %struct.CFAllocatorContext* nonnull %2) #15
  %18 = icmp eq %struct.__CFAllocator* %17, null
  br i1 %18, label %19, label %aws_raise_error.exit

19:                                               ; preds = %1
  call void @seahorn.fn.enter() #15
  call void @seahorn.fn.enter() #15
  %20 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %21 = icmp eq void (i32, i8*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  call void %20(i32 1, i8* %23) #15
  br label %aws_raise_error.exit

24:                                               ; preds = %19
  %25 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %aws_raise_error.exit, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  call void %25(i32 1, i8* %28) #15
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %27, %24, %22, %1
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %6) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_reallocate(i8* %0, i32 %1, i32 %2, i8* %3) #1 {
  tail call void @seahorn.fn.enter() #15
  %5 = alloca i8*, align 4
  %6 = bitcast i8* %3 to %struct.aws_allocator*
  %7 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15
  %8 = getelementptr inbounds i8, i8* %0, i32 -4
  store i8* %8, i8** %5, align 4, !tbaa !10
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 1
  %11 = call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %6, i8** nonnull %5, i32 %10, i32 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 4, !tbaa !10
  %15 = bitcast i8* %14 to i32*
  store i32 %1, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %14, i32 4
  br label %17

17:                                               ; preds = %13, %4
  %.0 = phi i8* [ %16, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.__CFString* @s_cf_allocator_copy_description(i8* nocapture readnone %0) #1 {
  tail call void @seahorn.fn.enter() #15
  ret %struct.__CFString* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to %struct.__CFString*)
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_allocate(i32 %0, i32 %1, i8* %2) #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = bitcast i8* %2 to %struct.aws_allocator*
  %5 = add i32 %0, 4
  %6 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %4, i32 %5)
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = bitcast i8* %6 to i32*
  store i32 %5, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %6, i32 4
  br label %11

11:                                               ; preds = %8, %3
  %.0 = phi i8* [ %10, %8 ], [ null, %3 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_cf_allocator_deallocate(i8* %0, i8* %1) #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = bitcast i8* %1 to %struct.aws_allocator*
  %4 = getelementptr inbounds i8, i8* %0, i32 -4
  tail call void @seahorn.fn.enter() #15
  %5 = icmp eq i8* %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #16
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i32 4
  %9 = bitcast i8* %8 to void (%struct.aws_allocator*, i8*)**
  %10 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %9, align 4, !tbaa !24
  %11 = icmp eq void (%struct.aws_allocator*, i8*)* %10, null
  br i1 %11, label %12, label %aws_mem_release.exit

12:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #16
  unreachable

aws_mem_release.exit:                             ; preds = %7
  tail call void %10(%struct.aws_allocator* nonnull %3, i8* nonnull %4) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @s_cf_allocator_preferred_size(i32 %0, i32 %1, i8* nocapture readnone %2) #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = add i32 %0, 4
  ret i32 %4
}

declare %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator*, %struct.CFAllocatorContext*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = bitcast %struct.__CFAllocator* %0 to i8*
  tail call void @CFRelease(i8* %2) #15
  ret void
}

declare void @CFRelease(i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_last_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !10
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_error_info* @get_error_by_code(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = and i32 %0, 1023
  %6 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %7 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %6, align 4, !tbaa !10
  %8 = icmp eq %struct.aws_error_info_list* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !36
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 0
  %16 = load %struct.aws_error_info*, %struct.aws_error_info** %15, align 4, !tbaa !39
  %17 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %16, i32 %5
  br label %18

18:                                               ; preds = %14, %9, %3, %1
  %.1 = phi %struct.aws_error_info* [ null, %1 ], [ %17, %14 ], [ null, %9 ], [ null, %3 ]
  ret %struct.aws_error_info* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !10
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_lib_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !10
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_debug_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !10
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_raise_error_private(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %2(i32 %0, i8* %5) #15
  br label %11

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %7(i32 %0, i8* %10) #15
  br label %11

11:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_reset_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_restore_error(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  store void (i32, i8*)* %0, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  store i8* %1, i8** @s_global_error_context, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  store void (i32, i8*)* %0, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  store i8* %1, i8** @tl_thread_handler_context, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_register_error_info(%struct.aws_error_info_list* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 133) #16
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !39
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 134) #16
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !36
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 135) #16
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !40
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !10
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 144) #16
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* %0, %struct.aws_error_info_list** %23, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 167) #16
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !39
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 168) #16
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !36
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 169) #16
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !40
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !10
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 178) #16
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %23, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_translate_and_raise_io_error(i32 %0) unnamed_addr #1 {
NodeBlock25:
  tail call void @seahorn.fn.enter() #15
  %Pivot26 = icmp slt i32 %0, 22
  br i1 %Pivot26, label %NodeBlock9, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %Pivot24 = icmp slt i32 %0, 28
  br i1 %Pivot24, label %NodeBlock13, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %Pivot22 = icmp eq i32 %0, 28
  br i1 %Pivot22, label %61, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %Pivot20 = icmp slt i32 %0, 63
  br i1 %Pivot20, label %LeafBlock15, label %LeafBlock17

LeafBlock17:                                      ; preds = %NodeBlock19
  %SwitchLeaf18 = icmp eq i32 %0, 63
  br i1 %SwitchLeaf18, label %31, label %NewDefault

LeafBlock15:                                      ; preds = %NodeBlock19
  %SwitchLeaf16 = icmp eq i32 %0, 29
  br i1 %SwitchLeaf16, label %11, label %NewDefault

NodeBlock13:                                      ; preds = %NodeBlock23
  %Pivot14 = icmp slt i32 %0, 23
  br i1 %Pivot14, label %1, label %LeafBlock11

LeafBlock11:                                      ; preds = %NodeBlock13
  %SwitchLeaf12 = icmp eq i32 %0, 23
  br i1 %SwitchLeaf12, label %41, label %NewDefault

NodeBlock9:                                       ; preds = %NodeBlock25
  %Pivot10 = icmp slt i32 %0, 12
  br i1 %Pivot10, label %NodeBlock, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %Pivot8 = icmp eq i32 %0, 12
  br i1 %Pivot8, label %51, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %Pivot6 = icmp slt i32 %0, 21
  br i1 %Pivot6, label %LeafBlock3, label %31

LeafBlock3:                                       ; preds = %NodeBlock5
  %SwitchLeaf4 = icmp eq i32 %0, 13
  br i1 %SwitchLeaf4, label %21, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock9
  %Pivot = icmp slt i32 %0, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock1

LeafBlock1:                                       ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 2
  br i1 %SwitchLeaf2, label %31, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 1
  br i1 %SwitchLeaf, label %21, label %NewDefault

1:                                                ; preds = %NodeBlock13
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %2(i32 34, i8* %5) #15
  br label %aws_raise_error.20.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error.20.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %7(i32 34, i8* %10) #15
  br label %aws_raise_error.20.exit

11:                                               ; preds = %LeafBlock15
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %12(i32 42, i8* %15) #15
  br label %aws_raise_error.20.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.20.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %17(i32 42, i8* %20) #15
  br label %aws_raise_error.20.exit

21:                                               ; preds = %LeafBlock, %LeafBlock3
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %22(i32 43, i8* %25) #15
  br label %aws_raise_error.20.exit

26:                                               ; preds = %21
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.20.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %27(i32 43, i8* %30) #15
  br label %aws_raise_error.20.exit

31:                                               ; preds = %LeafBlock1, %NodeBlock5, %LeafBlock17
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %32 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %32(i32 44, i8* %35) #15
  br label %aws_raise_error.20.exit

36:                                               ; preds = %31
  %37 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %38 = icmp eq void (i32, i8*)* %37, null
  br i1 %38, label %aws_raise_error.20.exit, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %37(i32 44, i8* %40) #15
  br label %aws_raise_error.20.exit

41:                                               ; preds = %LeafBlock11
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %42 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %43 = icmp eq void (i32, i8*)* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %42(i32 45, i8* %45) #15
  br label %aws_raise_error.20.exit

46:                                               ; preds = %41
  %47 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %aws_raise_error.20.exit, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %47(i32 45, i8* %50) #15
  br label %aws_raise_error.20.exit

51:                                               ; preds = %NodeBlock7
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %52 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %52(i32 1, i8* %55) #15
  br label %aws_raise_error.20.exit

56:                                               ; preds = %51
  %57 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %58 = icmp eq void (i32, i8*)* %57, null
  br i1 %58, label %aws_raise_error.20.exit, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %57(i32 1, i8* %60) #15
  br label %aws_raise_error.20.exit

61:                                               ; preds = %NodeBlock21
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %62(i32 2, i8* %65) #15
  br label %aws_raise_error.20.exit

66:                                               ; preds = %61
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.20.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %67(i32 2, i8* %70) #15
  br label %aws_raise_error.20.exit

NewDefault:                                       ; preds = %LeafBlock, %LeafBlock1, %LeafBlock3, %LeafBlock11, %LeafBlock15, %LeafBlock17
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %71 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %72 = icmp eq void (i32, i8*)* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %NewDefault
  %74 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %71(i32 46, i8* %74) #15
  br label %aws_raise_error.20.exit

75:                                               ; preds = %NewDefault
  %76 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %77 = icmp eq void (i32, i8*)* %76, null
  br i1 %77, label %aws_raise_error.20.exit, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %76(i32 46, i8* %79) #15
  br label %aws_raise_error.20.exit

aws_raise_error.20.exit:                          ; preds = %78, %75, %73, %69, %66, %64, %59, %56, %54, %49, %46, %44, %39, %36, %34, %29, %26, %24, %19, %16, %14, %9, %6, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.20(i32 %0) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %2(i32 %0, i8* %5) #15
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %7(i32 %0, i8* %10) #15
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_secure_zero(i8* %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 %1, i1 false) #15
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #15, !srcloc !42
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_library_init() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %217, label %1

1:                                                ; preds = %0
  store i1 true, i1* @s_common_library_initialized, align 1
  tail call void @seahorn.fn.enter() #15
  %2 = load %struct.aws_error_info*, %struct.aws_error_info** getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 0), align 8, !tbaa !39
  %3 = icmp eq %struct.aws_error_info* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 134) #16
  unreachable

5:                                                ; preds = %1
  %6 = load i16, i16* getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 1), align 4, !tbaa !36
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 135) #16
  unreachable

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !40
  %12 = ashr i32 %11, 10
  %13 = icmp ugt i32 %11, 16383
  br i1 %13, label %14, label %aws_register_error_info.exit

14:                                               ; preds = %9
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !10
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %12) #15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 144) #16
  unreachable

aws_register_error_info.exit:                     ; preds = %9
  %17 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %12
  store volatile %struct.aws_error_info_list* @s_list, %struct.aws_error_info_list** %17, align 4, !tbaa !10
  tail call void @aws_register_log_subject_info_list(%struct.aws_log_subject_info_list* nonnull @s_common_log_subject_list) #15
  tail call void @aws_thread_initialize_thread_management() #15
  %18 = tail call i8* @dlopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 4) #15
  store i8* %18, i8** @g_libnuma_handle, align 4, !tbaa !10
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %.thread1

20:                                               ; preds = %aws_register_error_info.exit
  %21 = tail call i8* @dlopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.22, i32 0, i32 0), i32 4) #15
  store i8* %21, i8** @g_libnuma_handle, align 4, !tbaa !10
  %22 = icmp eq i8* %21, null
  br i1 %22, label %25, label %.thread1

.thread1:                                         ; preds = %20, %aws_register_error_info.exit
  %23 = tail call %struct.aws_logger* @aws_logger_get() #15
  %24 = icmp eq %struct.aws_logger* %23, null
  br i1 %24, label %44, label %31

25:                                               ; preds = %20
  %26 = tail call i8* @dlopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.23, i32 0, i32 0), i32 4) #15
  store i8* %26, i8** @g_libnuma_handle, align 4, !tbaa !10
  %27 = icmp eq i8* %26, null
  %28 = tail call %struct.aws_logger* @aws_logger_get() #15
  %29 = icmp eq %struct.aws_logger* %28, null
  br i1 %27, label %204, label %30

30:                                               ; preds = %25
  br i1 %29, label %44, label %31

31:                                               ; preds = %.thread1, %30
  %32 = phi %struct.aws_logger* [ %23, %.thread1 ], [ %28, %30 ]
  %33 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %32, i32 0, i32 0
  %34 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %33, align 4, !tbaa !43
  %35 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %34, i32 0, i32 1
  %36 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %35, align 4, !tbaa !45
  %37 = tail call i32 %36(%struct.aws_logger* nonnull %32, i32 0) #15
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %33, align 4, !tbaa !43
  %41 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %40, i32 0, i32 0
  %42 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %41, align 4, !tbaa !47
  %43 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %42(%struct.aws_logger* nonnull %32, i32 4, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.24, i32 0, i32 0)) #15
  br label %44

44:                                               ; preds = %.thread1, %39, %31, %30
  %45 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !10
  %46 = tail call i8* @dlsym(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.25, i32 0, i32 0)) #15
  store i8* %46, i8** bitcast (i32 (i32, i32*, i32)** @g_set_mempolicy_ptr to i8**), align 4, !tbaa !10
  %47 = icmp eq i8* %46, null
  %48 = tail call %struct.aws_logger* @aws_logger_get() #15
  %49 = icmp eq %struct.aws_logger* %48, null
  br i1 %47, label %63, label %50

50:                                               ; preds = %44
  br i1 %49, label %76, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %48, i32 0, i32 0
  %53 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %52, align 4, !tbaa !43
  %54 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %53, i32 0, i32 1
  %55 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %54, align 4, !tbaa !45
  %56 = tail call i32 %55(%struct.aws_logger* nonnull %48, i32 0) #15
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %52, align 4, !tbaa !43
  %60 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %59, i32 0, i32 0
  %61 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %60, align 4, !tbaa !47
  %62 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %61(%struct.aws_logger* nonnull %48, i32 4, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.26, i32 0, i32 0)) #15
  br label %76

63:                                               ; preds = %44
  br i1 %49, label %76, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %48, i32 0, i32 0
  %66 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %65, align 4, !tbaa !43
  %67 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %66, i32 0, i32 1
  %68 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %67, align 4, !tbaa !45
  %69 = tail call i32 %68(%struct.aws_logger* nonnull %48, i32 0) #15
  %70 = icmp ugt i32 %69, 3
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %65, align 4, !tbaa !43
  %73 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %72, i32 0, i32 0
  %74 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %73, align 4, !tbaa !47
  %75 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %74(%struct.aws_logger* nonnull %48, i32 4, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6.27, i32 0, i32 0)) #15
  br label %76

76:                                               ; preds = %71, %64, %63, %58, %51, %50
  %77 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !10
  %78 = tail call i8* @dlsym(i8* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.28, i32 0, i32 0)) #15
  store i8* %78, i8** bitcast (i32 ()** @g_numa_available_ptr to i8**), align 4, !tbaa !10
  %79 = icmp eq i8* %78, null
  %80 = tail call %struct.aws_logger* @aws_logger_get() #15
  %81 = icmp eq %struct.aws_logger* %80, null
  br i1 %79, label %95, label %82

82:                                               ; preds = %76
  br i1 %81, label %108, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %80, i32 0, i32 0
  %85 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %84, align 4, !tbaa !43
  %86 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %85, i32 0, i32 1
  %87 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %86, align 4, !tbaa !45
  %88 = tail call i32 %87(%struct.aws_logger* nonnull %80, i32 0) #15
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %84, align 4, !tbaa !43
  %92 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %91, i32 0, i32 0
  %93 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %92, align 4, !tbaa !47
  %94 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %93(%struct.aws_logger* nonnull %80, i32 4, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8.29, i32 0, i32 0)) #15
  br label %108

95:                                               ; preds = %76
  br i1 %81, label %108, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %80, i32 0, i32 0
  %98 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %97, align 4, !tbaa !43
  %99 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %98, i32 0, i32 1
  %100 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %99, align 4, !tbaa !45
  %101 = tail call i32 %100(%struct.aws_logger* nonnull %80, i32 0) #15
  %102 = icmp ugt i32 %101, 3
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %97, align 4, !tbaa !43
  %105 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %104, i32 0, i32 0
  %106 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %105, align 4, !tbaa !47
  %107 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %106(%struct.aws_logger* nonnull %80, i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.30, i32 0, i32 0)) #15
  br label %108

108:                                              ; preds = %103, %96, %95, %90, %83, %82
  %109 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !10
  %110 = tail call i8* @dlsym(i8* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10.31, i32 0, i32 0)) #15
  store i8* %110, i8** bitcast (i32 ()** @g_numa_num_configured_nodes_ptr to i8**), align 4, !tbaa !10
  %111 = icmp eq i8* %110, null
  %112 = tail call %struct.aws_logger* @aws_logger_get() #15
  %113 = icmp eq %struct.aws_logger* %112, null
  br i1 %111, label %127, label %114

114:                                              ; preds = %108
  br i1 %113, label %140, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %112, i32 0, i32 0
  %117 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %116, align 4, !tbaa !43
  %118 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %117, i32 0, i32 1
  %119 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %118, align 4, !tbaa !45
  %120 = tail call i32 %119(%struct.aws_logger* nonnull %112, i32 0) #15
  %121 = icmp ugt i32 %120, 3
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %116, align 4, !tbaa !43
  %124 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %123, i32 0, i32 0
  %125 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %124, align 4, !tbaa !47
  %126 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %125(%struct.aws_logger* nonnull %112, i32 4, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0)) #15
  br label %140

127:                                              ; preds = %108
  br i1 %113, label %140, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %112, i32 0, i32 0
  %130 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %129, align 4, !tbaa !43
  %131 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %130, i32 0, i32 1
  %132 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %131, align 4, !tbaa !45
  %133 = tail call i32 %132(%struct.aws_logger* nonnull %112, i32 0) #15
  %134 = icmp ugt i32 %133, 3
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %129, align 4, !tbaa !43
  %137 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %136, i32 0, i32 0
  %138 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %137, align 4, !tbaa !47
  %139 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %138(%struct.aws_logger* nonnull %112, i32 4, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0)) #15
  br label %140

140:                                              ; preds = %135, %128, %127, %122, %115, %114
  %141 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !10
  %142 = tail call i8* @dlsym(i8* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #15
  store i8* %142, i8** bitcast (i32 ()** @g_numa_num_possible_cpus_ptr to i8**), align 4, !tbaa !10
  %143 = icmp eq i8* %142, null
  %144 = tail call %struct.aws_logger* @aws_logger_get() #15
  %145 = icmp eq %struct.aws_logger* %144, null
  br i1 %143, label %159, label %146

146:                                              ; preds = %140
  br i1 %145, label %172, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %144, i32 0, i32 0
  %149 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %148, align 4, !tbaa !43
  %150 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %149, i32 0, i32 1
  %151 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %150, align 4, !tbaa !45
  %152 = tail call i32 %151(%struct.aws_logger* nonnull %144, i32 0) #15
  %153 = icmp ugt i32 %152, 3
  br i1 %153, label %154, label %172

154:                                              ; preds = %147
  %155 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %148, align 4, !tbaa !43
  %156 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %155, i32 0, i32 0
  %157 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %156, align 4, !tbaa !47
  %158 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %157(%struct.aws_logger* nonnull %144, i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0)) #15
  br label %172

159:                                              ; preds = %140
  br i1 %145, label %172, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %144, i32 0, i32 0
  %162 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %161, align 4, !tbaa !43
  %163 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %162, i32 0, i32 1
  %164 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %163, align 4, !tbaa !45
  %165 = tail call i32 %164(%struct.aws_logger* nonnull %144, i32 0) #15
  %166 = icmp ugt i32 %165, 3
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %161, align 4, !tbaa !43
  %169 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %168, i32 0, i32 0
  %170 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %169, align 4, !tbaa !47
  %171 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %170(%struct.aws_logger* nonnull %144, i32 4, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0)) #15
  br label %172

172:                                              ; preds = %167, %160, %159, %154, %147, %146
  %173 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !10
  %174 = tail call i8* @dlsym(i8* %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #15
  store i8* %174, i8** bitcast (i32 (i32)** @g_numa_node_of_cpu_ptr to i8**), align 4, !tbaa !10
  %175 = icmp eq i8* %174, null
  %176 = tail call %struct.aws_logger* @aws_logger_get() #15
  %177 = icmp eq %struct.aws_logger* %176, null
  br i1 %175, label %191, label %178

178:                                              ; preds = %172
  br i1 %177, label %217, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %176, i32 0, i32 0
  %181 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %180, align 4, !tbaa !43
  %182 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %181, i32 0, i32 1
  %183 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %182, align 4, !tbaa !45
  %184 = tail call i32 %183(%struct.aws_logger* nonnull %176, i32 0) #15
  %185 = icmp ugt i32 %184, 3
  br i1 %185, label %186, label %217

186:                                              ; preds = %179
  %187 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %180, align 4, !tbaa !43
  %188 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %187, i32 0, i32 0
  %189 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %188, align 4, !tbaa !47
  %190 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %189(%struct.aws_logger* nonnull %176, i32 4, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0)) #15
  br label %217

191:                                              ; preds = %172
  br i1 %177, label %217, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %176, i32 0, i32 0
  %194 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %193, align 4, !tbaa !43
  %195 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %194, i32 0, i32 1
  %196 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %195, align 4, !tbaa !45
  %197 = tail call i32 %196(%struct.aws_logger* nonnull %176, i32 0) #15
  %198 = icmp ugt i32 %197, 3
  br i1 %198, label %199, label %217

199:                                              ; preds = %192
  %200 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %193, align 4, !tbaa !43
  %201 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %200, i32 0, i32 0
  %202 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %201, align 4, !tbaa !47
  %203 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %202(%struct.aws_logger* nonnull %176, i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0)) #15
  br label %217

204:                                              ; preds = %25
  br i1 %29, label %217, label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %28, i32 0, i32 0
  %207 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %206, align 4, !tbaa !43
  %208 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %207, i32 0, i32 1
  %209 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %208, align 4, !tbaa !45
  %210 = tail call i32 %209(%struct.aws_logger* nonnull %28, i32 0) #15
  %211 = icmp ugt i32 %210, 3
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %206, align 4, !tbaa !43
  %214 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %213, i32 0, i32 0
  %215 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %214, align 4, !tbaa !47
  %216 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %215(%struct.aws_logger* nonnull %28, i32 4, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #15
  br label %217

217:                                              ; preds = %212, %205, %204, %199, %192, %191, %186, %179, %178, %0
  ret void
}

declare void @aws_register_log_subject_info_list(%struct.aws_log_subject_info_list*) local_unnamed_addr #3

declare void @aws_thread_initialize_thread_management() local_unnamed_addr #3

declare i8* @dlopen(i8*, i32) local_unnamed_addr #3

declare %struct.aws_logger* @aws_logger_get() local_unnamed_addr #3

declare i8* @dlsym(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_library_clean_up() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %1, label %23

1:                                                ; preds = %0
  store i1 false, i1* @s_common_library_initialized, align 1
  %2 = tail call i32 @aws_thread_join_all_managed() #15
  tail call void @seahorn.fn.enter() #15
  %3 = load %struct.aws_error_info*, %struct.aws_error_info** getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 0), align 8, !tbaa !39
  %4 = icmp eq %struct.aws_error_info* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 168) #16
  unreachable

6:                                                ; preds = %1
  %7 = load i16, i16* getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 1), align 4, !tbaa !36
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 169) #16
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !40
  %13 = ashr i32 %12, 10
  %14 = icmp ugt i32 %12, 16383
  br i1 %14, label %15, label %aws_unregister_error_info.exit

15:                                               ; preds = %10
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !10
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %13) #15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 178) #16
  unreachable

aws_unregister_error_info.exit:                   ; preds = %10
  %18 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %13
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %18, align 4, !tbaa !10
  tail call void @aws_unregister_log_subject_info_list(%struct.aws_log_subject_info_list* nonnull @s_common_log_subject_list) #15
  %19 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !10
  %20 = icmp eq i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %aws_unregister_error_info.exit
  %22 = tail call i32 @dlclose(i8* nonnull %19) #15
  br label %23

23:                                               ; preds = %21, %aws_unregister_error_info.exit, %0
  ret void
}

declare i32 @aws_thread_join_all_managed() local_unnamed_addr #3

declare void @aws_unregister_log_subject_info_list(%struct.aws_log_subject_info_list*) local_unnamed_addr #3

declare i32 @dlclose(i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_fatal_assert_library_initialized() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %.b1 = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b1, label %5, label %1

1:                                                ; preds = %0
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !10
  %3 = tail call i32 @fwrite(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.21.32, i32 0, i32 0), i32 88, i32 1, %struct.__sFILE* %2)
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %5, label %4

4:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i32 357) #16
  unreachable

5:                                                ; preds = %1, %0
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_hash_table_get_entry_count(%struct.aws_hash_table* nocapture readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %3 = load %struct.hash_table_state*, %struct.hash_table_state** %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4, !tbaa !11
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_init(%struct.aws_hash_table* nocapture %0, %struct.aws_allocator* %1, i32 %2, i64 (i8*)* %3, i1 (i8*, i8*)* %4, void (i8*)* %5, void (i8*)* %6) unnamed_addr #1 {
  %8 = alloca i32, align 4
  tail call void @seahorn.fn.enter() #15
  %9 = alloca %struct.hash_table_state, align 4
  %10 = bitcast %struct.hash_table_state* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %10) #15
  %11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 0
  store i64 (i8*)* %3, i64 (i8*)** %11, align 4, !tbaa !10
  %12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 1
  store i1 (i8*, i8*)* %4, i1 (i8*, i8*)** %12, align 4, !tbaa !10
  %13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 2
  store void (i8*)* %5, void (i8*)** %13, align 4, !tbaa !10
  %14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 3
  store void (i8*)* %6, void (i8*)** %14, align 4, !tbaa !10
  %15 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 4
  store %struct.aws_allocator* %1, %struct.aws_allocator** %15, align 4, !tbaa !10
  %16 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 6
  store i32 0, i32* %16, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 9
  store double 0x3FEE666666666666, double* %17, align 4, !tbaa !14
  %18 = call fastcc i32 @s_update_template_size(%struct.hash_table_state* nonnull %9, i32 %2)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %7
  tail call void @seahorn.fn.enter() #15
  %21 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #15
  %22 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 5
  %23 = load i32, i32* %22, align 4, !tbaa !11
  %24 = call fastcc i32 @hash_table_state_required_bytes(i32 %23, i32* nonnull %8) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %s_alloc_state.exit

26:                                               ; preds = %20
  %27 = load %struct.aws_allocator*, %struct.aws_allocator** %15, align 4, !tbaa !10
  %28 = load i32, i32* %8, align 4, !tbaa !11
  %29 = tail call fastcc i8* @aws_mem_calloc(%struct.aws_allocator* %27, i32 1, i32 %28) #15
  %30 = bitcast i8* %29 to %struct.hash_table_state*
  %31 = icmp eq i8* %29, null
  br i1 %31, label %s_alloc_state.exit, label %32

32:                                               ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(44) %29, i8* nonnull align 4 dereferenceable(44) %10, i32 44, i1 false) #15
  br label %s_alloc_state.exit

s_alloc_state.exit:                               ; preds = %20, %26, %32
  %.1.i = phi %struct.hash_table_state* [ null, %20 ], [ %30, %26 ], [ %30, %32 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #15
  %33 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  store %struct.hash_table_state* %.1.i, %struct.hash_table_state** %33, align 4, !tbaa !5
  br label %34

34:                                               ; preds = %s_alloc_state.exit, %7
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %10) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @s_update_template_size(%struct.hash_table_state* nocapture %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = icmp ugt i32 %1, 2
  %spec.store.select = select i1 %3, i32 %1, i32 2
  tail call void @seahorn.fn.enter() #15
  %4 = icmp ugt i32 %spec.store.select, -2147483648
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %6 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %7 = icmp eq void (i32, i8*)* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %6(i32 5, i8* %9) #15
  br label %aws_round_up_to_power_of_two.exit.thread

10:                                               ; preds = %5
  %11 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %12 = icmp eq void (i32, i8*)* %11, null
  br i1 %12, label %aws_round_up_to_power_of_two.exit.thread, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %11(i32 5, i8* %14) #15
  br label %aws_round_up_to_power_of_two.exit.thread

15:                                               ; preds = %2
  %16 = add i32 %spec.store.select, -1
  %17 = lshr i32 %16, 1
  %18 = or i32 %17, %16
  %19 = lshr i32 %18, 2
  %20 = or i32 %19, %18
  %21 = lshr i32 %20, 4
  %22 = or i32 %21, %20
  %23 = lshr i32 %22, 8
  %24 = or i32 %23, %22
  %25 = lshr i32 %24, 16
  %26 = or i32 %25, %24
  %27 = add i32 %26, 1
  %28 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 5
  store i32 %27, i32* %28, align 4, !tbaa !11
  %29 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 9
  %30 = load double, double* %29, align 4, !tbaa !14
  %31 = uitofp i32 %27 to double
  %32 = fmul double %30, %31
  %33 = fptoui double %32 to i32
  %34 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 7
  %35 = icmp ugt i32 %27, %33
  %spec.select = select i1 %35, i32 %33, i32 %26
  store i32 %spec.select, i32* %34, align 4, !tbaa !11
  %36 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 8
  store i32 %26, i32* %36, align 4, !tbaa !11
  br label %aws_round_up_to_power_of_two.exit.thread

aws_round_up_to_power_of_two.exit.thread:         ; preds = %13, %10, %8, %15
  %.0 = phi i32 [ 0, %15 ], [ -1, %8 ], [ -1, %10 ], [ -1, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.hash_table_state* @s_alloc_state(%struct.hash_table_state* nocapture readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15
  %4 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !11
  %6 = call fastcc i32 @hash_table_state_required_bytes(i32 %5, i32* nonnull %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 4
  %10 = load %struct.aws_allocator*, %struct.aws_allocator** %9, align 4, !tbaa !10
  %11 = load i32, i32* %2, align 4, !tbaa !11
  %12 = tail call fastcc i8* @aws_mem_calloc(%struct.aws_allocator* %10, i32 1, i32 %11)
  %13 = bitcast i8* %12 to %struct.hash_table_state*
  %14 = icmp eq i8* %12, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = bitcast %struct.hash_table_state* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(44) %12, i8* nonnull align 4 dereferenceable(44) %16, i32 44, i1 false)
  br label %17

17:                                               ; preds = %15, %8, %1
  %.1 = phi %struct.hash_table_state* [ null, %1 ], [ %13, %8 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15
  ret %struct.hash_table_state* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @hash_table_state_required_bytes(i32 %0, i32* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %3 = mul i32 %0, 16
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %4 = icmp ugt i32 %3, -45
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %6 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %7 = icmp eq void (i32, i8*)* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %6(i32 5, i8* %9) #15
  br label %aws_add_size_checked.exit

10:                                               ; preds = %5
  %11 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %12 = icmp eq void (i32, i8*)* %11, null
  br i1 %12, label %aws_add_size_checked.exit, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %11(i32 5, i8* %14) #15
  br label %aws_add_size_checked.exit

15:                                               ; preds = %2
  %16 = add nuw i32 %3, 44
  store i32 %16, i32* %1, align 4, !tbaa !23
  br label %aws_add_size_checked.exit

aws_add_size_checked.exit:                        ; preds = %8, %10, %13, %15
  %.0.i.i = phi i32 [ 0, %15 ], [ -1, %8 ], [ -1, %10 ], [ -1, %13 ]
  ret i32 %.0.i.i
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked.33(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !23
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond.i = and i1 %4, %6
  br i1 %or.cond.i, label %7, label %17

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %8(i32 5, i8* %11) #15
  br label %aws_add_u32_checked.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_add_u32_checked.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %13(i32 5, i8* %16) #15
  br label %aws_add_u32_checked.exit

17:                                               ; preds = %3
  %18 = add i32 %1, %0
  store i32 %18, i32* %2, align 4, !tbaa !23
  br label %aws_add_u32_checked.exit

aws_add_u32_checked.exit:                         ; preds = %10, %12, %15, %17
  %.0.i = phi i32 [ 0, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %.0.i
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %7, label %17

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %8(i32 5, i8* %11) #15
  br label %aws_raise_error.34.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_raise_error.34.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %13(i32 5, i8* %16) #15
  br label %aws_raise_error.34.exit

17:                                               ; preds = %3
  %18 = add i32 %1, %0
  store i32 %18, i32* %2, align 4, !tbaa !23
  br label %aws_raise_error.34.exit

aws_raise_error.34.exit:                          ; preds = %15, %12, %10, %17
  %.0 = phi i32 [ 0, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.34(i32 %0) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %2(i32 %0, i8* %5) #15
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %7(i32 %0, i8* %10) #15
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked.35(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !23
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_round_up_to_power_of_two(i32 %0, i32* nocapture %1) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  store i32 1, i32* %1, align 4, !tbaa !11
  br label %aws_raise_error.34.exit

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, -2147483648
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  tail call void %8(i32 5, i8* %11) #15
  br label %aws_raise_error.34.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_raise_error.34.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  tail call void %13(i32 5, i8* %16) #15
  br label %aws_raise_error.34.exit

17:                                               ; preds = %5
  %18 = add i32 %0, -1
  %19 = lshr i32 %18, 1
  %20 = or i32 %19, %18
  %21 = lshr i32 %20, 2
  %22 = or i32 %21, %20
  %23 = lshr i32 %22, 4
  %24 = or i32 %23, %22
  %25 = lshr i32 %24, 8
  %26 = or i32 %25, %24
  %27 = lshr i32 %26, 16
  %28 = or i32 %27, %26
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4, !tbaa !11
  br label %aws_raise_error.34.exit

aws_raise_error.34.exit:                          ; preds = %15, %12, %10, %17, %4
  %.0 = phi i32 [ 0, %4 ], [ 0, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_clean_up(%struct.aws_hash_table* nocapture %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %3 = load %struct.hash_table_state*, %struct.hash_table_state** %2, align 4, !tbaa !5
  %4 = icmp eq %struct.hash_table_state* %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  tail call void @seahorn.fn.enter() #15
  %6 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 2
  %7 = load void (i8*)*, void (i8*)** %6, align 4, !tbaa !10
  %8 = icmp eq void (i8*)* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 3
  %11 = load void (i8*)*, void (i8*)** %10, align 4, !tbaa !10
  %12 = icmp eq void (i8*)* %11, null
  br i1 %12, label %..loopexit_crit_edge.i, label %13

..loopexit_crit_edge.i:                           ; preds = %9
  %.phi.trans.insert.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 5
  %.pre.i = load i32, i32* %.phi.trans.insert.i, align 4, !tbaa !11
  br label %aws_hash_table_clear.exit

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 5
  %15 = load i32, i32* %14, align 4, !tbaa !11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %aws_hash_table_clear.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %13
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 3
  br label %18

18:                                               ; preds = %34, %.lr.ph.i
  %.013.i = phi i32 [ 0, %.lr.ph.i ], [ %35, %34 ]
  %19 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 %.013.i, i32 1
  %20 = load i64, i64* %19, align 4, !tbaa !48
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load void (i8*)*, void (i8*)** %6, align 4, !tbaa !10
  %24 = icmp eq void (i8*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 %.013.i, i32 0, i32 0
  %27 = load i8*, i8** %26, align 4, !tbaa !51
  tail call void %23(i8* %27) #15
  br label %28

28:                                               ; preds = %25, %22
  %29 = load void (i8*)*, void (i8*)** %17, align 4, !tbaa !10
  %30 = icmp eq void (i8*)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 %.013.i, i32 0, i32 1
  %33 = load i8*, i8** %32, align 4, !tbaa !52
  tail call void %29(i8* %33) #15
  br label %34

34:                                               ; preds = %31, %28, %18
  %35 = add nuw i32 %.013.i, 1
  %36 = load i32, i32* %14, align 4, !tbaa !11
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %18, label %aws_hash_table_clear.exit, !llvm.loop !53

aws_hash_table_clear.exit:                        ; preds = %34, %..loopexit_crit_edge.i, %13
  %38 = phi i32 [ %.pre.i, %..loopexit_crit_edge.i ], [ 0, %13 ], [ %36, %34 ]
  %39 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 0
  %40 = bitcast %struct.hash_table_entry* %39 to i8*
  %41 = mul i32 %38, 16
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %40, i8 0, i32 %41, i1 false) #15
  %42 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 6
  store i32 0, i32* %42, align 4, !tbaa !11
  %43 = load %struct.hash_table_state*, %struct.hash_table_state** %2, align 4, !tbaa !5
  %44 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %43, i32 0, i32 4
  %45 = load %struct.aws_allocator*, %struct.aws_allocator** %44, align 4, !tbaa !10
  %46 = bitcast %struct.hash_table_state* %43 to i8*
  tail call void @seahorn.fn.enter() #15
  %47 = icmp eq %struct.aws_allocator* %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %aws_hash_table_clear.exit
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #16
  unreachable

49:                                               ; preds = %aws_hash_table_clear.exit
  %50 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %45, i32 0, i32 1
  %51 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %50, align 4, !tbaa !24
  %52 = icmp eq void (%struct.aws_allocator*, i8*)* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #16
  unreachable

54:                                               ; preds = %49
  %55 = icmp eq %struct.hash_table_state* %43, null
  br i1 %55, label %aws_mem_release.exit, label %56

56:                                               ; preds = %54
  tail call void %51(%struct.aws_allocator* nonnull %45, i8* nonnull %46) #15
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %54, %56
  store %struct.hash_table_state* null, %struct.hash_table_state** %2, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %aws_mem_release.exit, %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_clear(%struct.aws_hash_table* nocapture readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %3 = load %struct.hash_table_state*, %struct.hash_table_state** %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 2
  %5 = load void (i8*)*, void (i8*)** %4, align 4, !tbaa !10
  %6 = icmp eq void (i8*)* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 3
  %9 = load void (i8*)*, void (i8*)** %8, align 4, !tbaa !10
  %10 = icmp eq void (i8*)* %9, null
  br i1 %10, label %..loopexit_crit_edge, label %11

..loopexit_crit_edge:                             ; preds = %7
  %.phi.trans.insert = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 5
  %.pre = load i32, i32* %.phi.trans.insert, align 4, !tbaa !11
  br label %.loopexit

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 5
  %13 = load i32, i32* %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %11
  %15 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 3
  br label %16

16:                                               ; preds = %.lr.ph, %32
  %.013 = phi i32 [ 0, %.lr.ph ], [ %33, %32 ]
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 %.013, i32 1
  %18 = load i64, i64* %17, align 4, !tbaa !48
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load void (i8*)*, void (i8*)** %4, align 4, !tbaa !10
  %22 = icmp eq void (i8*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 %.013, i32 0, i32 0
  %25 = load i8*, i8** %24, align 4, !tbaa !51
  tail call void %21(i8* %25) #15
  br label %26

26:                                               ; preds = %23, %20
  %27 = load void (i8*)*, void (i8*)** %15, align 4, !tbaa !10
  %28 = icmp eq void (i8*)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 %.013, i32 0, i32 1
  %31 = load i8*, i8** %30, align 4, !tbaa !52
  tail call void %27(i8* %31) #15
  br label %32

32:                                               ; preds = %29, %26, %16
  %33 = add nuw i32 %.013, 1
  %34 = load i32, i32* %12, align 4, !tbaa !11
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %16, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %32, %..loopexit_crit_edge, %11
  %36 = phi i32 [ %.pre, %..loopexit_crit_edge ], [ 0, %11 ], [ %34, %32 ]
  %37 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 10, i32 0
  %38 = bitcast %struct.hash_table_entry* %37 to i8*
  %39 = mul i32 %36, 16
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %38, i8 0, i32 %39, i1 false) #15
  %40 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 6
  store i32 0, i32* %40, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_swap(%struct.aws_hash_table* noalias nocapture %0, %struct.aws_hash_table* noalias nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %.pmcpy.unpack = load %struct.hash_table_state*, %struct.hash_table_state** %3, align 4
  %4 = getelementptr %struct.aws_hash_table, %struct.aws_hash_table* %1, i32 0, i32 0
  %.pmcpy1.unpack = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4
  store %struct.hash_table_state* %.pmcpy1.unpack, %struct.hash_table_state** %3, align 4
  store %struct.hash_table_state* %.pmcpy.unpack, %struct.hash_table_state** %4, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_move(%struct.aws_hash_table* noalias nocapture %0, %struct.aws_hash_table* noalias %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr %struct.aws_hash_table, %struct.aws_hash_table* %1, i32 0, i32 0
  %.pmcpy.unpack = load %struct.hash_table_state*, %struct.hash_table_state** %3, align 4
  %4 = getelementptr %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  store %struct.hash_table_state* %.pmcpy.unpack, %struct.hash_table_state** %4, align 4
  %5 = bitcast %struct.aws_hash_table* %1 to i32*
  store i32 0, i32* %5, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_find(%struct.aws_hash_table* nocapture readonly %0, i8* %1, %struct.aws_hash_element** nocapture %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = alloca %struct.hash_table_entry*, align 4
  %5 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %6 = load %struct.hash_table_state*, %struct.hash_table_state** %5, align 4, !tbaa !5
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %7 = icmp eq i8* %1, null
  br i1 %7, label %s_hash_for.exit, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 0
  %10 = load i64 (i8*)*, i64 (i8*)** %9, align 4, !tbaa !10
  %11 = tail call i64 %10(i8* nonnull %1) #15
  %12 = icmp eq i64 %11, 0
  %spec.store.select.i = select i1 %12, i64 1, i64 %11
  br label %s_hash_for.exit

s_hash_for.exit:                                  ; preds = %3, %8
  %.0.i = phi i64 [ %spec.store.select.i, %8 ], [ 42, %3 ]
  %13 = bitcast %struct.hash_table_entry** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #15
  %14 = call fastcc i32 @s_find_entry(%struct.hash_table_state* %6, i64 %.0.i, i8* %1, %struct.hash_table_entry** nonnull %4, i32* null)
  %15 = icmp eq i32 %14, 0
  %16 = load %struct.hash_table_entry*, %struct.hash_table_entry** %4, align 4
  %17 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %16, i32 0, i32 0
  %storemerge = select i1 %15, %struct.aws_hash_element* %17, %struct.aws_hash_element* null
  store %struct.aws_hash_element* %storemerge, %struct.aws_hash_element** %2, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i64 @s_hash_for(%struct.hash_table_state* nocapture readonly %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %3 = icmp eq i8* %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 0
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 4, !tbaa !10
  %7 = tail call i64 %6(i8* nonnull %1) #15
  %8 = icmp eq i64 %7, 0
  %spec.store.select = select i1 %8, i64 1, i64 %7
  br label %9

9:                                                ; preds = %4, %2
  %.0 = phi i64 [ %spec.store.select, %4 ], [ 42, %2 ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @s_find_entry(%struct.hash_table_state* %0, i64 %1, i8* %2, %struct.hash_table_entry** nocapture %3, i32* %4) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %6 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 8
  %7 = load i32, i32* %6, align 4, !tbaa !11
  %8 = trunc i64 %1 to i32
  %9 = and i32 %7, %8
  %10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %9
  %11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %9, i32 1
  %12 = load i64, i64* %11, align 4, !tbaa !48
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = icmp eq i32* %4, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  store i32 0, i32* %4, align 4, !tbaa !11
  br label %17

17:                                               ; preds = %16, %14
  store %struct.hash_table_entry* %10, %struct.hash_table_entry** %3, align 4, !tbaa !10
  br label %34

18:                                               ; preds = %5
  %19 = icmp eq i64 %12, %1
  br i1 %19, label %20, label %s_hash_keys_eq.exit.thread4

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %10, i32 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 4, !tbaa !51
  tail call void @seahorn.fn.enter() #15
  %23 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 1
  %24 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %23, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %25 = icmp eq i8* %22, %2
  br i1 %25, label %s_hash_keys_eq.exit.thread, label %26

26:                                               ; preds = %20
  %27 = icmp eq i8* %2, null
  %28 = icmp eq i8* %22, null
  %or.cond.i.i = or i1 %27, %28
  br i1 %or.cond.i.i, label %s_hash_keys_eq.exit.thread4, label %s_hash_keys_eq.exit

s_hash_keys_eq.exit:                              ; preds = %26
  %29 = tail call zeroext i1 %24(i8* nonnull %2, i8* nonnull %22) #15
  br i1 %29, label %s_hash_keys_eq.exit.thread, label %s_hash_keys_eq.exit.thread4

s_hash_keys_eq.exit.thread:                       ; preds = %20, %s_hash_keys_eq.exit
  %30 = icmp eq i32* %4, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %s_hash_keys_eq.exit.thread
  store i32 0, i32* %4, align 4, !tbaa !11
  br label %32

32:                                               ; preds = %31, %s_hash_keys_eq.exit.thread
  store %struct.hash_table_entry* %10, %struct.hash_table_entry** %3, align 4, !tbaa !10
  br label %34

s_hash_keys_eq.exit.thread4:                      ; preds = %26, %s_hash_keys_eq.exit, %18
  %33 = tail call fastcc i32 @s_find_entry1(%struct.hash_table_state* nonnull %0, i64 %1, i8* %2, %struct.hash_table_entry** %3, i32* %4)
  br label %34

34:                                               ; preds = %s_hash_keys_eq.exit.thread4, %32, %17
  %.0 = phi i32 [ 32, %17 ], [ 0, %32 ], [ %33, %s_hash_keys_eq.exit.thread4 ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @s_hash_keys_eq(%struct.hash_table_state* nocapture readonly %0, i8* %1, i8* %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 1
  %5 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %4, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %6 = icmp eq i8* %1, %2
  br i1 %6, label %s_safe_eq_check.exit, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null
  %9 = icmp eq i8* %2, null
  %or.cond.i = or i1 %8, %9
  br i1 %or.cond.i, label %s_safe_eq_check.exit, label %10

10:                                               ; preds = %7
  %11 = tail call zeroext i1 %5(i8* nonnull %1, i8* nonnull %2) #15
  br label %s_safe_eq_check.exit

s_safe_eq_check.exit:                             ; preds = %3, %7, %10
  %.0.i = phi i1 [ %11, %10 ], [ true, %3 ], [ false, %7 ]
  ret i1 %.0.i
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @s_find_entry1(%struct.hash_table_state* %0, i64 %1, i8* %2, %struct.hash_table_entry** nocapture %3, i32* %4) unnamed_addr #1 {
  %6 = tail call i32 @verifier.nondet.23() #15
  tail call void @seahorn.fn.enter() #15
  %7 = add i64 %1, 1
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 8
  %9 = load i32, i32* %8, align 4, !tbaa !11
  %10 = zext i32 %9 to i64
  %11 = and i64 %7, %10
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %12
  %14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %12, i32 1
  %15 = load i64, i64* %14, align 4, !tbaa !48
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %s_hash_keys_eq.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %5
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 1
  %18 = icmp eq i8* %2, null
  br i1 %18, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %24
  %19 = phi i64 [ %31, %24 ], [ %15, %.lr.ph ]
  %20 = phi %struct.hash_table_entry* [ %29, %24 ], [ %13, %.lr.ph ]
  %21 = phi i64 [ %27, %24 ], [ %11, %.lr.ph ]
  %22 = phi i64 [ %25, %24 ], [ 1, %.lr.ph ]
  %.0314.us = phi i32 [ %.14.us, %24 ], [ 1, %.lr.ph ]
  %23 = icmp eq i64 %19, %1
  br i1 %23, label %33, label %s_hash_keys_eq.exit.thread6.us

24:                                               ; preds = %s_hash_keys_eq.exit.thread6.us
  %25 = zext i32 %.14.us to i64
  %26 = add i64 %25, %1
  %27 = and i64 %26, %10
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %28
  %30 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %28, i32 1
  %31 = load i64, i64* %30, align 4, !tbaa !48
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %s_hash_keys_eq.exit.thread, label %.lr.ph.split.us

33:                                               ; preds = %.lr.ph.split.us
  %34 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %20, i32 0, i32 0, i32 0
  %35 = load i8*, i8** %34, align 4, !tbaa !51
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %36 = icmp eq i8* %35, null
  br i1 %36, label %s_hash_keys_eq.exit.thread, label %s_hash_keys_eq.exit.thread6.us

s_hash_keys_eq.exit.thread6.us:                   ; preds = %33, %.lr.ph.split.us
  %37 = sub i64 %21, %19
  %38 = and i64 %37, %10
  %39 = icmp ult i64 %38, %22
  %not..us = xor i1 %39, true
  %40 = zext i1 %not..us to i32
  %.14.us = add i32 %.0314.us, %40
  br i1 %39, label %s_hash_keys_eq.exit.thread, label %24

41:                                               ; preds = %s_hash_keys_eq.exit.thread6
  %42 = zext i32 %.14 to i64
  %43 = add i64 %42, %1
  %44 = zext i32 %66 to i64
  %45 = and i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %46
  %48 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %46, i32 1
  %49 = load i64, i64* %48, align 4, !tbaa !48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %s_hash_keys_eq.exit.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %41
  %51 = phi i32 [ %66, %41 ], [ %9, %.lr.ph ]
  %52 = phi i64 [ %49, %41 ], [ %15, %.lr.ph ]
  %53 = phi i64* [ %48, %41 ], [ %14, %.lr.ph ]
  %54 = phi %struct.hash_table_entry* [ %47, %41 ], [ %13, %.lr.ph ]
  %55 = phi i64 [ %45, %41 ], [ %11, %.lr.ph ]
  %56 = phi i64 [ %42, %41 ], [ 1, %.lr.ph ]
  %.0314 = phi i32 [ %.14, %41 ], [ 1, %.lr.ph ]
  %57 = icmp eq i64 %52, %1
  br i1 %57, label %58, label %s_hash_keys_eq.exit.thread6

58:                                               ; preds = %.lr.ph.split
  %59 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %54, i32 0, i32 0, i32 0
  %60 = load i8*, i8** %59, align 4, !tbaa !51
  tail call void @seahorn.fn.enter() #15
  %61 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %17, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %62 = icmp eq i8* %60, %2
  br i1 %62, label %s_hash_keys_eq.exit.thread, label %63

63:                                               ; preds = %58
  %64 = icmp eq i8* %60, null
  br i1 %64, label %s_hash_keys_eq.exit.thread6, label %s_hash_keys_eq.exit

s_hash_keys_eq.exit:                              ; preds = %63
  %65 = tail call zeroext i1 %61(i8* nonnull %2, i8* nonnull %60) #15
  br i1 %65, label %s_hash_keys_eq.exit.thread, label %s_hash_keys_eq.exit.s_hash_keys_eq.exit.thread6_crit_edge

s_hash_keys_eq.exit.s_hash_keys_eq.exit.thread6_crit_edge: ; preds = %s_hash_keys_eq.exit
  %.pre = load i64, i64* %53, align 4, !tbaa !48
  %.pre32 = load i32, i32* %8, align 4, !tbaa !11
  br label %s_hash_keys_eq.exit.thread6

s_hash_keys_eq.exit.thread6:                      ; preds = %s_hash_keys_eq.exit.s_hash_keys_eq.exit.thread6_crit_edge, %63, %.lr.ph.split
  %66 = phi i32 [ %.pre32, %s_hash_keys_eq.exit.s_hash_keys_eq.exit.thread6_crit_edge ], [ %51, %63 ], [ %51, %.lr.ph.split ]
  %67 = phi i64 [ %.pre, %s_hash_keys_eq.exit.s_hash_keys_eq.exit.thread6_crit_edge ], [ %1, %63 ], [ %52, %.lr.ph.split ]
  %68 = sub i64 %55, %67
  %69 = zext i32 %66 to i64
  %70 = and i64 %68, %69
  %71 = icmp ult i64 %70, %56
  %not. = xor i1 %71, true
  %72 = zext i1 %not. to i32
  %.14 = add i32 %.0314, %72
  br i1 %71, label %s_hash_keys_eq.exit.thread, label %41

s_hash_keys_eq.exit.thread:                       ; preds = %s_hash_keys_eq.exit, %41, %58, %s_hash_keys_eq.exit.thread6, %24, %33, %s_hash_keys_eq.exit.thread6.us, %5
  %.lcssa = phi %struct.hash_table_entry* [ %13, %5 ], [ %20, %s_hash_keys_eq.exit.thread6.us ], [ %20, %33 ], [ %29, %24 ], [ %54, %s_hash_keys_eq.exit.thread6 ], [ %54, %58 ], [ %47, %41 ], [ %54, %s_hash_keys_eq.exit ]
  %.25.ph = phi i32 [ 1, %5 ], [ %.14.us, %s_hash_keys_eq.exit.thread6.us ], [ %.0314.us, %33 ], [ %.14.us, %24 ], [ %.14, %s_hash_keys_eq.exit.thread6 ], [ %.0314, %58 ], [ %.14, %41 ], [ %.0314, %s_hash_keys_eq.exit ]
  %.2.ph = phi i32 [ 32, %5 ], [ 32, %s_hash_keys_eq.exit.thread6.us ], [ 0, %33 ], [ 32, %24 ], [ 32, %s_hash_keys_eq.exit.thread6 ], [ 0, %58 ], [ 32, %41 ], [ 0, %s_hash_keys_eq.exit ]
  store %struct.hash_table_entry* %.lcssa, %struct.hash_table_entry** %3, align 4, !tbaa !10
  %73 = icmp eq i32* %4, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %s_hash_keys_eq.exit.thread
  store i32 %.25.ph, i32* %4, align 4, !tbaa !11
  br label %75

75:                                               ; preds = %74, %s_hash_keys_eq.exit.thread
  ret i32 %.2.ph
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @s_safe_eq_check(i1 (i8*, i8*)* nocapture %0, i8* %1, i8* %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = icmp eq i8* %1, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = icmp eq i8* %1, null
  %7 = icmp eq i8* %2, null
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i1 %0(i8* nonnull %1, i8* nonnull %2) #15
  br label %10

10:                                               ; preds = %8, %5, %3
  %.0 = phi i1 [ %9, %8 ], [ true, %3 ], [ false, %5 ]
  ret i1 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @s_suppress_unused_lookup3_func_warnings() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_hash_table_create(%struct.aws_hash_table* nocapture %0, i8* %1, %struct.aws_hash_element** %2, i32* %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %5 = alloca %struct.hash_table_entry*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %9 = load %struct.hash_table_state*, %struct.hash_table_state** %8, align 4, !tbaa !5
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %10 = icmp eq i8* %1, null
  br i1 %10, label %s_hash_for.exit, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 0
  %13 = load i64 (i8*)*, i64 (i8*)** %12, align 4, !tbaa !10
  %14 = tail call i64 %13(i8* nonnull %1) #15
  %15 = icmp eq i64 %14, 0
  %spec.store.select.i = select i1 %15, i64 1, i64 %14
  br label %s_hash_for.exit

s_hash_for.exit:                                  ; preds = %4, %11
  %.0.i = phi i64 [ %spec.store.select.i, %11 ], [ 42, %4 ]
  %16 = bitcast %struct.hash_table_entry** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #15
  %17 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #15
  %.0.sroa_cast14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %.0.sroa_cast14)
  %18 = icmp eq i32* %3, null
  %spec.select = select i1 %18, i32* %7, i32* %3
  tail call void @seahorn.fn.enter() #15
  %19 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 8
  %20 = load i32, i32* %19, align 4, !tbaa !11
  %21 = trunc i64 %.0.i to i32
  %22 = and i32 %20, %21
  %23 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 10, i32 %22
  %24 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 10, i32 %22, i32 1
  %25 = load i64, i64* %24, align 4, !tbaa !48
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %s_find_entry.exit.thread23, label %27

s_find_entry.exit.thread23:                       ; preds = %s_hash_for.exit
  store i32 0, i32* %6, align 4, !tbaa !11
  store %struct.hash_table_entry* %23, %struct.hash_table_entry** %5, align 4, !tbaa !10
  br label %46

27:                                               ; preds = %s_hash_for.exit
  %28 = icmp eq i64 %25, %.0.i
  br i1 %28, label %29, label %s_find_entry.exit

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %23, i32 0, i32 0, i32 0
  %31 = load i8*, i8** %30, align 4, !tbaa !51
  tail call void @seahorn.fn.enter() #15
  %32 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 1
  %33 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %32, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %34 = icmp eq i8* %31, %1
  br i1 %34, label %s_find_entry.exit.thread, label %35

35:                                               ; preds = %29
  %36 = icmp eq i8* %31, null
  %or.cond.i.i.i = or i1 %10, %36
  br i1 %or.cond.i.i.i, label %s_find_entry.exit, label %s_hash_keys_eq.exit.i

s_hash_keys_eq.exit.i:                            ; preds = %35
  %37 = tail call zeroext i1 %33(i8* nonnull %1, i8* nonnull %31) #15
  br i1 %37, label %s_find_entry.exit.thread, label %s_find_entry.exit

s_find_entry.exit.thread:                         ; preds = %29, %s_hash_keys_eq.exit.i
  store i32 0, i32* %6, align 4, !tbaa !11
  store %struct.hash_table_entry* %23, %struct.hash_table_entry** %5, align 4, !tbaa !10
  br label %40

s_find_entry.exit:                                ; preds = %27, %35, %s_hash_keys_eq.exit.i
  %38 = call fastcc i32 @s_find_entry1(%struct.hash_table_state* nonnull %9, i64 %.0.i, i8* %1, %struct.hash_table_entry** nonnull %5, i32* nonnull %6) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %s_find_entry.exit.thread, %s_find_entry.exit
  %41 = icmp eq %struct.aws_hash_element** %2, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = load %struct.hash_table_entry*, %struct.hash_table_entry** %5, align 4, !tbaa !10
  %44 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %43, i32 0, i32 0
  store %struct.aws_hash_element* %44, %struct.aws_hash_element** %2, align 4, !tbaa !10
  br label %45

45:                                               ; preds = %42, %40
  store i32 0, i32* %spec.select, align 4, !tbaa !23
  br label %aws_add_size_checked.exit.thread

46:                                               ; preds = %s_find_entry.exit.thread23, %s_find_entry.exit
  %47 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 6
  %48 = load i32, i32* %47, align 4, !tbaa !11
  call void @seahorn.fn.enter() #15
  call void @seahorn.fn.enter() #15
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  call void @seahorn.fn.enter() #15
  call void @seahorn.fn.enter() #15
  %51 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !10
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !10
  call void %51(i32 5, i8* %54) #15
  br label %aws_add_size_checked.exit.thread

55:                                               ; preds = %50
  %56 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !10
  %57 = icmp eq void (i32, i8*)* %56, null
  br i1 %57, label %aws_add_size_checked.exit.thread, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @s_global_error_context, align 4, !tbaa !10
  call void %56(i32 5, i8* %59) #15
  br label %aws_add_size_checked.exit.thread

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 7
  %62 = load i32, i32* %61, align 4, !tbaa !11
  %63 = icmp ult i32 %48, %62
  br i1 %63, label %..lr.ph.i_crit_edge, label %64

..lr.ph.i_crit_edge:                              ; preds = %60
  %.pre27 = load i32, i32* %6, align 4, !tbaa !11
  br label %.lr.ph.i

64:                                               ; preds = %60
  %65 = call fastcc i32 @s_expand_table(%struct.aws_hash_table* nonnull %0)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %aws_add_size_checked.exit.thread

67:                                               ; preds = %64
  %68 = load %struct.hash_table_state*, %struct.hash_table_state** %8, align 4, !tbaa !5
  store i32 0, i32* %6, align 4, !tbaa !11
  %.phi.trans.insert = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %68, i32 0, i32 6
  %.pre = load i32, i32* %.phi.trans.insert, align 4, !tbaa !11
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %67
  %69 = phi i32 [ 0, %67 ], [ %.pre27, %..lr.ph.i_crit_edge ]
  %70 = phi i32 [ %.pre, %67 ], [ %48, %..lr.ph.i_crit_edge ]
  %.01 = phi %struct.hash_table_state* [ %68, %67 ], [ %9, %..lr.ph.i_crit_edge ]
  %71 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %.01, i32 0, i32 6
  %72 = add i32 %70, 1
  store i32 %72, i32* %71, align 4, !tbaa !11
  call void @seahorn.fn.enter() #15
  %73 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %.01, i32 0, i32 8
  br label %74

74:                                               ; preds = %89, %.lr.ph.i
  %.sroa.016.0 = phi i8* [ %1, %.lr.ph.i ], [ %.sroa.016.1, %89 ]
  %.sroa.518.0 = phi i8* [ null, %.lr.ph.i ], [ %.sroa.518.1, %89 ]
  %.pr6.i = phi i64 [ %.0.i, %.lr.ph.i ], [ %.pr.i, %89 ]
  %.015.i = phi %struct.hash_table_entry* [ null, %.lr.ph.i ], [ %.2.i, %89 ]
  %.024.i = phi i32 [ %69, %.lr.ph.i ], [ %.13.i, %89 ]
  %75 = trunc i64 %.pr6.i to i32
  %76 = add i32 %.024.i, %75
  %77 = load i32, i32* %73, align 4, !tbaa !11
  %78 = and i32 %77, %76
  %79 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %.01, i32 0, i32 10, i32 %78
  %80 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %.01, i32 0, i32 10, i32 %78, i32 1
  %81 = load i64, i64* %80, align 4, !tbaa !48
  %82 = trunc i64 %81 to i32
  %83 = sub i32 %78, %82
  %84 = and i32 %83, %77
  %85 = icmp eq i64 %81, 0
  %86 = icmp ult i32 %84, %.024.i
  %or.cond.i = or i1 %85, %86
  br i1 %or.cond.i, label %87, label %89

87:                                               ; preds = %74
  %88 = icmp eq %struct.hash_table_entry* %.015.i, null
  %spec.select.i = select i1 %88, %struct.hash_table_entry* %79, %struct.hash_table_entry* %.015.i
  %.pmcpy.unpack.elt.i = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %79, i32 0, i32 0, i32 0
  %.pmcpy.unpack.unpack.i = load i8*, i8** %.pmcpy.unpack.elt.i, align 4
  %.pmcpy.unpack.elt9.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %.01, i32 0, i32 10, i32 %78, i32 0, i32 1
  %.pmcpy.unpack.unpack10.i = load i8*, i8** %.pmcpy.unpack.elt9.i, align 4
  store i8* %.sroa.016.0, i8** %.pmcpy.unpack.elt.i, align 4
  store i8* %.sroa.518.0, i8** %.pmcpy.unpack.elt9.i, align 4
  store i64 %.pr6.i, i64* %80, align 4
  br label %89

89:                                               ; preds = %87, %74
  %.sroa.016.1 = phi i8* [ %.pmcpy.unpack.unpack.i, %87 ], [ %.sroa.016.0, %74 ]
  %.sroa.518.1 = phi i8* [ %.pmcpy.unpack.unpack10.i, %87 ], [ %.sroa.518.0, %74 ]
  %.pr.i = phi i64 [ %81, %87 ], [ %.pr6.i, %74 ]
  %.13.in.i = phi i32 [ %84, %87 ], [ %.024.i, %74 ]
  %.2.i = phi %struct.hash_table_entry* [ %spec.select.i, %87 ], [ %.015.i, %74 ]
  %.13.i = add i32 %.13.in.i, 1
  %90 = icmp eq i64 %.pr.i, 0
  br i1 %90, label %s_emplace_item.exit, label %74, !llvm.loop !55

s_emplace_item.exit:                              ; preds = %89
  store %struct.hash_table_entry* %.2.i, %struct.hash_table_entry** %5, align 4, !tbaa !10
  %91 = icmp eq %struct.aws_hash_element** %2, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %s_emplace_item.exit
  %93 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %.2.i, i32 0, i32 0
  store %struct.aws_hash_element* %93, %struct.aws_hash_element** %2, align 4, !tbaa !10
  br label %94

94:                                               ; preds = %92, %s_emplace_item.exit
  store i32 1, i32* %spec.select, align 4, !tbaa !23
  br label %aws_add_size_checked.exit.thread

aws_add_size_checked.exit.thread:                 ; preds = %58, %55, %53, %64, %94, %45
  %.1 = phi i32 [ 0, %45 ], [ 0, %94 ], [ %65, %64 ], [ -1, %53 ], [ -1, %55 ], [ -1, %58 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.0.sroa_cast14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #15
  ret i32 %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @s_expand_table(%struct.aws_hash_table* nocapture %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  tail call void @seahorn.fn.enter() #15
  %3 = alloca %struct.hash_table_state, align 8
  %4 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %5 = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4, !tbaa !5
  %6 = bitcast %struct.hash_table_state* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %6) #15
  %.pmcpy.elt = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 0
  %.pmcpy.unpack = load i64 (i8*)*, i64 (i8*)** %.pmcpy.elt, align 4
  %.pmcpy.elt3 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 1
  %.pmcpy.unpack4 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %.pmcpy.elt3, align 4
  %.pmcpy.elt5 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 2
  %.pmcpy.unpack6 = load void (i8*)*, void (i8*)** %.pmcpy.elt5, align 4
  %.pmcpy.elt7 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 3
  %.pmcpy.unpack8 = load void (i8*)*, void (i8*)** %.pmcpy.elt7, align 4
  %.pmcpy.elt9 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 4
  %.pmcpy.unpack10 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt9, align 4
  %.pmcpy.elt11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 5
  %.pmcpy.unpack12 = load i32, i32* %.pmcpy.elt11, align 4
  %.pmcpy.elt13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 6
  %.pmcpy.unpack14 = load i32, i32* %.pmcpy.elt13, align 4
  %.pmcpy.elt15 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 7
  %.pmcpy.unpack16 = load i32, i32* %.pmcpy.elt15, align 4
  %.pmcpy.elt17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 8
  %.pmcpy.unpack18 = load i32, i32* %.pmcpy.elt17, align 4
  %.pmcpy.elt19 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 9
  %.pmcpy.unpack20 = load double, double* %.pmcpy.elt19, align 4
  %.repack = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 0
  store i64 (i8*)* %.pmcpy.unpack, i64 (i8*)** %.repack, align 8
  %.repack24 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 1
  store i1 (i8*, i8*)* %.pmcpy.unpack4, i1 (i8*, i8*)** %.repack24, align 4
  %.repack26 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 2
  store void (i8*)* %.pmcpy.unpack6, void (i8*)** %.repack26, align 8
  %.repack28 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 3
  store void (i8*)* %.pmcpy.unpack8, void (i8*)** %.repack28, align 4
  %.repack30 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 4
  store %struct.aws_allocator* %.pmcpy.unpack10, %struct.aws_allocator** %.repack30, align 8
  %.repack32 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 5
  store i32 %.pmcpy.unpack12, i32* %.repack32, align 4
  %.repack34 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 6
  store i32 %.pmcpy.unpack14, i32* %.repack34, align 8
  %.repack36 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 7
  store i32 %.pmcpy.unpack16, i32* %.repack36, align 4
  %.repack38 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 8
  store i32 %.pmcpy.unpack18, i32* %.repack38, align 8
  %.repack40 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 9
  store double %.pmcpy.unpack20, double* %.repack40, align 4
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %7 = mul i32 %.pmcpy.unpack12, 2
  %8 = call fastcc i32 @s_update_template_size(%struct.hash_table_state* nonnull %3, i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %aws_mem_release.exit

10:                                               ; preds = %1
  tail call void @seahorn.fn.enter() #15
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #15
  %12 = load i32, i32* %.repack32, align 4, !tbaa !11
  %13 = call fastcc i32 @hash_table_state_required_bytes(i32 %12, i32* nonnull %2) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %s_alloc_state.exit.thread

s_alloc_state.exit.thread:                        ; preds = %10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #15
  br label %aws_mem_release.exit

15:                                               ; preds = %10
  %16 = load %struct.aws_allocator*, %struct.aws_allocator** %.repack30, align 8, !tbaa !10
  %17 = load i32, i32* %2, align 4, !tbaa !11
  %18 = tail call fastcc i8* @aws_mem_calloc(%struct.aws_allocator* %16, i32 1, i32 %17) #15
  %19 = bitcast i8* %18 to %struct.hash_table_state*
  %20 = icmp eq i8* %18, null
  br i1 %20, label %s_alloc_state.exit.thread15, label %.preheader

s_alloc_state.exit.thread15:                      ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #15
  br label %aws_mem_release.exit

.preheader:                                       ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(44) %18, i8* nonnull align 8 dereferenceable(44) %6, i32 44, i1 false) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #15
  %21 = load i32, i32* %.pmcpy.elt11, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %23 = getelementptr inbounds i8, i8* %18, i32 32
  %24 = bitcast i8* %23 to i32*
  br label %38

._crit_edge:                                      ; preds = %s_emplace_item.exit, %.preheader
  %25 = bitcast %struct.aws_hash_table* %0 to i8**
  store i8* %18, i8** %25, align 4, !tbaa !5
  %26 = getelementptr inbounds i8, i8* %18, i32 16
  %27 = bitcast i8* %26 to %struct.aws_allocator**
  %28 = load %struct.aws_allocator*, %struct.aws_allocator** %27, align 4, !tbaa !10
  %29 = bitcast %struct.hash_table_state* %5 to i8*
  tail call void @seahorn.fn.enter() #15
  %30 = icmp eq %struct.aws_allocator* %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %._crit_edge
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #16
  unreachable

32:                                               ; preds = %._crit_edge
  %33 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %28, i32 0, i32 1
  %34 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %33, align 4, !tbaa !24
  %35 = icmp eq void (%struct.aws_allocator*, i8*)* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #16
  unreachable

37:                                               ; preds = %32
  tail call void %34(%struct.aws_allocator* nonnull %28, i8* nonnull %29) #15
  br label %aws_mem_release.exit

38:                                               ; preds = %.lr.ph, %s_emplace_item.exit
  %39 = phi i32 [ %21, %.lr.ph ], [ %56, %s_emplace_item.exit ]
  %.0113 = phi i32 [ 0, %.lr.ph ], [ %57, %s_emplace_item.exit ]
  %.pmcpy2.elt44 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 10, i32 %.0113, i32 1
  %.pmcpy2.unpack45 = load i64, i64* %.pmcpy2.elt44, align 4
  %40 = icmp eq i64 %.pmcpy2.unpack45, 0
  br i1 %40, label %s_emplace_item.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %38
  %.pmcpy2.unpack.elt47 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 10, i32 %.0113, i32 0, i32 1
  %.pmcpy2.unpack.unpack48 = load i8*, i8** %.pmcpy2.unpack.elt47, align 4
  %.pmcpy2.unpack.elt = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 10, i32 %.0113, i32 0, i32 0
  %.pmcpy2.unpack.unpack = load i8*, i8** %.pmcpy2.unpack.elt, align 4
  tail call void @seahorn.fn.enter() #15
  br label %41

41:                                               ; preds = %54, %.lr.ph.i
  %.sroa.07.0 = phi i8* [ %.pmcpy2.unpack.unpack, %.lr.ph.i ], [ %.sroa.07.1, %54 ]
  %.sroa.59.0 = phi i8* [ %.pmcpy2.unpack.unpack48, %.lr.ph.i ], [ %.sroa.59.1, %54 ]
  %.pr6.i = phi i64 [ %.pmcpy2.unpack45, %.lr.ph.i ], [ %.pr.i, %54 ]
  %.024.i = phi i32 [ 0, %.lr.ph.i ], [ %.13.i, %54 ]
  %42 = trunc i64 %.pr6.i to i32
  %43 = add i32 %.024.i, %42
  %44 = load i32, i32* %24, align 4, !tbaa !11
  %45 = and i32 %44, %43
  %46 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %19, i32 0, i32 10, i32 %45, i32 1
  %47 = load i64, i64* %46, align 4, !tbaa !48
  %48 = trunc i64 %47 to i32
  %49 = sub i32 %45, %48
  %50 = and i32 %49, %44
  %51 = icmp eq i64 %47, 0
  %52 = icmp ult i32 %50, %.024.i
  %or.cond.i = or i1 %51, %52
  br i1 %or.cond.i, label %53, label %54

53:                                               ; preds = %41
  %.pmcpy.unpack.elt.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %19, i32 0, i32 10, i32 %45, i32 0, i32 0
  %.pmcpy.unpack.unpack.i = load i8*, i8** %.pmcpy.unpack.elt.i, align 4
  %.pmcpy.unpack.elt9.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %19, i32 0, i32 10, i32 %45, i32 0, i32 1
  %.pmcpy.unpack.unpack10.i = load i8*, i8** %.pmcpy.unpack.elt9.i, align 4
  store i8* %.sroa.07.0, i8** %.pmcpy.unpack.elt.i, align 4
  store i8* %.sroa.59.0, i8** %.pmcpy.unpack.elt9.i, align 4
  store i64 %.pr6.i, i64* %46, align 4
  br label %54

54:                                               ; preds = %53, %41
  %.sroa.07.1 = phi i8* [ %.pmcpy.unpack.unpack.i, %53 ], [ %.sroa.07.0, %41 ]
  %.sroa.59.1 = phi i8* [ %.pmcpy.unpack.unpack10.i, %53 ], [ %.sroa.59.0, %41 ]
  %.pr.i = phi i64 [ %47, %53 ], [ %.pr6.i, %41 ]
  %.13.in.i = phi i32 [ %50, %53 ], [ %.024.i, %41 ]
  %.13.i = add i32 %.13.in.i, 1
  %55 = icmp eq i64 %.pr.i, 0
  br i1 %55, label %s_emplace_item.exit.loopexit, label %41, !llvm.loop !55

s_emplace_item.exit.loopexit:                     ; preds = %54
  %.pre = load i32, i32* %.pmcpy.elt11, align 4, !tbaa !11
  br label %s_emplace_item.exit

s_emplace_item.exit:                              ; preds = %s_emplace_item.exit.loopexit, %38
  %56 = phi i32 [ %.pre, %s_emplace_item.exit.loopexit ], [ %39, %38 ]
  %57 = add i32 %.0113, 1
  %58 = icmp ult i32 %57, %56
  br i1 %58, label %38, label %._crit_edge, !llvm.loop !56

aws_mem_release.exit:                             ; preds = %s_alloc_state.exit.thread15, %37, %s_alloc_state.exit.thread, %1
  %.1 = phi i32 [ -1, %1 ], [ -1, %s_alloc_state.exit.thread ], [ 0, %37 ], [ -1, %s_alloc_state.exit.thread15 ]
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %6) #15
  ret i32 %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.hash_table_entry* @s_emplace_item(%struct.hash_table_state* %0, %struct.hash_table_entry* nocapture byval(%struct.hash_table_entry) align 4 %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 4, !tbaa !48
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %3
  %7 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 8
  %.pmcpy4.unpack.elt = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %1, i32 0, i32 0, i32 0
  %.pmcpy4.unpack.elt19 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %1, i32 0, i32 0, i32 1
  br label %8

8:                                                ; preds = %.lr.ph, %23
  %.pr6 = phi i64 [ %5, %.lr.ph ], [ %.pr, %23 ]
  %.015 = phi %struct.hash_table_entry* [ null, %.lr.ph ], [ %.2, %23 ]
  %.024 = phi i32 [ %2, %.lr.ph ], [ %.13, %23 ]
  %9 = trunc i64 %.pr6 to i32
  %10 = add i32 %.024, %9
  %11 = load i32, i32* %7, align 4, !tbaa !11
  %12 = and i32 %11, %10
  %13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %12
  %14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %12, i32 1
  %15 = load i64, i64* %14, align 4, !tbaa !48
  %16 = trunc i64 %15 to i32
  %17 = sub i32 %12, %16
  %18 = and i32 %17, %11
  %19 = icmp eq i64 %15, 0
  %20 = icmp ult i32 %18, %.024
  %or.cond = or i1 %19, %20
  br i1 %or.cond, label %21, label %23

21:                                               ; preds = %8
  %22 = icmp eq %struct.hash_table_entry* %.015, null
  %spec.select = select i1 %22, %struct.hash_table_entry* %13, %struct.hash_table_entry* %.015
  %.pmcpy.unpack.elt = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %13, i32 0, i32 0, i32 0
  %.pmcpy.unpack.unpack = load i8*, i8** %.pmcpy.unpack.elt, align 4
  %.pmcpy.unpack.elt9 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %12, i32 0, i32 1
  %.pmcpy.unpack.unpack10 = load i8*, i8** %.pmcpy.unpack.elt9, align 4
  %.pmcpy4.unpack.unpack = load i8*, i8** %.pmcpy4.unpack.elt, align 4
  %.pmcpy4.unpack.unpack20 = load i8*, i8** %.pmcpy4.unpack.elt19, align 4
  store i8* %.pmcpy4.unpack.unpack, i8** %.pmcpy.unpack.elt, align 4
  store i8* %.pmcpy4.unpack.unpack20, i8** %.pmcpy.unpack.elt9, align 4
  store i64 %.pr6, i64* %14, align 4
  store i8* %.pmcpy.unpack.unpack, i8** %.pmcpy4.unpack.elt, align 4
  store i8* %.pmcpy.unpack.unpack10, i8** %.pmcpy4.unpack.elt19, align 4
  store i64 %15, i64* %4, align 4
  br label %23

23:                                               ; preds = %21, %8
  %.pr = phi i64 [ %15, %21 ], [ %.pr6, %8 ]
  %.13.in = phi i32 [ %18, %21 ], [ %.024, %8 ]
  %.2 = phi %struct.hash_table_entry* [ %spec.select, %21 ], [ %.015, %8 ]
  %.13 = add i32 %.13.in, 1
  %24 = icmp eq i64 %.pr, 0
  br i1 %24, label %.loopexit, label %8, !llvm.loop !55

.loopexit:                                        ; preds = %23, %3
  %.0 = phi %struct.hash_table_entry* [ null, %3 ], [ %.2, %23 ]
  ret %struct.hash_table_entry* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_put(%struct.aws_hash_table* nocapture %0, i8* %1, i8* %2, i32* %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %5 = alloca %struct.aws_hash_element*, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.aws_hash_element** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15
  %9 = icmp eq i32* %3, null
  %spec.select = select i1 %9, i32* %6, i32* %3
  %10 = call fastcc i32 @aws_hash_table_create(%struct.aws_hash_table* %0, i8* %1, %struct.aws_hash_element** nonnull %5, i32* %spec.select)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %14 = load %struct.hash_table_state*, %struct.hash_table_state** %13, align 4, !tbaa !5
  %15 = load i32, i32* %spec.select, align 4, !tbaa !23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.aws_hash_element*, %struct.aws_hash_element** %5, align 4, !tbaa !10
  %19 = getelementptr inbounds %struct.aws_hash_element, %struct.aws_hash_element* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 4, !tbaa !57
  %21 = icmp eq i8* %20, %1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %14, i32 0, i32 2
  %24 = load void (i8*)*, void (i8*)** %23, align 4, !tbaa !10
  %25 = icmp eq void (i8*)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void %24(i8* %20) #15
  br label %27

27:                                               ; preds = %26, %22, %17
  %28 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %14, i32 0, i32 3
  %29 = load void (i8*)*, void (i8*)** %28, align 4, !tbaa !10
  %30 = icmp eq void (i8*)* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.aws_hash_element*, %struct.aws_hash_element** %5, align 4, !tbaa !10
  %33 = getelementptr inbounds %struct.aws_hash_element, %struct.aws_hash_element* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 4, !tbaa !58
  call void %29(i8* %34) #15
  br label %35

35:                                               ; preds = %31, %27, %12
  %36 = load %struct.aws_hash_element*, %struct.aws_hash_element** %5, align 4, !tbaa !10
  %37 = getelementptr inbounds %struct.aws_hash_element, %struct.aws_hash_element* %36, i32 0, i32 0
  store i8* %1, i8** %37, align 4, !tbaa !57
  %38 = load %struct.aws_hash_element*, %struct.aws_hash_element** %5, align 4, !tbaa !10
  %39 = getelementptr inbounds %struct.aws_hash_element, %struct.aws_hash_element* %38, i32 0, i32 1
  store i8* %2, i8** %39, align 4, !tbaa !58
  br label %40

40:                                               ; preds = %35, %4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_remove(%struct.aws_hash_table* nocapture readonly %0, i8* %1, %struct.aws_hash_element* %2, i32* %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %5 = alloca %struct.hash_table_entry*, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %8 = load %struct.hash_table_state*, %struct.hash_table_state** %7, align 4, !tbaa !5
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %9 = icmp eq i8* %1, null
  br i1 %9, label %s_hash_for.exit, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 0
  %12 = load i64 (i8*)*, i64 (i8*)** %11, align 4, !tbaa !10
  %13 = tail call i64 %12(i8* nonnull %1) #15
  %14 = icmp eq i64 %13, 0
  %spec.store.select.i = select i1 %14, i64 1, i64 %13
  br label %s_hash_for.exit

s_hash_for.exit:                                  ; preds = %4, %10
  %.0.i = phi i64 [ %spec.store.select.i, %10 ], [ 42, %4 ]
  %15 = bitcast %struct.hash_table_entry** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #15
  %.0.sroa_cast = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %.0.sroa_cast)
  %16 = icmp eq i32* %3, null
  %spec.select = select i1 %16, i32* %6, i32* %3
  tail call void @seahorn.fn.enter() #15
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 8
  %18 = load i32, i32* %17, align 4, !tbaa !11
  %19 = trunc i64 %.0.i to i32
  %20 = and i32 %18, %19
  %21 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %20
  %22 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %20, i32 1
  %23 = load i64, i64* %22, align 4, !tbaa !48
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %s_find_entry.exit.thread4, label %25

s_find_entry.exit.thread4:                        ; preds = %s_hash_for.exit
  store %struct.hash_table_entry* %21, %struct.hash_table_entry** %5, align 4, !tbaa !10
  br label %38

25:                                               ; preds = %s_hash_for.exit
  %26 = icmp eq i64 %23, %.0.i
  br i1 %26, label %27, label %s_find_entry.exit

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %21, i32 0, i32 0, i32 0
  %29 = load i8*, i8** %28, align 4, !tbaa !51
  tail call void @seahorn.fn.enter() #15
  %30 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 1
  %31 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %30, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %32 = icmp eq i8* %29, %1
  br i1 %32, label %s_find_entry.exit.thread, label %33

33:                                               ; preds = %27
  %34 = icmp eq i8* %29, null
  %or.cond.i.i.i = or i1 %9, %34
  br i1 %or.cond.i.i.i, label %s_find_entry.exit, label %s_hash_keys_eq.exit.i

s_hash_keys_eq.exit.i:                            ; preds = %33
  %35 = tail call zeroext i1 %31(i8* nonnull %1, i8* nonnull %29) #15
  br i1 %35, label %s_find_entry.exit.thread, label %s_find_entry.exit

s_find_entry.exit.thread:                         ; preds = %27, %s_hash_keys_eq.exit.i
  store %struct.hash_table_entry* %21, %struct.hash_table_entry** %5, align 4, !tbaa !10
  br label %39

s_find_entry.exit:                                ; preds = %25, %33, %s_hash_keys_eq.exit.i
  %36 = call fastcc i32 @s_find_entry1(%struct.hash_table_state* nonnull %8, i64 %.0.i, i8* %1, %struct.hash_table_entry** nonnull %5, i32* null) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %s_find_entry.exit.thread4, %s_find_entry.exit
  store i32 0, i32* %spec.select, align 4, !tbaa !23
  br label %102

39:                                               ; preds = %s_find_entry.exit.thread, %s_find_entry.exit
  store i32 1, i32* %spec.select, align 4, !tbaa !23
  %40 = icmp eq %struct.aws_hash_element* %2, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = load %struct.hash_table_entry*, %struct.hash_table_entry** %5, align 4, !tbaa !10
  %43 = bitcast %struct.hash_table_entry* %42 to i64*
  %44 = bitcast %struct.aws_hash_element* %2 to i64*
  %45 = load i64, i64* %43, align 4
  store i64 %45, i64* %44, align 4
  br label %._crit_edge

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 2
  %48 = load void (i8*)*, void (i8*)** %47, align 4, !tbaa !10
  %49 = icmp eq void (i8*)* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.hash_table_entry*, %struct.hash_table_entry** %5, align 4, !tbaa !10
  %52 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %51, i32 0, i32 0, i32 0
  %53 = load i8*, i8** %52, align 4, !tbaa !51
  tail call void %48(i8* %53) #15
  br label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 3
  %56 = load void (i8*)*, void (i8*)** %55, align 4, !tbaa !10
  %57 = icmp eq void (i8*)* %56, null
  %.pre = load %struct.hash_table_entry*, %struct.hash_table_entry** %5, align 4, !tbaa !10
  br i1 %57, label %._crit_edge, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %.pre, i32 0, i32 0, i32 1
  %60 = load i8*, i8** %59, align 4, !tbaa !52
  tail call void %56(i8* %60) #15
  br label %._crit_edge

._crit_edge:                                      ; preds = %54, %58, %41
  %61 = phi %struct.hash_table_entry* [ %.pre, %58 ], [ %42, %41 ], [ %.pre, %54 ]
  tail call void @seahorn.fn.enter() #15
  %62 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 6
  %63 = load i32, i32* %62, align 4, !tbaa !11
  %64 = add i32 %63, -1
  store i32 %64, i32* %62, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #15
  %65 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 0
  %66 = ptrtoint %struct.hash_table_entry* %61 to i32
  %67 = ptrtoint %struct.hash_table_entry* %65 to i32
  %68 = sub i32 %66, %67
  %69 = ashr exact i32 %68, 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %17, align 4, !tbaa !11
  %72 = and i32 %71, %70
  %73 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %72, i32 1
  %74 = load i64, i64* %73, align 4, !tbaa !48
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %s_remove_entry.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %76 = zext i32 %71 to i64
  %77 = and i64 %74, %76
  %78 = zext i32 %72 to i64
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %s_remove_entry.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.pmcpy.unpack.elt.i8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %72, i32 0, i32 0
  %.pmcpy.unpack.unpack.i9 = load i8*, i8** %.pmcpy.unpack.elt.i8, align 4
  %.pmcpy.unpack.elt5.i10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %72, i32 0, i32 1
  %.pmcpy.unpack.unpack6.i11 = load i8*, i8** %.pmcpy.unpack.elt5.i10, align 4
  %.repack.repack.i12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %69, i32 0, i32 0
  store i8* %.pmcpy.unpack.unpack.i9, i8** %.repack.repack.i12, align 4
  %.repack.repack10.i13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %69, i32 0, i32 1
  store i8* %.pmcpy.unpack.unpack6.i11, i8** %.repack.repack10.i13, align 4
  %.repack8.i14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %69, i32 1
  store i64 %74, i64* %.repack8.i14, align 4
  %80 = add i32 %72, 1
  %81 = load i32, i32* %17, align 4, !tbaa !11
  %82 = and i32 %81, %80
  %83 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %82, i32 1
  %84 = load i64, i64* %83, align 4, !tbaa !48
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %s_remove_entry.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %86 = phi i64 [ %98, %.lr.ph ], [ %84, %.lr.ph.preheader ]
  %87 = phi i32 [ %96, %.lr.ph ], [ %82, %.lr.ph.preheader ]
  %88 = phi i32 [ %95, %.lr.ph ], [ %81, %.lr.ph.preheader ]
  %89 = phi i32 [ %87, %.lr.ph ], [ %72, %.lr.ph.preheader ]
  %90 = zext i32 %88 to i64
  %91 = and i64 %86, %90
  %92 = zext i32 %87 to i64
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %s_remove_entry.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %.pmcpy.unpack.elt.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %87, i32 0, i32 0
  %.pmcpy.unpack.unpack.i = load i8*, i8** %.pmcpy.unpack.elt.i, align 4
  %.pmcpy.unpack.elt5.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %87, i32 0, i32 1
  %.pmcpy.unpack.unpack6.i = load i8*, i8** %.pmcpy.unpack.elt5.i, align 4
  %.repack.repack.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %89, i32 0, i32 0
  store i8* %.pmcpy.unpack.unpack.i, i8** %.repack.repack.i, align 4
  %.repack.repack10.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %89, i32 0, i32 1
  store i8* %.pmcpy.unpack.unpack6.i, i8** %.repack.repack10.i, align 4
  %.repack8.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %89, i32 1
  store i64 %86, i64* %.repack8.i, align 4
  %94 = add i32 %87, 1
  %95 = load i32, i32* %17, align 4, !tbaa !11
  %96 = and i32 %95, %94
  %97 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %96, i32 1
  %98 = load i64, i64* %97, align 4, !tbaa !48
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %s_remove_entry.exit, label %.lr.ph.i

s_remove_entry.exit:                              ; preds = %.lr.ph.i, %.lr.ph, %.lr.ph.preheader, %.lr.ph.i.preheader, %._crit_edge
  %.01.lcssa.i = phi i32 [ %69, %._crit_edge ], [ %69, %.lr.ph.i.preheader ], [ %72, %.lr.ph.preheader ], [ %87, %.lr.ph ], [ %89, %.lr.ph.i ]
  %100 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %.01.lcssa.i
  %101 = bitcast %struct.hash_table_entry* %100 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %101, i8 0, i32 16, i1 false) #15
  br label %102

102:                                              ; preds = %s_remove_entry.exit, %38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @s_remove_entry(%struct.hash_table_state* %0, %struct.hash_table_entry* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 6
  %4 = load i32, i32* %3, align 4, !tbaa !11
  %5 = add i32 %4, -1
  store i32 %5, i32* %3, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #15
  %6 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 0
  %7 = ptrtoint %struct.hash_table_entry* %1 to i32
  %8 = ptrtoint %struct.hash_table_entry* %6 to i32
  %9 = sub i32 %7, %8
  %10 = ashr exact i32 %9, 4
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 8
  %13 = load i32, i32* %12, align 4, !tbaa !11
  %14 = and i32 %11, %13
  %15 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %14, i32 1
  %16 = load i64, i64* %15, align 4, !tbaa !48
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %18 = zext i32 %13 to i64
  %19 = and i64 %16, %18
  %20 = zext i32 %14 to i64
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %._crit_edge, label %.lr.ph10

.lr.ph:                                           ; preds = %.lr.ph10
  %22 = zext i32 %29 to i64
  %23 = and i64 %32, %22
  %24 = zext i32 %30 to i64
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %._crit_edge, label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0169 = phi i32 [ %26, %.lr.ph ], [ %10, %.lr.ph.preheader ]
  %26 = phi i32 [ %30, %.lr.ph ], [ %14, %.lr.ph.preheader ]
  %27 = phi i64 [ %32, %.lr.ph ], [ %16, %.lr.ph.preheader ]
  %.pmcpy.unpack.elt = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %26, i32 0, i32 0
  %.pmcpy.unpack.unpack = load i8*, i8** %.pmcpy.unpack.elt, align 4
  %.pmcpy.unpack.elt5 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %26, i32 0, i32 1
  %.pmcpy.unpack.unpack6 = load i8*, i8** %.pmcpy.unpack.elt5, align 4
  %.repack.repack = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %.0169, i32 0, i32 0
  store i8* %.pmcpy.unpack.unpack, i8** %.repack.repack, align 4
  %.repack.repack10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %.0169, i32 0, i32 1
  store i8* %.pmcpy.unpack.unpack6, i8** %.repack.repack10, align 4
  %.repack8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %.0169, i32 1
  store i64 %27, i64* %.repack8, align 4
  %28 = add i32 %26, 1
  %29 = load i32, i32* %12, align 4, !tbaa !11
  %30 = and i32 %28, %29
  %31 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %30, i32 1
  %32 = load i64, i64* %31, align 4, !tbaa !48
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph10, %.lr.ph, %.lr.ph.preheader, %2
  %.01.lcssa = phi i32 [ %10, %2 ], [ %10, %.lr.ph.preheader ], [ %26, %.lr.ph ], [ %26, %.lr.ph10 ]
  %34 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 %.01.lcssa
  %35 = bitcast %struct.hash_table_entry* %34 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %35, i8 0, i32 16, i1 false) #15
  ret i32 %.01.lcssa
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @s_index_for(%struct.hash_table_state* %0, %struct.hash_table_entry* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 10, i32 0
  %4 = ptrtoint %struct.hash_table_entry* %1 to i32
  %5 = ptrtoint %struct.hash_table_entry* %3 to i32
  %6 = sub i32 %4, %5
  %7 = ashr exact i32 %6, 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_remove_element(%struct.aws_hash_table* nocapture readonly %0, %struct.aws_hash_element* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %4 = load %struct.hash_table_state*, %struct.hash_table_state** %3, align 4, !tbaa !5
  tail call void @seahorn.fn.enter() #15
  %5 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4, !tbaa !11
  %7 = add i32 %6, -1
  store i32 %7, i32* %5, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #15
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 0
  %9 = ptrtoint %struct.aws_hash_element* %1 to i32
  %10 = ptrtoint %struct.hash_table_entry* %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 4
  %13 = add nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 8
  %15 = load i32, i32* %14, align 4, !tbaa !11
  %16 = and i32 %13, %15
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %16, i32 1
  %18 = load i64, i64* %17, align 4, !tbaa !48
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %s_remove_entry.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %2
  %20 = zext i32 %15 to i64
  %21 = and i64 %18, %20
  %22 = zext i32 %16 to i64
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %s_remove_entry.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.pmcpy.unpack.elt.i3 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %16, i32 0, i32 0
  %.pmcpy.unpack.unpack.i4 = load i8*, i8** %.pmcpy.unpack.elt.i3, align 4
  %.pmcpy.unpack.elt5.i5 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %16, i32 0, i32 1
  %.pmcpy.unpack.unpack6.i6 = load i8*, i8** %.pmcpy.unpack.elt5.i5, align 4
  %.repack.repack.i7 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %12, i32 0, i32 0
  store i8* %.pmcpy.unpack.unpack.i4, i8** %.repack.repack.i7, align 4
  %.repack.repack10.i8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %12, i32 0, i32 1
  store i8* %.pmcpy.unpack.unpack6.i6, i8** %.repack.repack10.i8, align 4
  %.repack8.i9 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %12, i32 1
  store i64 %18, i64* %.repack8.i9, align 4
  %24 = add i32 %16, 1
  %25 = load i32, i32* %14, align 4, !tbaa !11
  %26 = and i32 %25, %24
  %27 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %26, i32 1
  %28 = load i64, i64* %27, align 4, !tbaa !48
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %s_remove_entry.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %30 = phi i64 [ %42, %.lr.ph ], [ %28, %.lr.ph.preheader ]
  %31 = phi i32 [ %40, %.lr.ph ], [ %26, %.lr.ph.preheader ]
  %32 = phi i32 [ %39, %.lr.ph ], [ %25, %.lr.ph.preheader ]
  %33 = phi i32 [ %31, %.lr.ph ], [ %16, %.lr.ph.preheader ]
  %34 = zext i32 %32 to i64
  %35 = and i64 %30, %34
  %36 = zext i32 %31 to i64
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %s_remove_entry.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %.pmcpy.unpack.elt.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %31, i32 0, i32 0
  %.pmcpy.unpack.unpack.i = load i8*, i8** %.pmcpy.unpack.elt.i, align 4
  %.pmcpy.unpack.elt5.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %31, i32 0, i32 1
  %.pmcpy.unpack.unpack6.i = load i8*, i8** %.pmcpy.unpack.elt5.i, align 4
  %.repack.repack.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %33, i32 0, i32 0
  store i8* %.pmcpy.unpack.unpack.i, i8** %.repack.repack.i, align 4
  %.repack.repack10.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %33, i32 0, i32 1
  store i8* %.pmcpy.unpack.unpack6.i, i8** %.repack.repack10.i, align 4
  %.repack8.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %33, i32 1
  store i64 %30, i64* %.repack8.i, align 4
  %38 = add i32 %31, 1
  %39 = load i32, i32* %14, align 4, !tbaa !11
  %40 = and i32 %39, %38
  %41 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %40, i32 1
  %42 = load i64, i64* %41, align 4, !tbaa !48
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %s_remove_entry.exit, label %.lr.ph.i

s_remove_entry.exit:                              ; preds = %.lr.ph.i, %.lr.ph, %.lr.ph.preheader, %.lr.ph.i.preheader, %2
  %.01.lcssa.i = phi i32 [ %12, %2 ], [ %12, %.lr.ph.i.preheader ], [ %16, %.lr.ph.preheader ], [ %31, %.lr.ph ], [ %33, %.lr.ph.i ]
  %44 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %.01.lcssa.i
  %45 = bitcast %struct.hash_table_entry* %44 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %45, i8 0, i32 16, i1 false) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_foreach(%struct.aws_hash_table* %0, i32 (i8*, %struct.aws_hash_element*)* nocapture %1, i8* %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %4 = alloca %struct.aws_hash_iter, align 4
  %5 = bitcast %struct.aws_hash_iter* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %5) #15
  tail call void @seahorn.fn.enter() #15, !noalias !59
  %6 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %7 = load %struct.hash_table_state*, %struct.hash_table_state** %6, align 4, !tbaa !5, !noalias !59
  %8 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 1
  %9 = bitcast %struct.aws_hash_element* %8 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(36) %9, i8 0, i32 32, i1 false) #15, !alias.scope !59
  %10 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 0
  store %struct.aws_hash_table* %0, %struct.aws_hash_table** %10, align 4, !tbaa !16, !alias.scope !59
  %11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %7, i32 0, i32 5
  %12 = load i32, i32* %11, align 4, !tbaa !11, !noalias !59
  %13 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 3
  store i32 %12, i32* %13, align 4, !tbaa !62, !alias.scope !59
  tail call void @seahorn.fn.enter() #15, !noalias !59
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %aws_hash_iter_begin.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %3
  %15 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %7, i32 0, i32 10, i32 0, i32 1
  %16 = load i64, i64* %15, align 4, !tbaa !48, !noalias !59
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph.i.preheader, label %aws_hash_iter_begin.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %18 = icmp ugt i32 %12, 1
  br i1 %18, label %.lr.ph.i.i.preheader, label %aws_hash_iter_begin.exit.thread, !llvm.loop !63

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader
  %19 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %7, i32 0, i32 10, i32 1, i32 1
  %20 = load i64, i64* %19, align 4, !tbaa !48, !noalias !59
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.lr.ph.i, label %aws_hash_iter_begin.exit, !llvm.loop !63

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %22 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %7, i32 0, i32 10, i32 %26, i32 1
  %23 = load i64, i64* %22, align 4, !tbaa !48, !noalias !59
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %.lr.ph.i, label %aws_hash_iter_begin.exit, !llvm.loop !63

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %25 = phi i32 [ %26, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i.preheader ]
  %26 = add nuw i32 %25, 1
  %27 = icmp ult i32 %26, %12
  br i1 %27, label %.lr.ph.i.i, label %aws_hash_iter_begin.exit.thread, !llvm.loop !63

aws_hash_iter_begin.exit.thread:                  ; preds = %.lr.ph.i, %3, %.lr.ph.i.preheader
  %28 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 1, i32 0
  store i8* null, i8** %28, align 4, !tbaa !64, !alias.scope !59
  %29 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 1, i32 1
  store i8* null, i8** %29, align 4, !tbaa !65, !alias.scope !59
  %30 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 2
  store i32 %12, i32* %30, align 4, !tbaa !66, !alias.scope !59
  %31 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 4
  store i32 0, i32* %31, align 4, !tbaa !67, !alias.scope !59
  call void @seahorn.fn.enter() #15
  br label %._crit_edge

aws_hash_iter_begin.exit:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader, %.lr.ph.i.preheader.i
  %.027.i.lcssa.i = phi i32 [ 0, %.lr.ph.i.preheader.i ], [ 1, %.lr.ph.i.i.preheader ], [ %26, %.lr.ph.i.i ]
  %32 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %7, i32 0, i32 10, i32 %.027.i.lcssa.i, i32 0
  %33 = bitcast %struct.aws_hash_element* %32 to i64*
  %34 = bitcast %struct.aws_hash_element* %8 to i64*
  %35 = load i64, i64* %33, align 4, !noalias !59
  store i64 %35, i64* %34, align 4, !alias.scope !59
  %36 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 2
  store i32 %.027.i.lcssa.i, i32* %36, align 4, !tbaa !66, !alias.scope !59
  %37 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 4
  store i32 2, i32* %37, align 4, !tbaa !67, !alias.scope !59
  call void @seahorn.fn.enter() #15
  %38 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 2
  %39 = icmp eq i32 %.027.i.lcssa.i, %12
  br i1 %39, label %._crit_edge, label %.lr.ph14

.lr.ph14:                                         ; preds = %aws_hash_iter_begin.exit
  %40 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 4
  %41 = bitcast %struct.aws_hash_element* %8 to i64*
  %42 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 1, i32 0
  %43 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %4, i32 0, i32 1, i32 1
  br label %44

44:                                               ; preds = %.lr.ph14, %aws_hash_iter_next.exit
  %45 = call i32 %1(i8* %2, %struct.aws_hash_element* nonnull %8) #15
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %95, label %48

48:                                               ; preds = %44
  call void @seahorn.fn.enter() #15
  %49 = load %struct.aws_hash_table*, %struct.aws_hash_table** %10, align 4, !tbaa !16
  %50 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %49, i32 0, i32 0
  %51 = load %struct.hash_table_state*, %struct.hash_table_state** %50, align 4, !tbaa !5
  %52 = load i32, i32* %38, align 4, !tbaa !66
  call void @seahorn.fn.enter() #15
  %53 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 6
  %54 = load i32, i32* %53, align 4, !tbaa !11
  %55 = add i32 %54, -1
  store i32 %55, i32* %53, align 4, !tbaa !11
  call void @seahorn.fn.enter() #15
  %.idx = mul nsw i32 %52, 16
  %56 = ashr exact i32 %.idx, 4
  %57 = add nsw i32 %56, 1
  %58 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 8
  %59 = load i32, i32* %58, align 4, !tbaa !11
  %60 = and i32 %59, %57
  %61 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %60, i32 1
  %62 = load i64, i64* %61, align 4, !tbaa !48
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %s_remove_entry.exit, label %.lr.ph.i1.preheader

.lr.ph.i1.preheader:                              ; preds = %48
  %64 = zext i32 %59 to i64
  %65 = and i64 %62, %64
  %66 = zext i32 %60 to i64
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %s_remove_entry.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i1.preheader
  %.pmcpy.unpack.elt.i29 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %60, i32 0, i32 0
  %.pmcpy.unpack.unpack.i30 = load i8*, i8** %.pmcpy.unpack.elt.i29, align 4
  %.pmcpy.unpack.elt5.i31 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %60, i32 0, i32 1
  %.pmcpy.unpack.unpack6.i32 = load i8*, i8** %.pmcpy.unpack.elt5.i31, align 4
  %.repack.repack.i33 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %56, i32 0, i32 0
  store i8* %.pmcpy.unpack.unpack.i30, i8** %.repack.repack.i33, align 4
  %.repack.repack10.i34 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %56, i32 0, i32 1
  store i8* %.pmcpy.unpack.unpack6.i32, i8** %.repack.repack10.i34, align 4
  %.repack8.i35 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %56, i32 1
  store i64 %62, i64* %.repack8.i35, align 4
  %68 = add i32 %60, 1
  %69 = load i32, i32* %58, align 4, !tbaa !11
  %70 = and i32 %69, %68
  %71 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %70, i32 1
  %72 = load i64, i64* %71, align 4, !tbaa !48
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %s_remove_entry.exit, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %74 = phi i64 [ %86, %.lr.ph ], [ %72, %.lr.ph.preheader ]
  %75 = phi i32 [ %84, %.lr.ph ], [ %70, %.lr.ph.preheader ]
  %76 = phi i32 [ %83, %.lr.ph ], [ %69, %.lr.ph.preheader ]
  %77 = phi i32 [ %75, %.lr.ph ], [ %60, %.lr.ph.preheader ]
  %78 = zext i32 %76 to i64
  %79 = and i64 %74, %78
  %80 = zext i32 %75 to i64
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %s_remove_entry.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i1
  %.pmcpy.unpack.elt.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %75, i32 0, i32 0
  %.pmcpy.unpack.unpack.i = load i8*, i8** %.pmcpy.unpack.elt.i, align 4
  %.pmcpy.unpack.elt5.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %75, i32 0, i32 1
  %.pmcpy.unpack.unpack6.i = load i8*, i8** %.pmcpy.unpack.elt5.i, align 4
  %.repack.repack.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %77, i32 0, i32 0
  store i8* %.pmcpy.unpack.unpack.i, i8** %.repack.repack.i, align 4
  %.repack.repack10.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %77, i32 0, i32 1
  store i8* %.pmcpy.unpack.unpack6.i, i8** %.repack.repack10.i, align 4
  %.repack8.i = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %77, i32 1
  store i64 %74, i64* %.repack8.i, align 4
  %82 = add i32 %75, 1
  %83 = load i32, i32* %58, align 4, !tbaa !11
  %84 = and i32 %83, %82
  %85 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %84, i32 1
  %86 = load i64, i64* %85, align 4, !tbaa !48
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %s_remove_entry.exit, label %.lr.ph.i1

s_remove_entry.exit:                              ; preds = %.lr.ph.i1, %.lr.ph, %.lr.ph.preheader, %.lr.ph.i1.preheader, %48
  %.01.lcssa.i = phi i32 [ %56, %48 ], [ %56, %.lr.ph.i1.preheader ], [ %60, %.lr.ph.preheader ], [ %75, %.lr.ph ], [ %77, %.lr.ph.i1 ]
  %88 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %51, i32 0, i32 10, i32 %.01.lcssa.i
  %89 = bitcast %struct.hash_table_entry* %88 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %89, i8 0, i32 16, i1 false) #15
  %90 = load i32, i32* %38, align 4, !tbaa !66
  %91 = icmp uge i32 %.01.lcssa.i, %90
  %.pre.i = load i32, i32* %13, align 4, !tbaa !62
  %92 = icmp ult i32 %.01.lcssa.i, %.pre.i
  %or.cond.i = and i1 %91, %92
  br i1 %or.cond.i, label %aws_hash_iter_delete.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %s_remove_entry.exit
  %93 = add i32 %.pre.i, -1
  store i32 %93, i32* %13, align 4, !tbaa !62
  br label %aws_hash_iter_delete.exit

aws_hash_iter_delete.exit:                        ; preds = %s_remove_entry.exit, %._crit_edge.i
  %94 = add i32 %90, -1
  store i32 %94, i32* %38, align 4, !tbaa !66
  store i32 1, i32* %40, align 4, !tbaa !67
  br label %95

95:                                               ; preds = %aws_hash_iter_delete.exit, %44
  %96 = and i32 %45, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %._crit_edge, label %98

98:                                               ; preds = %95
  call void @seahorn.fn.enter() #15
  %99 = load i32, i32* %38, align 4, !tbaa !66
  %100 = add i32 %99, 1
  call void @seahorn.fn.enter() #15
  %101 = load %struct.aws_hash_table*, %struct.aws_hash_table** %10, align 4, !tbaa !16
  %102 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %101, i32 0, i32 0
  %103 = load %struct.hash_table_state*, %struct.hash_table_state** %102, align 4, !tbaa !5
  %104 = load i32, i32* %13, align 4, !tbaa !62
  %105 = icmp ugt i32 %104, %100
  br i1 %105, label %.lr.ph.i.preheader.i3, label %._crit_edge.i.i9

.lr.ph.i.preheader.i3:                            ; preds = %98
  %106 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %103, i32 0, i32 10, i32 %100, i32 1
  %107 = load i64, i64* %106, align 4, !tbaa !48
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %.lr.ph.i6.preheader, label %.lr.ph.i._crit_edge.i8

.lr.ph.i6.preheader:                              ; preds = %.lr.ph.i.preheader.i3
  %109 = add i32 %99, 2
  %110 = icmp ult i32 %109, %104
  br i1 %110, label %.lr.ph.i.i4.preheader, label %._crit_edge.i.i9, !llvm.loop !63

.lr.ph.i.i4.preheader:                            ; preds = %.lr.ph.i6.preheader
  %111 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %103, i32 0, i32 10, i32 %109, i32 1
  %112 = load i64, i64* %111, align 4, !tbaa !48
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %.lr.ph.i6, label %.lr.ph.i._crit_edge.i8, !llvm.loop !63

.lr.ph.i.i4:                                      ; preds = %.lr.ph.i6
  %114 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %103, i32 0, i32 10, i32 %118, i32 1
  %115 = load i64, i64* %114, align 4, !tbaa !48
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %.lr.ph.i6, label %.lr.ph.i._crit_edge.i8, !llvm.loop !63

.lr.ph.i6:                                        ; preds = %.lr.ph.i.i4.preheader, %.lr.ph.i.i4
  %117 = phi i32 [ %118, %.lr.ph.i.i4 ], [ %109, %.lr.ph.i.i4.preheader ]
  %118 = add nuw i32 %117, 1
  %119 = icmp ult i32 %118, %104
  br i1 %119, label %.lr.ph.i.i4, label %._crit_edge.i.i9, !llvm.loop !63

.lr.ph.i._crit_edge.i8:                           ; preds = %.lr.ph.i.i4, %.lr.ph.i.i4.preheader, %.lr.ph.i.preheader.i3
  %.027.i.lcssa.i7 = phi i32 [ %100, %.lr.ph.i.preheader.i3 ], [ %109, %.lr.ph.i.i4.preheader ], [ %118, %.lr.ph.i.i4 ]
  %120 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %103, i32 0, i32 10, i32 %.027.i.lcssa.i7, i32 0
  %121 = bitcast %struct.aws_hash_element* %120 to i64*
  %122 = load i64, i64* %121, align 4
  store i64 %122, i64* %41, align 4
  br label %aws_hash_iter_next.exit

._crit_edge.i.i9:                                 ; preds = %.lr.ph.i6, %.lr.ph.i6.preheader, %98
  store i8* null, i8** %42, align 4, !tbaa !64
  store i8* null, i8** %43, align 4, !tbaa !65
  br label %aws_hash_iter_next.exit

aws_hash_iter_next.exit:                          ; preds = %.lr.ph.i._crit_edge.i8, %._crit_edge.i.i9
  %storemerge20 = phi i32 [ %.027.i.lcssa.i7, %.lr.ph.i._crit_edge.i8 ], [ %104, %._crit_edge.i.i9 ]
  %storemerge = phi i32 [ 2, %.lr.ph.i._crit_edge.i8 ], [ 0, %._crit_edge.i.i9 ]
  store i32 %storemerge20, i32* %38, align 4, !tbaa !66
  store i32 %storemerge, i32* %40, align 4, !tbaa !67
  call void @seahorn.fn.enter() #15
  %123 = icmp eq i32 %storemerge20, %104
  br i1 %123, label %._crit_edge, label %44, !llvm.loop !68

._crit_edge:                                      ; preds = %aws_hash_iter_next.exit, %95, %aws_hash_iter_begin.exit.thread, %aws_hash_iter_begin.exit
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %5) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_iter_begin(%struct.aws_hash_iter* noalias nocapture align 4 %0, %struct.aws_hash_table* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %1, i32 0, i32 0
  %4 = load %struct.hash_table_state*, %struct.hash_table_state** %3, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1
  %6 = bitcast %struct.aws_hash_element* %5 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(36) %6, i8 0, i32 32, i1 false)
  %7 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  store %struct.aws_hash_table* %1, %struct.aws_hash_table** %7, align 4, !tbaa !16
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 5
  %9 = load i32, i32* %8, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  store i32 %9, i32* %10, align 4, !tbaa !62
  tail call void @seahorn.fn.enter() #15
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 0, i32 1
  %13 = load i64, i64* %12, align 4, !tbaa !48
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %15 = icmp ugt i32 %9, 1
  br i1 %15, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !63

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %16 = phi i32 [ %20, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %16, i32 1
  %18 = load i64, i64* %17, align 4, !tbaa !48
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !63

.lr.ph:                                           ; preds = %.lr.ph.i
  %20 = add nuw i32 %16, 1
  %21 = icmp ult i32 %20, %9
  br i1 %21, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !63

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.027.i.lcssa = phi i32 [ 0, %.lr.ph.i.preheader ], [ %16, %.lr.ph.i ]
  %22 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 10, i32 %.027.i.lcssa, i32 0
  %24 = bitcast %struct.aws_hash_element* %23 to i64*
  %25 = bitcast %struct.aws_hash_element* %22 to i64*
  %26 = load i64, i64* %24, align 4
  store i64 %26, i64* %25, align 4
  %27 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  store i32 %.027.i.lcssa, i32* %27, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 2, i32* %28, align 4, !tbaa !67
  br label %s_get_next_element.exit

._crit_edge.i:                                    ; preds = %.lr.ph, %.lr.ph.preheader, %2
  %29 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 0
  store i8* null, i8** %29, align 4, !tbaa !64
  %30 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 1
  store i8* null, i8** %30, align 4, !tbaa !65
  %31 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  store i32 %9, i32* %31, align 4, !tbaa !66
  %32 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 0, i32* %32, align 4, !tbaa !67
  br label %s_get_next_element.exit

s_get_next_element.exit:                          ; preds = %.lr.ph.i._crit_edge, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_hash_iter_done(%struct.aws_hash_iter* nocapture readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !66
  %4 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  %5 = load i32, i32* %4, align 4, !tbaa !62
  %6 = icmp eq i32 %3, %5
  ret i1 %6
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_iter_delete(%struct.aws_hash_iter* nocapture %0, i1 zeroext %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  %4 = load %struct.aws_hash_table*, %struct.aws_hash_table** %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %4, i32 0, i32 0
  %6 = load %struct.hash_table_state*, %struct.hash_table_state** %5, align 4, !tbaa !5
  br i1 %1, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 2
  %9 = load void (i8*)*, void (i8*)** %8, align 4, !tbaa !10
  %10 = icmp eq void (i8*)* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 0
  %13 = load i8*, i8** %12, align 4, !tbaa !64
  tail call void %9(i8* %13) #15
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 3
  %16 = load void (i8*)*, void (i8*)** %15, align 4, !tbaa !10
  %17 = icmp eq void (i8*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 1
  %20 = load i8*, i8** %19, align 4, !tbaa !65
  tail call void %16(i8* %20) #15
  br label %21

21:                                               ; preds = %18, %14, %2
  %22 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  %23 = load i32, i32* %22, align 4, !tbaa !66
  %24 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 10, i32 %23
  %25 = tail call fastcc i32 @s_remove_entry(%struct.hash_table_state* %6, %struct.hash_table_entry* nonnull %24)
  %26 = load i32, i32* %22, align 4, !tbaa !66
  %27 = icmp uge i32 %25, %26
  %.phi.trans.insert = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  %.pre = load i32, i32* %.phi.trans.insert, align 4, !tbaa !62
  %28 = icmp ult i32 %25, %.pre
  %or.cond = and i1 %27, %28
  br i1 %or.cond, label %31, label %._crit_edge

._crit_edge:                                      ; preds = %21
  %29 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  %30 = add i32 %.pre, -1
  store i32 %30, i32* %29, align 4, !tbaa !62
  br label %31

31:                                               ; preds = %21, %._crit_edge
  %32 = add i32 %26, -1
  store i32 %32, i32* %22, align 4, !tbaa !66
  %33 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 1, i32* %33, align 4, !tbaa !67
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_iter_next(%struct.aws_hash_iter* nocapture %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !66
  %4 = add i32 %3, 1
  tail call void @seahorn.fn.enter() #15
  %5 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  %6 = load %struct.aws_hash_table*, %struct.aws_hash_table** %5, align 4, !tbaa !16
  %7 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %6, i32 0, i32 0
  %8 = load %struct.hash_table_state*, %struct.hash_table_state** %7, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !62
  %11 = icmp ugt i32 %10, %4
  br i1 %11, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %1
  %12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %4, i32 1
  %13 = load i64, i64* %12, align 4, !tbaa !48
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %15 = add i32 %3, 2
  %16 = icmp ult i32 %15, %10
  br i1 %16, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !63

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %17 = phi i32 [ %21, %.lr.ph ], [ %15, %.lr.ph.preheader ]
  %18 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %17, i32 1
  %19 = load i64, i64* %18, align 4, !tbaa !48
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !63

.lr.ph:                                           ; preds = %.lr.ph.i
  %21 = add nuw i32 %17, 1
  %22 = icmp ult i32 %21, %10
  br i1 %22, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !63

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.027.i.lcssa = phi i32 [ %4, %.lr.ph.i.preheader ], [ %17, %.lr.ph.i ]
  %23 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %8, i32 0, i32 10, i32 %.027.i.lcssa, i32 0
  %25 = bitcast %struct.aws_hash_element* %24 to i64*
  %26 = bitcast %struct.aws_hash_element* %23 to i64*
  %27 = load i64, i64* %25, align 4
  store i64 %27, i64* %26, align 4
  store i32 %.027.i.lcssa, i32* %2, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 2, i32* %28, align 4, !tbaa !67
  br label %s_get_next_element.exit

._crit_edge.i:                                    ; preds = %.lr.ph, %.lr.ph.preheader, %1
  %29 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 0
  store i8* null, i8** %29, align 4, !tbaa !64
  %30 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 1
  store i8* null, i8** %30, align 4, !tbaa !65
  store i32 %10, i32* %2, align 4, !tbaa !66
  %31 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 0, i32* %31, align 4, !tbaa !67
  br label %s_get_next_element.exit

s_get_next_element.exit:                          ; preds = %.lr.ph.i._crit_edge, %._crit_edge.i
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @s_get_next_element(%struct.aws_hash_iter* nocapture %0, i32 %1) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %3 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  %4 = load %struct.aws_hash_table*, %struct.aws_hash_table** %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %4, i32 0, i32 0
  %6 = load %struct.hash_table_state*, %struct.hash_table_state** %5, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !62
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %2
  %10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 10, i32 %1, i32 1
  %11 = load i64, i64* %10, align 4, !tbaa !48
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %.lr.ph12, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %.lr.ph12
  %13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 10, i32 %16, i32 1
  %14 = load i64, i64* %13, align 4, !tbaa !48
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.lr.ph12, label %.lr.ph._crit_edge, !llvm.loop !63

.lr.ph12:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02711 = phi i32 [ %16, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %16 = add nuw i32 %.02711, 1
  %17 = icmp ult i32 %16, %8
  br i1 %17, label %.lr.ph, label %._crit_edge, !llvm.loop !63

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.027.lcssa = phi i32 [ %1, %.lr.ph.preheader ], [ %16, %.lr.ph ]
  %18 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 10, i32 %.027.lcssa, i32 0
  %20 = bitcast %struct.aws_hash_element* %19 to i64*
  %21 = bitcast %struct.aws_hash_element* %18 to i64*
  %22 = load i64, i64* %20, align 4
  store i64 %22, i64* %21, align 4
  %23 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  store i32 %.027.lcssa, i32* %23, align 4, !tbaa !66
  %24 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 2, i32* %24, align 4, !tbaa !67
  br label %29

._crit_edge:                                      ; preds = %.lr.ph12, %2
  %25 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 0
  store i8* null, i8** %25, align 4, !tbaa !64
  %26 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 1, i32 1
  store i8* null, i8** %26, align 4, !tbaa !65
  %27 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  store i32 %8, i32* %27, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 0, i32* %28, align 4, !tbaa !67
  br label %29

29:                                               ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_eq(%struct.aws_hash_table* nocapture readonly %0, %struct.aws_hash_table* nocapture readonly %1, i1 (i8*, i8*)* nocapture %2) unnamed_addr #1 {
  %4 = alloca %struct.hash_table_entry*, align 4
  %5 = tail call i1 @verifier.nondet.24() #15
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %6 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %7 = load %struct.hash_table_state*, %struct.hash_table_state** %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #15
  %10 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %1, i32 0, i32 0
  %11 = load %struct.hash_table_state*, %struct.hash_table_state** %10, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4, !tbaa !11
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %.preheader, label %UnifiedReturnBlock

.preheader:                                       ; preds = %3
  %15 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %7, i32 0, i32 5
  %16 = load i32, i32* %15, align 4, !tbaa !11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %UnifiedReturnBlock, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %18 = bitcast %struct.hash_table_entry** %4 to i8*
  br label %19

19:                                               ; preds = %.lr.ph, %NodeBlock.thread
  %20 = phi %struct.hash_table_state* [ %7, %.lr.ph ], [ %68, %NodeBlock.thread ]
  %.0413 = phi i32 [ 0, %.lr.ph ], [ %69, %NodeBlock.thread ]
  %21 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %20, i32 0, i32 10, i32 %.0413, i32 1
  %22 = load i64, i64* %21, align 4, !tbaa !48
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %NodeBlock.thread, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %20, i32 0, i32 10, i32 %.0413, i32 0, i32 0
  %26 = load i8*, i8** %25, align 4, !tbaa !51
  tail call void @seahorn.fn.enter() #15
  %27 = load %struct.hash_table_state*, %struct.hash_table_state** %10, align 4, !tbaa !5
  tail call void @seahorn.fn.enter() #15
  tail call void @seahorn.fn.enter() #15
  %28 = icmp eq i8* %26, null
  br i1 %28, label %aws_hash_table_find.exit, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %27, i32 0, i32 0
  %31 = load i64 (i8*)*, i64 (i8*)** %30, align 4, !tbaa !10
  %32 = tail call i64 %31(i8* nonnull %26) #15
  %33 = icmp eq i64 %32, 0
  %spec.store.select.i.i = select i1 %33, i64 1, i64 %32
  br label %aws_hash_table_find.exit

aws_hash_table_find.exit:                         ; preds = %24, %29
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %29 ], [ 42, %24 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #15
  tail call void @seahorn.fn.enter() #15
  %34 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %27, i32 0, i32 8
  %35 = load i32, i32* %34, align 4, !tbaa !11
  %36 = trunc i64 %.0.i.i to i32
  %37 = and i32 %35, %36
  %38 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %27, i32 0, i32 10, i32 %37
  %39 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %27, i32 0, i32 10, i32 %37, i32 1
  %40 = load i64, i64* %39, align 4, !tbaa !48
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %s_find_entry.exit.thread5, label %42

s_find_entry.exit.thread5:                        ; preds = %aws_hash_table_find.exit
  store %struct.hash_table_entry* %38, %struct.hash_table_entry** %4, align 4, !tbaa !10
  br label %.thread

42:                                               ; preds = %aws_hash_table_find.exit
  %43 = icmp eq i64 %40, %.0.i.i
  br i1 %43, label %44, label %s_find_entry.exit

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %38, i32 0, i32 0, i32 0
  %46 = load i8*, i8** %45, align 4, !tbaa !51
  tail call void @seahorn.fn.enter() #15
  %47 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %27, i32 0, i32 1
  %48 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %47, align 4, !tbaa !10
  tail call void @seahorn.fn.enter() #15
  %49 = icmp eq i8* %46, %26
  br i1 %49, label %.thread15, label %50

50:                                               ; preds = %44
  %51 = icmp eq i8* %46, null
  %or.cond.i.i.i = or i1 %28, %51
  br i1 %or.cond.i.i.i, label %s_find_entry.exit, label %s_hash_keys_eq.exit.i

s_hash_keys_eq.exit.i:                            ; preds = %50
  %52 = tail call zeroext i1 %48(i8* nonnull %26, i8* nonnull %46) #15
  br i1 %52, label %.thread15, label %s_find_entry.exit

.thread15:                                        ; preds = %s_hash_keys_eq.exit.i, %44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #15
  br label %58

s_find_entry.exit:                                ; preds = %42, %50, %s_hash_keys_eq.exit.i
  %53 = call fastcc i32 @s_find_entry1(%struct.hash_table_state* nonnull %27, i64 %.0.i.i, i8* %26, %struct.hash_table_entry** nonnull %4, i32* null) #15
  %54 = icmp eq i32 %53, 0
  %55 = load %struct.hash_table_entry*, %struct.hash_table_entry** %4, align 4
  br i1 %54, label %56, label %.thread

.thread:                                          ; preds = %s_find_entry.exit, %s_find_entry.exit.thread5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #15
  br label %UnifiedReturnBlock

56:                                               ; preds = %s_find_entry.exit
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #15
  %57 = icmp eq %struct.hash_table_entry* %55, null
  br i1 %57, label %UnifiedReturnBlock, label %58

58:                                               ; preds = %.thread15, %56
  %.pn17 = phi %struct.hash_table_entry* [ %38, %.thread15 ], [ %55, %56 ]
  %59 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %20, i32 0, i32 10, i32 %.0413, i32 0, i32 1
  %60 = load i8*, i8** %59, align 4, !tbaa !52
  %61 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %.pn17, i32 0, i32 0, i32 1
  %62 = load i8*, i8** %61, align 4, !tbaa !58
  tail call void @seahorn.fn.enter() #15
  %63 = icmp eq i8* %60, %62
  br i1 %63, label %NodeBlock.NodeBlock.thread_crit_edge, label %64

64:                                               ; preds = %58
  %65 = icmp eq i8* %60, null
  %66 = icmp eq i8* %62, null
  %or.cond.i = or i1 %65, %66
  br i1 %or.cond.i, label %UnifiedReturnBlock, label %NodeBlock

NodeBlock:                                        ; preds = %64
  %67 = tail call zeroext i1 %2(i8* nonnull %60, i8* nonnull %62) #15
  br i1 %67, label %NodeBlock.NodeBlock.thread_crit_edge, label %UnifiedReturnBlock

NodeBlock.NodeBlock.thread_crit_edge:             ; preds = %58, %NodeBlock
  %.pre = load %struct.hash_table_state*, %struct.hash_table_state** %6, align 4, !tbaa !5
  br label %NodeBlock.thread

NodeBlock.thread:                                 ; preds = %NodeBlock.NodeBlock.thread_crit_edge, %19
  %68 = phi %struct.hash_table_state* [ %.pre, %NodeBlock.NodeBlock.thread_crit_edge ], [ %20, %19 ]
  %69 = add nuw i32 %.0413, 1
  %70 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %68, i32 0, i32 5
  %71 = load i32, i32* %70, align 4, !tbaa !11
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %19, label %UnifiedReturnBlock, !llvm.loop !69

UnifiedReturnBlock:                               ; preds = %56, %NodeBlock, %NodeBlock.thread, %64, %.thread, %.preheader, %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_c_string(i8* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15
  store i32 843314856, i32* %2, align 4, !tbaa !23
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15
  store i32 -2007355251, i32* %3, align 4, !tbaa !23
  %6 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #15
  call fastcc void @hashlittle2(i8* %0, i32 %6, i32* nonnull %3, i32* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @hashlittle2(i8* %0, i32 %1, i32* nocapture %2, i32* nocapture %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %5 = add i32 %1, -559038737
  %6 = load i32, i32* %2, align 4, !tbaa !23
  %7 = add i32 %5, %6
  %8 = load i32, i32* %3, align 4, !tbaa !23
  %9 = add i32 %7, %8
  %.cast = ptrtoint i8* %0 to i32
  %10 = and i32 %.cast, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %139

12:                                               ; preds = %4
  %13 = bitcast i8* %0 to i32*
  %14 = icmp ugt i32 %1, 12
  br i1 %14, label %.lr.ph, label %NodeBlock66

.lr.ph:                                           ; preds = %12, %.lr.ph
  %.0322 = phi i32 [ %59, %.lr.ph ], [ %1, %12 ]
  %.0821 = phi i32 [ %52, %.lr.ph ], [ %7, %12 ]
  %.01120 = phi i32 [ %58, %.lr.ph ], [ %7, %12 ]
  %.02619 = phi i32 [ %57, %.lr.ph ], [ %9, %12 ]
  %.04618 = phi i32* [ %60, %.lr.ph ], [ %13, %12 ]
  %15 = load i32, i32* %.04618, align 4, !tbaa !23
  %16 = add i32 %15, %.0821
  %17 = getelementptr inbounds i32, i32* %.04618, i32 1
  %18 = load i32, i32* %17, align 4, !tbaa !23
  %19 = add i32 %18, %.01120
  %20 = getelementptr inbounds i32, i32* %.04618, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !23
  %22 = add i32 %21, %.02619
  %23 = sub i32 %16, %22
  %24 = shl i32 %22, 4
  %25 = lshr i32 %22, 28
  %26 = or i32 %24, %25
  %27 = xor i32 %26, %23
  %28 = add i32 %22, %19
  %29 = sub i32 %19, %27
  %30 = shl i32 %27, 6
  %31 = lshr i32 %27, 26
  %32 = or i32 %30, %31
  %33 = xor i32 %32, %29
  %34 = add i32 %27, %28
  %35 = sub i32 %28, %33
  %36 = shl i32 %33, 8
  %37 = lshr i32 %33, 24
  %38 = or i32 %36, %37
  %39 = xor i32 %38, %35
  %40 = add i32 %33, %34
  %41 = sub i32 %34, %39
  %42 = shl i32 %39, 16
  %43 = lshr i32 %39, 16
  %44 = or i32 %42, %43
  %45 = xor i32 %44, %41
  %46 = add i32 %39, %40
  %47 = sub i32 %40, %45
  %48 = shl i32 %45, 19
  %49 = lshr i32 %45, 13
  %50 = or i32 %48, %49
  %51 = xor i32 %50, %47
  %52 = add i32 %45, %46
  %53 = sub i32 %46, %51
  %54 = shl i32 %51, 4
  %55 = lshr i32 %51, 28
  %56 = or i32 %54, %55
  %57 = xor i32 %56, %53
  %58 = add i32 %51, %52
  %59 = add i32 %.0322, -12
  %60 = getelementptr inbounds i32, i32* %.04618, i32 3
  %61 = icmp ugt i32 %59, 12
  br i1 %61, label %.lr.ph, label %NodeBlock66, !llvm.loop !70

NodeBlock66:                                      ; preds = %.lr.ph, %12
  %.046.lcssa = phi i32* [ %13, %12 ], [ %60, %.lr.ph ]
  %.026.lcssa = phi i32 [ %9, %12 ], [ %57, %.lr.ph ]
  %.011.lcssa = phi i32 [ %7, %12 ], [ %58, %.lr.ph ]
  %.08.lcssa = phi i32 [ %7, %12 ], [ %52, %.lr.ph ]
  %.03.lcssa = phi i32 [ %1, %12 ], [ %59, %.lr.ph ]
  %Pivot67 = icmp slt i32 %.03.lcssa, 7
  br i1 %Pivot67, label %NodeBlock54, label %NodeBlock64

NodeBlock64:                                      ; preds = %NodeBlock66
  %Pivot65 = icmp slt i32 %.03.lcssa, 10
  br i1 %Pivot65, label %NodeBlock58, label %NodeBlock62

NodeBlock62:                                      ; preds = %NodeBlock64
  %Pivot63 = icmp eq i32 %.03.lcssa, 10
  br i1 %Pivot63, label %82, label %NodeBlock60

NodeBlock60:                                      ; preds = %NodeBlock62
  %Pivot61 = icmp slt i32 %.03.lcssa, 12
  %62 = getelementptr inbounds i32, i32* %.046.lcssa, i32 2
  %63 = load i32, i32* %62, align 4, !tbaa !23
  br i1 %Pivot61, label %74, label %67

NodeBlock58:                                      ; preds = %NodeBlock64
  %Pivot59 = icmp slt i32 %.03.lcssa, 8
  br i1 %Pivot59, label %108, label %NodeBlock56

NodeBlock56:                                      ; preds = %NodeBlock58
  %Pivot57 = icmp eq i32 %.03.lcssa, 8
  br i1 %Pivot57, label %102, label %92

NodeBlock54:                                      ; preds = %NodeBlock66
  %Pivot55 = icmp slt i32 %.03.lcssa, 4
  br i1 %Pivot55, label %NodeBlock48, label %NodeBlock52

NodeBlock52:                                      ; preds = %NodeBlock54
  %Pivot53 = icmp eq i32 %.03.lcssa, 4
  br i1 %Pivot53, label %125, label %NodeBlock50

NodeBlock50:                                      ; preds = %NodeBlock52
  %Pivot51 = icmp slt i32 %.03.lcssa, 6
  %64 = getelementptr inbounds i32, i32* %.046.lcssa, i32 1
  %65 = load i32, i32* %64, align 4, !tbaa !23
  br i1 %Pivot51, label %120, label %115

NodeBlock48:                                      ; preds = %NodeBlock54
  %Pivot49 = icmp slt i32 %.03.lcssa, 2
  br i1 %Pivot49, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock48
  %Pivot = icmp eq i32 %.03.lcssa, 2
  %66 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  br i1 %Pivot, label %131, label %128

LeafBlock:                                        ; preds = %NodeBlock48
  %SwitchLeaf = icmp eq i32 %.03.lcssa, 1
  br i1 %SwitchLeaf, label %134, label %138

67:                                               ; preds = %NodeBlock60
  %68 = add i32 %63, %.026.lcssa
  %69 = getelementptr inbounds i32, i32* %.046.lcssa, i32 1
  %70 = load i32, i32* %69, align 4, !tbaa !23
  %71 = add i32 %70, %.011.lcssa
  %72 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %73 = add i32 %72, %.08.lcssa
  br label %.thread

74:                                               ; preds = %NodeBlock60
  %75 = and i32 %63, 16777215
  %76 = add i32 %75, %.026.lcssa
  %77 = getelementptr inbounds i32, i32* %.046.lcssa, i32 1
  %78 = load i32, i32* %77, align 4, !tbaa !23
  %79 = add i32 %78, %.011.lcssa
  %80 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %81 = add i32 %80, %.08.lcssa
  br label %.thread

82:                                               ; preds = %NodeBlock62
  %83 = getelementptr inbounds i32, i32* %.046.lcssa, i32 2
  %84 = load i32, i32* %83, align 4, !tbaa !23
  %85 = and i32 %84, 65535
  %86 = add i32 %85, %.026.lcssa
  %87 = getelementptr inbounds i32, i32* %.046.lcssa, i32 1
  %88 = load i32, i32* %87, align 4, !tbaa !23
  %89 = add i32 %88, %.011.lcssa
  %90 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %91 = add i32 %90, %.08.lcssa
  br label %.thread

92:                                               ; preds = %NodeBlock56
  %93 = getelementptr inbounds i32, i32* %.046.lcssa, i32 2
  %94 = load i32, i32* %93, align 4, !tbaa !23
  %95 = and i32 %94, 255
  %96 = add i32 %95, %.026.lcssa
  %97 = getelementptr inbounds i32, i32* %.046.lcssa, i32 1
  %98 = load i32, i32* %97, align 4, !tbaa !23
  %99 = add i32 %98, %.011.lcssa
  %100 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %101 = add i32 %100, %.08.lcssa
  br label %.thread

102:                                              ; preds = %NodeBlock56
  %103 = getelementptr inbounds i32, i32* %.046.lcssa, i32 1
  %104 = load i32, i32* %103, align 4, !tbaa !23
  %105 = add i32 %104, %.011.lcssa
  %106 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %107 = add i32 %106, %.08.lcssa
  br label %.thread

108:                                              ; preds = %NodeBlock58
  %109 = getelementptr inbounds i32, i32* %.046.lcssa, i32 1
  %110 = load i32, i32* %109, align 4, !tbaa !23
  %111 = and i32 %110, 16777215
  %112 = add i32 %111, %.011.lcssa
  %113 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %114 = add i32 %113, %.08.lcssa
  br label %.thread

115:                                              ; preds = %NodeBlock50
  %116 = and i32 %65, 65535
  %117 = add i32 %116, %.011.lcssa
  %118 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %119 = add i32 %118, %.08.lcssa
  br label %.thread

120:                                              ; preds = %NodeBlock50
  %121 = and i32 %65, 255
  %122 = add i32 %121, %.011.lcssa
  %123 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %124 = add i32 %123, %.08.lcssa
  br label %.thread

125:                                              ; preds = %NodeBlock52
  %126 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %127 = add i32 %126, %.08.lcssa
  br label %.thread

128:                                              ; preds = %NodeBlock
  %129 = and i32 %66, 16777215
  %130 = add i32 %129, %.08.lcssa
  br label %.thread

131:                                              ; preds = %NodeBlock
  %132 = and i32 %66, 65535
  %133 = add i32 %132, %.08.lcssa
  br label %.thread

134:                                              ; preds = %LeafBlock
  %135 = load i32, i32* %.046.lcssa, align 4, !tbaa !23
  %136 = and i32 %135, 255
  %137 = add i32 %136, %.08.lcssa
  br label %.thread

138:                                              ; preds = %LeafBlock
  store i32 %.026.lcssa, i32* %2, align 4, !tbaa !23
  store i32 %.011.lcssa, i32* %3, align 4, !tbaa !23
  br label %541

139:                                              ; preds = %4
  %140 = and i32 %.cast, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %.preheader

.preheader:                                       ; preds = %139
  %142 = icmp ugt i32 %1, 12
  br i1 %142, label %.lr.ph44, label %NodeBlock116

143:                                              ; preds = %139
  %144 = bitcast i8* %0 to i16*
  %145 = icmp ugt i32 %1, 12
  br i1 %145, label %.lr.ph33, label %NodeBlock91

.lr.ph33:                                         ; preds = %143, %.lr.ph33
  %.132 = phi i32 [ %208, %.lr.ph33 ], [ %1, %143 ]
  %.0431 = phi i16* [ %209, %.lr.ph33 ], [ %144, %143 ]
  %.330 = phi i32 [ %201, %.lr.ph33 ], [ %7, %143 ]
  %.31428 = phi i32 [ %207, %.lr.ph33 ], [ %7, %143 ]
  %.32927 = phi i32 [ %206, %.lr.ph33 ], [ %9, %143 ]
  %146 = load i16, i16* %.0431, align 2, !tbaa !71
  %147 = zext i16 %146 to i32
  %148 = getelementptr inbounds i16, i16* %.0431, i32 1
  %149 = load i16, i16* %148, align 2, !tbaa !71
  %150 = zext i16 %149 to i32
  %151 = mul nuw i32 %150, 65536
  %152 = getelementptr inbounds i16, i16* %.0431, i32 2
  %153 = load i16, i16* %152, align 2, !tbaa !71
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds i16, i16* %.0431, i32 3
  %156 = load i16, i16* %155, align 2, !tbaa !71
  %157 = zext i16 %156 to i32
  %158 = mul nuw i32 %157, 65536
  %159 = add i32 %.31428, %154
  %160 = add i32 %159, %158
  %161 = getelementptr inbounds i16, i16* %.0431, i32 4
  %162 = load i16, i16* %161, align 2, !tbaa !71
  %163 = zext i16 %162 to i32
  %164 = getelementptr inbounds i16, i16* %.0431, i32 5
  %165 = load i16, i16* %164, align 2, !tbaa !71
  %166 = zext i16 %165 to i32
  %167 = mul nuw i32 %166, 65536
  %168 = add i32 %.32927, %163
  %169 = add i32 %168, %167
  %170 = add i32 %.330, %147
  %171 = add i32 %170, %151
  %172 = sub i32 %171, %169
  %173 = shl i32 %169, 4
  %174 = lshr i32 %169, 28
  %175 = or i32 %173, %174
  %176 = xor i32 %175, %172
  %177 = add i32 %169, %160
  %178 = sub i32 %160, %176
  %179 = shl i32 %176, 6
  %180 = lshr i32 %176, 26
  %181 = or i32 %179, %180
  %182 = xor i32 %181, %178
  %183 = add i32 %176, %177
  %184 = sub i32 %177, %182
  %185 = shl i32 %182, 8
  %186 = lshr i32 %182, 24
  %187 = or i32 %185, %186
  %188 = xor i32 %187, %184
  %189 = add i32 %182, %183
  %190 = sub i32 %183, %188
  %191 = shl i32 %188, 16
  %192 = lshr i32 %188, 16
  %193 = or i32 %191, %192
  %194 = xor i32 %193, %190
  %195 = add i32 %188, %189
  %196 = sub i32 %189, %194
  %197 = shl i32 %194, 19
  %198 = lshr i32 %194, 13
  %199 = or i32 %197, %198
  %200 = xor i32 %199, %196
  %201 = add i32 %194, %195
  %202 = sub i32 %195, %200
  %203 = shl i32 %200, 4
  %204 = lshr i32 %200, 28
  %205 = or i32 %203, %204
  %206 = xor i32 %205, %202
  %207 = add i32 %200, %201
  %208 = add i32 %.132, -12
  %209 = getelementptr inbounds i16, i16* %.0431, i32 6
  %210 = icmp ugt i32 %208, 12
  br i1 %210, label %.lr.ph33, label %NodeBlock91, !llvm.loop !72

NodeBlock91:                                      ; preds = %.lr.ph33, %143
  %.329.lcssa = phi i32 [ %9, %143 ], [ %206, %.lr.ph33 ]
  %.314.lcssa = phi i32 [ %7, %143 ], [ %207, %.lr.ph33 ]
  %.3.lcssa = phi i32 [ %7, %143 ], [ %201, %.lr.ph33 ]
  %.04.lcssa = phi i16* [ %144, %143 ], [ %209, %.lr.ph33 ]
  %.1.lcssa = phi i32 [ %1, %143 ], [ %208, %.lr.ph33 ]
  %Pivot92 = icmp slt i32 %.1.lcssa, 7
  br i1 %Pivot92, label %NodeBlock79, label %NodeBlock89

NodeBlock89:                                      ; preds = %NodeBlock91
  %Pivot90 = icmp slt i32 %.1.lcssa, 10
  br i1 %Pivot90, label %NodeBlock83, label %NodeBlock87

NodeBlock87:                                      ; preds = %NodeBlock89
  %Pivot88 = icmp eq i32 %.1.lcssa, 10
  br i1 %Pivot88, label %245, label %NodeBlock85

NodeBlock85:                                      ; preds = %NodeBlock87
  %Pivot86 = icmp slt i32 %.1.lcssa, 12
  br i1 %Pivot86, label %238, label %211

NodeBlock83:                                      ; preds = %NodeBlock89
  %Pivot84 = icmp slt i32 %.1.lcssa, 8
  br i1 %Pivot84, label %291, label %NodeBlock81

NodeBlock81:                                      ; preds = %NodeBlock83
  %Pivot82 = icmp eq i32 %.1.lcssa, 8
  br i1 %Pivot82, label %273, label %267

NodeBlock79:                                      ; preds = %NodeBlock91
  %Pivot80 = icmp slt i32 %.1.lcssa, 4
  br i1 %Pivot80, label %NodeBlock73, label %NodeBlock77

NodeBlock77:                                      ; preds = %NodeBlock79
  %Pivot78 = icmp eq i32 %.1.lcssa, 4
  br i1 %Pivot78, label %317, label %NodeBlock75

NodeBlock75:                                      ; preds = %NodeBlock77
  %Pivot76 = icmp slt i32 %.1.lcssa, 6
  br i1 %Pivot76, label %311, label %298

NodeBlock73:                                      ; preds = %NodeBlock79
  %Pivot74 = icmp slt i32 %.1.lcssa, 2
  br i1 %Pivot74, label %LeafBlock69, label %NodeBlock71

NodeBlock71:                                      ; preds = %NodeBlock73
  %Pivot72 = icmp eq i32 %.1.lcssa, 2
  br i1 %Pivot72, label %333, label %326

LeafBlock69:                                      ; preds = %NodeBlock73
  %SwitchLeaf70 = icmp eq i32 %.1.lcssa, 1
  br i1 %SwitchLeaf70, label %337, label %342

211:                                              ; preds = %NodeBlock85
  %212 = getelementptr inbounds i16, i16* %.04.lcssa, i32 4
  %213 = load i16, i16* %212, align 2, !tbaa !71
  %214 = zext i16 %213 to i32
  %215 = getelementptr inbounds i16, i16* %.04.lcssa, i32 5
  %216 = load i16, i16* %215, align 2, !tbaa !71
  %217 = zext i16 %216 to i32
  %218 = mul nuw i32 %217, 65536
  %219 = add i32 %.329.lcssa, %214
  %220 = add i32 %219, %218
  %221 = getelementptr inbounds i16, i16* %.04.lcssa, i32 2
  %222 = load i16, i16* %221, align 2, !tbaa !71
  %223 = zext i16 %222 to i32
  %224 = getelementptr inbounds i16, i16* %.04.lcssa, i32 3
  %225 = load i16, i16* %224, align 2, !tbaa !71
  %226 = zext i16 %225 to i32
  %227 = mul nuw i32 %226, 65536
  %228 = add i32 %.314.lcssa, %223
  %229 = add i32 %228, %227
  %230 = load i16, i16* %.04.lcssa, align 2, !tbaa !71
  %231 = zext i16 %230 to i32
  %232 = getelementptr inbounds i16, i16* %.04.lcssa, i32 1
  %233 = load i16, i16* %232, align 2, !tbaa !71
  %234 = zext i16 %233 to i32
  %235 = mul nuw i32 %234, 65536
  %236 = add i32 %.3.lcssa, %231
  %237 = add i32 %236, %235
  br label %.thread

238:                                              ; preds = %NodeBlock85
  %239 = getelementptr inbounds i16, i16* %.04.lcssa, i32 5
  %240 = bitcast i16* %239 to i8*
  %241 = load i8, i8* %240, align 1, !tbaa !73
  %242 = zext i8 %241 to i32
  %243 = mul nuw nsw i32 %242, 65536
  %244 = add i32 %243, %.329.lcssa
  br label %245

245:                                              ; preds = %238, %NodeBlock87
  %.430 = phi i32 [ %.329.lcssa, %NodeBlock87 ], [ %244, %238 ]
  %246 = getelementptr inbounds i16, i16* %.04.lcssa, i32 4
  %247 = load i16, i16* %246, align 2, !tbaa !71
  %248 = zext i16 %247 to i32
  %249 = add i32 %.430, %248
  %250 = getelementptr inbounds i16, i16* %.04.lcssa, i32 2
  %251 = load i16, i16* %250, align 2, !tbaa !71
  %252 = zext i16 %251 to i32
  %253 = getelementptr inbounds i16, i16* %.04.lcssa, i32 3
  %254 = load i16, i16* %253, align 2, !tbaa !71
  %255 = zext i16 %254 to i32
  %256 = mul nuw i32 %255, 65536
  %257 = add i32 %.314.lcssa, %252
  %258 = add i32 %257, %256
  %259 = load i16, i16* %.04.lcssa, align 2, !tbaa !71
  %260 = zext i16 %259 to i32
  %261 = getelementptr inbounds i16, i16* %.04.lcssa, i32 1
  %262 = load i16, i16* %261, align 2, !tbaa !71
  %263 = zext i16 %262 to i32
  %264 = mul nuw i32 %263, 65536
  %265 = add i32 %.3.lcssa, %260
  %266 = add i32 %265, %264
  br label %.thread

267:                                              ; preds = %NodeBlock81
  %268 = getelementptr inbounds i16, i16* %.04.lcssa, i32 4
  %269 = bitcast i16* %268 to i8*
  %270 = load i8, i8* %269, align 1, !tbaa !73
  %271 = zext i8 %270 to i32
  %272 = add i32 %.329.lcssa, %271
  br label %273

273:                                              ; preds = %267, %NodeBlock81
  %.531 = phi i32 [ %.329.lcssa, %NodeBlock81 ], [ %272, %267 ]
  %274 = getelementptr inbounds i16, i16* %.04.lcssa, i32 2
  %275 = load i16, i16* %274, align 2, !tbaa !71
  %276 = zext i16 %275 to i32
  %277 = getelementptr inbounds i16, i16* %.04.lcssa, i32 3
  %278 = load i16, i16* %277, align 2, !tbaa !71
  %279 = zext i16 %278 to i32
  %280 = mul nuw i32 %279, 65536
  %281 = add i32 %.314.lcssa, %276
  %282 = add i32 %281, %280
  %283 = load i16, i16* %.04.lcssa, align 2, !tbaa !71
  %284 = zext i16 %283 to i32
  %285 = getelementptr inbounds i16, i16* %.04.lcssa, i32 1
  %286 = load i16, i16* %285, align 2, !tbaa !71
  %287 = zext i16 %286 to i32
  %288 = mul nuw i32 %287, 65536
  %289 = add i32 %.3.lcssa, %284
  %290 = add i32 %289, %288
  br label %.thread

291:                                              ; preds = %NodeBlock83
  %292 = getelementptr inbounds i16, i16* %.04.lcssa, i32 3
  %293 = bitcast i16* %292 to i8*
  %294 = load i8, i8* %293, align 1, !tbaa !73
  %295 = zext i8 %294 to i32
  %296 = mul nuw nsw i32 %295, 65536
  %297 = add i32 %296, %.314.lcssa
  br label %298

298:                                              ; preds = %291, %NodeBlock75
  %.415 = phi i32 [ %.314.lcssa, %NodeBlock75 ], [ %297, %291 ]
  %299 = getelementptr inbounds i16, i16* %.04.lcssa, i32 2
  %300 = load i16, i16* %299, align 2, !tbaa !71
  %301 = zext i16 %300 to i32
  %302 = add i32 %.415, %301
  %303 = load i16, i16* %.04.lcssa, align 2, !tbaa !71
  %304 = zext i16 %303 to i32
  %305 = getelementptr inbounds i16, i16* %.04.lcssa, i32 1
  %306 = load i16, i16* %305, align 2, !tbaa !71
  %307 = zext i16 %306 to i32
  %308 = mul nuw i32 %307, 65536
  %309 = add i32 %.3.lcssa, %304
  %310 = add i32 %309, %308
  br label %.thread

311:                                              ; preds = %NodeBlock75
  %312 = getelementptr inbounds i16, i16* %.04.lcssa, i32 2
  %313 = bitcast i16* %312 to i8*
  %314 = load i8, i8* %313, align 1, !tbaa !73
  %315 = zext i8 %314 to i32
  %316 = add i32 %.314.lcssa, %315
  br label %317

317:                                              ; preds = %311, %NodeBlock77
  %.516 = phi i32 [ %.314.lcssa, %NodeBlock77 ], [ %316, %311 ]
  %318 = load i16, i16* %.04.lcssa, align 2, !tbaa !71
  %319 = zext i16 %318 to i32
  %320 = getelementptr inbounds i16, i16* %.04.lcssa, i32 1
  %321 = load i16, i16* %320, align 2, !tbaa !71
  %322 = zext i16 %321 to i32
  %323 = mul nuw i32 %322, 65536
  %324 = add i32 %.3.lcssa, %319
  %325 = add i32 %324, %323
  br label %.thread

326:                                              ; preds = %NodeBlock71
  %327 = getelementptr inbounds i16, i16* %.04.lcssa, i32 1
  %328 = bitcast i16* %327 to i8*
  %329 = load i8, i8* %328, align 1, !tbaa !73
  %330 = zext i8 %329 to i32
  %331 = mul nuw nsw i32 %330, 65536
  %332 = add i32 %331, %.3.lcssa
  br label %333

333:                                              ; preds = %326, %NodeBlock71
  %.4 = phi i32 [ %.3.lcssa, %NodeBlock71 ], [ %332, %326 ]
  %334 = load i16, i16* %.04.lcssa, align 2, !tbaa !71
  %335 = zext i16 %334 to i32
  %336 = add i32 %.4, %335
  br label %.thread

337:                                              ; preds = %LeafBlock69
  %338 = bitcast i16* %.04.lcssa to i8*
  %339 = load i8, i8* %338, align 1, !tbaa !73
  %340 = zext i8 %339 to i32
  %341 = add i32 %.3.lcssa, %340
  br label %.thread

342:                                              ; preds = %LeafBlock69
  store i32 %.329.lcssa, i32* %2, align 4, !tbaa !23
  store i32 %.314.lcssa, i32* %3, align 4, !tbaa !23
  br label %541

.lr.ph44:                                         ; preds = %.preheader, %.lr.ph44
  %.043 = phi i8* [ %436, %.lr.ph44 ], [ %0, %.preheader ]
  %.242 = phi i32 [ %435, %.lr.ph44 ], [ %1, %.preheader ]
  %.741 = phi i32 [ %428, %.lr.ph44 ], [ %7, %.preheader ]
  %.81940 = phi i32 [ %434, %.lr.ph44 ], [ %7, %.preheader ]
  %.83439 = phi i32 [ %433, %.lr.ph44 ], [ %9, %.preheader ]
  %343 = load i8, i8* %.043, align 1, !tbaa !73
  %344 = zext i8 %343 to i32
  %345 = add i32 %.741, %344
  %346 = getelementptr inbounds i8, i8* %.043, i32 1
  %347 = load i8, i8* %346, align 1, !tbaa !73
  %348 = zext i8 %347 to i32
  %349 = mul nuw nsw i32 %348, 256
  %350 = add i32 %345, %349
  %351 = getelementptr inbounds i8, i8* %.043, i32 2
  %352 = load i8, i8* %351, align 1, !tbaa !73
  %353 = zext i8 %352 to i32
  %354 = mul nuw nsw i32 %353, 65536
  %355 = add i32 %350, %354
  %356 = getelementptr inbounds i8, i8* %.043, i32 3
  %357 = load i8, i8* %356, align 1, !tbaa !73
  %358 = zext i8 %357 to i32
  %359 = mul nuw i32 %358, 16777216
  %360 = add i32 %355, %359
  %361 = getelementptr inbounds i8, i8* %.043, i32 4
  %362 = load i8, i8* %361, align 1, !tbaa !73
  %363 = zext i8 %362 to i32
  %364 = add i32 %.81940, %363
  %365 = getelementptr inbounds i8, i8* %.043, i32 5
  %366 = load i8, i8* %365, align 1, !tbaa !73
  %367 = zext i8 %366 to i32
  %368 = mul nuw nsw i32 %367, 256
  %369 = add i32 %364, %368
  %370 = getelementptr inbounds i8, i8* %.043, i32 6
  %371 = load i8, i8* %370, align 1, !tbaa !73
  %372 = zext i8 %371 to i32
  %373 = mul nuw nsw i32 %372, 65536
  %374 = add i32 %369, %373
  %375 = getelementptr inbounds i8, i8* %.043, i32 7
  %376 = load i8, i8* %375, align 1, !tbaa !73
  %377 = zext i8 %376 to i32
  %378 = shl nuw i32 %377, 24
  %379 = add i32 %374, %378
  %380 = getelementptr inbounds i8, i8* %.043, i32 8
  %381 = load i8, i8* %380, align 1, !tbaa !73
  %382 = zext i8 %381 to i32
  %383 = add i32 %.83439, %382
  %384 = getelementptr inbounds i8, i8* %.043, i32 9
  %385 = load i8, i8* %384, align 1, !tbaa !73
  %386 = zext i8 %385 to i32
  %387 = mul nuw nsw i32 %386, 256
  %388 = add i32 %383, %387
  %389 = getelementptr inbounds i8, i8* %.043, i32 10
  %390 = load i8, i8* %389, align 1, !tbaa !73
  %391 = zext i8 %390 to i32
  %392 = mul nuw nsw i32 %391, 65536
  %393 = add i32 %388, %392
  %394 = getelementptr inbounds i8, i8* %.043, i32 11
  %395 = load i8, i8* %394, align 1, !tbaa !73
  %396 = zext i8 %395 to i32
  %397 = shl nuw i32 %396, 24
  %398 = add i32 %393, %397
  %399 = sub i32 %360, %398
  %400 = shl i32 %398, 4
  %401 = lshr i32 %398, 28
  %402 = or i32 %400, %401
  %403 = xor i32 %402, %399
  %404 = add i32 %398, %379
  %405 = sub i32 %379, %403
  %406 = shl i32 %403, 6
  %407 = lshr i32 %403, 26
  %408 = or i32 %406, %407
  %409 = xor i32 %408, %405
  %410 = add i32 %403, %404
  %411 = sub i32 %404, %409
  %412 = shl i32 %409, 8
  %413 = lshr i32 %409, 24
  %414 = or i32 %412, %413
  %415 = xor i32 %414, %411
  %416 = add i32 %409, %410
  %417 = sub i32 %410, %415
  %418 = shl i32 %415, 16
  %419 = lshr i32 %415, 16
  %420 = or i32 %418, %419
  %421 = xor i32 %420, %417
  %422 = add i32 %415, %416
  %423 = sub i32 %416, %421
  %424 = shl i32 %421, 19
  %425 = lshr i32 %421, 13
  %426 = or i32 %424, %425
  %427 = xor i32 %426, %423
  %428 = add i32 %421, %422
  %429 = sub i32 %422, %427
  %430 = shl i32 %427, 4
  %431 = lshr i32 %427, 28
  %432 = or i32 %430, %431
  %433 = xor i32 %432, %429
  %434 = add i32 %427, %428
  %435 = add i32 %.242, -12
  %436 = getelementptr inbounds i8, i8* %.043, i32 12
  %437 = icmp ugt i32 %435, 12
  br i1 %437, label %.lr.ph44, label %NodeBlock116, !llvm.loop !74

NodeBlock116:                                     ; preds = %.lr.ph44, %.preheader
  %.834.lcssa = phi i32 [ %9, %.preheader ], [ %433, %.lr.ph44 ]
  %.819.lcssa = phi i32 [ %7, %.preheader ], [ %434, %.lr.ph44 ]
  %.7.lcssa = phi i32 [ %7, %.preheader ], [ %428, %.lr.ph44 ]
  %.2.lcssa = phi i32 [ %1, %.preheader ], [ %435, %.lr.ph44 ]
  %.0.lcssa = phi i8* [ %0, %.preheader ], [ %436, %.lr.ph44 ]
  %Pivot117 = icmp slt i32 %.2.lcssa, 7
  br i1 %Pivot117, label %NodeBlock104, label %NodeBlock114

NodeBlock114:                                     ; preds = %NodeBlock116
  %Pivot115 = icmp slt i32 %.2.lcssa, 10
  br i1 %Pivot115, label %NodeBlock108, label %NodeBlock112

NodeBlock112:                                     ; preds = %NodeBlock114
  %Pivot113 = icmp eq i32 %.2.lcssa, 10
  br i1 %Pivot113, label %450, label %NodeBlock110

NodeBlock110:                                     ; preds = %NodeBlock112
  %Pivot111 = icmp slt i32 %.2.lcssa, 12
  br i1 %Pivot111, label %444, label %438

NodeBlock108:                                     ; preds = %NodeBlock114
  %Pivot109 = icmp slt i32 %.2.lcssa, 8
  br i1 %Pivot109, label %467, label %NodeBlock106

NodeBlock106:                                     ; preds = %NodeBlock108
  %Pivot107 = icmp eq i32 %.2.lcssa, 8
  br i1 %Pivot107, label %461, label %456

NodeBlock104:                                     ; preds = %NodeBlock116
  %Pivot105 = icmp slt i32 %.2.lcssa, 4
  br i1 %Pivot105, label %NodeBlock98, label %NodeBlock102

NodeBlock102:                                     ; preds = %NodeBlock104
  %Pivot103 = icmp eq i32 %.2.lcssa, 4
  br i1 %Pivot103, label %484, label %NodeBlock100

NodeBlock100:                                     ; preds = %NodeBlock102
  %Pivot101 = icmp slt i32 %.2.lcssa, 6
  br i1 %Pivot101, label %479, label %473

NodeBlock98:                                      ; preds = %NodeBlock104
  %Pivot99 = icmp slt i32 %.2.lcssa, 2
  br i1 %Pivot99, label %LeafBlock94, label %NodeBlock96

NodeBlock96:                                      ; preds = %NodeBlock98
  %Pivot97 = icmp eq i32 %.2.lcssa, 2
  br i1 %Pivot97, label %496, label %490

LeafBlock94:                                      ; preds = %NodeBlock98
  %SwitchLeaf95 = icmp eq i32 %.2.lcssa, 1
  br i1 %SwitchLeaf95, label %.thread11, label %505

438:                                              ; preds = %NodeBlock110
  %439 = getelementptr inbounds i8, i8* %.0.lcssa, i32 11
  %440 = load i8, i8* %439, align 1, !tbaa !73
  %441 = zext i8 %440 to i32
  %442 = mul nuw i32 %441, 16777216
  %443 = add i32 %442, %.834.lcssa
  br label %444

444:                                              ; preds = %438, %NodeBlock110
  %.935 = phi i32 [ %.834.lcssa, %NodeBlock110 ], [ %443, %438 ]
  %445 = getelementptr inbounds i8, i8* %.0.lcssa, i32 10
  %446 = load i8, i8* %445, align 1, !tbaa !73
  %447 = zext i8 %446 to i32
  %448 = mul nuw nsw i32 %447, 65536
  %449 = add i32 %448, %.935
  br label %450

450:                                              ; preds = %444, %NodeBlock112
  %.1036 = phi i32 [ %.834.lcssa, %NodeBlock112 ], [ %449, %444 ]
  %451 = getelementptr inbounds i8, i8* %.0.lcssa, i32 9
  %452 = load i8, i8* %451, align 1, !tbaa !73
  %453 = zext i8 %452 to i32
  %454 = mul nuw nsw i32 %453, 256
  %455 = add i32 %454, %.1036
  br label %456

456:                                              ; preds = %450, %NodeBlock106
  %.1137 = phi i32 [ %.834.lcssa, %NodeBlock106 ], [ %455, %450 ]
  %457 = getelementptr inbounds i8, i8* %.0.lcssa, i32 8
  %458 = load i8, i8* %457, align 1, !tbaa !73
  %459 = zext i8 %458 to i32
  %460 = add i32 %.1137, %459
  br label %461

461:                                              ; preds = %456, %NodeBlock106
  %.1238 = phi i32 [ %.834.lcssa, %NodeBlock106 ], [ %460, %456 ]
  %462 = getelementptr inbounds i8, i8* %.0.lcssa, i32 7
  %463 = load i8, i8* %462, align 1, !tbaa !73
  %464 = zext i8 %463 to i32
  %465 = mul nuw i32 %464, 16777216
  %466 = add i32 %465, %.819.lcssa
  br label %467

467:                                              ; preds = %461, %NodeBlock108
  %.1339 = phi i32 [ %.834.lcssa, %NodeBlock108 ], [ %.1238, %461 ]
  %.920 = phi i32 [ %.819.lcssa, %NodeBlock108 ], [ %466, %461 ]
  %468 = getelementptr inbounds i8, i8* %.0.lcssa, i32 6
  %469 = load i8, i8* %468, align 1, !tbaa !73
  %470 = zext i8 %469 to i32
  %471 = mul nuw nsw i32 %470, 65536
  %472 = add i32 %471, %.920
  br label %473

473:                                              ; preds = %467, %NodeBlock100
  %.1440 = phi i32 [ %.834.lcssa, %NodeBlock100 ], [ %.1339, %467 ]
  %.1021 = phi i32 [ %.819.lcssa, %NodeBlock100 ], [ %472, %467 ]
  %474 = getelementptr inbounds i8, i8* %.0.lcssa, i32 5
  %475 = load i8, i8* %474, align 1, !tbaa !73
  %476 = zext i8 %475 to i32
  %477 = mul nuw nsw i32 %476, 256
  %478 = add i32 %477, %.1021
  br label %479

479:                                              ; preds = %473, %NodeBlock100
  %.1541 = phi i32 [ %.834.lcssa, %NodeBlock100 ], [ %.1440, %473 ]
  %.1122 = phi i32 [ %.819.lcssa, %NodeBlock100 ], [ %478, %473 ]
  %480 = getelementptr inbounds i8, i8* %.0.lcssa, i32 4
  %481 = load i8, i8* %480, align 1, !tbaa !73
  %482 = zext i8 %481 to i32
  %483 = add i32 %.1122, %482
  br label %484

484:                                              ; preds = %479, %NodeBlock102
  %.1642 = phi i32 [ %.834.lcssa, %NodeBlock102 ], [ %.1541, %479 ]
  %.1223 = phi i32 [ %.819.lcssa, %NodeBlock102 ], [ %483, %479 ]
  %485 = getelementptr inbounds i8, i8* %.0.lcssa, i32 3
  %486 = load i8, i8* %485, align 1, !tbaa !73
  %487 = zext i8 %486 to i32
  %488 = mul nuw i32 %487, 16777216
  %489 = add i32 %488, %.7.lcssa
  br label %490

490:                                              ; preds = %484, %NodeBlock96
  %.1743 = phi i32 [ %.834.lcssa, %NodeBlock96 ], [ %.1642, %484 ]
  %.1324 = phi i32 [ %.819.lcssa, %NodeBlock96 ], [ %.1223, %484 ]
  %.8 = phi i32 [ %.7.lcssa, %NodeBlock96 ], [ %489, %484 ]
  %491 = getelementptr inbounds i8, i8* %.0.lcssa, i32 2
  %492 = load i8, i8* %491, align 1, !tbaa !73
  %493 = zext i8 %492 to i32
  %494 = mul nuw nsw i32 %493, 65536
  %495 = add i32 %494, %.8
  br label %496

496:                                              ; preds = %490, %NodeBlock96
  %.1844 = phi i32 [ %.834.lcssa, %NodeBlock96 ], [ %.1743, %490 ]
  %.14 = phi i32 [ %.819.lcssa, %NodeBlock96 ], [ %.1324, %490 ]
  %.9 = phi i32 [ %.7.lcssa, %NodeBlock96 ], [ %495, %490 ]
  %497 = getelementptr inbounds i8, i8* %.0.lcssa, i32 1
  %498 = load i8, i8* %497, align 1, !tbaa !73
  %499 = zext i8 %498 to i32
  %500 = mul nuw nsw i32 %499, 256
  %501 = add i32 %500, %.9
  br label %.thread11

.thread11:                                        ; preds = %LeafBlock94, %496
  %.1945 = phi i32 [ %.834.lcssa, %LeafBlock94 ], [ %.1844, %496 ]
  %.15 = phi i32 [ %.819.lcssa, %LeafBlock94 ], [ %.14, %496 ]
  %.10 = phi i32 [ %.7.lcssa, %LeafBlock94 ], [ %501, %496 ]
  %502 = load i8, i8* %.0.lcssa, align 1, !tbaa !73
  %503 = zext i8 %502 to i32
  %504 = add i32 %.10, %503
  br label %.thread

505:                                              ; preds = %LeafBlock94
  store i32 %.834.lcssa, i32* %2, align 4, !tbaa !23
  store i32 %.819.lcssa, i32* %3, align 4, !tbaa !23
  br label %541

.thread:                                          ; preds = %211, %245, %273, %298, %317, %333, %337, %67, %74, %82, %92, %102, %108, %115, %120, %125, %128, %131, %134, %.thread11
  %.22 = phi i32 [ %.1945, %.thread11 ], [ %68, %67 ], [ %76, %74 ], [ %86, %82 ], [ %96, %92 ], [ %.026.lcssa, %102 ], [ %.026.lcssa, %108 ], [ %.026.lcssa, %115 ], [ %.026.lcssa, %120 ], [ %.026.lcssa, %125 ], [ %.026.lcssa, %128 ], [ %.026.lcssa, %131 ], [ %.026.lcssa, %134 ], [ %220, %211 ], [ %249, %245 ], [ %.531, %273 ], [ %.329.lcssa, %298 ], [ %.329.lcssa, %317 ], [ %.329.lcssa, %333 ], [ %.329.lcssa, %337 ]
  %.18 = phi i32 [ %.15, %.thread11 ], [ %71, %67 ], [ %79, %74 ], [ %89, %82 ], [ %99, %92 ], [ %105, %102 ], [ %112, %108 ], [ %117, %115 ], [ %122, %120 ], [ %.011.lcssa, %125 ], [ %.011.lcssa, %128 ], [ %.011.lcssa, %131 ], [ %.011.lcssa, %134 ], [ %229, %211 ], [ %258, %245 ], [ %282, %273 ], [ %302, %298 ], [ %.516, %317 ], [ %.314.lcssa, %333 ], [ %.314.lcssa, %337 ]
  %.13 = phi i32 [ %504, %.thread11 ], [ %73, %67 ], [ %81, %74 ], [ %91, %82 ], [ %101, %92 ], [ %107, %102 ], [ %114, %108 ], [ %119, %115 ], [ %124, %120 ], [ %127, %125 ], [ %130, %128 ], [ %133, %131 ], [ %137, %134 ], [ %237, %211 ], [ %266, %245 ], [ %290, %273 ], [ %310, %298 ], [ %325, %317 ], [ %336, %333 ], [ %341, %337 ]
  %506 = xor i32 %.18, %.22
  %507 = shl i32 %.18, 14
  %508 = lshr i32 %.18, 18
  %509 = or i32 %507, %508
  %510 = sub i32 %506, %509
  %511 = xor i32 %510, %.13
  %512 = shl i32 %510, 11
  %513 = lshr i32 %510, 21
  %514 = or i32 %512, %513
  %515 = sub i32 %511, %514
  %516 = xor i32 %515, %.18
  %517 = shl i32 %515, 25
  %518 = lshr i32 %515, 7
  %519 = or i32 %517, %518
  %520 = sub i32 %516, %519
  %521 = xor i32 %520, %510
  %522 = shl i32 %520, 16
  %523 = lshr i32 %520, 16
  %524 = or i32 %522, %523
  %525 = sub i32 %521, %524
  %526 = xor i32 %525, %515
  %527 = shl i32 %525, 4
  %528 = lshr i32 %525, 28
  %529 = or i32 %527, %528
  %530 = sub i32 %526, %529
  %531 = xor i32 %530, %520
  %532 = shl i32 %530, 14
  %533 = lshr i32 %530, 18
  %534 = or i32 %532, %533
  %535 = sub i32 %531, %534
  %536 = xor i32 %535, %525
  %537 = shl i32 %535, 24
  %538 = lshr i32 %535, 8
  %539 = or i32 %537, %538
  %540 = sub i32 %536, %539
  store i32 %540, i32* %2, align 4, !tbaa !23
  store i32 %535, i32* %3, align 4, !tbaa !23
  br label %541

541:                                              ; preds = %505, %342, %138, %.thread
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_string(i8* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15
  store i32 843314856, i32* %2, align 4, !tbaa !23
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15
  store i32 -2007355251, i32* %3, align 4, !tbaa !23
  tail call void @seahorn.fn.enter() #15
  %6 = getelementptr inbounds i8, i8* %0, i32 8
  %7 = getelementptr inbounds i8, i8* %0, i32 4
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !75
  call fastcc void @hashlittle2(i8* nonnull %6, i32 %9, i32* nonnull %3, i32* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc nonnull i8* @aws_string_bytes(%struct.aws_string* readnone %0) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %2 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  ret i8* %2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_byte_cursor_ptr(i8* nocapture readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15
  store i32 843314856, i32* %2, align 4, !tbaa !23
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15
  store i32 -2007355251, i32* %3, align 4, !tbaa !23
  %6 = getelementptr inbounds i8, i8* %0, i32 4
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !77
  %9 = bitcast i8* %0 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !79
  call fastcc void @hashlittle2(i8* %8, i32 %10, i32* nonnull %3, i32* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_ptr(i8* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 4, !tbaa !10
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15
  store i32 729683222, i32* %3, align 4, !tbaa !23
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15
  store i32 682545830, i32* %4, align 4, !tbaa !23
  %7 = bitcast i8** %2 to i8*
  call fastcc void @hashlittle2(i8* nonnull %7, i32 4, i32* nonnull %4, i32* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_combine(i64 %0, i64 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8, !tbaa !80
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15
  %7 = trunc i64 %1 to i32
  store i32 %7, i32* %4, align 4, !tbaa !23
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15
  %9 = lshr i64 %1, 32
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4, !tbaa !23
  %11 = bitcast i64* %3 to i8*
  call fastcc void @hashlittle2(i8* nonnull %11, i32 8, i32* nonnull %5, i32* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_callback_c_str_eq(i8* nocapture readnone %0, i8* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_callback_string_eq(i8* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %3 = bitcast i8* %0 to %struct.aws_string*
  %4 = bitcast i8* %1 to %struct.aws_string*
  %5 = tail call zeroext i1 @aws_string_eq(%struct.aws_string* %3, %struct.aws_string* %4) #15
  ret void
}

declare zeroext i1 @aws_string_eq(%struct.aws_string*, %struct.aws_string*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_callback_string_destroy(i8* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = bitcast i8* %0 to %struct.aws_string*
  tail call void @aws_string_destroy(%struct.aws_string* %2) #15
  ret void
}

declare void @aws_string_destroy(%struct.aws_string*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ptr_eq(i8* nocapture readnone %0, i8* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_hash_table_is_valid(%struct.aws_hash_table* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = icmp eq %struct.aws_hash_table* %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %5 = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4, !tbaa !5
  %6 = icmp eq %struct.hash_table_state* %5, null
  br i1 %6, label %34, label %hash_table_state_is_valid.exit

hash_table_state_is_valid.exit:                   ; preds = %3
  tail call void @seahorn.fn.enter() #15
  %7 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 0
  %8 = load i64 (i8*)*, i64 (i8*)** %7, align 4, !tbaa !10
  %9 = icmp ne i64 (i8*)* %8, null
  %10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 1
  %11 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 4, !tbaa !10
  %12 = icmp ne i1 (i8*, i8*)* %11, null
  %13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 4
  %14 = load %struct.aws_allocator*, %struct.aws_allocator** %13, align 4, !tbaa !10
  %15 = icmp ne %struct.aws_allocator* %14, null
  %16 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 5
  %17 = load i32, i32* %16, align 4, !tbaa !11
  %18 = icmp ugt i32 %17, 1
  tail call void @seahorn.fn.enter() #15
  %19 = tail call i32 @llvm.ctpop.i32(i32 %17) #15, !range !13
  %20 = icmp eq i32 %19, 1
  %21 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 6
  %22 = load i32, i32* %21, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 7
  %24 = load i32, i32* %23, align 4, !tbaa !11
  %25 = icmp ule i32 %22, %24
  %26 = icmp ult i32 %24, %17
  %27 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 8
  %28 = load i32, i32* %27, align 4, !tbaa !11
  %29 = add i32 %17, -1
  %30 = icmp eq i32 %28, %29
  %31 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 9
  %32 = load double, double* %31, align 4, !tbaa !14
  %33 = fcmp oeq double %32, 0x3FEE666666666666
  %or.cond.i = and i1 %9, %12
  %or.cond3.i = and i1 %or.cond.i, %15
  %or.cond5.i = and i1 %or.cond3.i, %18
  %or.cond7.i = and i1 %or.cond5.i, %20
  %or.cond9.i = and i1 %or.cond7.i, %25
  %or.cond11.i = and i1 %26, %or.cond9.i
  %or.cond13.i = and i1 %30, %or.cond11.i
  %or.cond15.i = and i1 %33, %or.cond13.i
  br label %34

34:                                               ; preds = %hash_table_state_is_valid.exit, %3, %1
  %35 = phi i1 [ false, %3 ], [ false, %1 ], [ %or.cond15.i, %hash_table_state_is_valid.exit ]
  ret i1 %35
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @hash_table_state_is_valid(%struct.hash_table_state* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = icmp eq %struct.hash_table_state* %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 0
  %5 = load i64 (i8*)*, i64 (i8*)** %4, align 4, !tbaa !10
  %6 = icmp ne i64 (i8*)* %5, null
  %7 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 1
  %8 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %7, align 4, !tbaa !10
  %9 = icmp ne i1 (i8*, i8*)* %8, null
  %10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 4
  %11 = load %struct.aws_allocator*, %struct.aws_allocator** %10, align 4, !tbaa !10
  %12 = icmp ne %struct.aws_allocator* %11, null
  %13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 5
  %14 = load i32, i32* %13, align 4, !tbaa !11
  %15 = icmp ugt i32 %14, 1
  tail call void @seahorn.fn.enter() #15
  %16 = tail call i32 @llvm.ctpop.i32(i32 %14) #15, !range !13
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 6
  %19 = load i32, i32* %18, align 4, !tbaa !11
  %20 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !11
  %22 = icmp ule i32 %19, %21
  %23 = icmp ult i32 %21, %14
  %24 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 8
  %25 = load i32, i32* %24, align 4, !tbaa !11
  %26 = add i32 %14, -1
  %27 = icmp eq i32 %25, %26
  %28 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 9
  %29 = load double, double* %28, align 4, !tbaa !14
  %30 = fcmp oeq double %29, 0x3FEE666666666666
  %or.cond = and i1 %6, %9
  %or.cond3 = and i1 %or.cond, %12
  %or.cond5 = and i1 %or.cond3, %15
  %or.cond7 = and i1 %or.cond5, %17
  %or.cond9 = and i1 %or.cond7, %22
  %or.cond11 = and i1 %23, %or.cond9
  %or.cond13 = and i1 %27, %or.cond11
  %or.cond15 = and i1 %30, %or.cond13
  br label %31

31:                                               ; preds = %3, %1
  %.0 = phi i1 [ %or.cond15, %3 ], [ false, %1 ]
  ret i1 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_is_power_of_two(i32 %0) unnamed_addr #7 {
  tail call void @seahorn.fn.enter() #15
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !13
  %3 = icmp eq i32 %2, 1
  ret i1 %3
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_hash_iter_is_valid(%struct.aws_hash_iter* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #15
  %2 = icmp eq %struct.aws_hash_iter* %0, null
  br i1 %2, label %NewDefault, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  %5 = load %struct.aws_hash_table*, %struct.aws_hash_table** %4, align 4, !tbaa !16
  %6 = icmp eq %struct.aws_hash_table* %5, null
  br i1 %6, label %NewDefault, label %7

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #15
  %8 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %5, i32 0, i32 0
  %9 = load %struct.hash_table_state*, %struct.hash_table_state** %8, align 4, !tbaa !5
  %10 = icmp eq %struct.hash_table_state* %9, null
  br i1 %10, label %NewDefault, label %aws_hash_table_is_valid.exit

aws_hash_table_is_valid.exit:                     ; preds = %7
  tail call void @seahorn.fn.enter() #15
  %11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 0
  %12 = load i64 (i8*)*, i64 (i8*)** %11, align 4, !tbaa !10
  %13 = icmp ne i64 (i8*)* %12, null
  %14 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 1
  %15 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %14, align 4, !tbaa !10
  %16 = icmp ne i1 (i8*, i8*)* %15, null
  %17 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 4
  %18 = load %struct.aws_allocator*, %struct.aws_allocator** %17, align 4, !tbaa !10
  %19 = icmp ne %struct.aws_allocator* %18, null
  %20 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 5
  %21 = load i32, i32* %20, align 4, !tbaa !11
  %22 = icmp ugt i32 %21, 1
  tail call void @seahorn.fn.enter() #15
  %23 = tail call i32 @llvm.ctpop.i32(i32 %21) #15, !range !13
  %24 = icmp eq i32 %23, 1
  %25 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 6
  %26 = load i32, i32* %25, align 4, !tbaa !11
  %27 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 7
  %28 = load i32, i32* %27, align 4, !tbaa !11
  %29 = icmp ule i32 %26, %28
  %30 = icmp ult i32 %28, %21
  %31 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 8
  %32 = load i32, i32* %31, align 4, !tbaa !11
  %33 = add i32 %21, -1
  %34 = icmp eq i32 %32, %33
  %35 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 9
  %36 = load double, double* %35, align 4, !tbaa !14
  %37 = fcmp oeq double %36, 0x3FEE666666666666
  %or.cond.i.i = and i1 %13, %16
  %or.cond3.i.i = and i1 %or.cond.i.i, %19
  %or.cond5.i.i = and i1 %or.cond3.i.i, %22
  %or.cond7.i.i = and i1 %or.cond5.i.i, %24
  %or.cond9.i.i = and i1 %or.cond7.i.i, %29
  %or.cond11.i.i = and i1 %30, %or.cond9.i.i
  %or.cond13.i.i = and i1 %34, %or.cond11.i.i
  %or.cond15.i.i = and i1 %37, %or.cond13.i.i
  br i1 %or.cond15.i.i, label %38, label %NewDefault

38:                                               ; preds = %aws_hash_table_is_valid.exit
  %39 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  %40 = load i32, i32* %39, align 4, !tbaa !62
  %41 = icmp ugt i32 %40, %21
  br i1 %41, label %NewDefault, label %NodeBlock3

NodeBlock3:                                       ; preds = %38
  %42 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  %43 = load i32, i32* %42, align 4, !tbaa !67
  %Pivot4 = icmp slt i32 %43, 1
  br i1 %Pivot4, label %LeafBlock, label %NodeBlock4

NodeBlock4:                                       ; preds = %NodeBlock3
  switch i32 %43, label %NewDefault [
    i32 1, label %48
    i32 2, label %53
  ]

LeafBlock:                                        ; preds = %NodeBlock3
  %SwitchLeaf = icmp eq i32 %43, 0
  br i1 %SwitchLeaf, label %44, label %NewDefault

44:                                               ; preds = %LeafBlock
  %45 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  %46 = load i32, i32* %45, align 4, !tbaa !66
  %47 = icmp eq i32 %46, %40
  br label %NewDefault

48:                                               ; preds = %NodeBlock4
  %49 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  %50 = load i32, i32* %49, align 4, !tbaa !66
  %51 = icmp ule i32 %50, %40
  %52 = icmp eq i32 %50, -1
  %spec.select = or i1 %52, %51
  ret i1 %spec.select

53:                                               ; preds = %NodeBlock4
  %54 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  %55 = load i32, i32* %54, align 4, !tbaa !66
  %56 = icmp ult i32 %55, %40
  br i1 %56, label %57, label %NewDefault

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 10, i32 %55, i32 1
  %59 = load i64, i64* %58, align 4, !tbaa !48
  %60 = icmp ne i64 %59, 0
  br label %NewDefault

NewDefault:                                       ; preds = %7, %NodeBlock4, %57, %53, %44, %LeafBlock, %38, %aws_hash_table_is_valid.exit, %3, %1
  %.0 = phi i1 [ %47, %44 ], [ false, %1 ], [ false, %3 ], [ false, %aws_hash_table_is_valid.exit ], [ false, %38 ], [ false, %53 ], [ %60, %57 ], [ false, %LeafBlock ], [ false, %NodeBlock4 ], [ false, %7 ]
  ret i1 %.0
}

define i32 @main() local_unnamed_addr {
  store i8* (%struct.aws_allocator*, i32)* @s_default_malloc, i8* (%struct.aws_allocator*, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 0), align 8
  store void (%struct.aws_allocator*, i8*)* @s_default_free, void (%struct.aws_allocator*, i8*)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 1), align 4
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 2), align 8
  store i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* (%struct.aws_allocator*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 3), align 4
  store i8* null, i8** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 4), align 8
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32** getelementptr inbounds (%struct.__NSConstantString_tag, %struct.__NSConstantString_tag* @_unnamed_cfstring_, i32 0, i32 0), align 4
  store i32 1992, i32* getelementptr inbounds (%struct.__NSConstantString_tag, %struct.__NSConstantString_tag* @_unnamed_cfstring_, i32 0, i32 1), align 4
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8** getelementptr inbounds (%struct.__NSConstantString_tag, %struct.__NSConstantString_tag* @_unnamed_cfstring_, i32 0, i32 2), align 4
  store i32 35, i32* getelementptr inbounds (%struct.__NSConstantString_tag, %struct.__NSConstantString_tag* @_unnamed_cfstring_, i32 0, i32 3), align 4
  store i8* null, i8** @tl_thread_handler_context, align 4
  store void (i32, i8*)* null, void (i32, i8*)** @tl_thread_handler, align 4
  store void (i32, i8*)* null, void (i32, i8*)** @s_global_handler, align 4
  store i8* null, i8** @s_global_error_context, align 4
  store i8* null, i8** @g_libnuma_handle, align 4
  store i1 false, i1* @s_common_library_initialized, align 1
  store %struct.aws_error_info_list { %struct.aws_error_info* getelementptr inbounds ([50 x %struct.aws_error_info], [50 x %struct.aws_error_info]* @errors, i32 0, i32 0), i16 50 }, %struct.aws_error_info_list* @s_list, align 8
  store %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), %struct.aws_log_subject_info** getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 0), align 8
  store i32 5, i32* getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 1), align 4
  tail call void @seahorn.fn.enter()
  tail call fastcc void @aws_hash_iter_done_harness()
  %1 = tail call %struct.aws_allocator* @verifier.nondet.1()
  tail call fastcc void @aws_allocator_is_valid(%struct.aws_allocator* %1)
  tail call fastcc void @aws_default_allocator()
  %2 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %3 = tail call i32 @verifier.nondet.2()
  %4 = tail call i8* @s_default_malloc(%struct.aws_allocator* %2, i32 %3)
  %5 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %6 = tail call i8* @verifier.nondet.3()
  tail call void @s_default_free(%struct.aws_allocator* %5, i8* %6)
  %7 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %8 = tail call i8* @verifier.nondet.3()
  %9 = tail call i32 @verifier.nondet.2()
  %10 = tail call i32 @verifier.nondet.2()
  %11 = tail call i8* @s_default_realloc(%struct.aws_allocator* %7, i8* %8, i32 %9, i32 %10)
  %12 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %13 = tail call i32 @verifier.nondet.2()
  %14 = tail call i32 @verifier.nondet.2()
  %15 = tail call i8* @s_default_calloc(%struct.aws_allocator* %12, i32 %13, i32 %14)
  %16 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %17 = tail call i32 @verifier.nondet.2()
  %18 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %16, i32 %17)
  %19 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_raise_error(i32 %19)
  %20 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %21 = tail call i32 @verifier.nondet.2()
  %22 = tail call i32 @verifier.nondet.2()
  %23 = tail call fastcc i8* @aws_mem_calloc(%struct.aws_allocator* %20, i32 %21, i32 %22)
  %24 = tail call i32 @verifier.nondet.2()
  %25 = tail call i32 @verifier.nondet.2()
  %26 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_size_checked(i32 %24, i32 %25, i32* %26)
  %27 = tail call i32 @verifier.nondet.2()
  %28 = tail call i32 @verifier.nondet.2()
  %29 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_u32_checked(i32 %27, i32 %28, i32* %29)
  %30 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %31 = tail call i32 @verifier.nondet.2()
  %32 = tail call i8* (%struct.aws_allocator*, i32, ...) @aws_mem_acquire_many(%struct.aws_allocator* %30, i32 %31)
  %33 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %34 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_mem_release(%struct.aws_allocator* %33, i8* %34)
  %35 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %36 = tail call i8** @verifier.nondet.5()
  %37 = tail call i32 @verifier.nondet.2()
  %38 = tail call i32 @verifier.nondet.2()
  %39 = tail call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %35, i8** %36, i32 %37, i32 %38)
  %40 = tail call %struct.aws_allocator* @verifier.nondet.1()
  tail call fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %40)
  %41 = tail call i8* @verifier.nondet.3()
  %42 = tail call i32 @verifier.nondet.2()
  %43 = tail call i32 @verifier.nondet.2()
  %44 = tail call i8* @verifier.nondet.3()
  %45 = tail call i8* @s_cf_allocator_reallocate(i8* %41, i32 %42, i32 %43, i8* %44)
  %46 = tail call i8* @verifier.nondet.3()
  %47 = tail call %struct.__CFString* @s_cf_allocator_copy_description(i8* %46)
  %48 = tail call i32 @verifier.nondet.2()
  %49 = tail call i32 @verifier.nondet.2()
  %50 = tail call i8* @verifier.nondet.3()
  %51 = tail call i8* @s_cf_allocator_allocate(i32 %48, i32 %49, i8* %50)
  %52 = tail call i8* @verifier.nondet.3()
  %53 = tail call i8* @verifier.nondet.3()
  tail call void @s_cf_allocator_deallocate(i8* %52, i8* %53)
  %54 = tail call i32 @verifier.nondet.2()
  %55 = tail call i32 @verifier.nondet.2()
  %56 = tail call i8* @verifier.nondet.3()
  %57 = tail call i32 @s_cf_allocator_preferred_size(i32 %54, i32 %55, i8* %56)
  %58 = tail call %struct.__CFAllocator* @verifier.nondet.6()
  tail call fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %58)
  tail call fastcc void @aws_last_error()
  %59 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_str(i32 %59)
  %60 = tail call i32 @verifier.nondet.2()
  %61 = tail call fastcc %struct.aws_error_info* @get_error_by_code(i32 %60)
  %62 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_name(i32 %62)
  %63 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_lib_name(i32 %63)
  %64 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_debug_str(i32 %64)
  %65 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_raise_error_private(i32 %65)
  tail call fastcc void @aws_reset_error()
  %66 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_restore_error(i32 %66)
  %67 = tail call void (i32, i8*)* @verifier.nondet.7()
  %68 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %67, i8* %68)
  %69 = tail call void (i32, i8*)* @verifier.nondet.7()
  %70 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %69, i8* %70)
  %71 = tail call %struct.aws_error_info_list* @verifier.nondet.8()
  tail call fastcc void @aws_register_error_info(%struct.aws_error_info_list* %71)
  %72 = tail call %struct.aws_error_info_list* @verifier.nondet.8()
  tail call fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* %72)
  %73 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_translate_and_raise_io_error(i32 %73)
  %74 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_raise_error.20(i32 %74)
  %75 = tail call i8* @verifier.nondet.3()
  %76 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_secure_zero(i8* %75, i32 %76)
  %77 = tail call %struct.aws_allocator* @verifier.nondet.1()
  tail call fastcc void @aws_common_library_init()
  tail call fastcc void @aws_common_library_clean_up()
  tail call fastcc void @aws_common_fatal_assert_library_initialized()
  %78 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %79 = tail call fastcc i32 @aws_hash_table_get_entry_count(%struct.aws_hash_table* %78)
  %80 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %81 = tail call %struct.aws_allocator* @verifier.nondet.1()
  %82 = tail call i32 @verifier.nondet.2()
  %83 = tail call i64 (i8*)* @verifier.nondet.10()
  %84 = tail call i1 (i8*, i8*)* @verifier.nondet.11()
  %85 = tail call void (i8*)* @verifier.nondet.12()
  %86 = tail call void (i8*)* @verifier.nondet.12()
  tail call fastcc void @aws_hash_table_init(%struct.aws_hash_table* %80, %struct.aws_allocator* %81, i32 %82, i64 (i8*)* %83, i1 (i8*, i8*)* %84, void (i8*)* %85, void (i8*)* %86)
  %87 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %88 = tail call i32 @verifier.nondet.2()
  %89 = tail call fastcc i32 @s_update_template_size(%struct.hash_table_state* %87, i32 %88)
  %90 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %91 = tail call fastcc %struct.hash_table_state* @s_alloc_state(%struct.hash_table_state* %90)
  %92 = tail call i32 @verifier.nondet.2()
  %93 = tail call i32* @verifier.nondet.4()
  %94 = tail call fastcc i32 @hash_table_state_required_bytes(i32 %92, i32* %93)
  %95 = tail call i32 @verifier.nondet.2()
  %96 = tail call i32 @verifier.nondet.2()
  %97 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_size_checked.33(i32 %95, i32 %96, i32* %97)
  %98 = tail call i32 @verifier.nondet.2()
  %99 = tail call i32 @verifier.nondet.2()
  %100 = tail call i32* @verifier.nondet.4()
  %101 = tail call fastcc i32 @aws_add_size_checked(i32 %98, i32 %99, i32* %100)
  %102 = tail call i32 @verifier.nondet.2()
  %103 = tail call i32 @verifier.nondet.2()
  %104 = tail call i32* @verifier.nondet.4()
  %105 = tail call fastcc i32 @aws_add_u32_checked(i32 %102, i32 %103, i32* %104)
  %106 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_raise_error.34(i32 %106)
  %107 = tail call i32 @verifier.nondet.2()
  %108 = tail call i32 @verifier.nondet.2()
  %109 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_u32_checked.35(i32 %107, i32 %108, i32* %109)
  %110 = tail call i32 @verifier.nondet.2()
  %111 = tail call i32* @verifier.nondet.4()
  %112 = tail call fastcc i32 @aws_round_up_to_power_of_two(i32 %110, i32* %111)
  %113 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  tail call fastcc void @aws_hash_table_clean_up(%struct.aws_hash_table* %113)
  %114 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  tail call fastcc void @aws_hash_table_clear(%struct.aws_hash_table* %114)
  %115 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %116 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  tail call fastcc void @aws_hash_table_swap(%struct.aws_hash_table* %115, %struct.aws_hash_table* %116)
  %117 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %118 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  tail call fastcc void @aws_hash_table_move(%struct.aws_hash_table* %117, %struct.aws_hash_table* %118)
  %119 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %120 = tail call i8* @verifier.nondet.3()
  %121 = tail call %struct.aws_hash_element** @verifier.nondet.14()
  tail call fastcc void @aws_hash_table_find(%struct.aws_hash_table* %119, i8* %120, %struct.aws_hash_element** %121)
  %122 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %123 = tail call i8* @verifier.nondet.3()
  %124 = tail call fastcc i64 @s_hash_for(%struct.hash_table_state* %122, i8* %123)
  %125 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %126 = tail call i64 @verifier.nondet.15()
  %127 = tail call i8* @verifier.nondet.3()
  %128 = tail call %struct.hash_table_entry** @verifier.nondet.16()
  %129 = tail call i32* @verifier.nondet.4()
  %130 = tail call fastcc i32 @s_find_entry(%struct.hash_table_state* %125, i64 %126, i8* %127, %struct.hash_table_entry** %128, i32* %129)
  %131 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %132 = tail call i8* @verifier.nondet.3()
  %133 = tail call i8* @verifier.nondet.3()
  %134 = tail call fastcc i1 @s_hash_keys_eq(%struct.hash_table_state* %131, i8* %132, i8* %133)
  %135 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %136 = tail call i64 @verifier.nondet.15()
  %137 = tail call i8* @verifier.nondet.3()
  %138 = tail call %struct.hash_table_entry** @verifier.nondet.16()
  %139 = tail call i32* @verifier.nondet.4()
  %140 = tail call fastcc i32 @s_find_entry1(%struct.hash_table_state* %135, i64 %136, i8* %137, %struct.hash_table_entry** %138, i32* %139)
  %141 = tail call i1 (i8*, i8*)* @verifier.nondet.11()
  %142 = tail call i8* @verifier.nondet.3()
  %143 = tail call i8* @verifier.nondet.3()
  %144 = tail call fastcc i1 @s_safe_eq_check(i1 (i8*, i8*)* %141, i8* %142, i8* %143)
  tail call fastcc void @s_suppress_unused_lookup3_func_warnings()
  %145 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %146 = tail call i8* @verifier.nondet.3()
  %147 = tail call %struct.aws_hash_element** @verifier.nondet.14()
  %148 = tail call i32* @verifier.nondet.4()
  %149 = tail call fastcc i32 @aws_hash_table_create(%struct.aws_hash_table* %145, i8* %146, %struct.aws_hash_element** %147, i32* %148)
  %150 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %151 = tail call fastcc i32 @s_expand_table(%struct.aws_hash_table* %150)
  %152 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %153 = tail call %struct.hash_table_entry* @verifier.nondet.17()
  %154 = tail call i32 @verifier.nondet.2()
  %155 = tail call fastcc %struct.hash_table_entry* @s_emplace_item(%struct.hash_table_state* %152, %struct.hash_table_entry* byval(%struct.hash_table_entry) %153, i32 %154)
  %156 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %157 = tail call i8* @verifier.nondet.3()
  %158 = tail call i8* @verifier.nondet.3()
  %159 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_hash_table_put(%struct.aws_hash_table* %156, i8* %157, i8* %158, i32* %159)
  %160 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %161 = tail call i8* @verifier.nondet.3()
  %162 = tail call %struct.aws_hash_element* @verifier.nondet.18()
  %163 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_hash_table_remove(%struct.aws_hash_table* %160, i8* %161, %struct.aws_hash_element* %162, i32* %163)
  %164 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %165 = tail call %struct.hash_table_entry* @verifier.nondet.17()
  %166 = tail call fastcc i32 @s_remove_entry(%struct.hash_table_state* %164, %struct.hash_table_entry* %165)
  %167 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %168 = tail call %struct.hash_table_entry* @verifier.nondet.17()
  %169 = tail call fastcc i32 @s_index_for(%struct.hash_table_state* %167, %struct.hash_table_entry* %168)
  %170 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %171 = tail call %struct.aws_hash_element* @verifier.nondet.18()
  tail call fastcc void @aws_hash_table_remove_element(%struct.aws_hash_table* %170, %struct.aws_hash_element* %171)
  %172 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %173 = tail call i32 (i8*, %struct.aws_hash_element*)* @verifier.nondet.19()
  %174 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_table_foreach(%struct.aws_hash_table* %172, i32 (i8*, %struct.aws_hash_element*)* %173, i8* %174)
  %175 = tail call %struct.aws_hash_iter* @verifier.nondet.20()
  %176 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  tail call fastcc void @aws_hash_iter_begin(%struct.aws_hash_iter* noalias %175, %struct.aws_hash_table* %176)
  %177 = tail call %struct.aws_hash_iter* @verifier.nondet.20()
  %178 = tail call fastcc i1 @aws_hash_iter_done(%struct.aws_hash_iter* %177)
  %179 = tail call %struct.aws_hash_iter* @verifier.nondet.20()
  %180 = tail call i1 @verifier.nondet.21()
  tail call fastcc void @aws_hash_iter_delete(%struct.aws_hash_iter* %179, i1 %180)
  %181 = tail call %struct.aws_hash_iter* @verifier.nondet.20()
  tail call fastcc void @aws_hash_iter_next(%struct.aws_hash_iter* %181)
  %182 = tail call %struct.aws_hash_iter* @verifier.nondet.20()
  %183 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @s_get_next_element(%struct.aws_hash_iter* %182, i32 %183)
  %184 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %185 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %186 = tail call i1 (i8*, i8*)* @verifier.nondet.11()
  tail call fastcc void @aws_hash_table_eq(%struct.aws_hash_table* %184, %struct.aws_hash_table* %185, i1 (i8*, i8*)* %186)
  %187 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_c_string(i8* %187)
  %188 = tail call i8* @verifier.nondet.3()
  %189 = tail call i32 @verifier.nondet.2()
  %190 = tail call i32* @verifier.nondet.4()
  %191 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @hashlittle2(i8* %188, i32 %189, i32* %190, i32* %191)
  %192 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_string(i8* %192)
  %193 = tail call %struct.aws_string* @verifier.nondet.22()
  %194 = tail call fastcc i8* @aws_string_bytes(%struct.aws_string* %193)
  %195 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_byte_cursor_ptr(i8* %195)
  %196 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_ptr(i8* %196)
  %197 = tail call i64 @verifier.nondet.15()
  %198 = tail call i64 @verifier.nondet.15()
  tail call fastcc void @aws_hash_combine(i64 %197, i64 %198)
  %199 = tail call i8* @verifier.nondet.3()
  %200 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_callback_c_str_eq(i8* %199, i8* %200)
  %201 = tail call i8* @verifier.nondet.3()
  %202 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_callback_string_eq(i8* %201, i8* %202)
  %203 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_hash_callback_string_destroy(i8* %203)
  %204 = tail call i8* @verifier.nondet.3()
  %205 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_ptr_eq(i8* %204, i8* %205)
  %206 = tail call %struct.aws_hash_table* @verifier.nondet.9()
  %207 = tail call fastcc i1 @aws_hash_table_is_valid(%struct.aws_hash_table* %206)
  %208 = tail call %struct.hash_table_state* @verifier.nondet.13()
  %209 = tail call fastcc i1 @hash_table_state_is_valid(%struct.hash_table_state* %208)
  %210 = tail call i32 @verifier.nondet.2()
  %211 = tail call fastcc i1 @aws_is_power_of_two(i32 %210)
  %212 = tail call %struct.aws_hash_iter* @verifier.nondet.20()
  %213 = tail call fastcc i1 @aws_hash_iter_is_valid(%struct.aws_hash_iter* %212)
  ret i32 42
}

declare %struct.aws_allocator* @verifier.nondet.1() local_unnamed_addr

declare i32 @verifier.nondet.2() local_unnamed_addr

declare i8* @verifier.nondet.3() local_unnamed_addr

declare i32* @verifier.nondet.4() local_unnamed_addr

declare i8** @verifier.nondet.5() local_unnamed_addr

declare %struct.__CFAllocator* @verifier.nondet.6() local_unnamed_addr

declare void (i32, i8*)* @verifier.nondet.7() local_unnamed_addr

declare %struct.aws_error_info_list* @verifier.nondet.8() local_unnamed_addr

declare %struct.aws_hash_table* @verifier.nondet.9() local_unnamed_addr

declare i64 (i8*)* @verifier.nondet.10() local_unnamed_addr

declare i1 (i8*, i8*)* @verifier.nondet.11() local_unnamed_addr

declare void (i8*)* @verifier.nondet.12() local_unnamed_addr

declare %struct.hash_table_state* @verifier.nondet.13() local_unnamed_addr

declare %struct.aws_hash_element** @verifier.nondet.14() local_unnamed_addr

declare i64 @verifier.nondet.15() local_unnamed_addr

declare %struct.hash_table_entry** @verifier.nondet.16() local_unnamed_addr

declare %struct.hash_table_entry* @verifier.nondet.17() local_unnamed_addr

declare %struct.aws_hash_element* @verifier.nondet.18() local_unnamed_addr

declare i32 (i8*, %struct.aws_hash_element*)* @verifier.nondet.19() local_unnamed_addr

declare %struct.aws_hash_iter* @verifier.nondet.20() local_unnamed_addr

declare i1 @verifier.nondet.21() local_unnamed_addr

declare %struct.aws_string* @verifier.nondet.22() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #10

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #10

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #10

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #11

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #12

declare i32 @verifier.nondet.23() local_unnamed_addr

declare i1 @verifier.nondet.24() local_unnamed_addr

; Function Attrs: nofree nounwind
declare i32 @fwrite(i8* nocapture, i32, i32, %struct.__sFILE* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #14

attributes #0 = { "objc_arc_inert" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inaccessiblememonly nofree norecurse nounwind }
attributes #11 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #12 = { inaccessiblememonly }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !7, i64 0}
!6 = !{!"aws_hash_table", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{i32 0, i32 33}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!17, !7, i64 0}
!17 = !{!"aws_hash_iter", !7, i64 0, !18, i64 4, !12, i64 12, !12, i64 16, !8, i64 20, !19, i64 24, !7, i64 28, !7, i64 32}
!18 = !{!"aws_hash_element", !7, i64 0, !7, i64 4}
!19 = !{!"int", !8, i64 0}
!20 = !{!21, !7, i64 0}
!21 = !{!"aws_allocator", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!22 = !{!21, !7, i64 12}
!23 = !{!19, !19, i64 0}
!24 = !{!21, !7, i64 4}
!25 = !{!21, !7, i64 8}
!26 = !{!27, !12, i64 0}
!27 = !{!"", !12, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!28 = !{!27, !7, i64 4}
!29 = !{!27, !7, i64 8}
!30 = !{!27, !7, i64 12}
!31 = !{!27, !7, i64 16}
!32 = !{!27, !7, i64 20}
!33 = !{!27, !7, i64 24}
!34 = !{!27, !7, i64 28}
!35 = !{!27, !7, i64 32}
!36 = !{!37, !38, i64 4}
!37 = !{!"aws_error_info_list", !7, i64 0, !38, i64 4}
!38 = !{!"short", !8, i64 0}
!39 = !{!37, !7, i64 0}
!40 = !{!41, !19, i64 0}
!41 = !{!"aws_error_info", !19, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!42 = !{i32 1682}
!43 = !{!44, !7, i64 0}
!44 = !{!"aws_logger", !7, i64 0, !7, i64 4, !7, i64 8}
!45 = !{!46, !7, i64 4}
!46 = !{!"aws_logger_vtable", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!47 = !{!46, !7, i64 0}
!48 = !{!49, !50, i64 8}
!49 = !{!"hash_table_entry", !18, i64 0, !50, i64 8}
!50 = !{!"long long", !8, i64 0}
!51 = !{!49, !7, i64 0}
!52 = !{!49, !7, i64 4}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = !{!18, !7, i64 0}
!58 = !{!18, !7, i64 4}
!59 = !{!60}
!60 = distinct !{!60, !61, !"aws_hash_iter_begin: argument 0"}
!61 = distinct !{!61, !"aws_hash_iter_begin"}
!62 = !{!17, !12, i64 16}
!63 = distinct !{!63, !54}
!64 = !{!17, !7, i64 4}
!65 = !{!17, !7, i64 8}
!66 = !{!17, !12, i64 12}
!67 = !{!17, !8, i64 20}
!68 = distinct !{!68, !54}
!69 = distinct !{!69, !54}
!70 = distinct !{!70, !54}
!71 = !{!38, !38, i64 0}
!72 = distinct !{!72, !54}
!73 = !{!8, !8, i64 0}
!74 = distinct !{!74, !54}
!75 = !{!76, !12, i64 4}
!76 = !{!"aws_string", !7, i64 0, !12, i64 4, !8, i64 8}
!77 = !{!78, !7, i64 4}
!78 = !{!"aws_byte_cursor", !12, i64 0, !7, i64 4}
!79 = !{!78, !12, i64 0}
!80 = !{!50, !50, i64 0}
