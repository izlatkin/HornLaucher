; ModuleID = '../out2/aws_add_size_saturating_harness.c/aws_add_size_saturating_harness023c1.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_error_info_list = type { %struct.aws_error_info*, i16 }
%struct.aws_error_info = type { i32, i8*, i8*, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.aws_log_subject_info_list = type { %struct.aws_log_subject_info*, i32 }
%struct.aws_log_subject_info = type { i32, i8*, i8* }
%struct.aws_logger = type { %struct.aws_logger_vtable*, %struct.aws_allocator*, i8* }
%struct.aws_logger_vtable = type { i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32)*, void (%struct.aws_logger*)*, i32 (%struct.aws_logger*, i32)* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }

@tl_thread_handler_context = internal thread_local unnamed_addr global i8* null, align 4
@ERROR_SLOTS = internal global [16 x %struct.aws_error_info_list*] zeroinitializer, align 4
@tl_thread_handler = internal thread_local unnamed_addr global void (i32, i8*)* null, align 4
@s_global_handler = internal unnamed_addr global void (i32, i8*)* null, align 4
@s_global_error_context = internal unnamed_addr global i8* null, align 4
@.str.1.2 = private unnamed_addr constant [11 x i8] c"error_info\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"/tmp/aws-c-common/source/error.c\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error_info->error_list\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"error_info->count\00", align 1
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Bad error slot index %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@g_set_mempolicy_ptr = internal unnamed_addr global i32 (i32, i32*, i32)* null, align 4
@g_numa_available_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_num_configured_nodes_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_num_possible_cpus_ptr = internal unnamed_addr global i32 ()* null, align 4
@g_numa_node_of_cpu_ptr = internal unnamed_addr global i32 (i32)* null, align 4
@g_libnuma_handle = internal unnamed_addr global i8* null, align 4
@s_common_library_initialized = internal unnamed_addr global i1 false, align 1
@s_list = internal global %struct.aws_error_info_list { %struct.aws_error_info* getelementptr inbounds ([50 x %struct.aws_error_info], [50 x %struct.aws_error_info]* @errors, i32 0, i32 0), i16 50 }, align 8
@s_common_log_subject_list = internal global %struct.aws_log_subject_info_list { %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), i32 5 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"libnuma.so\00", align 1
@.str.1.9 = private unnamed_addr constant [13 x i8] c"libnuma.so.1\00", align 1
@.str.2.10 = private unnamed_addr constant [13 x i8] c"libnuma.so.2\00", align 1
@.str.3.11 = private unnamed_addr constant [26 x i8] c"static: libnuma.so loaded\00", align 1
@.str.4.12 = private unnamed_addr constant [14 x i8] c"set_mempolicy\00", align 1
@.str.5.13 = private unnamed_addr constant [31 x i8] c"static: set_mempolicy() loaded\00", align 1
@.str.6.14 = private unnamed_addr constant [39 x i8] c"static: set_mempolicy() failed to load\00", align 1
@.str.7.15 = private unnamed_addr constant [15 x i8] c"numa_available\00", align 1
@.str.8.16 = private unnamed_addr constant [32 x i8] c"static: numa_available() loaded\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"static: numa_available() failed to load\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"numa_num_configured_nodes\00", align 1
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
@.str.21 = private unnamed_addr constant [89 x i8] c"aws_common_library_init() must be called before using any functionality in aws-c-common.\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"s_common_library_initialized\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"/tmp/aws-c-common/source/common.c\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_add_size_saturating_harness() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %1 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %1, label %2, label %5

2:                                                ; preds = %0
  %3 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #10
  %4 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #10
  tail call void @seahorn.fn.enter() #10
  br label %UnifiedReturnBlock

5:                                                ; preds = %0
  %6 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #10
  %7 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #10
  tail call void @seahorn.fn.enter() #10
  br label %UnifiedReturnBlock

UnifiedReturnBlock:                               ; preds = %5, %2
  ret void
}

declare zeroext i1 @nondet_bool(...) local_unnamed_addr #1

declare i64 @nondet_uint64_t(...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_add_u64_saturating(i64 %0, i64 %1) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

declare i32 @nondet_uint32_t(...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_add_u32_saturating(i32 %0, i32 %1) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_last_error() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_str(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_error_info* @get_error_by_code(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = and i32 %0, 1023
  %6 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %7 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %6, align 4, !tbaa !5
  %8 = icmp eq %struct.aws_error_info_list* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !9
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 0
  %16 = load %struct.aws_error_info*, %struct.aws_error_info** %15, align 4, !tbaa !12
  %17 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %16, i32 %5
  br label %18

18:                                               ; preds = %14, %9, %3, %1
  %.1 = phi %struct.aws_error_info* [ null, %1 ], [ %17, %14 ], [ null, %9 ], [ null, %3 ]
  ret %struct.aws_error_info* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_name(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_lib_name(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_debug_str(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_raise_error_private(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %2(i32 %0, i8* %5) #10
  br label %11

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %7(i32 %0, i8* %10) #10
  br label %11

11:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_reset_error() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_restore_error(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  store void (i32, i8*)* %0, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  store i8* %1, i8** @s_global_error_context, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  store void (i32, i8*)* %0, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  store i8* %1, i8** @tl_thread_handler_context, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_register_error_info(%struct.aws_error_info_list* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 133) #11
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !12
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 134) #11
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !9
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 135) #11
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !13
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !5
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %17) #10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 144) #11
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* %0, %struct.aws_error_info_list** %23, align 4, !tbaa !5
  ret void
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 167) #11
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !12
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 168) #11
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !9
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 169) #11
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !13
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !5
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %17) #10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 178) #11
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %23, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_translate_and_raise_io_error(i32 %0) unnamed_addr #0 {
NodeBlock25:
  tail call void @seahorn.fn.enter() #10
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
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %2(i32 34, i8* %5) #10
  br label %aws_raise_error.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %7(i32 34, i8* %10) #10
  br label %aws_raise_error.exit

11:                                               ; preds = %LeafBlock15
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %12(i32 42, i8* %15) #10
  br label %aws_raise_error.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %17(i32 42, i8* %20) #10
  br label %aws_raise_error.exit

21:                                               ; preds = %LeafBlock, %LeafBlock3
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %22(i32 43, i8* %25) #10
  br label %aws_raise_error.exit

26:                                               ; preds = %21
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %27(i32 43, i8* %30) #10
  br label %aws_raise_error.exit

31:                                               ; preds = %LeafBlock1, %NodeBlock5, %LeafBlock17
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %32 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %32(i32 44, i8* %35) #10
  br label %aws_raise_error.exit

36:                                               ; preds = %31
  %37 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %38 = icmp eq void (i32, i8*)* %37, null
  br i1 %38, label %aws_raise_error.exit, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %37(i32 44, i8* %40) #10
  br label %aws_raise_error.exit

41:                                               ; preds = %LeafBlock11
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %42 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %43 = icmp eq void (i32, i8*)* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %42(i32 45, i8* %45) #10
  br label %aws_raise_error.exit

46:                                               ; preds = %41
  %47 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %aws_raise_error.exit, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %47(i32 45, i8* %50) #10
  br label %aws_raise_error.exit

51:                                               ; preds = %NodeBlock7
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %52 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %52(i32 1, i8* %55) #10
  br label %aws_raise_error.exit

56:                                               ; preds = %51
  %57 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %58 = icmp eq void (i32, i8*)* %57, null
  br i1 %58, label %aws_raise_error.exit, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %57(i32 1, i8* %60) #10
  br label %aws_raise_error.exit

61:                                               ; preds = %NodeBlock21
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %62(i32 2, i8* %65) #10
  br label %aws_raise_error.exit

66:                                               ; preds = %61
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %67(i32 2, i8* %70) #10
  br label %aws_raise_error.exit

NewDefault:                                       ; preds = %LeafBlock, %LeafBlock1, %LeafBlock3, %LeafBlock11, %LeafBlock15, %LeafBlock17
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %71 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %72 = icmp eq void (i32, i8*)* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %NewDefault
  %74 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %71(i32 46, i8* %74) #10
  br label %aws_raise_error.exit

75:                                               ; preds = %NewDefault
  %76 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %77 = icmp eq void (i32, i8*)* %76, null
  br i1 %77, label %aws_raise_error.exit, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %76(i32 46, i8* %79) #10
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %78, %75, %73, %69, %66, %64, %59, %56, %54, %49, %46, %44, %39, %36, %34, %29, %26, %24, %19, %16, %14, %9, %6, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %2(i32 %0, i8* %5) #10
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %7(i32 %0, i8* %10) #10
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_secure_zero(i8* %0, i32 %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 %1, i1 false) #10
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #10, !srcloc !16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_library_init() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %217, label %1

1:                                                ; preds = %0
  store i1 true, i1* @s_common_library_initialized, align 1
  tail call void @seahorn.fn.enter() #10
  %2 = load %struct.aws_error_info*, %struct.aws_error_info** getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 0), align 8, !tbaa !12
  %3 = icmp eq %struct.aws_error_info* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 134) #11
  unreachable

5:                                                ; preds = %1
  %6 = load i16, i16* getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 1), align 4, !tbaa !9
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 135) #11
  unreachable

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !13
  %12 = ashr i32 %11, 10
  %13 = icmp ugt i32 %11, 16383
  br i1 %13, label %14, label %aws_register_error_info.exit

14:                                               ; preds = %9
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !5
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %12) #10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 144) #11
  unreachable

aws_register_error_info.exit:                     ; preds = %9
  %17 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %12
  store volatile %struct.aws_error_info_list* @s_list, %struct.aws_error_info_list** %17, align 4, !tbaa !5
  tail call void @aws_register_log_subject_info_list(%struct.aws_log_subject_info_list* nonnull @s_common_log_subject_list) #10
  tail call void @aws_thread_initialize_thread_management() #10
  %18 = tail call i8* @dlopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 4) #10
  store i8* %18, i8** @g_libnuma_handle, align 4, !tbaa !5
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %.thread1

20:                                               ; preds = %aws_register_error_info.exit
  %21 = tail call i8* @dlopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.9, i32 0, i32 0), i32 4) #10
  store i8* %21, i8** @g_libnuma_handle, align 4, !tbaa !5
  %22 = icmp eq i8* %21, null
  br i1 %22, label %25, label %.thread1

.thread1:                                         ; preds = %20, %aws_register_error_info.exit
  %23 = tail call %struct.aws_logger* @aws_logger_get() #10
  %24 = icmp eq %struct.aws_logger* %23, null
  br i1 %24, label %44, label %31

25:                                               ; preds = %20
  %26 = tail call i8* @dlopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.10, i32 0, i32 0), i32 4) #10
  store i8* %26, i8** @g_libnuma_handle, align 4, !tbaa !5
  %27 = icmp eq i8* %26, null
  %28 = tail call %struct.aws_logger* @aws_logger_get() #10
  %29 = icmp eq %struct.aws_logger* %28, null
  br i1 %27, label %204, label %30

30:                                               ; preds = %25
  br i1 %29, label %44, label %31

31:                                               ; preds = %.thread1, %30
  %32 = phi %struct.aws_logger* [ %23, %.thread1 ], [ %28, %30 ]
  %33 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %32, i32 0, i32 0
  %34 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %33, align 4, !tbaa !17
  %35 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %34, i32 0, i32 1
  %36 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %35, align 4, !tbaa !19
  %37 = tail call i32 %36(%struct.aws_logger* nonnull %32, i32 0) #10
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %33, align 4, !tbaa !17
  %41 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %40, i32 0, i32 0
  %42 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %41, align 4, !tbaa !21
  %43 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %42(%struct.aws_logger* nonnull %32, i32 4, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.11, i32 0, i32 0)) #10
  br label %44

44:                                               ; preds = %.thread1, %39, %31, %30
  %45 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !5
  %46 = tail call i8* @dlsym(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.12, i32 0, i32 0)) #10
  store i8* %46, i8** bitcast (i32 (i32, i32*, i32)** @g_set_mempolicy_ptr to i8**), align 4, !tbaa !5
  %47 = icmp eq i8* %46, null
  %48 = tail call %struct.aws_logger* @aws_logger_get() #10
  %49 = icmp eq %struct.aws_logger* %48, null
  br i1 %47, label %63, label %50

50:                                               ; preds = %44
  br i1 %49, label %76, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %48, i32 0, i32 0
  %53 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %52, align 4, !tbaa !17
  %54 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %53, i32 0, i32 1
  %55 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %54, align 4, !tbaa !19
  %56 = tail call i32 %55(%struct.aws_logger* nonnull %48, i32 0) #10
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %52, align 4, !tbaa !17
  %60 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %59, i32 0, i32 0
  %61 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %60, align 4, !tbaa !21
  %62 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %61(%struct.aws_logger* nonnull %48, i32 4, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.13, i32 0, i32 0)) #10
  br label %76

63:                                               ; preds = %44
  br i1 %49, label %76, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %48, i32 0, i32 0
  %66 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %65, align 4, !tbaa !17
  %67 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %66, i32 0, i32 1
  %68 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %67, align 4, !tbaa !19
  %69 = tail call i32 %68(%struct.aws_logger* nonnull %48, i32 0) #10
  %70 = icmp ugt i32 %69, 3
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %65, align 4, !tbaa !17
  %73 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %72, i32 0, i32 0
  %74 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %73, align 4, !tbaa !21
  %75 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %74(%struct.aws_logger* nonnull %48, i32 4, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6.14, i32 0, i32 0)) #10
  br label %76

76:                                               ; preds = %71, %64, %63, %58, %51, %50
  %77 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !5
  %78 = tail call i8* @dlsym(i8* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.15, i32 0, i32 0)) #10
  store i8* %78, i8** bitcast (i32 ()** @g_numa_available_ptr to i8**), align 4, !tbaa !5
  %79 = icmp eq i8* %78, null
  %80 = tail call %struct.aws_logger* @aws_logger_get() #10
  %81 = icmp eq %struct.aws_logger* %80, null
  br i1 %79, label %95, label %82

82:                                               ; preds = %76
  br i1 %81, label %108, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %80, i32 0, i32 0
  %85 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %84, align 4, !tbaa !17
  %86 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %85, i32 0, i32 1
  %87 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %86, align 4, !tbaa !19
  %88 = tail call i32 %87(%struct.aws_logger* nonnull %80, i32 0) #10
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %84, align 4, !tbaa !17
  %92 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %91, i32 0, i32 0
  %93 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %92, align 4, !tbaa !21
  %94 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %93(%struct.aws_logger* nonnull %80, i32 4, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8.16, i32 0, i32 0)) #10
  br label %108

95:                                               ; preds = %76
  br i1 %81, label %108, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %80, i32 0, i32 0
  %98 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %97, align 4, !tbaa !17
  %99 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %98, i32 0, i32 1
  %100 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %99, align 4, !tbaa !19
  %101 = tail call i32 %100(%struct.aws_logger* nonnull %80, i32 0) #10
  %102 = icmp ugt i32 %101, 3
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %97, align 4, !tbaa !17
  %105 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %104, i32 0, i32 0
  %106 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %105, align 4, !tbaa !21
  %107 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %106(%struct.aws_logger* nonnull %80, i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0)) #10
  br label %108

108:                                              ; preds = %103, %96, %95, %90, %83, %82
  %109 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !5
  %110 = tail call i8* @dlsym(i8* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #10
  store i8* %110, i8** bitcast (i32 ()** @g_numa_num_configured_nodes_ptr to i8**), align 4, !tbaa !5
  %111 = icmp eq i8* %110, null
  %112 = tail call %struct.aws_logger* @aws_logger_get() #10
  %113 = icmp eq %struct.aws_logger* %112, null
  br i1 %111, label %127, label %114

114:                                              ; preds = %108
  br i1 %113, label %140, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %112, i32 0, i32 0
  %117 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %116, align 4, !tbaa !17
  %118 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %117, i32 0, i32 1
  %119 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %118, align 4, !tbaa !19
  %120 = tail call i32 %119(%struct.aws_logger* nonnull %112, i32 0) #10
  %121 = icmp ugt i32 %120, 3
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %116, align 4, !tbaa !17
  %124 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %123, i32 0, i32 0
  %125 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %124, align 4, !tbaa !21
  %126 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %125(%struct.aws_logger* nonnull %112, i32 4, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0)) #10
  br label %140

127:                                              ; preds = %108
  br i1 %113, label %140, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %112, i32 0, i32 0
  %130 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %129, align 4, !tbaa !17
  %131 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %130, i32 0, i32 1
  %132 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %131, align 4, !tbaa !19
  %133 = tail call i32 %132(%struct.aws_logger* nonnull %112, i32 0) #10
  %134 = icmp ugt i32 %133, 3
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %129, align 4, !tbaa !17
  %137 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %136, i32 0, i32 0
  %138 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %137, align 4, !tbaa !21
  %139 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %138(%struct.aws_logger* nonnull %112, i32 4, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0)) #10
  br label %140

140:                                              ; preds = %135, %128, %127, %122, %115, %114
  %141 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !5
  %142 = tail call i8* @dlsym(i8* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #10
  store i8* %142, i8** bitcast (i32 ()** @g_numa_num_possible_cpus_ptr to i8**), align 4, !tbaa !5
  %143 = icmp eq i8* %142, null
  %144 = tail call %struct.aws_logger* @aws_logger_get() #10
  %145 = icmp eq %struct.aws_logger* %144, null
  br i1 %143, label %159, label %146

146:                                              ; preds = %140
  br i1 %145, label %172, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %144, i32 0, i32 0
  %149 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %148, align 4, !tbaa !17
  %150 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %149, i32 0, i32 1
  %151 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %150, align 4, !tbaa !19
  %152 = tail call i32 %151(%struct.aws_logger* nonnull %144, i32 0) #10
  %153 = icmp ugt i32 %152, 3
  br i1 %153, label %154, label %172

154:                                              ; preds = %147
  %155 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %148, align 4, !tbaa !17
  %156 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %155, i32 0, i32 0
  %157 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %156, align 4, !tbaa !21
  %158 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %157(%struct.aws_logger* nonnull %144, i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0)) #10
  br label %172

159:                                              ; preds = %140
  br i1 %145, label %172, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %144, i32 0, i32 0
  %162 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %161, align 4, !tbaa !17
  %163 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %162, i32 0, i32 1
  %164 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %163, align 4, !tbaa !19
  %165 = tail call i32 %164(%struct.aws_logger* nonnull %144, i32 0) #10
  %166 = icmp ugt i32 %165, 3
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %161, align 4, !tbaa !17
  %169 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %168, i32 0, i32 0
  %170 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %169, align 4, !tbaa !21
  %171 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %170(%struct.aws_logger* nonnull %144, i32 4, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0)) #10
  br label %172

172:                                              ; preds = %167, %160, %159, %154, %147, %146
  %173 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !5
  %174 = tail call i8* @dlsym(i8* %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #10
  store i8* %174, i8** bitcast (i32 (i32)** @g_numa_node_of_cpu_ptr to i8**), align 4, !tbaa !5
  %175 = icmp eq i8* %174, null
  %176 = tail call %struct.aws_logger* @aws_logger_get() #10
  %177 = icmp eq %struct.aws_logger* %176, null
  br i1 %175, label %191, label %178

178:                                              ; preds = %172
  br i1 %177, label %217, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %176, i32 0, i32 0
  %181 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %180, align 4, !tbaa !17
  %182 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %181, i32 0, i32 1
  %183 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %182, align 4, !tbaa !19
  %184 = tail call i32 %183(%struct.aws_logger* nonnull %176, i32 0) #10
  %185 = icmp ugt i32 %184, 3
  br i1 %185, label %186, label %217

186:                                              ; preds = %179
  %187 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %180, align 4, !tbaa !17
  %188 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %187, i32 0, i32 0
  %189 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %188, align 4, !tbaa !21
  %190 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %189(%struct.aws_logger* nonnull %176, i32 4, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0)) #10
  br label %217

191:                                              ; preds = %172
  br i1 %177, label %217, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %176, i32 0, i32 0
  %194 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %193, align 4, !tbaa !17
  %195 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %194, i32 0, i32 1
  %196 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %195, align 4, !tbaa !19
  %197 = tail call i32 %196(%struct.aws_logger* nonnull %176, i32 0) #10
  %198 = icmp ugt i32 %197, 3
  br i1 %198, label %199, label %217

199:                                              ; preds = %192
  %200 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %193, align 4, !tbaa !17
  %201 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %200, i32 0, i32 0
  %202 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %201, align 4, !tbaa !21
  %203 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %202(%struct.aws_logger* nonnull %176, i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0)) #10
  br label %217

204:                                              ; preds = %25
  br i1 %29, label %217, label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.aws_logger, %struct.aws_logger* %28, i32 0, i32 0
  %207 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %206, align 4, !tbaa !17
  %208 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %207, i32 0, i32 1
  %209 = load i32 (%struct.aws_logger*, i32)*, i32 (%struct.aws_logger*, i32)** %208, align 4, !tbaa !19
  %210 = tail call i32 %209(%struct.aws_logger* nonnull %28, i32 0) #10
  %211 = icmp ugt i32 %210, 3
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.aws_logger_vtable*, %struct.aws_logger_vtable** %206, align 4, !tbaa !17
  %214 = getelementptr inbounds %struct.aws_logger_vtable, %struct.aws_logger_vtable* %213, i32 0, i32 0
  %215 = load i32 (%struct.aws_logger*, i32, i32, i8*, ...)*, i32 (%struct.aws_logger*, i32, i32, i8*, ...)** %214, align 4, !tbaa !21
  %216 = tail call i32 (%struct.aws_logger*, i32, i32, i8*, ...) %215(%struct.aws_logger* nonnull %28, i32 4, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)) #10
  br label %217

217:                                              ; preds = %212, %205, %204, %199, %192, %191, %186, %179, %178, %0
  ret void
}

declare void @aws_register_log_subject_info_list(%struct.aws_log_subject_info_list*) local_unnamed_addr #1

declare void @aws_thread_initialize_thread_management() local_unnamed_addr #1

declare i8* @dlopen(i8*, i32) local_unnamed_addr #1

declare %struct.aws_logger* @aws_logger_get() local_unnamed_addr #1

declare i8* @dlsym(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_library_clean_up() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %1, label %23

1:                                                ; preds = %0
  store i1 false, i1* @s_common_library_initialized, align 1
  %2 = tail call i32 @aws_thread_join_all_managed() #10
  tail call void @seahorn.fn.enter() #10
  %3 = load %struct.aws_error_info*, %struct.aws_error_info** getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 0), align 8, !tbaa !12
  %4 = icmp eq %struct.aws_error_info* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 168) #11
  unreachable

6:                                                ; preds = %1
  %7 = load i16, i16* getelementptr inbounds (%struct.aws_error_info_list, %struct.aws_error_info_list* @s_list, i32 0, i32 1), align 4, !tbaa !9
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 169) #11
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !13
  %13 = ashr i32 %12, 10
  %14 = icmp ugt i32 %12, 16383
  br i1 %14, label %15, label %aws_unregister_error_info.exit

15:                                               ; preds = %10
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !5
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %13) #10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 178) #11
  unreachable

aws_unregister_error_info.exit:                   ; preds = %10
  %18 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %13
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %18, align 4, !tbaa !5
  tail call void @aws_unregister_log_subject_info_list(%struct.aws_log_subject_info_list* nonnull @s_common_log_subject_list) #10
  %19 = load i8*, i8** @g_libnuma_handle, align 4, !tbaa !5
  %20 = icmp eq i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %aws_unregister_error_info.exit
  %22 = tail call i32 @dlclose(i8* nonnull %19) #10
  br label %23

23:                                               ; preds = %21, %aws_unregister_error_info.exit, %0
  ret void
}

declare i32 @aws_thread_join_all_managed() local_unnamed_addr #1

declare void @aws_unregister_log_subject_info_list(%struct.aws_log_subject_info_list*) local_unnamed_addr #1

declare i32 @dlclose(i8*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_common_fatal_assert_library_initialized() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %.b1 = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b1, label %5, label %1

1:                                                ; preds = %0
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !5
  %3 = tail call i32 @fwrite(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.21, i32 0, i32 0), i32 88, i32 1, %struct.__sFILE* %2)
  %.b = load i1, i1* @s_common_library_initialized, align 1
  br i1 %.b, label %5, label %4

4:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i32 357) #11
  unreachable

5:                                                ; preds = %1, %0
  ret void
}

define i32 @main() local_unnamed_addr {
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
  tail call fastcc void @aws_add_size_saturating_harness()
  %1 = tail call i64 @verifier.nondet.1()
  %2 = tail call i64 @verifier.nondet.1()
  tail call fastcc void @aws_add_u64_saturating(i64 %1, i64 %2)
  %3 = tail call i32 @verifier.nondet.2()
  %4 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_add_u32_saturating(i32 %3, i32 %4)
  tail call fastcc void @aws_last_error()
  %5 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_str(i32 %5)
  %6 = tail call i32 @verifier.nondet.2()
  %7 = tail call fastcc %struct.aws_error_info* @get_error_by_code(i32 %6)
  %8 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_name(i32 %8)
  %9 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_lib_name(i32 %9)
  %10 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_error_debug_str(i32 %10)
  %11 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_raise_error_private(i32 %11)
  tail call fastcc void @aws_reset_error()
  %12 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_restore_error(i32 %12)
  %13 = tail call void (i32, i8*)* @verifier.nondet.3()
  %14 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %13, i8* %14)
  %15 = tail call void (i32, i8*)* @verifier.nondet.3()
  %16 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %15, i8* %16)
  %17 = tail call %struct.aws_error_info_list* @verifier.nondet.5()
  tail call fastcc void @aws_register_error_info(%struct.aws_error_info_list* %17)
  %18 = tail call %struct.aws_error_info_list* @verifier.nondet.5()
  tail call fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* %18)
  %19 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_translate_and_raise_io_error(i32 %19)
  %20 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_raise_error(i32 %20)
  %21 = tail call i8* @verifier.nondet.4()
  %22 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_secure_zero(i8* %21, i32 %22)
  %23 = tail call %struct.aws_allocator* @verifier.nondet.6()
  tail call fastcc void @aws_common_library_init()
  tail call fastcc void @aws_common_library_clean_up()
  tail call fastcc void @aws_common_fatal_assert_library_initialized()
  ret i32 42
}

declare i64 @verifier.nondet.1() local_unnamed_addr

declare i32 @verifier.nondet.2() local_unnamed_addr

declare void (i32, i8*)* @verifier.nondet.3() local_unnamed_addr

declare i8* @verifier.nondet.4() local_unnamed_addr

declare %struct.aws_error_info_list* @verifier.nondet.5() local_unnamed_addr

declare %struct.aws_allocator* @verifier.nondet.6() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #5

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #5

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #5

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #6

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @fwrite(i8* nocapture, i32, i32, %struct.__sFILE* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #9

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblememonly nofree norecurse nounwind }
attributes #6 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #7 = { inaccessiblememonly }
attributes #8 = { nofree nounwind }
attributes #9 = { argmemonly nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 4}
!10 = !{!"aws_error_info_list", !6, i64 0, !11, i64 4}
!11 = !{!"short", !7, i64 0}
!12 = !{!10, !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"aws_error_info", !15, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!15 = !{!"int", !7, i64 0}
!16 = !{i32 1682}
!17 = !{!18, !6, i64 0}
!18 = !{!"aws_logger", !6, i64 0, !6, i64 4, !6, i64 8}
!19 = !{!20, !6, i64 4}
!20 = !{!"aws_logger_vtable", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!21 = !{!20, !6, i64 0}
