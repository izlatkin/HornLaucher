; ModuleID = '../out2/aws_array_list_clean_up_harness.c/aws_array_list_clean_up_harnessf13d5.bc.txt'
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
%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }
%struct.CFAllocatorContext = type { i32, i8*, i8* (i8*)*, void (i8*)*, %struct.__CFString* (i8*)*, i8* (i32, i32, i8*)*, i8* (i8*, i32, i32, i8*)*, void (i8*, i8*)*, i32 (i32, i32, i8*)* }
%struct.__CFString = type opaque
%struct.__CFAllocator = type opaque
%struct.aws_logger = type { %struct.aws_logger_vtable*, %struct.aws_allocator*, i8* }
%struct.aws_logger_vtable = type { i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32)*, void (%struct.aws_logger*)*, i32 (%struct.aws_logger*, i32)* }

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
@.str.24 = private unnamed_addr constant [33 x i8] c"from->item_size == to->item_size\00", align 1
@.str.1.25 = private unnamed_addr constant [38 x i8] c"/tmp/aws-c-common/source/array_list.c\00", align 1
@.str.2.26 = private unnamed_addr constant [11 x i8] c"from->data\00", align 1
@.str.3.27 = private unnamed_addr constant [17 x i8] c"a < list->length\00", align 1
@.str.4.28 = private unnamed_addr constant [17 x i8] c"b < list->length\00", align 1
@.str.7.29 = private unnamed_addr constant [6 x i8] c"item1\00", align 1
@.str.8.30 = private unnamed_addr constant [6 x i8] c"item2\00", align 1
@.str.5.31 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.6.32 = private unnamed_addr constant [52 x i8] c"/tmp/aws-c-common/include/aws/common/array_list.inl\00", align 1
@g_set_mempolicy_ptr = internal unnamed_addr global i32 (i32, i32*, i32)* null, align 4
@g_numa_available_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_num_configured_nodes_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_num_possible_cpus_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_node_of_cpu_ptr = internal unnamed_addr global i32 (i32)* null, align 4
@g_libnuma_handle = internal unnamed_addr global i8* null, align 4
@s_common_library_initialized = internal unnamed_addr global i1 false, align 1
@s_list = internal global %struct.aws_error_info_list { %struct.aws_error_info* getelementptr inbounds ([50 x %struct.aws_error_info], [50 x %struct.aws_error_info]* @errors, i32 0, i32 0), i16 50 }, align 8
@s_common_log_subject_list = internal global %struct.aws_log_subject_info_list { %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), i32 5 }, align 8
@.str.33 = private unnamed_addr constant [11 x i8] c"libnuma.so\00", align 1
@.str.1.34 = private unnamed_addr constant [13 x i8] c"libnuma.so.1\00", align 1
@.str.2.35 = private unnamed_addr constant [13 x i8] c"libnuma.so.2\00", align 1
@.str.3.36 = private unnamed_addr constant [26 x i8] c"static: libnuma.so loaded\00", align 1
@.str.4.37 = private unnamed_addr constant [14 x i8] c"set_mempolicy\00", align 1
@.str.5.38 = private unnamed_addr constant [31 x i8] c"static: set_mempolicy() loaded\00", align 1
@.str.6.39 = private unnamed_addr constant [39 x i8] c"static: set_mempolicy() failed to load\00", align 1
@.str.7.40 = private unnamed_addr constant [15 x i8] c"numa_available\00", align 1
@.str.8.41 = private unnamed_addr constant [32 x i8] c"static: numa_available() loaded\00", align 1
@.str.9.42 = private unnamed_addr constant [40 x i8] c"static: numa_available() failed to load\00", align 1
@.str.10.43 = private unnamed_addr constant [26 x i8] c"numa_num_configured_nodes\00", align 1
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
@errors = internal global [50 x %struct.aws_error_info] [%struct.aws_error_info { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24.44, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0) }, %struct.aws_error_info { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0) }, %struct.aws_error_info { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33.45, i32 0, i32 0) }, %struct.aws_error_info { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0) }, %struct.aws_error_info { i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.39, i32 0, i32 0) }, %struct.aws_error_info { i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.42, i32 0, i32 0) }, %struct.aws_error_info { i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i32 0, i32 0) }, %struct.aws_error_info { i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.48, i32 0, i32 0) }, %struct.aws_error_info { i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.51, i32 0, i32 0) }, %struct.aws_error_info { i32 9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.54, i32 0, i32 0) }, %struct.aws_error_info { i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.57, i32 0, i32 0) }, %struct.aws_error_info { i32 11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.60, i32 0, i32 0) }, %struct.aws_error_info { i32 12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.63, i32 0, i32 0) }, %struct.aws_error_info { i32 13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.66, i32 0, i32 0) }, %struct.aws_error_info { i32 14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.69, i32 0, i32 0) }, %struct.aws_error_info { i32 15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.72, i32 0, i32 0) }, %struct.aws_error_info { i32 16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.75, i32 0, i32 0) }, %struct.aws_error_info { i32 17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.78, i32 0, i32 0) }, %struct.aws_error_info { i32 18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.81, i32 0, i32 0) }, %struct.aws_error_info { i32 19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.84, i32 0, i32 0) }, %struct.aws_error_info { i32 20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.87, i32 0, i32 0) }, %struct.aws_error_info { i32 21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.90, i32 0, i32 0) }, %struct.aws_error_info { i32 22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.93, i32 0, i32 0) }, %struct.aws_error_info { i32 23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.96, i32 0, i32 0) }, %struct.aws_error_info { i32 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.99, i32 0, i32 0) }, %struct.aws_error_info { i32 25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.102, i32 0, i32 0) }, %struct.aws_error_info { i32 26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.105, i32 0, i32 0) }, %struct.aws_error_info { i32 27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.108, i32 0, i32 0) }, %struct.aws_error_info { i32 28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.111, i32 0, i32 0) }, %struct.aws_error_info { i32 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.114, i32 0, i32 0) }, %struct.aws_error_info { i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.117, i32 0, i32 0) }, %struct.aws_error_info { i32 31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.120, i32 0, i32 0) }, %struct.aws_error_info { i32 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.123, i32 0, i32 0) }, %struct.aws_error_info { i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.126, i32 0, i32 0) }, %struct.aws_error_info { i32 34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.129, i32 0, i32 0) }, %struct.aws_error_info { i32 35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.132, i32 0, i32 0) }, %struct.aws_error_info { i32 36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.135, i32 0, i32 0) }, %struct.aws_error_info { i32 37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.138, i32 0, i32 0) }, %struct.aws_error_info { i32 38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.141, i32 0, i32 0) }, %struct.aws_error_info { i32 39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.144, i32 0, i32 0) }, %struct.aws_error_info { i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.147, i32 0, i32 0) }, %struct.aws_error_info { i32 41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.150, i32 0, i32 0) }, %struct.aws_error_info { i32 42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.153, i32 0, i32 0) }, %struct.aws_error_info { i32 43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.156, i32 0, i32 0) }, %struct.aws_error_info { i32 44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.159, i32 0, i32 0) }, %struct.aws_error_info { i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.162, i32 0, i32 0) }, %struct.aws_error_info { i32 46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.165, i32 0, i32 0) }, %struct.aws_error_info { i32 47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.168, i32 0, i32 0) }, %struct.aws_error_info { i32 48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.171, i32 0, i32 0) }, %struct.aws_error_info { i32 49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.174, i32 0, i32 0) }], align 4
@.str.24.44 = private unnamed_addr constant [18 x i8] c"AWS_ERROR_SUCCESS\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Success.\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"aws-c-common: AWS_ERROR_SUCCESS, Success.\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"AWS_ERROR_OOM\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"aws-c-common: AWS_ERROR_OOM, Out of memory.\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"AWS_ERROR_NO_SPACE\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Out of space on disk.\00", align 1
@.str.33.45 = private unnamed_addr constant [56 x i8] c"aws-c-common: AWS_ERROR_NO_SPACE, Out of space on disk.\00", align 1
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
@.str.21 = private unnamed_addr constant [89 x i8] c"aws_common_library_init() must be called before using any functionality in aws-c-common.\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"s_common_library_initialized\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"/tmp/aws-c-common/source/common.c\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_clean_up_harness() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %1 = alloca %struct.aws_array_list, align 4
  %2 = bitcast %struct.aws_array_list* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #13
  %3 = call zeroext i1 @aws_array_list_is_bounded(%struct.aws_array_list* nonnull %1, i32 0, i32 2) #13
  call void @verifier.assume(i1 %3)
  call void @ensure_array_list_has_allocated_data_member(%struct.aws_array_list* nonnull %1) #13
  call void @seahorn.fn.enter() #13, !noalias !5
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !8, !alias.scope !5
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 3
  %7 = load i32, i32* %6, align 4, !tbaa !14, !alias.scope !5
  call void @seahorn.fn.enter() #13
  call void @seahorn.fn.enter() #13
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !15, !alias.scope !5
  %11 = icmp uge i32 %10, %8
  %12 = icmp eq i32 %10, 0
  %13 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 4
  %14 = load i8*, i8** %13, align 4, !tbaa !16, !alias.scope !5
  br i1 %12, label %15, label %17

15:                                               ; preds = %0
  %16 = icmp eq i8* %14, null
  br i1 %16, label %.thread.i, label %aws_array_list_is_valid.exit

17:                                               ; preds = %0
  %18 = icmp ne i8* %14, null
  br label %.thread.i

.thread.i:                                        ; preds = %17, %15
  %19 = phi i1 [ %18, %17 ], [ true, %15 ]
  %or.cond3.i = and i1 %11, %19
  %20 = icmp ne i32 %7, 0
  %spec.select.i = and i1 %20, %or.cond3.i
  br label %aws_array_list_is_valid.exit

aws_array_list_is_valid.exit:                     ; preds = %15, %.thread.i
  %21 = phi i1 [ %spec.select.i, %.thread.i ], [ false, %15 ]
  call void @verifier.assume(i1 %21)
  call void @seahorn.fn.enter() #13, !noalias !17
  %22 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 0
  %23 = load %struct.aws_allocator*, %struct.aws_allocator** %22, align 4, !tbaa !20, !alias.scope !17
  %24 = icmp eq %struct.aws_allocator* %23, null
  %25 = icmp eq i8* %14, null
  %or.cond = or i1 %25, %24
  br i1 %or.cond, label %aws_array_list_clean_up.exit, label %26

26:                                               ; preds = %aws_array_list_is_valid.exit
  call void @seahorn.fn.enter() #13
  %27 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %23, i32 0, i32 1
  %28 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %27, align 4, !tbaa !21
  %29 = icmp eq void (%struct.aws_allocator*, i8*)* %28, null
  br i1 %29, label %30, label %aws_mem_release.exit.i

30:                                               ; preds = %26
  call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

aws_mem_release.exit.i:                           ; preds = %26
  call void %28(%struct.aws_allocator* nonnull %23, i8* nonnull %14) #13
  br label %aws_array_list_clean_up.exit

aws_array_list_clean_up.exit:                     ; preds = %aws_array_list_is_valid.exit, %aws_mem_release.exit.i
  call void @seahorn.fn.enter() #13
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare zeroext i1 @aws_array_list_is_bounded(%struct.aws_array_list*, i32, i32) local_unnamed_addr #3

declare void @ensure_array_list_has_allocated_data_member(%struct.aws_array_list*) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_array_list_is_valid(%struct.aws_array_list* noalias readonly %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %2 = icmp eq %struct.aws_array_list* %0, null
  br i1 %2, label %.thread3, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !8
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %7 = load i32, i32* %6, align 4, !tbaa !14
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !15
  %11 = icmp uge i32 %10, %8
  %12 = icmp eq i32 %10, 0
  %13 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %14 = load i8*, i8** %13, align 4, !tbaa !16
  br i1 %12, label %15, label %17

15:                                               ; preds = %3
  %16 = icmp eq i8* %14, null
  br i1 %16, label %.thread, label %.thread3

17:                                               ; preds = %3
  %18 = icmp ne i8* %14, null
  br label %.thread

.thread:                                          ; preds = %15, %17
  %19 = phi i1 [ %18, %17 ], [ true, %15 ]
  %or.cond3 = and i1 %11, %19
  %20 = icmp ne i32 %7, 0
  %spec.select = and i1 %20, %or.cond3
  ret i1 %spec.select

.thread3:                                         ; preds = %15, %1
  ret i1 false
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_array_list_clean_up(%struct.aws_array_list* noalias %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %2 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 0
  %3 = load %struct.aws_allocator*, %struct.aws_allocator** %2, align 4, !tbaa !20
  %4 = icmp eq %struct.aws_allocator* %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 4, !tbaa !16
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  tail call void @seahorn.fn.enter() #13
  %10 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %3, i32 0, i32 1
  %11 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %10, align 4, !tbaa !21
  %12 = icmp eq void (%struct.aws_allocator*, i8*)* %11, null
  br i1 %12, label %13, label %aws_mem_release.exit

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

aws_mem_release.exit:                             ; preds = %9
  tail call void %11(%struct.aws_allocator* nonnull %3, i8* nonnull %7) #13
  br label %14

14:                                               ; preds = %aws_mem_release.exit, %5, %1
  %15 = bitcast %struct.aws_array_list* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %15, i8 0, i32 20, i1 false) #13
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_is_mem_zeroed(i8* nocapture readonly %0, i32 %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %3 = bitcast i8* %0 to i64*
  %4 = lshr i32 %1, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %2, %.lr.ph5
  %.014 = phi i32 [ %9, %.lr.ph5 ], [ 0, %2 ]
  %6 = getelementptr inbounds i64, i64* %3, i32 %.014
  %7 = load i64, i64* %6, align 4, !tbaa !23
  %8 = icmp eq i64 %7, 0
  %9 = add nuw i32 %.014, 1
  %10 = icmp ult i32 %9, %4
  %or.cond = and i1 %8, %10
  br i1 %or.cond, label %.lr.ph5, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph5, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %2(i32 %0, i8* %5) #13
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %7(i32 %0, i8* %10) #13
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_allocator_is_valid(%struct.aws_allocator* nocapture readnone %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_default_allocator() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13
  store i8* null, i8** %3, align 4, !tbaa !29
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #13
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #1 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #13
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
  tail call void @seahorn.fn.enter() #13
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #13
  store i8* null, i8** %5, align 4, !tbaa !29
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #13
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #13
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #13
  call void @seahorn.fn.enter() #13
  call void @free(i8* nonnull %1) #13
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #1 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #13
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #13
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13
  store i8* null, i8** %4, align 4, !tbaa !29
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #13
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #13
  br label %15

15:                                               ; preds = %14, %3
  ret i8* %12
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i8* @__memcpy_chk(i8*, i8*, i32, i32) local_unnamed_addr #6

; Function Attrs: nofree
declare i32 @posix_memalign(i8**, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define internal fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 115) #14
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %7 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %6, align 4, !tbaa !30
  %8 = icmp eq i8* (%struct.aws_allocator*, i32)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 116) #14
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 118) #14
  unreachable

13:                                               ; preds = %10
  %14 = tail call i8* %7(%struct.aws_allocator* nonnull %0, i32 %1) #13
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %aws_raise_error.3.exit

16:                                               ; preds = %13
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %17 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %17(i32 1, i8* %20) #13
  br label %aws_raise_error.3.exit

21:                                               ; preds = %16
  %22 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %aws_raise_error.3.exit, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %22(i32 1, i8* %25) #13
  br label %aws_raise_error.3.exit

aws_raise_error.3.exit:                           ; preds = %24, %21, %19, %13
  ret i8* %14
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.3(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %2(i32 %0, i8* %5) #13
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %7(i32 %0, i8* %10) #13
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_calloc(%struct.aws_allocator* %0, i32 %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %4 = icmp eq %struct.aws_allocator* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 128) #14
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  %8 = load i8* (%struct.aws_allocator*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)** %7, align 4, !tbaa !31
  %9 = icmp eq i8* (%struct.aws_allocator*, i32, i32)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %12 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %11, align 4, !tbaa !30
  %13 = icmp eq i8* (%struct.aws_allocator*, i32)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 129) #14
  unreachable

15:                                               ; preds = %10, %6
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %2, 0
  %or.cond = and i1 %16, %17
  br i1 %or.cond, label %19, label %18

18:                                               ; preds = %15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 131) #14
  unreachable

19:                                               ; preds = %15
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %20 = mul i32 %2, %1
  br i1 %9, label %34, label %21

21:                                               ; preds = %19
  %22 = tail call i8* %8(%struct.aws_allocator* nonnull %0, i32 %1, i32 %2) #13
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %aws_raise_error.3.exit

24:                                               ; preds = %21
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %25 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %25(i32 1, i8* %28) #13
  br label %aws_raise_error.3.exit

29:                                               ; preds = %24
  %30 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %31 = icmp eq void (i32, i8*)* %30, null
  br i1 %31, label %aws_raise_error.3.exit, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %30(i32 1, i8* %33) #13
  br label %aws_raise_error.3.exit

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %36 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %35, align 4, !tbaa !30
  %37 = tail call i8* %36(%struct.aws_allocator* nonnull %0, i32 %20) #13
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %40 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %41 = icmp eq void (i32, i8*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %40(i32 1, i8* %43) #13
  br label %aws_raise_error.3.exit

44:                                               ; preds = %39
  %45 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %46 = icmp eq void (i32, i8*)* %45, null
  br i1 %46, label %aws_raise_error.3.exit, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %45(i32 1, i8* %48) #13
  br label %aws_raise_error.3.exit

49:                                               ; preds = %34
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %37, i8 0, i32 %20, i1 false) #13
  br label %aws_raise_error.3.exit

aws_raise_error.3.exit:                           ; preds = %47, %44, %42, %32, %29, %27, %49, %21
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked.4(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked.5(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind ssp uwtable
declare i8* @aws_mem_acquire_many(%struct.aws_allocator*, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_release(%struct.aws_allocator* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #14
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %7 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %6, align 4, !tbaa !21
  %8 = icmp eq void (%struct.aws_allocator*, i8*)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i8* %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void %7(%struct.aws_allocator* nonnull %0, i8* nonnull %1) #13
  br label %13

13:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %0, i8** nocapture %1, i32 %2, i32 %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %5 = icmp eq %struct.aws_allocator* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 224) #14
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %9 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %8, align 4, !tbaa !32
  %10 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %13 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %12, align 4, !tbaa !30
  %14 = icmp eq i8* (%struct.aws_allocator*, i32)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 225) #14
  unreachable

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %18 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !21
  %19 = icmp eq void (%struct.aws_allocator*, i8*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 226) #14
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8*, i8** %1, align 4, !tbaa !29
  tail call void @seahorn.fn.enter() #13
  %25 = icmp eq i8* %24, null
  br i1 %25, label %aws_mem_release.exit, label %26

26:                                               ; preds = %23
  tail call void %18(%struct.aws_allocator* nonnull %0, i8* nonnull %24) #13
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %23, %26
  store i8* null, i8** %1, align 4, !tbaa !29
  br label %aws_raise_error.3.exit

27:                                               ; preds = %21
  br i1 %10, label %43, label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %1, align 4, !tbaa !29
  %30 = tail call i8* %9(%struct.aws_allocator* nonnull %0, i8* %29, i32 %2, i32 %3) #13
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %33(i32 1, i8* %36) #13
  br label %aws_raise_error.3.exit

37:                                               ; preds = %32
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.3.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %38(i32 1, i8* %41) #13
  br label %aws_raise_error.3.exit

42:                                               ; preds = %28
  store i8* %30, i8** %1, align 4, !tbaa !29
  br label %aws_raise_error.3.exit

43:                                               ; preds = %27
  %44 = icmp ugt i32 %3, %2
  br i1 %44, label %45, label %aws_raise_error.3.exit

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %47 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %46, align 4, !tbaa !30
  %48 = tail call i8* %47(%struct.aws_allocator* nonnull %0, i32 %3) #13
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %51 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %51(i32 1, i8* %54) #13
  br label %aws_raise_error.3.exit

55:                                               ; preds = %50
  %56 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %57 = icmp eq void (i32, i8*)* %56, null
  br i1 %57, label %aws_raise_error.3.exit, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %56(i32 1, i8* %59) #13
  br label %aws_raise_error.3.exit

60:                                               ; preds = %45
  %61 = load i8*, i8** %1, align 4, !tbaa !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %48, i8* align 1 %61, i32 %2, i1 false) #13
  %62 = getelementptr inbounds i8, i8* %48, i32 %2
  %63 = sub i32 %3, %2
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %62, i8 0, i32 %63, i1 false) #13
  %64 = load i8*, i8** %1, align 4, !tbaa !29
  tail call void @seahorn.fn.enter() #13
  %65 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !21
  %66 = icmp eq void (%struct.aws_allocator*, i8*)* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

68:                                               ; preds = %60
  %69 = icmp eq i8* %64, null
  br i1 %69, label %aws_mem_release.exit7, label %70

70:                                               ; preds = %68
  tail call void %65(%struct.aws_allocator* nonnull %0, i8* nonnull %64) #13
  br label %aws_mem_release.exit7

aws_mem_release.exit7:                            ; preds = %68, %70
  store i8* %48, i8** %1, align 4, !tbaa !29
  br label %aws_raise_error.3.exit

aws_raise_error.3.exit:                           ; preds = %58, %55, %53, %40, %37, %35, %aws_mem_release.exit7, %43, %42, %aws_mem_release.exit
  %.2 = phi i32 [ 0, %aws_mem_release.exit ], [ 0, %42 ], [ 0, %43 ], [ 0, %aws_mem_release.exit7 ], [ -1, %35 ], [ -1, %37 ], [ -1, %40 ], [ -1, %53 ], [ -1, %55 ], [ -1, %58 ]
  ret i32 %.2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = alloca %struct.CFAllocatorContext, align 4
  %3 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %4 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %3, align 4, !tbaa !32
  %5 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %4, null
  %spec.store.select = select i1 %5, i8* (i8*, i32, i32, i8*)* null, i8* (i8*, i32, i32, i8*)* @s_cf_allocator_reallocate
  %6 = bitcast %struct.CFAllocatorContext* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %6) #13
  %7 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 0
  store i32 0, i32* %7, align 4, !tbaa !33
  %8 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 1
  %9 = bitcast i8** %8 to %struct.aws_allocator**
  store %struct.aws_allocator* %0, %struct.aws_allocator** %9, align 4, !tbaa !35
  %10 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 2
  store i8* (i8*)* null, i8* (i8*)** %10, align 4, !tbaa !36
  %11 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %11, align 4, !tbaa !37
  %12 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 4
  store %struct.__CFString* (i8*)* @s_cf_allocator_copy_description, %struct.__CFString* (i8*)** %12, align 4, !tbaa !38
  %13 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 5
  store i8* (i32, i32, i8*)* @s_cf_allocator_allocate, i8* (i32, i32, i8*)** %13, align 4, !tbaa !39
  %14 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 6
  store i8* (i8*, i32, i32, i8*)* %spec.store.select, i8* (i8*, i32, i32, i8*)** %14, align 4, !tbaa !40
  %15 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 7
  store void (i8*, i8*)* @s_cf_allocator_deallocate, void (i8*, i8*)** %15, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 8
  store i32 (i32, i32, i8*)* @s_cf_allocator_preferred_size, i32 (i32, i32, i8*)** %16, align 4, !tbaa !42
  %17 = call %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator* null, %struct.CFAllocatorContext* nonnull %2) #13
  %18 = icmp eq %struct.__CFAllocator* %17, null
  br i1 %18, label %19, label %aws_raise_error.3.exit

19:                                               ; preds = %1
  call void @seahorn.fn.enter() #13
  call void @seahorn.fn.enter() #13
  %20 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %21 = icmp eq void (i32, i8*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  call void %20(i32 1, i8* %23) #13
  br label %aws_raise_error.3.exit

24:                                               ; preds = %19
  %25 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %aws_raise_error.3.exit, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  call void %25(i32 1, i8* %28) #13
  br label %aws_raise_error.3.exit

aws_raise_error.3.exit:                           ; preds = %27, %24, %22, %1
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %6) #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_reallocate(i8* %0, i32 %1, i32 %2, i8* %3) #1 {
  tail call void @seahorn.fn.enter() #13
  %5 = alloca i8*, align 4
  %6 = bitcast i8* %3 to %struct.aws_allocator*
  %7 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13
  %8 = getelementptr inbounds i8, i8* %0, i32 -4
  store i8* %8, i8** %5, align 4, !tbaa !29
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 1
  %11 = call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %6, i8** nonnull %5, i32 %10, i32 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 4, !tbaa !29
  %15 = bitcast i8* %14 to i32*
  store i32 %1, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %14, i32 4
  br label %17

17:                                               ; preds = %13, %4
  %.0 = phi i8* [ %16, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.__CFString* @s_cf_allocator_copy_description(i8* nocapture readnone %0) #1 {
  tail call void @seahorn.fn.enter() #13
  ret %struct.__CFString* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to %struct.__CFString*)
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_allocate(i32 %0, i32 %1, i8* %2) #1 {
  tail call void @seahorn.fn.enter() #13
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
  tail call void @seahorn.fn.enter() #13
  %3 = bitcast i8* %1 to %struct.aws_allocator*
  %4 = getelementptr inbounds i8, i8* %0, i32 -4
  tail call void @seahorn.fn.enter() #13
  %5 = icmp eq i8* %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #14
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i32 4
  %9 = bitcast i8* %8 to void (%struct.aws_allocator*, i8*)**
  %10 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %9, align 4, !tbaa !21
  %11 = icmp eq void (%struct.aws_allocator*, i8*)* %10, null
  br i1 %11, label %12, label %aws_mem_release.exit

12:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

aws_mem_release.exit:                             ; preds = %7
  tail call void %10(%struct.aws_allocator* nonnull %3, i8* nonnull %4) #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @s_cf_allocator_preferred_size(i32 %0, i32 %1, i8* nocapture readnone %2) #1 {
  tail call void @seahorn.fn.enter() #13
  %4 = add i32 %0, 4
  ret i32 %4
}

declare %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator*, %struct.CFAllocatorContext*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = bitcast %struct.__CFAllocator* %0 to i8*
  tail call void @CFRelease(i8* %2) #13
  ret void
}

declare void @CFRelease(i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_last_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !29
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_error_info* @get_error_by_code(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = and i32 %0, 1023
  %6 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %7 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %6, align 4, !tbaa !29
  %8 = icmp eq %struct.aws_error_info_list* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !43
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 0
  %16 = load %struct.aws_error_info*, %struct.aws_error_info** %15, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %16, i32 %5
  br label %18

18:                                               ; preds = %14, %9, %3, %1
  %.1 = phi %struct.aws_error_info* [ null, %1 ], [ %17, %14 ], [ null, %9 ], [ null, %3 ]
  ret %struct.aws_error_info* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !29
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_lib_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !29
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_debug_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !29
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_raise_error_private(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %2(i32 %0, i8* %5) #13
  br label %11

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %7(i32 %0, i8* %10) #13
  br label %11

11:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_reset_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_restore_error(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  store void (i32, i8*)* %0, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  store i8* %1, i8** @s_global_error_context, align 4, !tbaa !29
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  store void (i32, i8*)* %0, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  store i8* %1, i8** @tl_thread_handler_context, align 4, !tbaa !29
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_register_error_info(%struct.aws_error_info_list* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 133) #14
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !46
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 134) #14
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !43
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 135) #14
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !47
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !29
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #13
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 144) #14
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* %0, %struct.aws_error_info_list** %23, align 4, !tbaa !29
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 167) #14
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !46
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 168) #14
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !43
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 169) #14
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !47
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !29
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #13
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 178) #14
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %23, align 4, !tbaa !29
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_translate_and_raise_io_error(i32 %0) unnamed_addr #1 {
NodeBlock25:
  tail call void @seahorn.fn.enter() #13
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
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %2(i32 34, i8* %5) #13
  br label %aws_raise_error.20.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error.20.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %7(i32 34, i8* %10) #13
  br label %aws_raise_error.20.exit

11:                                               ; preds = %LeafBlock15
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %12(i32 42, i8* %15) #13
  br label %aws_raise_error.20.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.20.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %17(i32 42, i8* %20) #13
  br label %aws_raise_error.20.exit

21:                                               ; preds = %LeafBlock, %LeafBlock3
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %22(i32 43, i8* %25) #13
  br label %aws_raise_error.20.exit

26:                                               ; preds = %21
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.20.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %27(i32 43, i8* %30) #13
  br label %aws_raise_error.20.exit

31:                                               ; preds = %LeafBlock1, %NodeBlock5, %LeafBlock17
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %32 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %32(i32 44, i8* %35) #13
  br label %aws_raise_error.20.exit

36:                                               ; preds = %31
  %37 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %38 = icmp eq void (i32, i8*)* %37, null
  br i1 %38, label %aws_raise_error.20.exit, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %37(i32 44, i8* %40) #13
  br label %aws_raise_error.20.exit

41:                                               ; preds = %LeafBlock11
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %42 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %43 = icmp eq void (i32, i8*)* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %42(i32 45, i8* %45) #13
  br label %aws_raise_error.20.exit

46:                                               ; preds = %41
  %47 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %aws_raise_error.20.exit, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %47(i32 45, i8* %50) #13
  br label %aws_raise_error.20.exit

51:                                               ; preds = %NodeBlock7
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %52 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %52(i32 1, i8* %55) #13
  br label %aws_raise_error.20.exit

56:                                               ; preds = %51
  %57 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %58 = icmp eq void (i32, i8*)* %57, null
  br i1 %58, label %aws_raise_error.20.exit, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %57(i32 1, i8* %60) #13
  br label %aws_raise_error.20.exit

61:                                               ; preds = %NodeBlock21
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %62(i32 2, i8* %65) #13
  br label %aws_raise_error.20.exit

66:                                               ; preds = %61
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.20.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %67(i32 2, i8* %70) #13
  br label %aws_raise_error.20.exit

NewDefault:                                       ; preds = %LeafBlock, %LeafBlock1, %LeafBlock3, %LeafBlock11, %LeafBlock15, %LeafBlock17
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %71 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %72 = icmp eq void (i32, i8*)* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %NewDefault
  %74 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %71(i32 46, i8* %74) #13
  br label %aws_raise_error.20.exit

75:                                               ; preds = %NewDefault
  %76 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %77 = icmp eq void (i32, i8*)* %76, null
  br i1 %77, label %aws_raise_error.20.exit, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %76(i32 46, i8* %79) #13
  br label %aws_raise_error.20.exit

aws_raise_error.20.exit:                          ; preds = %78, %75, %73, %69, %66, %64, %59, %56, %54, %49, %46, %44, %39, %36, %34, %29, %26, %24, %19, %16, %14, %9, %6, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.20(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %2(i32 %0, i8* %5) #13
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %7(i32 %0, i8* %10) #13
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_calc_necessary_size(%struct.aws_array_list* noalias nocapture readonly %0, i32 %1, i32* nocapture %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13
  %6 = call fastcc i32 @aws_add_size_checked(i32 %1, i32 1, i32* nonnull %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load i32, i32* %4, align 4, !tbaa !49
  %10 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !14
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %12 = mul i32 %11, %9
  store i32 %12, i32* %2, align 4, !tbaa !27
  br label %13

13:                                               ; preds = %8, %3
  %.0 = phi i32 [ -1, %3 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond.i = and i1 %4, %6
  br i1 %or.cond.i, label %7, label %17

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %8(i32 5, i8* %11) #13
  br label %aws_add_u32_checked.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_add_u32_checked.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %13(i32 5, i8* %16) #13
  br label %aws_add_u32_checked.exit

17:                                               ; preds = %3
  %18 = add i32 %1, %0
  store i32 %18, i32* %2, align 4, !tbaa !27
  br label %aws_add_u32_checked.exit

aws_add_u32_checked.exit:                         ; preds = %10, %12, %15, %17
  %.0.i = phi i32 [ 0, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %.0.i
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked.21(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked.22(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.23(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %2(i32 %0, i8* %5) #13
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %7(i32 %0, i8* %10) #13
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %7, label %17

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %8(i32 5, i8* %11) #13
  br label %aws_raise_error.23.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_raise_error.23.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %13(i32 5, i8* %16) #13
  br label %aws_raise_error.23.exit

17:                                               ; preds = %3
  %18 = add i32 %1, %0
  store i32 %18, i32* %2, align 4, !tbaa !27
  br label %aws_raise_error.23.exit

aws_raise_error.23.exit:                          ; preds = %15, %12, %10, %17
  %.0 = phi i32 [ 0, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_shrink_to_fit(%struct.aws_array_list* noalias nocapture %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 0
  %3 = load %struct.aws_allocator*, %struct.aws_allocator** %2, align 4, !tbaa !20
  %4 = icmp eq %struct.aws_allocator* %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !8
  %8 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !14
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %10 = mul i32 %9, %7
  %11 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 4, !tbaa !15
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %aws_raise_error.23.exit

14:                                               ; preds = %5
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %.critedge, label %16

16:                                               ; preds = %14
  %17 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* nonnull %3, i32 %10)
  %18 = icmp eq i8* %17, null
  br i1 %18, label %aws_raise_error.23.exit, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %21 = load i8*, i8** %20, align 4, !tbaa !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* align 1 %21, i32 %10, i1 false) #13
  tail call void @seahorn.fn.enter() #13
  %22 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %3, i32 0, i32 1
  %23 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %22, align 4, !tbaa !21
  %24 = icmp eq void (%struct.aws_allocator*, i8*)* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

26:                                               ; preds = %19
  %27 = icmp eq i8* %21, null
  br i1 %27, label %.critedge, label %28

28:                                               ; preds = %26
  tail call void %23(%struct.aws_allocator* nonnull %3, i8* nonnull %21) #13
  br label %.critedge

.critedge:                                        ; preds = %28, %26, %14
  %.01 = phi i8* [ null, %14 ], [ %17, %26 ], [ %17, %28 ]
  %29 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  store i8* %.01, i8** %29, align 4, !tbaa !16
  store i32 %10, i32* %11, align 4, !tbaa !15
  br label %aws_raise_error.23.exit

30:                                               ; preds = %1
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %31 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %32 = icmp eq void (i32, i8*)* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %31(i32 28, i8* %34) #13
  br label %aws_raise_error.23.exit

35:                                               ; preds = %30
  %36 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %37 = icmp eq void (i32, i8*)* %36, null
  br i1 %37, label %aws_raise_error.23.exit, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %36(i32 28, i8* %39) #13
  br label %aws_raise_error.23.exit

aws_raise_error.23.exit:                          ; preds = %38, %35, %33, %5, %16, %.critedge
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_copy(%struct.aws_array_list* noalias nocapture readonly %0, %struct.aws_array_list* noalias nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %4 = load i32, i32* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !14
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.25, i32 0, i32 0), i32 61) #14
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %11 = load i8*, i8** %10, align 4, !tbaa !16
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.26, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.25, i32 0, i32 0), i32 62) #14
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %16 = load i32, i32* %15, align 4, !tbaa !8
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %17 = mul i32 %16, %4
  %18 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !15
  %20 = icmp ult i32 %19, %17
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 4
  %25 = load i8*, i8** %24, align 4, !tbaa !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %25, i8* nonnull align 1 %11, i32 %17, i1 false) #13
  br label %26

26:                                               ; preds = %23, %21
  %27 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 2
  store i32 %16, i32* %27, align 4, !tbaa !8
  br label %aws_raise_error.23.exit

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 0
  %30 = load %struct.aws_allocator*, %struct.aws_allocator** %29, align 4, !tbaa !20
  %31 = icmp eq %struct.aws_allocator* %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* nonnull %30, i32 %17)
  %34 = icmp eq i8* %33, null
  br i1 %34, label %aws_raise_error.23.exit, label %35

35:                                               ; preds = %32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %33, i8* nonnull align 1 %11, i32 %17, i1 false) #13
  %36 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 4
  %37 = load i8*, i8** %36, align 4, !tbaa !16
  %38 = icmp eq i8* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  tail call void @seahorn.fn.enter() #13
  %40 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %30, i32 0, i32 1
  %41 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %40, align 4, !tbaa !21
  %42 = icmp eq void (%struct.aws_allocator*, i8*)* %41, null
  br i1 %42, label %43, label %aws_mem_release.exit

43:                                               ; preds = %39
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

aws_mem_release.exit:                             ; preds = %39
  tail call void %41(%struct.aws_allocator* nonnull %30, i8* nonnull %37) #13
  br label %44

44:                                               ; preds = %aws_mem_release.exit, %35
  store i8* %33, i8** %36, align 4, !tbaa !16
  %45 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %1, i32 0, i32 2
  store i32 %16, i32* %45, align 4, !tbaa !8
  store i32 %17, i32* %18, align 4, !tbaa !15
  br label %aws_raise_error.23.exit

46:                                               ; preds = %28
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %47 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %47(i32 26, i8* %50) #13
  br label %aws_raise_error.23.exit

51:                                               ; preds = %46
  %52 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %aws_raise_error.23.exit, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %52(i32 26, i8* %55) #13
  br label %aws_raise_error.23.exit

aws_raise_error.23.exit:                          ; preds = %54, %51, %49, %44, %32, %26
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_ensure_capacity(%struct.aws_array_list* noalias nocapture %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13, !noalias !50
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %5 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %6 = icmp eq void (i32, i8*)* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %5(i32 5, i8* %8) #13
  br label %aws_array_list_calc_necessary_size.exit

9:                                                ; preds = %4
  %10 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %11 = icmp eq void (i32, i8*)* %10, null
  br i1 %11, label %aws_array_list_calc_necessary_size.exit, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %10(i32 5, i8* %13) #13
  br label %aws_array_list_calc_necessary_size.exit

14:                                               ; preds = %2
  %15 = add nuw i32 %1, 1
  %16 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !14, !alias.scope !50
  tail call void @seahorn.fn.enter() #13, !noalias !50
  tail call void @seahorn.fn.enter() #13, !noalias !50
  %18 = mul i32 %17, %15
  %19 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !15
  %21 = icmp ult i32 %20, %18
  br i1 %21, label %22, label %aws_array_list_calc_necessary_size.exit

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 0
  %24 = load %struct.aws_allocator*, %struct.aws_allocator** %23, align 4, !tbaa !20
  %25 = icmp eq %struct.aws_allocator* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %27 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %27(i32 10, i8* %30) #13
  br label %aws_array_list_calc_necessary_size.exit

31:                                               ; preds = %26
  %32 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %aws_array_list_calc_necessary_size.exit, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %32(i32 10, i8* %35) #13
  br label %aws_array_list_calc_necessary_size.exit

36:                                               ; preds = %22
  %37 = shl i32 %20, 1
  %38 = icmp ugt i32 %37, %18
  %39 = select i1 %38, i32 %37, i32 %18
  %40 = icmp ult i32 %39, %20
  br i1 %40, label %.critedge, label %50

.critedge:                                        ; preds = %36
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %41 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %42 = icmp eq void (i32, i8*)* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %.critedge
  %44 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %41(i32 27, i8* %44) #13
  br label %aws_array_list_calc_necessary_size.exit

45:                                               ; preds = %.critedge
  %46 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %47 = icmp eq void (i32, i8*)* %46, null
  br i1 %47, label %aws_array_list_calc_necessary_size.exit, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %46(i32 27, i8* %49) #13
  br label %aws_array_list_calc_necessary_size.exit

50:                                               ; preds = %36
  %51 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* nonnull %24, i32 %39)
  %52 = icmp eq i8* %51, null
  br i1 %52, label %aws_array_list_calc_necessary_size.exit, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %55 = load i8*, i8** %54, align 4, !tbaa !16
  %56 = icmp eq i8* %55, null
  br i1 %56, label %.critedge1, label %57

57:                                               ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %51, i8* nonnull align 1 %55, i32 %20, i1 false) #13
  tail call void @seahorn.fn.enter() #13
  %58 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %24, i32 0, i32 1
  %59 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %58, align 4, !tbaa !21
  %60 = icmp eq void (%struct.aws_allocator*, i8*)* %59, null
  br i1 %60, label %61, label %aws_mem_release.exit

61:                                               ; preds = %57
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

aws_mem_release.exit:                             ; preds = %57
  tail call void %59(%struct.aws_allocator* nonnull %24, i8* nonnull %55) #13
  br label %.critedge1

.critedge1:                                       ; preds = %aws_mem_release.exit, %53
  store i8* %51, i8** %54, align 4, !tbaa !16
  store i32 %39, i32* %19, align 4, !tbaa !15
  br label %aws_array_list_calc_necessary_size.exit

aws_array_list_calc_necessary_size.exit:          ; preds = %48, %45, %43, %34, %31, %29, %12, %9, %7, %14, %.critedge1, %50
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_swap(%struct.aws_array_list* noalias nocapture readonly %0, i32 %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !8
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3.27, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.25, i32 0, i32 0), i32 193) #14
  unreachable

8:                                                ; preds = %3
  %9 = icmp ugt i32 %5, %2
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.28, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.25, i32 0, i32 0), i32 194) #14
  unreachable

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, %2
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  tail call void @seahorn.fn.enter() #13, !noalias !53
  tail call void @seahorn.fn.enter() #13, !noalias !56
  %14 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %15 = load i8*, i8** %14, align 4, !tbaa !16, !alias.scope !56
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %aws_array_list_get_at_ptr.exit4

17:                                               ; preds = %13
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5.31, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6.32, i32 0, i32 0), i32 312) #14, !noalias !56
  unreachable

aws_array_list_get_at_ptr.exit4:                  ; preds = %13
  %18 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %19 = load i32, i32* %18, align 4, !tbaa !14, !alias.scope !53
  tail call void @seahorn.fn.enter() #13, !noalias !59
  tail call void @seahorn.fn.enter() #13, !noalias !62
  %20 = mul i32 %19, %1
  %21 = getelementptr inbounds i8, i8* %15, i32 %20
  %22 = mul i32 %19, %2
  %23 = getelementptr inbounds i8, i8* %15, i32 %22
  tail call fastcc void @aws_array_list_mem_swap(i8* nonnull %21, i8* nonnull %23, i32 %19)
  br label %24

24:                                               ; preds = %aws_array_list_get_at_ptr.exit4, %11
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_array_list_get_at_ptr(%struct.aws_array_list* noalias nocapture readonly %0, i8** nocapture %1, i32 %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13, !noalias !65
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !8, !alias.scope !65
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %aws_array_list_length.exit, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %9 = load i8*, i8** %8, align 4, !tbaa !16, !alias.scope !65
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %aws_array_list_length.exit

11:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5.31, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6.32, i32 0, i32 0), i32 312) #14, !noalias !65
  unreachable

aws_array_list_length.exit:                       ; preds = %3, %7
  %12 = icmp ugt i32 %5, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %aws_array_list_length.exit
  %14 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %15 = load i8*, i8** %14, align 4, !tbaa !16
  %16 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !14
  %18 = mul i32 %17, %2
  %19 = getelementptr inbounds i8, i8* %15, i32 %18
  store i8* %19, i8** %1, align 4, !tbaa !29
  br label %aws_raise_error.23.exit

20:                                               ; preds = %aws_array_list_length.exit
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %21 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !29
  %22 = icmp eq void (i32, i8*)* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !29
  tail call void %21(i32 10, i8* %24) #13
  br label %aws_raise_error.23.exit

25:                                               ; preds = %20
  %26 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !29
  %27 = icmp eq void (i32, i8*)* %26, null
  br i1 %27, label %aws_raise_error.23.exit, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** @s_global_error_context, align 4, !tbaa !29
  tail call void %26(i32 10, i8* %29) #13
  br label %aws_raise_error.23.exit

aws_raise_error.23.exit:                          ; preds = %28, %25, %23, %13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_mem_swap(i8* noalias %0, i8* noalias %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %4 = alloca [128 x i8], align 1
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.29, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.25, i32 0, i32 0), i32 172) #14
  unreachable

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8.30, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.25, i32 0, i32 0), i32 173) #14
  unreachable

10:                                               ; preds = %7
  %11 = lshr i32 %2, 7
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #13
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %10
  %.01.lcssa = phi i8* [ %1, %10 ], [ %17, %.lr.ph ]
  %.0.lcssa = phi i8* [ %0, %10 ], [ %16, %.lr.ph ]
  %14 = and i32 %2, 127
  %15 = call i8* @__memcpy_chk(i8* nonnull %12, i8* nonnull %.0.lcssa, i32 %14, i32 128) #13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %.0.lcssa, i8* nonnull align 1 %.01.lcssa, i32 %14, i1 false) #13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %.01.lcssa, i8* nonnull align 1 %12, i32 %14, i1 false) #13
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %12) #13
  ret void

.lr.ph:                                           ; preds = %10, %.lr.ph
  %.07 = phi i8* [ %16, %.lr.ph ], [ %0, %10 ]
  %.016 = phi i8* [ %17, %.lr.ph ], [ %1, %10 ]
  %.025 = phi i32 [ %18, %.lr.ph ], [ 0, %10 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(128) %12, i8* nonnull align 1 dereferenceable(128) %.07, i32 128, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(128) %.07, i8* nonnull align 1 dereferenceable(128) %.016, i32 128, i1 false) #13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(128) %.016, i8* nonnull align 1 dereferenceable(128) %12, i32 128, i1 false) #13
  %16 = getelementptr inbounds i8, i8* %.07, i32 128
  %17 = getelementptr inbounds i8, i8* %.016, i32 128
  %18 = add nuw i32 %.025, 1
  %19 = icmp ult i32 %18, %11
  br i1 %19, label %.lr.ph, label %._crit_edge, !llvm.loop !68
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_length(%struct.aws_array_list* noalias nocapture readonly %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %2 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 4, !tbaa !16
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5.31, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6.32, i32 0, i32 0), i32 312) #14
  unreachable

10:                                               ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_secure_zero(i8* %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 %1, i1 false) #13
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #13, !srcloc !69
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_library_init() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %217, label %1

1:                                                ; preds = %0
  store i1 true, i1* @s_common_library_initialized, align 1
  tail call void @seahorn.fn.enter() #13
  %2 = load %struct.aws_error_info*, %struct.aws_error_info** getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 0), align 8, !tbaa !46
  %3 = icmp eq %struct.aws_error_info* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 134) #14
  unreachable

5:                                                ; preds = %1
  %6 = load i16, i16* getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 1), align 4, !tbaa !43
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 135) #14
  unreachable

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !47
  %12 = ashr i32 %11, 10
  %13 = icmp ugt i32 %11, 16383
  br i1 %13, label %14, label %aws_register_error_info.exit

14:                                               ; preds = %9
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !29
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %12) #13
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 144) #14
  unreachable

aws_register_error_info.exit:                     ; preds = %9
  %17 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %12
  store volatile %struct.aws_error_info_list* @s_list, %struct.aws_error_info_list** %17, align 4, !tbaa !29
  tail call void @aws_register_log_subject_info_list(%struct.aws_log_subject_info_list* nonnull @s_common_log_subject_list) #13
  tail call void @aws_thread_initialize_thread_management() #13
  %18 = tail call i8* @dlopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 4) #13
  store i8* %18, i8** @g_libnuma_handle, align 4, !tbaa !29
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %.thread1

20:                                               ; preds = %aws_register_error_info.exit
  %21 = tail call i8* @dlopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.34, i32 0, i32 0), i32 4) #13
  store i8* %21, i8** @g_libnuma_handle, align 4, !tbaa !29
  %22 = icmp eq i8* %21, null
  br i1 %22, label %25, label %.thread1

.thread1:                                         ; preds = %20, %aws_register_error_info.exit
  %23 = tail call %struct.aws_logger* @aws_logger_get() #13
  %24 = icmp eq %struct.aws_logger* %23, null
  br i1 %24, label %44, label %31

25:                                               ; preds = %20
  %26 = tail call i8* @dlopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.35, i32 0, i32 0), i32 4) #13
  store i8* %26, i8** @g_libnuma_handle, align 4, !tbaa !29
  %27 = icmp eq i8* %26, null
  %28 = tail call %struct.aws_logger* @aws_logger_get() #13
  %29 = icmp eq %struct.aws_logger* %28, null
  br i1 %27, label %204, label %30

30:                                               ; preds = %25
  br i1 %29, label %44, label %31

31:                                               ; preds = %.thread1, %30
  %32 = phi %struct.aws_logger* [ %23, %.thread1 ], [ %28, %30 ]
  %33 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %32, i32 0, i32 0
  %34 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %33, align 4, !tbaa !70
  %35 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %34, i32 0, i32 1
  %36 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %35, align 4, !tbaa !72
  %37 = tail call i32 %36(%struct.aws_logger* nonnull %32, i32 0) #13
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %33, align 4, !tbaa !70
  %41 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %40, i32 0, i32 0
  %42 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %41, align 4, !tbaa !74
  %43 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %42(%struct.aws_logger* nonnull %32, i32 4, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.36, i32 0, i32 0)) #13
  br label %44

44:                                               ; preds = %.thread1, %39, %31, %30
  %45 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !29
  %46 = tail call i8* @dlsym(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.37, i32 0, i32 0)) #13
  store i8* %46, i8** bitcast (i32 (i32, i32*, i32)** @g_set_mempolicy_ptr to i8**), align 4, !tbaa !29
  %47 = icmp eq i8* %46, null
  %48 = tail call %struct.aws_logger* @aws_logger_get() #13
  %49 = icmp eq %struct.aws_logger* %48, null
  br i1 %47, label %63, label %50

50:                                               ; preds = %44
  br i1 %49, label %76, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %48, i32 0, i32 0
  %53 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %52, align 4, !tbaa !70
  %54 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %53, i32 0, i32 1
  %55 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %54, align 4, !tbaa !72
  %56 = tail call i32 %55(%struct.aws_logger* nonnull %48, i32 0) #13
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %52, align 4, !tbaa !70
  %60 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %59, i32 0, i32 0
  %61 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %60, align 4, !tbaa !74
  %62 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %61(%struct.aws_logger* nonnull %48, i32 4, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.38, i32 0, i32 0)) #13
  br label %76

63:                                               ; preds = %44
  br i1 %49, label %76, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %48, i32 0, i32 0
  %66 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %65, align 4, !tbaa !70
  %67 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %66, i32 0, i32 1
  %68 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %67, align 4, !tbaa !72
  %69 = tail call i32 %68(%struct.aws_logger* nonnull %48, i32 0) #13
  %70 = icmp ugt i32 %69, 3
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %65, align 4, !tbaa !70
  %73 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %72, i32 0, i32 0
  %74 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %73, align 4, !tbaa !74
  %75 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %74(%struct.aws_logger* nonnull %48, i32 4, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6.39, i32 0, i32 0)) #13
  br label %76

76:                                               ; preds = %71, %64, %63, %58, %51, %50
  %77 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !29
  %78 = tail call i8* @dlsym(i8* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.40, i32 0, i32 0)) #13
  store i8* %78, i8** bitcast (i32 ()** @g_numa_available_ptr to i8**), align 4, !tbaa !29
  %79 = icmp eq i8* %78, null
  %80 = tail call %struct.aws_logger* @aws_logger_get() #13
  %81 = icmp eq %struct.aws_logger* %80, null
  br i1 %79, label %95, label %82

82:                                               ; preds = %76
  br i1 %81, label %108, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %80, i32 0, i32 0
  %85 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %84, align 4, !tbaa !70
  %86 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %85, i32 0, i32 1
  %87 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %86, align 4, !tbaa !72
  %88 = tail call i32 %87(%struct.aws_logger* nonnull %80, i32 0) #13
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %84, align 4, !tbaa !70
  %92 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %91, i32 0, i32 0
  %93 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %92, align 4, !tbaa !74
  %94 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %93(%struct.aws_logger* nonnull %80, i32 4, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8.41, i32 0, i32 0)) #13
  br label %108

95:                                               ; preds = %76
  br i1 %81, label %108, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %80, i32 0, i32 0
  %98 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %97, align 4, !tbaa !70
  %99 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %98, i32 0, i32 1
  %100 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %99, align 4, !tbaa !72
  %101 = tail call i32 %100(%struct.aws_logger* nonnull %80, i32 0) #13
  %102 = icmp ugt i32 %101, 3
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %97, align 4, !tbaa !70
  %105 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %104, i32 0, i32 0
  %106 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %105, align 4, !tbaa !74
  %107 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %106(%struct.aws_logger* nonnull %80, i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.42, i32 0, i32 0)) #13
  br label %108

108:                                              ; preds = %103, %96, %95, %90, %83, %82
  %109 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !29
  %110 = tail call i8* @dlsym(i8* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10.43, i32 0, i32 0)) #13
  store i8* %110, i8** bitcast (i32 ()** @g_numa_num_configured_nodes_ptr to i8**), align 4, !tbaa !29
  %111 = icmp eq i8* %110, null
  %112 = tail call %struct.aws_logger* @aws_logger_get() #13
  %113 = icmp eq %struct.aws_logger* %112, null
  br i1 %111, label %127, label %114

114:                                              ; preds = %108
  br i1 %113, label %140, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %112, i32 0, i32 0
  %117 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %116, align 4, !tbaa !70
  %118 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %117, i32 0, i32 1
  %119 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %118, align 4, !tbaa !72
  %120 = tail call i32 %119(%struct.aws_logger* nonnull %112, i32 0) #13
  %121 = icmp ugt i32 %120, 3
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %116, align 4, !tbaa !70
  %124 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %123, i32 0, i32 0
  %125 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %124, align 4, !tbaa !74
  %126 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %125(%struct.aws_logger* nonnull %112, i32 4, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0)) #13
  br label %140

127:                                              ; preds = %108
  br i1 %113, label %140, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %112, i32 0, i32 0
  %130 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %129, align 4, !tbaa !70
  %131 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %130, i32 0, i32 1
  %132 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %131, align 4, !tbaa !72
  %133 = tail call i32 %132(%struct.aws_logger* nonnull %112, i32 0) #13
  %134 = icmp ugt i32 %133, 3
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %129, align 4, !tbaa !70
  %137 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %136, i32 0, i32 0
  %138 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %137, align 4, !tbaa !74
  %139 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %138(%struct.aws_logger* nonnull %112, i32 4, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0)) #13
  br label %140

140:                                              ; preds = %135, %128, %127, %122, %115, %114
  %141 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !29
  %142 = tail call i8* @dlsym(i8* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #13
  store i8* %142, i8** bitcast (i32 ()** @g_numa_num_possible_cpus_ptr to i8**), align 4, !tbaa !29
  %143 = icmp eq i8* %142, null
  %144 = tail call %struct.aws_logger* @aws_logger_get() #13
  %145 = icmp eq %struct.aws_logger* %144, null
  br i1 %143, label %159, label %146

146:                                              ; preds = %140
  br i1 %145, label %172, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %144, i32 0, i32 0
  %149 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %148, align 4, !tbaa !70
  %150 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %149, i32 0, i32 1
  %151 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %150, align 4, !tbaa !72
  %152 = tail call i32 %151(%struct.aws_logger* nonnull %144, i32 0) #13
  %153 = icmp ugt i32 %152, 3
  br i1 %153, label %154, label %172

154:                                              ; preds = %147
  %155 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %148, align 4, !tbaa !70
  %156 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %155, i32 0, i32 0
  %157 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %156, align 4, !tbaa !74
  %158 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %157(%struct.aws_logger* nonnull %144, i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0)) #13
  br label %172

159:                                              ; preds = %140
  br i1 %145, label %172, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %144, i32 0, i32 0
  %162 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %161, align 4, !tbaa !70
  %163 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %162, i32 0, i32 1
  %164 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %163, align 4, !tbaa !72
  %165 = tail call i32 %164(%struct.aws_logger* nonnull %144, i32 0) #13
  %166 = icmp ugt i32 %165, 3
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %161, align 4, !tbaa !70
  %169 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %168, i32 0, i32 0
  %170 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %169, align 4, !tbaa !74
  %171 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %170(%struct.aws_logger* nonnull %144, i32 4, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0)) #13
  br label %172

172:                                              ; preds = %167, %160, %159, %154, %147, %146
  %173 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !29
  %174 = tail call i8* @dlsym(i8* %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #13
  store i8* %174, i8** bitcast (i32 (i32)** @g_numa_node_of_cpu_ptr to i8**), align 4, !tbaa !29
  %175 = icmp eq i8* %174, null
  %176 = tail call %struct.aws_logger* @aws_logger_get() #13
  %177 = icmp eq %struct.aws_logger* %176, null
  br i1 %175, label %191, label %178

178:                                              ; preds = %172
  br i1 %177, label %217, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %176, i32 0, i32 0
  %181 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %180, align 4, !tbaa !70
  %182 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %181, i32 0, i32 1
  %183 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %182, align 4, !tbaa !72
  %184 = tail call i32 %183(%struct.aws_logger* nonnull %176, i32 0) #13
  %185 = icmp ugt i32 %184, 3
  br i1 %185, label %186, label %217

186:                                              ; preds = %179
  %187 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %180, align 4, !tbaa !70
  %188 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %187, i32 0, i32 0
  %189 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %188, align 4, !tbaa !74
  %190 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %189(%struct.aws_logger* nonnull %176, i32 4, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0)) #13
  br label %217

191:                                              ; preds = %172
  br i1 %177, label %217, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %176, i32 0, i32 0
  %194 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %193, align 4, !tbaa !70
  %195 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %194, i32 0, i32 1
  %196 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %195, align 4, !tbaa !72
  %197 = tail call i32 %196(%struct.aws_logger* nonnull %176, i32 0) #13
  %198 = icmp ugt i32 %197, 3
  br i1 %198, label %199, label %217

199:                                              ; preds = %192
  %200 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %193, align 4, !tbaa !70
  %201 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %200, i32 0, i32 0
  %202 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %201, align 4, !tbaa !74
  %203 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %202(%struct.aws_logger* nonnull %176, i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0)) #13
  br label %217

204:                                              ; preds = %25
  br i1 %29, label %217, label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %28, i32 0, i32 0
  %207 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %206, align 4, !tbaa !70
  %208 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %207, i32 0, i32 1
  %209 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %208, align 4, !tbaa !72
  %210 = tail call i32 %209(%struct.aws_logger* nonnull %28, i32 0) #13
  %211 = icmp ugt i32 %210, 3
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %206, align 4, !tbaa !70
  %214 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %213, i32 0, i32 0
  %215 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %214, align 4, !tbaa !74
  %216 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %215(%struct.aws_logger* nonnull %28, i32 4, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #13
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
  tail call void @seahorn.fn.enter() #13
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %1, label %23

1:                                                ; preds = %0
  store i1 false, i1* @s_common_library_initialized, align 1
  %2 = tail call i32 @aws_thread_join_all_managed() #13
  tail call void @seahorn.fn.enter() #13
  %3 = load %struct.aws_error_info*, %struct.aws_error_info** getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 0), align 8, !tbaa !46
  %4 = icmp eq %struct.aws_error_info* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 168) #14
  unreachable

6:                                                ; preds = %1
  %7 = load i16, i16* getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 1), align 4, !tbaa !43
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 169) #14
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !47
  %13 = ashr i32 %12, 10
  %14 = icmp ugt i32 %12, 16383
  br i1 %14, label %15, label %aws_unregister_error_info.exit

15:                                               ; preds = %10
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !29
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %13) #13
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 178) #14
  unreachable

aws_unregister_error_info.exit:                   ; preds = %10
  %18 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %13
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %18, align 4, !tbaa !29
  tail call void @aws_unregister_log_subject_info_list(%struct.aws_log_subject_info_list* nonnull @s_common_log_subject_list) #13
  %19 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !29
  %20 = icmp eq i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %aws_unregister_error_info.exit
  %22 = tail call i32 @dlclose(i8* nonnull %19) #13
  br label %23

23:                                               ; preds = %21, %aws_unregister_error_info.exit, %0
  ret void
}

declare i32 @aws_thread_join_all_managed() local_unnamed_addr #3

declare void @aws_unregister_log_subject_info_list(%struct.aws_log_subject_info_list*) local_unnamed_addr #3

declare i32 @dlclose(i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_fatal_assert_library_initialized() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %.b1 = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b1, label %5, label %1

1:                                                ; preds = %0
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !29
  %3 = tail call i32 @fwrite(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.21, i32 0, i32 0), i32 88, i32 1, %struct.__sFILE* %2)
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %5, label %4

4:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i32 357) #14
  unreachable

5:                                                ; preds = %1, %0
  ret void
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
  tail call fastcc void @aws_array_list_clean_up_harness()
  %1 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %2 = tail call fastcc i1 @aws_array_list_is_valid(%struct.aws_array_list* %1)
  %3 = tail call %struct.aws_array_list* @verifier.nondet.1()
  tail call fastcc void @aws_array_list_clean_up(%struct.aws_array_list* %3)
  %4 = tail call i8* @verifier.nondet.2()
  %5 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_is_mem_zeroed(i8* %4, i32 %5)
  %6 = tail call i32 @verifier.nondet.3()
  %7 = tail call i32 @verifier.nondet.3()
  %8 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_size_checked(i32 %6, i32 %7, i32* %8)
  %9 = tail call i32 @verifier.nondet.3()
  %10 = tail call i32 @verifier.nondet.3()
  %11 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_u32_checked(i32 %9, i32 %10, i32* %11)
  %12 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error(i32 %12)
  %13 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_allocator_is_valid(%struct.aws_allocator* %13)
  tail call fastcc void @aws_default_allocator()
  %14 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %15 = tail call i32 @verifier.nondet.3()
  %16 = tail call i8* @s_default_malloc(%struct.aws_allocator* %14, i32 %15)
  %17 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %18 = tail call i8* @verifier.nondet.2()
  tail call void @s_default_free(%struct.aws_allocator* %17, i8* %18)
  %19 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %20 = tail call i8* @verifier.nondet.2()
  %21 = tail call i32 @verifier.nondet.3()
  %22 = tail call i32 @verifier.nondet.3()
  %23 = tail call i8* @s_default_realloc(%struct.aws_allocator* %19, i8* %20, i32 %21, i32 %22)
  %24 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %25 = tail call i32 @verifier.nondet.3()
  %26 = tail call i32 @verifier.nondet.3()
  %27 = tail call i8* @s_default_calloc(%struct.aws_allocator* %24, i32 %25, i32 %26)
  %28 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %29 = tail call i32 @verifier.nondet.3()
  %30 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %28, i32 %29)
  %31 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.3(i32 %31)
  %32 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %33 = tail call i32 @verifier.nondet.3()
  %34 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_mem_calloc(%struct.aws_allocator* %32, i32 %33, i32 %34)
  %35 = tail call i32 @verifier.nondet.3()
  %36 = tail call i32 @verifier.nondet.3()
  %37 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_size_checked.4(i32 %35, i32 %36, i32* %37)
  %38 = tail call i32 @verifier.nondet.3()
  %39 = tail call i32 @verifier.nondet.3()
  %40 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_u32_checked.5(i32 %38, i32 %39, i32* %40)
  %41 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %42 = tail call i32 @verifier.nondet.3()
  %43 = tail call i8* (%struct.aws_allocator*, i32, ...) @aws_mem_acquire_many(%struct.aws_allocator* %41, i32 %42)
  %44 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %45 = tail call i8* @verifier.nondet.2()
  tail call fastcc void @aws_mem_release(%struct.aws_allocator* %44, i8* %45)
  %46 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %47 = tail call i8** @verifier.nondet.6()
  %48 = tail call i32 @verifier.nondet.3()
  %49 = tail call i32 @verifier.nondet.3()
  %50 = tail call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %46, i8** %47, i32 %48, i32 %49)
  %51 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %51)
  %52 = tail call i8* @verifier.nondet.2()
  %53 = tail call i32 @verifier.nondet.3()
  %54 = tail call i32 @verifier.nondet.3()
  %55 = tail call i8* @verifier.nondet.2()
  %56 = tail call i8* @s_cf_allocator_reallocate(i8* %52, i32 %53, i32 %54, i8* %55)
  %57 = tail call i8* @verifier.nondet.2()
  %58 = tail call %struct.__CFString* @s_cf_allocator_copy_description(i8* %57)
  %59 = tail call i32 @verifier.nondet.3()
  %60 = tail call i32 @verifier.nondet.3()
  %61 = tail call i8* @verifier.nondet.2()
  %62 = tail call i8* @s_cf_allocator_allocate(i32 %59, i32 %60, i8* %61)
  %63 = tail call i8* @verifier.nondet.2()
  %64 = tail call i8* @verifier.nondet.2()
  tail call void @s_cf_allocator_deallocate(i8* %63, i8* %64)
  %65 = tail call i32 @verifier.nondet.3()
  %66 = tail call i32 @verifier.nondet.3()
  %67 = tail call i8* @verifier.nondet.2()
  %68 = tail call i32 @s_cf_allocator_preferred_size(i32 %65, i32 %66, i8* %67)
  %69 = tail call %struct.__CFAllocator* @verifier.nondet.7()
  tail call fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %69)
  tail call fastcc void @aws_last_error()
  %70 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_str(i32 %70)
  %71 = tail call i32 @verifier.nondet.3()
  %72 = tail call fastcc %struct.aws_error_info* @get_error_by_code(i32 %71)
  %73 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_name(i32 %73)
  %74 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_lib_name(i32 %74)
  %75 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_debug_str(i32 %75)
  %76 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error_private(i32 %76)
  tail call fastcc void @aws_reset_error()
  %77 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_restore_error(i32 %77)
  %78 = tail call void (i32, i8*)* @verifier.nondet.8()
  %79 = tail call i8* @verifier.nondet.2()
  tail call fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %78, i8* %79)
  %80 = tail call void (i32, i8*)* @verifier.nondet.8()
  %81 = tail call i8* @verifier.nondet.2()
  tail call fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %80, i8* %81)
  %82 = tail call %struct.aws_error_info_list* @verifier.nondet.9()
  tail call fastcc void @aws_register_error_info(%struct.aws_error_info_list* %82)
  %83 = tail call %struct.aws_error_info_list* @verifier.nondet.9()
  tail call fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* %83)
  %84 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_translate_and_raise_io_error(i32 %84)
  %85 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.20(i32 %85)
  %86 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %87 = tail call i32 @verifier.nondet.3()
  %88 = tail call i32* @verifier.nondet.4()
  %89 = tail call fastcc i32 @aws_array_list_calc_necessary_size(%struct.aws_array_list* %86, i32 %87, i32* %88)
  %90 = tail call i32 @verifier.nondet.3()
  %91 = tail call i32 @verifier.nondet.3()
  %92 = tail call i32* @verifier.nondet.4()
  %93 = tail call fastcc i32 @aws_add_size_checked(i32 %90, i32 %91, i32* %92)
  %94 = tail call i32 @verifier.nondet.3()
  %95 = tail call i32 @verifier.nondet.3()
  %96 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_size_checked.21(i32 %94, i32 %95, i32* %96)
  %97 = tail call i32 @verifier.nondet.3()
  %98 = tail call i32 @verifier.nondet.3()
  %99 = tail call i32* @verifier.nondet.4()
  tail call fastcc void @aws_mul_u32_checked.22(i32 %97, i32 %98, i32* %99)
  %100 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.23(i32 %100)
  %101 = tail call i32 @verifier.nondet.3()
  %102 = tail call i32 @verifier.nondet.3()
  %103 = tail call i32* @verifier.nondet.4()
  %104 = tail call fastcc i32 @aws_add_u32_checked(i32 %101, i32 %102, i32* %103)
  %105 = tail call %struct.aws_array_list* @verifier.nondet.1()
  tail call fastcc void @aws_array_list_shrink_to_fit(%struct.aws_array_list* %105)
  %106 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %107 = tail call %struct.aws_array_list* @verifier.nondet.1()
  tail call fastcc void @aws_array_list_copy(%struct.aws_array_list* %106, %struct.aws_array_list* %107)
  %108 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %109 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_array_list_ensure_capacity(%struct.aws_array_list* %108, i32 %109)
  %110 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %111 = tail call i32 @verifier.nondet.3()
  %112 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_array_list_swap(%struct.aws_array_list* %110, i32 %111, i32 %112)
  %113 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %114 = tail call i8** @verifier.nondet.6()
  %115 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_array_list_get_at_ptr(%struct.aws_array_list* %113, i8** %114, i32 %115)
  %116 = tail call i8* @verifier.nondet.2()
  %117 = tail call i8* @verifier.nondet.2()
  %118 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_array_list_mem_swap(i8* %116, i8* %117, i32 %118)
  %119 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %120 = tail call fastcc i32 @aws_array_list_length(%struct.aws_array_list* %119)
  %121 = tail call i8* @verifier.nondet.2()
  %122 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_secure_zero(i8* %121, i32 %122)
  %123 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_common_library_init()
  tail call fastcc void @aws_common_library_clean_up()
  tail call fastcc void @aws_common_fatal_assert_library_initialized()
  ret i32 42
}

declare %struct.aws_array_list* @verifier.nondet.1() local_unnamed_addr

declare i8* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

declare i32* @verifier.nondet.4() local_unnamed_addr

declare %struct.aws_allocator* @verifier.nondet.5() local_unnamed_addr

declare i8** @verifier.nondet.6() local_unnamed_addr

declare %struct.__CFAllocator* @verifier.nondet.7() local_unnamed_addr

declare void (i32, i8*)* @verifier.nondet.8() local_unnamed_addr

declare %struct.aws_error_info_list* @verifier.nondet.9() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #9

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #9

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #9

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #10

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @fwrite(i8* nocapture, i32, i32, %struct.__sFILE* nocapture) local_unnamed_addr #12

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

attributes #0 = { "objc_arc_inert" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inaccessiblememonly nofree norecurse nounwind }
attributes #10 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #11 = { inaccessiblememonly }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6}
!6 = distinct !{!6, !7, !"aws_array_list_is_valid: argument 0"}
!7 = distinct !{!7, !"aws_array_list_is_valid"}
!8 = !{!9, !13, i64 8}
!9 = !{!"aws_array_list", !10, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !10, i64 16}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"long", !11, i64 0}
!14 = !{!9, !13, i64 12}
!15 = !{!9, !13, i64 4}
!16 = !{!9, !10, i64 16}
!17 = !{!18}
!18 = distinct !{!18, !19, !"aws_array_list_clean_up: argument 0"}
!19 = distinct !{!19, !"aws_array_list_clean_up"}
!20 = !{!9, !10, i64 0}
!21 = !{!22, !10, i64 4}
!22 = !{!"aws_allocator", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!23 = !{!24, !24, i64 0}
!24 = !{!"long long", !11, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !11, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!22, !10, i64 0}
!31 = !{!22, !10, i64 12}
!32 = !{!22, !10, i64 8}
!33 = !{!34, !13, i64 0}
!34 = !{!"", !13, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!35 = !{!34, !10, i64 4}
!36 = !{!34, !10, i64 8}
!37 = !{!34, !10, i64 12}
!38 = !{!34, !10, i64 16}
!39 = !{!34, !10, i64 20}
!40 = !{!34, !10, i64 24}
!41 = !{!34, !10, i64 28}
!42 = !{!34, !10, i64 32}
!43 = !{!44, !45, i64 4}
!44 = !{!"aws_error_info_list", !10, i64 0, !45, i64 4}
!45 = !{!"short", !11, i64 0}
!46 = !{!44, !10, i64 0}
!47 = !{!48, !28, i64 0}
!48 = !{!"aws_error_info", !28, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!49 = !{!13, !13, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"aws_array_list_calc_necessary_size: argument 0"}
!52 = distinct !{!52, !"aws_array_list_calc_necessary_size"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"aws_array_list_get_at_ptr: argument 0"}
!55 = distinct !{!55, !"aws_array_list_get_at_ptr"}
!56 = !{!57, !54}
!57 = distinct !{!57, !58, !"aws_array_list_length: argument 0"}
!58 = distinct !{!58, !"aws_array_list_length"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"aws_array_list_get_at_ptr: argument 0"}
!61 = distinct !{!61, !"aws_array_list_get_at_ptr"}
!62 = !{!63, !60}
!63 = distinct !{!63, !64, !"aws_array_list_length: argument 0"}
!64 = distinct !{!64, !"aws_array_list_length"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"aws_array_list_length: argument 0"}
!67 = distinct !{!67, !"aws_array_list_length"}
!68 = distinct !{!68, !26}
!69 = !{i32 1682}
!70 = !{!71, !10, i64 0}
!71 = !{!"aws_logger", !10, i64 0, !10, i64 4, !10, i64 8}
!72 = !{!73, !10, i64 4}
!73 = !{!"aws_logger_vtable", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!74 = !{!73, !10, i64 0}
