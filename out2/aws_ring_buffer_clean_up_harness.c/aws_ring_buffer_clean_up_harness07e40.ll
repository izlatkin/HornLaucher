; ModuleID = '../out2/aws_ring_buffer_clean_up_harness.c/aws_ring_buffer_clean_up_harness07e40.bc.txt'
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
%struct.aws_byte_cursor = type { i32, i8* }
%struct.aws_log_subject_info_list = type { %struct.aws_log_subject_info*, i32 }
%struct.aws_log_subject_info = type { i32, i8*, i8* }
%struct.aws_ring_buffer = type { %struct.aws_allocator*, i8*, %struct.aws_atomic_var, %struct.aws_atomic_var, i8* }
%struct.aws_atomic_var = type { i8* }
%struct.CFAllocatorContext = type { i32, i8*, i8* (i8*)*, void (i8*)*, %struct.__CFString* (i8*)*, i8* (i32, i32, i8*)*, i8* (i8*, i32, i32, i8*)*, void (i8*, i8*)*, i32 (i32, i32, i8*)* }
%struct.__CFString = type opaque
%struct.__CFAllocator = type opaque
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }
%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }

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
@tl_last_error = internal thread_local unnamed_addr global i32 0, align 4
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
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.23 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1
@.str.2.24 = private unnamed_addr constant [52 x i8] c"/tmp/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.3.25 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@s_hex_to_num_table = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@s_null_terminator_cursor = internal global %struct.aws_byte_cursor { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.26, i32 0, i32 0) }, align 8
@.str.4.26 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [84 x i8] c"!\22ring_buffer_allocator does not support realloc, as it breaks allocation ordering\22\00", align 1
@.str.1.33 = private unnamed_addr constant [39 x i8] c"/tmp/aws-c-common/source/ring_buffer.c\00", align 1
@s_common_log_subject_list = internal unnamed_addr global %struct.aws_log_subject_info_list { %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), i32 5 }, align 8
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
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_clean_up_harness() unnamed_addr #1 {
  %1 = tail call i32 @verifier.nondet.25() #18
  tail call void @seahorn.fn.enter() #18
  %2 = alloca %struct.aws_ring_buffer, align 4
  %3 = bitcast %struct.aws_ring_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #18
  call void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer* nonnull %2, i32 %1) #18
  %4 = call fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* nonnull %2)
  call void @verifier.assume(i1 %4)
  call void @seahorn.fn.enter() #18
  %5 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 1
  %6 = load i8*, i8** %5, align 4, !tbaa !5
  %7 = icmp eq i8* %6, null
  br i1 %7, label %aws_ring_buffer_clean_up.exit, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 0
  %10 = load %struct.aws_allocator*, %struct.aws_allocator** %9, align 4, !tbaa !11
  call void @seahorn.fn.enter() #18
  %11 = icmp eq %struct.aws_allocator* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #19
  unreachable

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %10, i32 0, i32 1
  %15 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %14, align 4, !tbaa !12
  %16 = icmp eq void (%struct.aws_allocator*, i8*)* %15, null
  br i1 %16, label %17, label %aws_mem_release.exit.i

17:                                               ; preds = %13
  call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

aws_mem_release.exit.i:                           ; preds = %13
  call void %15(%struct.aws_allocator* nonnull %10, i8* nonnull %6) #18
  br label %aws_ring_buffer_clean_up.exit

aws_ring_buffer_clean_up.exit:                    ; preds = %0, %aws_mem_release.exit.i
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #18
  %18 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 2
  call void @seahorn.fn.enter() #18
  call void @seahorn.fn.enter() #18
  call void @seahorn.fn.enter() #18
  %19 = bitcast %struct.aws_atomic_var* %18 to i32*
  %20 = load atomic volatile i32, i32* %19 seq_cst, align 4
  %21 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 3
  call void @seahorn.fn.enter() #18
  call void @seahorn.fn.enter() #18
  call void @seahorn.fn.enter() #18
  %22 = bitcast %struct.aws_atomic_var* %21 to i32*
  %23 = load atomic volatile i32, i32* %22 seq_cst, align 4
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer*, i32) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  tail call void @seahorn.fn.enter() #18
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %aws_ring_buffer_check_atomic_ptr.exit, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !5
  %14 = icmp ugt i8* %13, %5
  br i1 %14, label %aws_ring_buffer_check_atomic_ptr.exit, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %17 = load i8*, i8** %16, align 4, !tbaa !14
  %18 = icmp uge i8* %17, %5
  br label %aws_ring_buffer_check_atomic_ptr.exit

aws_ring_buffer_check_atomic_ptr.exit:            ; preds = %1, %11, %15
  %19 = phi i1 [ false, %1 ], [ false, %11 ], [ %18, %15 ]
  tail call void @seahorn.fn.enter() #18
  %20 = icmp eq i32 %8, 0
  %.phi.trans.insert = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %.pre = load i8*, i8** %.phi.trans.insert, align 4, !tbaa !5
  %21 = icmp ugt i8* %.pre, %9
  %or.cond4 = or i1 %20, %21
  br i1 %or.cond4, label %aws_ring_buffer_check_atomic_ptr.exit._crit_edge, label %22

22:                                               ; preds = %aws_ring_buffer_check_atomic_ptr.exit
  %23 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %24 = load i8*, i8** %23, align 4, !tbaa !14
  %25 = icmp uge i8* %24, %9
  br label %aws_ring_buffer_check_atomic_ptr.exit._crit_edge

aws_ring_buffer_check_atomic_ptr.exit._crit_edge: ; preds = %aws_ring_buffer_check_atomic_ptr.exit, %22
  %26 = phi i1 [ %25, %22 ], [ false, %aws_ring_buffer_check_atomic_ptr.exit ]
  %27 = icmp ne i8* %.pre, %5
  %28 = icmp eq i8* %.pre, %9
  %narrow = or i1 %28, %27
  %29 = icmp ne i8* %.pre, null
  %or.cond = and i1 %19, %29
  %or.cond3 = and i1 %26, %or.cond
  %or.cond5 = and i1 %narrow, %or.cond3
  br i1 %or.cond5, label %30, label %34

30:                                               ; preds = %aws_ring_buffer_check_atomic_ptr.exit._crit_edge
  %31 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  %32 = load %struct.aws_allocator*, %struct.aws_allocator** %31, align 4, !tbaa !11
  %33 = icmp ne %struct.aws_allocator* %32, null
  br label %34

34:                                               ; preds = %30, %aws_ring_buffer_check_atomic_ptr.exit._crit_edge
  %35 = phi i1 [ false, %aws_ring_buffer_check_atomic_ptr.exit._crit_edge ], [ %33, %30 ]
  ret i1 %35
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 seq_cst, align 4
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %0, i32 %1) unnamed_addr #4 {
NodeBlock:
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %Pivot8.i = icmp slt i32 %1, 3
  br i1 %Pivot8.i, label %NodeBlock2.i, label %NodeBlock5.i

NodeBlock5.i:                                     ; preds = %NodeBlock
  %Pivot4.i = icmp slt i32 %1, 5
  br i1 %Pivot4.i, label %NewDefault, label %LeafBlock1.i

LeafBlock1.i:                                     ; preds = %NodeBlock5.i
  %SwitchLeaf2.i = icmp eq i32 %1, 5
  br i1 %SwitchLeaf2.i, label %7, label %NewDefault.i

NodeBlock2.i:                                     ; preds = %NodeBlock
  switch i32 %1, label %NewDefault.i [
    i32 2, label %4
    i32 0, label %NewDefault
  ]

NewDefault.i:                                     ; preds = %NodeBlock2.i, %LeafBlock1.i
  tail call void @abort() #20
  unreachable

NewDefault:                                       ; preds = %NodeBlock2.i, %NodeBlock5.i
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 monotonic, align 4
  br label %10

4:                                                ; preds = %NodeBlock2.i
  %5 = bitcast %struct.aws_atomic_var* %0 to i32*
  %6 = load atomic volatile i32, i32* %5 acquire, align 4
  br label %10

7:                                                ; preds = %LeafBlock1.i
  %8 = bitcast %struct.aws_atomic_var* %0 to i32*
  %9 = load atomic volatile i32, i32* %8 seq_cst, align 4
  br label %10

10:                                               ; preds = %7, %4, %NewDefault
  %.0 = phi i32 [ %3, %NewDefault ], [ %9, %7 ], [ %6, %4 ]
  %11 = inttoptr i32 %.0 to i8*
  ret i8* %11
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_atomic_priv_xlate_order(i32 %0) unnamed_addr #4 {
NodeBlock7:
  tail call void @seahorn.fn.enter() #18
  %Pivot8 = icmp slt i32 %0, 3
  br i1 %Pivot8, label %NodeBlock2, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %Pivot6 = icmp eq i32 %0, 3
  br i1 %Pivot6, label %1, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %Pivot4 = icmp slt i32 %0, 5
  br i1 %Pivot4, label %1, label %LeafBlock1

LeafBlock1:                                       ; preds = %NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %0, 5
  br i1 %SwitchLeaf2, label %1, label %NewDefault

NodeBlock2:                                       ; preds = %NodeBlock7
  switch i32 %0, label %NewDefault [
    i32 2, label %1
    i32 0, label %.fold.split
  ]

NewDefault:                                       ; preds = %NodeBlock2, %LeafBlock1
  tail call void @abort() #20
  unreachable

.fold.split:                                      ; preds = %NodeBlock2
  br label %1

1:                                                ; preds = %NodeBlock2, %.fold.split, %LeafBlock1, %NodeBlock3, %NodeBlock5
  %.0 = phi i32 [ 3, %NodeBlock5 ], [ 4, %NodeBlock3 ], [ 5, %LeafBlock1 ], [ %0, %NodeBlock2 ], [ 0, %.fold.split ]
  ret i32 %.0
}

; Function Attrs: cold noreturn
declare void @abort() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_check_atomic_ptr(%struct.aws_ring_buffer* nocapture readonly %0, i8* readnone %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %3 = icmp eq i8* %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %6 = load i8*, i8** %5, align 4, !tbaa !5
  %7 = icmp ugt i8* %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %10 = load i8*, i8** %9, align 4, !tbaa !14
  %11 = icmp uge i8* %10, %1
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i1 [ false, %2 ], [ false, %4 ], [ %11, %8 ]
  ret i1 %13
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_allocator_is_valid(%struct.aws_allocator* nocapture readnone %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_default_allocator() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18
  store i8* null, i8** %3, align 4, !tbaa !15
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #18
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #1 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #18
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
  tail call void @seahorn.fn.enter() #18
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #18
  store i8* null, i8** %5, align 4, !tbaa !15
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #18
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #18
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #18
  call void @seahorn.fn.enter() #18
  call void @free(i8* nonnull %1) #18
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #1 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #18
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #18
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #18
  store i8* null, i8** %4, align 4, !tbaa !15
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #18
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #18
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #18
  br label %15

15:                                               ; preds = %14, %3
  ret i8* %12
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree
declare i32 @posix_memalign(i8**, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define internal fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 115) #19
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %7 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %6, align 4, !tbaa !16
  %8 = icmp eq i8* (%struct.aws_allocator*, i32)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 116) #19
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 118) #19
  unreachable

13:                                               ; preds = %10
  %14 = tail call i8* %7(%struct.aws_allocator* nonnull %0, i32 %1) #18
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %aws_raise_error.exit

16:                                               ; preds = %13
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %17 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %17(i32 1, i8* %20) #18
  br label %aws_raise_error.exit

21:                                               ; preds = %16
  %22 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %aws_raise_error.exit, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %22(i32 1, i8* %25) #18
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %24, %21, %19, %13
  ret i8* %14
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 %0, i32* @tl_last_error, align 4, !tbaa !17
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %2(i32 %0, i8* %5) #18
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %7(i32 %0, i8* %10) #18
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_calloc(%struct.aws_allocator* %0, i32 %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq %struct.aws_allocator* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 128) #19
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  %8 = load i8* (%struct.aws_allocator*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)** %7, align 4, !tbaa !19
  %9 = icmp eq i8* (%struct.aws_allocator*, i32, i32)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %12 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %11, align 4, !tbaa !16
  %13 = icmp eq i8* (%struct.aws_allocator*, i32)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 129) #19
  unreachable

15:                                               ; preds = %10, %6
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %2, 0
  %or.cond = and i1 %16, %17
  br i1 %or.cond, label %19, label %18

18:                                               ; preds = %15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 131) #19
  unreachable

19:                                               ; preds = %15
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %20 = mul i32 %2, %1
  br i1 %9, label %34, label %21

21:                                               ; preds = %19
  %22 = tail call i8* %8(%struct.aws_allocator* nonnull %0, i32 %1, i32 %2) #18
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %aws_raise_error.exit

24:                                               ; preds = %21
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %25 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %25(i32 1, i8* %28) #18
  br label %aws_raise_error.exit

29:                                               ; preds = %24
  %30 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %31 = icmp eq void (i32, i8*)* %30, null
  br i1 %31, label %aws_raise_error.exit, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %30(i32 1, i8* %33) #18
  br label %aws_raise_error.exit

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %36 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %35, align 4, !tbaa !16
  %37 = tail call i8* %36(%struct.aws_allocator* nonnull %0, i32 %20) #18
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %40 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %41 = icmp eq void (i32, i8*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %40(i32 1, i8* %43) #18
  br label %aws_raise_error.exit

44:                                               ; preds = %39
  %45 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %46 = icmp eq void (i32, i8*)* %45, null
  br i1 %46, label %aws_raise_error.exit, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %45(i32 1, i8* %48) #18
  br label %aws_raise_error.exit

49:                                               ; preds = %34
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %37, i8 0, i32 %20, i1 false) #18
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %47, %44, %42, %32, %29, %27, %49, %21
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !17
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind ssp uwtable
declare i8* @aws_mem_acquire_many(%struct.aws_allocator*, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_release(%struct.aws_allocator* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #19
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %7 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %6, align 4, !tbaa !12
  %8 = icmp eq void (%struct.aws_allocator*, i8*)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i8* %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void %7(%struct.aws_allocator* nonnull %0, i8* nonnull %1) #18
  br label %13

13:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %0, i8** nocapture %1, i32 %2, i32 %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %5 = icmp eq %struct.aws_allocator* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 224) #19
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %9 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %8, align 4, !tbaa !20
  %10 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %13 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %12, align 4, !tbaa !16
  %14 = icmp eq i8* (%struct.aws_allocator*, i32)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 225) #19
  unreachable

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %18 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !12
  %19 = icmp eq void (%struct.aws_allocator*, i8*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 226) #19
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8*, i8** %1, align 4, !tbaa !15
  tail call void @seahorn.fn.enter() #18
  %25 = icmp eq i8* %24, null
  br i1 %25, label %aws_mem_release.exit, label %26

26:                                               ; preds = %23
  tail call void %18(%struct.aws_allocator* nonnull %0, i8* nonnull %24) #18
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %23, %26
  store i8* null, i8** %1, align 4, !tbaa !15
  br label %aws_raise_error.exit

27:                                               ; preds = %21
  br i1 %10, label %43, label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %1, align 4, !tbaa !15
  %30 = tail call i8* %9(%struct.aws_allocator* nonnull %0, i8* %29, i32 %2, i32 %3) #18
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %33(i32 1, i8* %36) #18
  br label %aws_raise_error.exit

37:                                               ; preds = %32
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %38(i32 1, i8* %41) #18
  br label %aws_raise_error.exit

42:                                               ; preds = %28
  store i8* %30, i8** %1, align 4, !tbaa !15
  br label %aws_raise_error.exit

43:                                               ; preds = %27
  %44 = icmp ugt i32 %3, %2
  br i1 %44, label %45, label %aws_raise_error.exit

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %47 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %46, align 4, !tbaa !16
  %48 = tail call i8* %47(%struct.aws_allocator* nonnull %0, i32 %3) #18
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %51 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %51(i32 1, i8* %54) #18
  br label %aws_raise_error.exit

55:                                               ; preds = %50
  %56 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %57 = icmp eq void (i32, i8*)* %56, null
  br i1 %57, label %aws_raise_error.exit, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %56(i32 1, i8* %59) #18
  br label %aws_raise_error.exit

60:                                               ; preds = %45
  %61 = load i8*, i8** %1, align 4, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %48, i8* align 1 %61, i32 %2, i1 false) #18
  %62 = getelementptr inbounds i8, i8* %48, i32 %2
  %63 = sub i32 %3, %2
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %62, i8 0, i32 %63, i1 false) #18
  %64 = load i8*, i8** %1, align 4, !tbaa !15
  tail call void @seahorn.fn.enter() #18
  %65 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !12
  %66 = icmp eq void (%struct.aws_allocator*, i8*)* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

68:                                               ; preds = %60
  %69 = icmp eq i8* %64, null
  br i1 %69, label %aws_mem_release.exit7, label %70

70:                                               ; preds = %68
  tail call void %65(%struct.aws_allocator* nonnull %0, i8* nonnull %64) #18
  br label %aws_mem_release.exit7

aws_mem_release.exit7:                            ; preds = %68, %70
  store i8* %48, i8** %1, align 4, !tbaa !15
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %58, %55, %53, %40, %37, %35, %aws_mem_release.exit7, %43, %42, %aws_mem_release.exit
  %.2 = phi i32 [ 0, %aws_mem_release.exit ], [ 0, %42 ], [ 0, %43 ], [ 0, %aws_mem_release.exit7 ], [ -1, %35 ], [ -1, %37 ], [ -1, %40 ], [ -1, %53 ], [ -1, %55 ], [ -1, %58 ]
  ret i32 %.2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = alloca %struct.CFAllocatorContext, align 4
  %3 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %4 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %3, align 4, !tbaa !20
  %5 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %4, null
  %spec.store.select = select i1 %5, i8* (i8*, i32, i32, i8*)* null, i8* (i8*, i32, i32, i8*)* @s_cf_allocator_reallocate
  %6 = bitcast %struct.CFAllocatorContext* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %6) #18
  %7 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 0
  store i32 0, i32* %7, align 4, !tbaa !21
  %8 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 1
  %9 = bitcast i8** %8 to %struct.aws_allocator**
  store %struct.aws_allocator* %0, %struct.aws_allocator** %9, align 4, !tbaa !24
  %10 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 2
  store i8* (i8*)* null, i8* (i8*)** %10, align 4, !tbaa !25
  %11 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %11, align 4, !tbaa !26
  %12 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 4
  store %struct.__CFString* (i8*)* @s_cf_allocator_copy_description, %struct.__CFString* (i8*)** %12, align 4, !tbaa !27
  %13 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 5
  store i8* (i32, i32, i8*)* @s_cf_allocator_allocate, i8* (i32, i32, i8*)** %13, align 4, !tbaa !28
  %14 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 6
  store i8* (i8*, i32, i32, i8*)* %spec.store.select, i8* (i8*, i32, i32, i8*)** %14, align 4, !tbaa !29
  %15 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 7
  store void (i8*, i8*)* @s_cf_allocator_deallocate, void (i8*, i8*)** %15, align 4, !tbaa !30
  %16 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 8
  store i32 (i32, i32, i8*)* @s_cf_allocator_preferred_size, i32 (i32, i32, i8*)** %16, align 4, !tbaa !31
  %17 = call %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator* null, %struct.CFAllocatorContext* nonnull %2) #18
  %18 = icmp eq %struct.__CFAllocator* %17, null
  br i1 %18, label %19, label %aws_raise_error.exit

19:                                               ; preds = %1
  call void @seahorn.fn.enter() #18
  call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %20 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %21 = icmp eq void (i32, i8*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  call void %20(i32 1, i8* %23) #18
  br label %aws_raise_error.exit

24:                                               ; preds = %19
  %25 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %aws_raise_error.exit, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  call void %25(i32 1, i8* %28) #18
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %27, %24, %22, %1
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %6) #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_reallocate(i8* %0, i32 %1, i32 %2, i8* %3) #1 {
  tail call void @seahorn.fn.enter() #18
  %5 = alloca i8*, align 4
  %6 = bitcast i8* %3 to %struct.aws_allocator*
  %7 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18
  %8 = getelementptr inbounds i8, i8* %0, i32 -4
  store i8* %8, i8** %5, align 4, !tbaa !15
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 1
  %11 = call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %6, i8** nonnull %5, i32 %10, i32 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 4, !tbaa !15
  %15 = bitcast i8* %14 to i32*
  store i32 %1, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %14, i32 4
  br label %17

17:                                               ; preds = %13, %4
  %.0 = phi i8* [ %16, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.__CFString* @s_cf_allocator_copy_description(i8* nocapture readnone %0) #1 {
  tail call void @seahorn.fn.enter() #18
  ret %struct.__CFString* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to %struct.__CFString*)
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_allocate(i32 %0, i32 %1, i8* %2) #1 {
  tail call void @seahorn.fn.enter() #18
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
  tail call void @seahorn.fn.enter() #18
  %3 = bitcast i8* %1 to %struct.aws_allocator*
  %4 = getelementptr inbounds i8, i8* %0, i32 -4
  tail call void @seahorn.fn.enter() #18
  %5 = icmp eq i8* %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #19
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i32 4
  %9 = bitcast i8* %8 to void (%struct.aws_allocator*, i8*)**
  %10 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %9, align 4, !tbaa !12
  %11 = icmp eq void (%struct.aws_allocator*, i8*)* %10, null
  br i1 %11, label %12, label %aws_mem_release.exit

12:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

aws_mem_release.exit:                             ; preds = %7
  tail call void %10(%struct.aws_allocator* nonnull %3, i8* nonnull %4) #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @s_cf_allocator_preferred_size(i32 %0, i32 %1, i8* nocapture readnone %2) #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = add i32 %0, 4
  ret i32 %4
}

declare %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator*, %struct.CFAllocatorContext*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = bitcast %struct.__CFAllocator* %0 to i8*
  tail call void @CFRelease(i8* %2) #18
  ret void
}

declare void @CFRelease(i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_last_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %1 = load i32, i32* @tl_last_error, align 4, !tbaa !17
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !15
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_error_info* @get_error_by_code(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = and i32 %0, 1023
  %6 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %7 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %6, align 4, !tbaa !15
  %8 = icmp eq %struct.aws_error_info_list* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !32
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 0
  %16 = load %struct.aws_error_info*, %struct.aws_error_info** %15, align 4, !tbaa !35
  %17 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %16, i32 %5
  br label %18

18:                                               ; preds = %14, %9, %3, %1
  %.1 = phi %struct.aws_error_info* [ null, %1 ], [ %17, %14 ], [ null, %9 ], [ null, %3 ]
  ret %struct.aws_error_info* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !15
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_lib_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !15
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_debug_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !15
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_raise_error_private(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  store i32 %0, i32* @tl_last_error, align 4, !tbaa !17
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %2(i32 %0, i8* %5) #18
  br label %11

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %7(i32 %0, i8* %10) #18
  br label %11

11:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_reset_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  store i32 0, i32* @tl_last_error, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_restore_error(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  store i32 %0, i32* @tl_last_error, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  store void (i32, i8*)* %0, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  store i8* %1, i8** @s_global_error_context, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  store void (i32, i8*)* %0, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  store i8* %1, i8** @tl_thread_handler_context, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_register_error_info(%struct.aws_error_info_list* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 133) #19
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !35
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 134) #19
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 135) #19
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !36
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !15
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #18
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 144) #19
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* %0, %struct.aws_error_info_list** %23, align 4, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 167) #19
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !35
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 168) #19
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 169) #19
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !36
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !15
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #18
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 178) #19
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %23, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_translate_and_raise_io_error(i32 %0) unnamed_addr #1 {
NodeBlock25:
  tail call void @seahorn.fn.enter() #18
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
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %2(i32 34, i8* %5) #18
  br label %aws_raise_error.20.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error.20.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %7(i32 34, i8* %10) #18
  br label %aws_raise_error.20.exit

11:                                               ; preds = %LeafBlock15
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 42, i32* @tl_last_error, align 4, !tbaa !17
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %12(i32 42, i8* %15) #18
  br label %aws_raise_error.20.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.20.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %17(i32 42, i8* %20) #18
  br label %aws_raise_error.20.exit

21:                                               ; preds = %LeafBlock, %LeafBlock3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 43, i32* @tl_last_error, align 4, !tbaa !17
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %22(i32 43, i8* %25) #18
  br label %aws_raise_error.20.exit

26:                                               ; preds = %21
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.20.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %27(i32 43, i8* %30) #18
  br label %aws_raise_error.20.exit

31:                                               ; preds = %LeafBlock1, %NodeBlock5, %LeafBlock17
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 44, i32* @tl_last_error, align 4, !tbaa !17
  %32 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %32(i32 44, i8* %35) #18
  br label %aws_raise_error.20.exit

36:                                               ; preds = %31
  %37 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %38 = icmp eq void (i32, i8*)* %37, null
  br i1 %38, label %aws_raise_error.20.exit, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %37(i32 44, i8* %40) #18
  br label %aws_raise_error.20.exit

41:                                               ; preds = %LeafBlock11
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 45, i32* @tl_last_error, align 4, !tbaa !17
  %42 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %43 = icmp eq void (i32, i8*)* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %42(i32 45, i8* %45) #18
  br label %aws_raise_error.20.exit

46:                                               ; preds = %41
  %47 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %aws_raise_error.20.exit, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %47(i32 45, i8* %50) #18
  br label %aws_raise_error.20.exit

51:                                               ; preds = %NodeBlock7
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %52 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %52(i32 1, i8* %55) #18
  br label %aws_raise_error.20.exit

56:                                               ; preds = %51
  %57 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %58 = icmp eq void (i32, i8*)* %57, null
  br i1 %58, label %aws_raise_error.20.exit, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %57(i32 1, i8* %60) #18
  br label %aws_raise_error.20.exit

61:                                               ; preds = %NodeBlock21
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 2, i32* @tl_last_error, align 4, !tbaa !17
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %62(i32 2, i8* %65) #18
  br label %aws_raise_error.20.exit

66:                                               ; preds = %61
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.20.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %67(i32 2, i8* %70) #18
  br label %aws_raise_error.20.exit

NewDefault:                                       ; preds = %LeafBlock, %LeafBlock1, %LeafBlock3, %LeafBlock11, %LeafBlock15, %LeafBlock17
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 46, i32* @tl_last_error, align 4, !tbaa !17
  %71 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %72 = icmp eq void (i32, i8*)* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %NewDefault
  %74 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %71(i32 46, i8* %74) #18
  br label %aws_raise_error.20.exit

75:                                               ; preds = %NewDefault
  %76 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %77 = icmp eq void (i32, i8*)* %76, null
  br i1 %77, label %aws_raise_error.20.exit, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %76(i32 46, i8* %79) #18
  br label %aws_raise_error.20.exit

aws_raise_error.20.exit:                          ; preds = %78, %75, %73, %69, %66, %64, %59, %56, %54, %49, %46, %44, %39, %36, %34, %29, %26, %24, %19, %16, %14, %9, %6, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.20(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 %0, i32* @tl_last_error, align 4, !tbaa !17
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %2(i32 %0, i8* %5) #18
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %7(i32 %0, i8* %10) #18
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_init(%struct.aws_byte_buf* %0, %struct.aws_allocator* %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %.thread, label %6

.thread:                                          ; preds = %3
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* null, i8** %5, align 4, !tbaa !38
  br label %12

6:                                                ; preds = %3
  %7 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %1, i32 %2)
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %7, i8** %8, align 4, !tbaa !38
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %11, i8 0, i32 16, i1 false) #18
  br label %16

12:                                               ; preds = %.thread, %6
  %13 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %13, align 4, !tbaa !40
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 %2, i32* %14, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* %1, %struct.aws_allocator** %15, align 4, !tbaa !42
  br label %16

16:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_init_copy(%struct.aws_byte_buf* %0, %struct.aws_allocator* %1, %struct.aws_byte_buf* readonly %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq %struct.aws_byte_buf* %2, null
  br i1 %4, label %aws_byte_buf_is_valid.exit.thread, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !40
  br i1 %8, label %11, label %17

11:                                               ; preds = %5
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %aws_byte_buf_is_valid.exit.thread

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  %15 = load i8*, i8** %14, align 4, !tbaa !38
  %16 = icmp eq i8* %15, null
  br i1 %16, label %31, label %aws_byte_buf_is_valid.exit.thread

17:                                               ; preds = %5
  %18 = icmp ugt i32 %10, %7
  br i1 %18, label %aws_byte_buf_is_valid.exit.thread, label %aws_byte_buf_is_valid.exit

aws_byte_buf_is_valid.exit:                       ; preds = %17
  %19 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  %20 = load i8*, i8** %19, align 4, !tbaa !38
  %21 = icmp eq i8* %20, null
  br i1 %21, label %aws_byte_buf_is_valid.exit.thread, label %34

aws_byte_buf_is_valid.exit.thread:                ; preds = %aws_byte_buf_is_valid.exit, %11, %13, %17, %3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %aws_byte_buf_is_valid.exit.thread
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %22(i32 34, i8* %25) #18
  br label %aws_raise_error.21.exit

26:                                               ; preds = %aws_byte_buf_is_valid.exit.thread
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.21.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %27(i32 34, i8* %30) #18
  br label %aws_raise_error.21.exit

31:                                               ; preds = %13
  %32 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %32, i8 0, i32 16, i1 false) #18
  %33 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* %1, %struct.aws_allocator** %33, align 4, !tbaa !42
  br label %aws_raise_error.21.exit

34:                                               ; preds = %aws_byte_buf_is_valid.exit
  %.repack = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 %10, i32* %.repack, align 4
  %.repack8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %20, i8** %.repack8, align 4
  %.repack10 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 %7, i32* %.repack10, align 4
  %35 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* %1, %struct.aws_allocator** %35, align 4, !tbaa !42
  %36 = load i32, i32* %6, align 4, !tbaa !41
  %37 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %1, i32 %36)
  store i8* %37, i8** %.repack8, align 4, !tbaa !38
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %40, i8 0, i32 16, i1 false) #18
  br label %aws_raise_error.21.exit

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  %43 = load i8*, i8** %42, align 4, !tbaa !38
  %44 = load i32, i32* %9, align 4, !tbaa !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %37, i8* align 1 %43, i32 %44, i1 false) #18
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %29, %26, %24, %41, %39, %31
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = icmp eq %struct.aws_byte_buf* %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !40
  br i1 %6, label %9, label %15

9:                                                ; preds = %3
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %.thread

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !38
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %.thread

.thread:                                          ; preds = %11, %9
  br label %21

15:                                               ; preds = %3
  %16 = icmp ugt i32 %8, %5
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %19 = load i8*, i8** %18, align 4, !tbaa !38
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %.thread, %17, %15, %11, %1
  %22 = phi i1 [ false, %1 ], [ true, %11 ], [ false, %15 ], [ %20, %17 ], [ false, %.thread ]
  ret i1 %22
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.21(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 %0, i32* @tl_last_error, align 4, !tbaa !17
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %2(i32 %0, i8* %5) #18
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %7(i32 %0, i8* %10) #18
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = icmp eq %struct.aws_byte_cursor* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !43
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %9 = load i8*, i8** %8, align 4, !tbaa !45
  %10 = icmp ne i8* %9, null
  ret i1 %10

11:                                               ; preds = %3, %1
  %12 = phi i1 [ false, %1 ], [ true, %3 ]
  ret i1 %12
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_reset(%struct.aws_byte_buf* nocapture %0, i1 zeroext %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  br i1 %1, label %3, label %11

3:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #18
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %5 = load i8*, i8** %4, align 4, !tbaa !38
  %6 = icmp eq i8* %5, null
  br i1 %6, label %aws_byte_buf_secure_zero.exit, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa !41
  tail call void @seahorn.fn.enter() #18
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %5, i8 0, i32 %9, i1 false) #18
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %5) #18, !srcloc !46
  br label %aws_byte_buf_secure_zero.exit

aws_byte_buf_secure_zero.exit:                    ; preds = %3, %7
  %10 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %10, align 4, !tbaa !40
  br label %11

11:                                               ; preds = %aws_byte_buf_secure_zero.exit, %2
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_secure_zero(%struct.aws_byte_buf* nocapture %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %3 = load i8*, i8** %2, align 4, !tbaa !38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !41
  tail call void @seahorn.fn.enter() #18
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %3, i8 0, i32 %7, i1 false) #18
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %3) #18, !srcloc !46
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %9, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_clean_up(%struct.aws_byte_buf* nocapture %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %3 = load %struct.aws_allocator*, %struct.aws_allocator** %2, align 4, !tbaa !42
  %4 = icmp eq %struct.aws_allocator* %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %7 = load i8*, i8** %6, align 4, !tbaa !38
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  tail call void @seahorn.fn.enter() #18
  %10 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %3, i32 0, i32 1
  %11 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %10, align 4, !tbaa !12
  %12 = icmp eq void (%struct.aws_allocator*, i8*)* %11, null
  br i1 %12, label %13, label %aws_mem_release.exit

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

aws_mem_release.exit:                             ; preds = %9
  tail call void %11(%struct.aws_allocator* nonnull %3, i8* nonnull %7) #18
  br label %14

14:                                               ; preds = %aws_mem_release.exit, %5, %1
  %15 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_clean_up_secure(%struct.aws_byte_buf* nocapture %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %3 = load i8*, i8** %2, align 4, !tbaa !38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %aws_byte_buf_secure_zero.exit, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !41
  tail call void @seahorn.fn.enter() #18
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %3, i8 0, i32 %7, i1 false) #18
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %3) #18, !srcloc !46
  br label %aws_byte_buf_secure_zero.exit

aws_byte_buf_secure_zero.exit:                    ; preds = %1, %5
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %8, align 4, !tbaa !40
  tail call void @seahorn.fn.enter() #18
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %10 = load %struct.aws_allocator*, %struct.aws_allocator** %9, align 4, !tbaa !42
  %11 = icmp eq %struct.aws_allocator* %10, null
  br i1 %11, label %aws_byte_buf_clean_up.exit, label %12

12:                                               ; preds = %aws_byte_buf_secure_zero.exit
  %13 = load i8*, i8** %2, align 4, !tbaa !38
  %14 = icmp eq i8* %13, null
  br i1 %14, label %aws_byte_buf_clean_up.exit, label %15

15:                                               ; preds = %12
  tail call void @seahorn.fn.enter() #18
  %16 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %10, i32 0, i32 1
  %17 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %16, align 4, !tbaa !12
  %18 = icmp eq void (%struct.aws_allocator*, i8*)* %17, null
  br i1 %18, label %19, label %aws_mem_release.exit.i

19:                                               ; preds = %15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

aws_mem_release.exit.i:                           ; preds = %15
  tail call void %17(%struct.aws_allocator* nonnull %10, i8* nonnull %13) #18
  br label %aws_byte_buf_clean_up.exit

aws_byte_buf_clean_up.exit:                       ; preds = %aws_byte_buf_secure_zero.exit, %12, %aws_mem_release.exit.i
  %20 = bitcast %struct.aws_byte_buf* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %20, i8 0, i64 16, i1 false) #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_eq(%struct.aws_byte_buf* nocapture readonly %0, %struct.aws_byte_buf* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_eq(i8* nocapture readnone %0, i32 %1, i8* nocapture readnone %2, i32 %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_eq_ignore_case(%struct.aws_byte_buf* nocapture readonly %0, %struct.aws_byte_buf* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_eq_ignore_case(i8* nocapture readonly %0, i32 %1, i8* nocapture readonly %2, i32 %3) unnamed_addr #1 {
.loopexit:
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_eq_c_str(%struct.aws_byte_buf* nocapture readonly %0, i8* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = tail call i1 @verifier.nondet.26() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_eq_c_str(i8* nocapture readonly %0, i32 %1, i8* nocapture readonly %2) unnamed_addr #1 {
.thread:
  %3 = tail call i1 @verifier.nondet.26() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_eq_c_str_ignore_case(%struct.aws_byte_buf* nocapture readonly %0, i8* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = tail call i1 @verifier.nondet.26() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_eq_c_str_ignore_case(i8* nocapture readonly %0, i32 %1, i8* nocapture readonly %2) unnamed_addr #1 {
.thread:
  %3 = tail call i1 @verifier.nondet.26() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_init_copy_from_cursor(%struct.aws_byte_buf* %0, %struct.aws_allocator* %1, i32 %2, i8* %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %.thread8, label %aws_byte_cursor_is_valid.exit

.thread8:                                         ; preds = %4
  %6 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #18
  %7 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* null, i8** %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %8, align 4, !tbaa !40
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 0, i32* %9, align 4, !tbaa !41
  %10 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* %1, %struct.aws_allocator** %10, align 4, !tbaa !42
  br label %aws_raise_error.21.exit

aws_byte_cursor_is_valid.exit:                    ; preds = %4
  %11 = icmp eq i8* %3, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %aws_byte_cursor_is_valid.exit
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %13 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %13(i32 34, i8* %16) #18
  br label %aws_raise_error.21.exit

17:                                               ; preds = %12
  %18 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %19 = icmp eq void (i32, i8*)* %18, null
  br i1 %19, label %aws_raise_error.21.exit, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %18(i32 34, i8* %21) #18
  br label %aws_raise_error.21.exit

22:                                               ; preds = %aws_byte_cursor_is_valid.exit
  %23 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %23, i8 0, i32 16, i1 false) #18
  %24 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %1, i32 %2)
  %25 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %24, i8** %25, align 4, !tbaa !38
  %26 = icmp eq i8* %24, null
  br i1 %26, label %aws_raise_error.21.exit, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 %2, i32* %28, align 4, !tbaa !40
  %29 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 %2, i32* %29, align 4, !tbaa !41
  %30 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* %1, %struct.aws_allocator** %30, align 4, !tbaa !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %24, i8* nonnull align 1 %3, i32 %2, i1 false) #18
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %.thread8, %20, %17, %15, %22, %27
  ret void
}

; Function Attrs: nounwind ssp uwtable
declare i32 @aws_byte_buf_init_cache_and_update_cursors(%struct.aws_byte_buf*, %struct.aws_allocator*, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond.i = and i1 %4, %6
  br i1 %or.cond.i, label %7, label %17

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 5, i32* @tl_last_error, align 4, !tbaa !17
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %8(i32 5, i8* %11) #18
  br label %aws_add_u32_checked.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_add_u32_checked.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %13(i32 5, i8* %16) #18
  br label %aws_add_u32_checked.exit

17:                                               ; preds = %3
  %18 = add i32 %1, %0
  store i32 %18, i32* %2, align 4, !tbaa !17
  br label %aws_add_u32_checked.exit

aws_add_u32_checked.exit:                         ; preds = %10, %12, %15, %17
  %.0.i = phi i32 [ 0, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %.0.i
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_append_and_update(%struct.aws_byte_buf* nocapture %0, %struct.aws_byte_cursor* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !41
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !43
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 26, i32* @tl_last_error, align 4, !tbaa !17
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %12(i32 26, i8* %15) #18
  br label %aws_byte_buf_append.exit.thread

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_byte_buf_append.exit.thread, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %17(i32 26, i8* %20) #18
  br label %aws_byte_buf_append.exit.thread

21:                                               ; preds = %2
  %22 = icmp eq i32 %9, 0
  br i1 %22, label %aws_byte_buf_append.exit, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %25 = load i8*, i8** %24, align 4, !tbaa !38
  %26 = getelementptr inbounds i8, i8* %25, i32 %6
  %27 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %28 = load i8*, i8** %27, align 4, !tbaa !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %26, i8* align 1 %28, i32 %9, i1 false) #18
  %29 = load i32, i32* %8, align 4, !tbaa !43
  %30 = load i32, i32* %5, align 4, !tbaa !40
  %31 = add i32 %30, %29
  store i32 %31, i32* %5, align 4, !tbaa !40
  br label %aws_byte_buf_append.exit

aws_byte_buf_append.exit:                         ; preds = %23, %21
  %32 = phi i32 [ %29, %23 ], [ 0, %21 ]
  %33 = phi i32 [ %31, %23 ], [ %6, %21 ]
  %34 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %35 = load i8*, i8** %34, align 4, !tbaa !38
  %36 = sub i32 %33, %32
  %37 = getelementptr inbounds i8, i8* %35, i32 %36
  %38 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  store i8* %37, i8** %38, align 4, !tbaa !45
  br label %aws_byte_buf_append.exit.thread

aws_byte_buf_append.exit.thread:                  ; preds = %19, %16, %14, %aws_byte_buf_append.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_byte_buf_append(%struct.aws_byte_buf* nocapture %0, %struct.aws_byte_cursor* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !41
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !43
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 26, i32* @tl_last_error, align 4, !tbaa !17
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %12(i32 26, i8* %15) #18
  br label %aws_raise_error.21.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.21.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %17(i32 26, i8* %20) #18
  br label %aws_raise_error.21.exit

21:                                               ; preds = %2
  %22 = icmp eq i32 %9, 0
  br i1 %22, label %aws_raise_error.21.exit, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %25 = load i8*, i8** %24, align 4, !tbaa !38
  %26 = getelementptr inbounds i8, i8* %25, i32 %6
  %27 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %28 = load i8*, i8** %27, align 4, !tbaa !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %26, i8* align 1 %28, i32 %9, i1 false) #18
  %29 = load i32, i32* %8, align 4, !tbaa !43
  %30 = load i32, i32* %5, align 4, !tbaa !40
  %31 = add i32 %30, %29
  store i32 %31, i32* %5, align 4, !tbaa !40
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %19, %16, %14, %23, %21
  %.0 = phi i32 [ 0, %21 ], [ 0, %23 ], [ -1, %14 ], [ -1, %16 ], [ -1, %19 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %7, label %17

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 5, i32* @tl_last_error, align 4, !tbaa !17
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %8(i32 5, i8* %11) #18
  br label %aws_raise_error.21.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_raise_error.21.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %13(i32 5, i8* %16) #18
  br label %aws_raise_error.21.exit

17:                                               ; preds = %3
  %18 = add i32 %1, %0
  store i32 %18, i32* %2, align 4, !tbaa !17
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %15, %12, %10, %17
  %.0 = phi i32 [ 0, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_cursor_next_split(%struct.aws_byte_cursor* noalias nocapture readonly %0, i8 signext %1, %struct.aws_byte_cursor* noalias %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 1
  %5 = load i8*, i8** %4, align 4, !tbaa !45
  %6 = icmp eq i8* %5, null
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %8 = load i8*, i8** %7, align 4, !tbaa !45
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %15, !prof !47, !misexpect !48

10:                                               ; preds = %3
  br i1 %6, label %11, label %13

11:                                               ; preds = %10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8** %4, align 4, !tbaa !45
  %12 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 0
  store i32 0, i32* %12, align 4, !tbaa !43
  br label %42

13:                                               ; preds = %10
  %14 = bitcast %struct.aws_byte_cursor* %2 to i64*
  store i64 0, i64* %14, align 1
  br label %42

15:                                               ; preds = %3
  %.pmcpy.elt = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack = load i32, i32* %.pmcpy.elt, align 4
  br i1 %6, label %16, label %17

16:                                               ; preds = %15
  %.repack = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 0
  store i32 %.pmcpy.unpack, i32* %.repack, align 4
  store i8* %8, i8** %4, align 4
  br label %31

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, i8* %8, i32 %.pmcpy.unpack
  %19 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4, !tbaa !43
  %21 = add i32 %20, 1
  %22 = getelementptr inbounds i8, i8* %5, i32 %21
  store i8* %22, i8** %4, align 4, !tbaa !45
  %23 = icmp ugt i8* %22, %18
  %24 = icmp ult i8* %22, %8
  %or.cond = or i1 %23, %24
  br i1 %or.cond, label %.critedge, label %26

.critedge:                                        ; preds = %17
  %25 = bitcast %struct.aws_byte_cursor* %2 to i64*
  store i64 0, i64* %25, align 1
  br label %42

26:                                               ; preds = %17
  %27 = ptrtoint i8* %22 to i32
  %28 = ptrtoint i8* %8 to i32
  %29 = add i32 %.pmcpy.unpack, %28
  %30 = sub i32 %29, %27
  store i32 %30, i32* %19, align 4, !tbaa !43
  br label %31

31:                                               ; preds = %26, %16
  %32 = phi i32 [ %30, %26 ], [ %.pmcpy.unpack, %16 ]
  %33 = phi i8* [ %22, %26 ], [ %8, %16 ]
  %34 = sext i8 %1 to i32
  %35 = tail call i8* @memchr(i8* %33, i32 %34, i32 %32) #18
  %36 = icmp eq i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 0
  %39 = ptrtoint i8* %35 to i32
  %40 = ptrtoint i8* %33 to i32
  %41 = sub i32 %39, %40
  store i32 %41, i32* %38, align 4, !tbaa !43
  br label %42

42:                                               ; preds = %37, %31, %.critedge, %13, %11
  %.1 = phi i1 [ true, %11 ], [ false, %13 ], [ false, %.critedge ], [ true, %31 ], [ true, %37 ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_split_on_char_n(%struct.aws_byte_cursor* noalias nocapture readonly %0, i8 signext %1, i32 %2, %struct.aws_array_list* noalias %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %5 = alloca %struct.aws_byte_cursor, align 8
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 -1, i32 %2
  %8 = bitcast %struct.aws_byte_cursor* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #18
  %9 = bitcast %struct.aws_byte_cursor* %5 to i64*
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %5, i32 0, i32 0
  %14 = call fastcc zeroext i1 @aws_byte_cursor_next_split(%struct.aws_byte_cursor* %0, i8 signext %1, %struct.aws_byte_cursor* nonnull %5)
  br i1 %14, label %.lr.ph, label %.critedge

15:                                               ; preds = %26
  %16 = call fastcc zeroext i1 @aws_byte_cursor_next_split(%struct.aws_byte_cursor* %0, i8 signext %1, %struct.aws_byte_cursor* nonnull %5)
  br i1 %16, label %.lr.ph, label %.critedge, !llvm.loop !49

.lr.ph:                                           ; preds = %4, %15
  %.0112 = phi i32 [ %29, %15 ], [ 0, %4 ]
  %17 = icmp eq i32 %.0112, %7
  br i1 %17, label %18, label %26

18:                                               ; preds = %.lr.ph
  %19 = load i32, i32* %10, align 4, !tbaa !43
  %20 = load i8*, i8** %11, align 4, !tbaa !45
  %21 = load i8*, i8** %12, align 4, !tbaa !45
  %22 = ptrtoint i8* %20 to i32
  %23 = ptrtoint i8* %21 to i32
  %24 = sub i32 %19, %22
  %25 = add i32 %24, %23
  store i32 %25, i32* %13, align 8, !tbaa !43
  br label %26

26:                                               ; preds = %18, %.lr.ph
  %27 = call fastcc i32 @aws_array_list_push_back(%struct.aws_array_list* %3, i8* nonnull %8)
  %28 = icmp ne i32 %27, 0
  %29 = add i32 %.0112, 1
  %30 = icmp ugt i32 %29, %7
  %or.cond = or i1 %28, %30
  br i1 %or.cond, label %.critedge, label %15, !prof !51, !llvm.loop !49, !misexpect !48

.critedge:                                        ; preds = %15, %26, %4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_push_back(%struct.aws_array_list* noalias %0, i8* %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !52
  %3 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !55, !alias.scope !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %aws_array_list_length.exit, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %8 = load i8*, i8** %7, align 4, !tbaa !57, !alias.scope !52
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %aws_array_list_length.exit

10:                                               ; preds = %6
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.25, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2.24, i32 0, i32 0), i32 312) #19, !noalias !52
  unreachable

aws_array_list_length.exit:                       ; preds = %2, %6
  %11 = tail call fastcc i32 @aws_array_list_set_at(%struct.aws_array_list* nonnull %0, i8* %1, i32 %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %aws_raise_error.21.exit, label %13

13:                                               ; preds = %aws_array_list_length.exit
  tail call void @seahorn.fn.enter() #18
  %14 = load i32, i32* @tl_last_error, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %aws_raise_error.21.exit

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 0
  %18 = load %struct.aws_allocator*, %struct.aws_allocator** %17, align 4, !tbaa !58
  %19 = icmp eq %struct.aws_allocator* %18, null
  br i1 %19, label %20, label %aws_raise_error.21.exit

20:                                               ; preds = %16
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 27, i32* @tl_last_error, align 4, !tbaa !17
  %21 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %22 = icmp eq void (i32, i8*)* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %21(i32 27, i8* %24) #18
  br label %aws_raise_error.21.exit

25:                                               ; preds = %20
  %26 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %27 = icmp eq void (i32, i8*)* %26, null
  br i1 %27, label %aws_raise_error.21.exit, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %26(i32 27, i8* %29) #18
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %28, %25, %23, %16, %13, %aws_array_list_length.exit
  %.0 = phi i32 [ %11, %16 ], [ 0, %aws_array_list_length.exit ], [ %11, %13 ], [ -1, %23 ], [ -1, %25 ], [ -1, %28 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_length(%struct.aws_array_list* noalias nocapture readonly %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %2 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 4, !tbaa !57
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.25, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2.24, i32 0, i32 0), i32 312) #19
  unreachable

10:                                               ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_set_at(%struct.aws_array_list* noalias %0, i8* %1, i32 %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %4 = tail call i32 @aws_array_list_ensure_capacity(%struct.aws_array_list* %0, i32 %2) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %aws_add_size_checked.exit.thread

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %8 = load i8*, i8** %7, align 4, !tbaa !57
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.23, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2.24, i32 0, i32 0), i32 359) #19
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !59
  %14 = mul i32 %13, %2
  %15 = getelementptr inbounds i8, i8* %8, i32 %14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %15, i8* align 1 %1, i32 %13, i1 false) #18
  tail call void @seahorn.fn.enter() #18, !noalias !60
  %16 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %17 = load i32, i32* %16, align 4, !tbaa !55, !alias.scope !60
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %aws_array_list_length.exit, label %19

19:                                               ; preds = %11
  %20 = load i8*, i8** %7, align 4, !tbaa !57, !alias.scope !60
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %aws_array_list_length.exit

22:                                               ; preds = %19
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.25, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2.24, i32 0, i32 0), i32 312) #19, !noalias !60
  unreachable

aws_array_list_length.exit:                       ; preds = %11, %19
  %23 = icmp ugt i32 %17, %2
  br i1 %23, label %aws_add_size_checked.exit.thread, label %24

24:                                               ; preds = %aws_array_list_length.exit
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %25 = icmp eq i32 %2, -1
  br i1 %25, label %26, label %aws_add_size_checked.exit

26:                                               ; preds = %24
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 5, i32* @tl_last_error, align 4, !tbaa !17
  %27 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %27(i32 5, i8* %30) #18
  br label %aws_add_size_checked.exit.thread

31:                                               ; preds = %26
  %32 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %aws_add_size_checked.exit.thread, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %32(i32 5, i8* %35) #18
  br label %aws_add_size_checked.exit.thread

aws_add_size_checked.exit:                        ; preds = %24
  %36 = add nuw i32 %2, 1
  store i32 %36, i32* %16, align 4, !tbaa !17
  br label %aws_add_size_checked.exit.thread

aws_add_size_checked.exit.thread:                 ; preds = %34, %31, %29, %aws_array_list_length.exit, %aws_add_size_checked.exit, %3
  %.0 = phi i32 [ -1, %3 ], [ 0, %aws_add_size_checked.exit ], [ 0, %aws_array_list_length.exit ], [ -1, %29 ], [ -1, %31 ], [ -1, %34 ]
  ret i32 %.0
}

declare i32 @aws_array_list_ensure_capacity(%struct.aws_array_list*, i32) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_split_on_char(%struct.aws_byte_cursor* noalias nocapture readonly %0, i8 signext %1, %struct.aws_array_list* noalias %2) unnamed_addr #1 {
  %4 = alloca %struct.aws_byte_cursor, align 8
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !63
  %5 = bitcast %struct.aws_byte_cursor* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #18, !noalias !63
  %6 = bitcast %struct.aws_byte_cursor* %4 to i64*
  store i64 0, i64* %6, align 8, !noalias !63
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %8 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %4, i32 0, i32 0
  %11 = call fastcc zeroext i1 @aws_byte_cursor_next_split(%struct.aws_byte_cursor* %0, i8 signext %1, %struct.aws_byte_cursor* nonnull %4) #18
  br i1 %11, label %.lr.ph, label %aws_byte_cursor_split_on_char_n.exit

12:                                               ; preds = %24
  %13 = add i32 %.011.i1, 1
  %14 = call fastcc zeroext i1 @aws_byte_cursor_next_split(%struct.aws_byte_cursor* %0, i8 signext %1, %struct.aws_byte_cursor* nonnull %4) #18
  br i1 %14, label %.lr.ph, label %aws_byte_cursor_split_on_char_n.exit, !llvm.loop !49

.lr.ph:                                           ; preds = %3, %12
  %.011.i1 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %15 = icmp eq i32 %.011.i1, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %.lr.ph
  %17 = load i32, i32* %7, align 4, !tbaa !43, !alias.scope !67, !noalias !68
  %18 = load i8*, i8** %8, align 4, !tbaa !45, !noalias !63
  %19 = load i8*, i8** %9, align 4, !tbaa !45, !alias.scope !67, !noalias !68
  %20 = ptrtoint i8* %18 to i32
  %21 = ptrtoint i8* %19 to i32
  %22 = sub i32 %17, %20
  %23 = add i32 %22, %21
  store i32 %23, i32* %10, align 8, !tbaa !43, !noalias !63
  br label %24

24:                                               ; preds = %16, %.lr.ph
  %25 = call fastcc i32 @aws_array_list_push_back(%struct.aws_array_list* %2, i8* nonnull %5) #18, !noalias !67
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %12, label %aws_byte_cursor_split_on_char_n.exit, !prof !69, !llvm.loop !49, !misexpect !48

aws_byte_cursor_split_on_char_n.exit:             ; preds = %12, %24, %3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #18, !noalias !63
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_find_exact(%struct.aws_byte_cursor* noalias nocapture readonly %0, %struct.aws_byte_cursor* noalias nocapture readonly %1, %struct.aws_byte_cursor* nocapture %2) unnamed_addr #1 {
  %4 = tail call i32 @verifier.nondet.25() #18
  tail call void @seahorn.fn.enter() #18
  %5 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !43
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 48, i32* @tl_last_error, align 4, !tbaa !17
  %11 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %12 = icmp eq void (i32, i8*)* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %11(i32 48, i8* %14) #18
  br label %aws_raise_error.21.exit

15:                                               ; preds = %10
  %16 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %17 = icmp eq void (i32, i8*)* %16, null
  br i1 %17, label %aws_raise_error.21.exit, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %16(i32 48, i8* %19) #18
  br label %aws_raise_error.21.exit

20:                                               ; preds = %3
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 4, i32* @tl_last_error, align 4, !tbaa !17
  %23 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %24 = icmp eq void (i32, i8*)* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %23(i32 4, i8* %26) #18
  br label %aws_raise_error.21.exit

27:                                               ; preds = %22
  %28 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %29 = icmp eq void (i32, i8*)* %28, null
  br i1 %29, label %aws_raise_error.21.exit, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %28(i32 4, i8* %31) #18
  br label %aws_raise_error.21.exit

32:                                               ; preds = %20
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %32
  %.pmcpy.elt3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack4 = load i8*, i8** %.pmcpy.elt3, align 4
  %34 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %35 = load i8*, i8** %34, align 4, !tbaa !45
  %36 = load i8, i8* %35, align 1, !tbaa !70
  %37 = sext i8 %36 to i32
  %38 = tail call i8* @memchr(i8* %.pmcpy.unpack4, i32 %37, i32 %8) #18
  %39 = icmp eq i8* %38, null
  br i1 %39, label %._crit_edge42, label %aws_byte_cursor_advance.exit

40:                                               ; preds = %.critedge1
  %41 = tail call i8* @memchr(i8* %.sroa.10.2, i32 %37, i32 %.sroa.0.2) #18
  %42 = icmp eq i8* %41, null
  br i1 %42, label %._crit_edge42, label %aws_byte_cursor_advance.exit

._crit_edge42:                                    ; preds = %40, %.lr.ph
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 48, i32* @tl_last_error, align 4, !tbaa !17
  %43 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %44 = icmp eq void (i32, i8*)* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %._crit_edge42
  %46 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %43(i32 48, i8* %46) #18
  br label %aws_raise_error.21.exit

47:                                               ; preds = %._crit_edge42
  %48 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %49 = icmp eq void (i32, i8*)* %48, null
  br i1 %49, label %aws_raise_error.21.exit, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %48(i32 48, i8* %51) #18
  br label %aws_raise_error.21.exit

aws_byte_cursor_advance.exit:                     ; preds = %.lr.ph, %40
  %52 = phi i8* [ %41, %40 ], [ %38, %.lr.ph ]
  %.sroa.10.02641 = phi i8* [ %.sroa.10.2, %40 ], [ %.pmcpy.unpack4, %.lr.ph ]
  %.sroa.0.02740 = phi i32 [ %.sroa.0.2, %40 ], [ %8, %.lr.ph ]
  %53 = ptrtoint i8* %52 to i32
  %54 = ptrtoint i8* %.sroa.10.02641 to i32
  %55 = sub i32 %53, %54
  tail call void @seahorn.fn.enter() #18
  %56 = icmp slt i32 %.sroa.0.02740, 0
  %57 = icmp slt i32 %55, 0
  %or.cond.i = or i1 %56, %57
  %58 = icmp ult i32 %.sroa.0.02740, %55
  %or.cond3.i = or i1 %58, %or.cond.i
  %59 = icmp eq i8* %.sroa.10.02641, null
  %spec.select.i = select i1 %59, i8* null, i8* %52
  %.sroa.10.1 = select i1 %or.cond3.i, i8* %.sroa.10.02641, i8* %spec.select.i
  %60 = select i1 %or.cond3.i, i32 0, i32 %55
  %.sroa.0.1 = sub nsw i32 %.sroa.0.02740, %60
  %61 = icmp ult i32 %.sroa.0.1, %6
  br i1 %61, label %.critedge, label %71

.critedge:                                        ; preds = %aws_byte_cursor_advance.exit
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 48, i32* @tl_last_error, align 4, !tbaa !17
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %.critedge
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %62(i32 48, i8* %65) #18
  br label %aws_raise_error.21.exit

66:                                               ; preds = %.critedge
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.21.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %67(i32 48, i8* %70) #18
  br label %aws_raise_error.21.exit

71:                                               ; preds = %aws_byte_cursor_advance.exit
  %72 = tail call i32 @memcmp(i8* %.sroa.10.1, i8* nonnull %35, i32 %6) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %.critedge1

74:                                               ; preds = %71
  %.repack11 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 0
  store i32 %.sroa.0.1, i32* %.repack11, align 4
  %.repack12 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 1
  store i8* %.sroa.10.1, i8** %.repack12, align 4
  br label %aws_raise_error.21.exit

.critedge1:                                       ; preds = %71
  tail call void @seahorn.fn.enter() #18
  %75 = icmp slt i32 %.sroa.0.1, 1
  %76 = icmp eq i8* %.sroa.10.1, null
  %77 = getelementptr inbounds i8, i8* %.sroa.10.1, i32 1
  %spec.select.i6 = select i1 %76, i8* null, i8* %77
  %.sroa.10.2 = select i1 %75, i8* %.sroa.10.1, i8* %spec.select.i6
  %not. = xor i1 %75, true
  %78 = sext i1 %not. to i32
  %.sroa.0.2 = add nsw i32 %.sroa.0.1, %78
  %79 = icmp eq i32 %.sroa.0.2, 0
  br i1 %79, label %._crit_edge, label %40

._crit_edge:                                      ; preds = %.critedge1, %32
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 48, i32* @tl_last_error, align 4, !tbaa !17
  %80 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %81 = icmp eq void (i32, i8*)* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %._crit_edge
  %83 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %80(i32 48, i8* %83) #18
  br label %aws_raise_error.21.exit

84:                                               ; preds = %._crit_edge
  %85 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %86 = icmp eq void (i32, i8*)* %85, null
  br i1 %86, label %aws_raise_error.21.exit, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %85(i32 48, i8* %88) #18
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %74, %45, %47, %50, %64, %66, %69, %82, %84, %87, %30, %27, %25, %18, %15, %13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i64 @aws_byte_cursor_advance(%struct.aws_byte_cursor* nocapture %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43
  %5 = icmp slt i32 %4, 0
  %6 = icmp slt i32 %1, 0
  %or.cond = or i1 %6, %5
  %7 = icmp ult i32 %4, %1
  %or.cond3 = or i1 %7, %or.cond
  br i1 %or.cond3, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 4, !tbaa !45
  %11 = icmp eq i8* %10, null
  %12 = getelementptr inbounds i8, i8* %10, i32 %1
  %spec.select = select i1 %11, i8* null, i8* %12
  store i8* %spec.select, i8** %9, align 4, !tbaa !45
  %13 = sub nsw i32 %4, %1
  store i32 %13, i32* %3, align 4, !tbaa !43
  %phitmp = ptrtoint i8* %10 to i32
  %phitmp2 = zext i32 %phitmp to i64
  %phitmp3 = shl nuw i64 %phitmp2, 32
  %phitmp4 = zext i32 %1 to i64
  br label %14

14:                                               ; preds = %8, %2
  %.sroa.3.0 = phi i64 [ %phitmp3, %8 ], [ 0, %2 ]
  %.sroa.0.0 = phi i64 [ %phitmp4, %8 ], [ 0, %2 ]
  %.sroa.0.0.insert.insert = or i64 %.sroa.0.0, %.sroa.3.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind ssp uwtable
declare i32 @aws_byte_buf_cat(%struct.aws_byte_buf*, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_from_buf(%struct.aws_byte_buf* nocapture readnone %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_eq(%struct.aws_byte_cursor* nocapture readonly %0, %struct.aws_byte_cursor* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_eq_ignore_case(%struct.aws_byte_cursor* nocapture readonly %0, %struct.aws_byte_cursor* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_lookup_table_to_lower_get() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_array_ignore_case(i8* readonly %0, i32 %1) unnamed_addr #1 {
._crit_edge:
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_byte_cursor_ptr_ignore_case(i8* nocapture readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_eq_byte_buf(%struct.aws_byte_cursor* nocapture readonly %0, %struct.aws_byte_buf* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_eq_byte_buf_ignore_case(%struct.aws_byte_cursor* nocapture readonly %0, %struct.aws_byte_buf* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_eq_c_str(%struct.aws_byte_cursor* nocapture readonly %0, i8* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = tail call i1 @verifier.nondet.26() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_eq_c_str_ignore_case(%struct.aws_byte_cursor* nocapture readonly %0, i8* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = tail call i1 @verifier.nondet.26() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_append_with_lookup(%struct.aws_byte_buf* noalias nocapture %0, %struct.aws_byte_cursor* noalias nocapture readonly %1, i8* nocapture readonly %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40
  %8 = sub i32 %5, %7
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !43
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %17, label %.preheader

.preheader:                                       ; preds = %3
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %13 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %14 = load i8*, i8** %13, align 4, !tbaa !45
  %15 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !38
  br label %42

17:                                               ; preds = %3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 26, i32* @tl_last_error, align 4, !tbaa !17
  %18 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %19 = icmp eq void (i32, i8*)* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %18(i32 26, i8* %21) #18
  br label %aws_raise_error.21.exit

22:                                               ; preds = %17
  %23 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %24 = icmp eq void (i32, i8*)* %23, null
  br i1 %24, label %aws_raise_error.21.exit, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %23(i32 26, i8* %26) #18
  br label %aws_raise_error.21.exit

._crit_edge:                                      ; preds = %42, %.preheader
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %27 = icmp ne i32 %10, 0
  %28 = sub nuw nsw i32 -1, %10
  %29 = icmp ult i32 %28, %7
  %or.cond.i.i = and i1 %27, %29
  br i1 %or.cond.i.i, label %30, label %40

30:                                               ; preds = %._crit_edge
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 5, i32* @tl_last_error, align 4, !tbaa !17
  %31 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %32 = icmp eq void (i32, i8*)* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %31(i32 5, i8* %34) #18
  br label %aws_raise_error.21.exit

35:                                               ; preds = %30
  %36 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %37 = icmp eq void (i32, i8*)* %36, null
  br i1 %37, label %aws_raise_error.21.exit, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %36(i32 5, i8* %39) #18
  br label %aws_raise_error.21.exit

40:                                               ; preds = %._crit_edge
  %41 = add i32 %10, %7
  store i32 %41, i32* %6, align 4, !tbaa !17
  br label %aws_raise_error.21.exit

42:                                               ; preds = %.lr.ph, %42
  %.011 = phi i32 [ 0, %.lr.ph ], [ %50, %42 ]
  %43 = getelementptr inbounds i8, i8* %14, i32 %.011
  %44 = load i8, i8* %43, align 1, !tbaa !70
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds i8, i8* %2, i32 %45
  %47 = load i8, i8* %46, align 1, !tbaa !70
  %48 = add i32 %.011, %7
  %49 = getelementptr inbounds i8, i8* %16, i32 %48
  store i8 %47, i8* %49, align 1, !tbaa !70
  %50 = add nuw i32 %.011, 1
  %51 = icmp ult i32 %50, %10
  br i1 %51, label %42, label %._crit_edge, !llvm.loop !71

aws_raise_error.21.exit:                          ; preds = %40, %38, %35, %33, %25, %22, %20
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_append_dynamic(%struct.aws_byte_buf* nocapture %0, %struct.aws_byte_cursor* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %0, %struct.aws_byte_cursor* %1, i1 zeroext false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* nocapture %0, %struct.aws_byte_cursor* nocapture readonly %1, i1 zeroext %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %5 = load %struct.aws_allocator*, %struct.aws_allocator** %4, align 4, !tbaa !42
  %6 = icmp eq %struct.aws_allocator* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %8(i32 34, i8* %11) #18
  br label %aws_raise_error.21.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_raise_error.21.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %13(i32 34, i8* %16) #18
  br label %aws_raise_error.21.exit

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %19 = load i32, i32* %18, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 4, !tbaa !40
  %22 = sub i32 %19, %21
  %23 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4, !tbaa !43
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %86

26:                                               ; preds = %17
  %27 = sub i32 %21, %19
  %28 = add i32 %24, %27
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %29 = icmp ne i32 %28, 0
  %30 = sub nuw nsw i32 -1, %28
  %31 = icmp ult i32 %30, %19
  %or.cond.i.i = and i1 %29, %31
  br i1 %or.cond.i.i, label %32, label %42

32:                                               ; preds = %26
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 5, i32* @tl_last_error, align 4, !tbaa !17
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %33(i32 5, i8* %36) #18
  br label %aws_raise_error.21.exit

37:                                               ; preds = %32
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.21.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %38(i32 5, i8* %41) #18
  br label %aws_raise_error.21.exit

42:                                               ; preds = %26
  %43 = add i32 %24, %21
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %44 = sub nuw nsw i32 -1, %19
  %45 = icmp ult i32 %44, %19
  %factor = mul i32 %19, 2
  %.0.i.i1 = select i1 %45, i32 -1, i32 %factor
  %46 = icmp ult i32 %43, %.0.i.i1
  %spec.select = select i1 %46, i32 %.0.i.i1, i32 %43
  %47 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* nonnull %5, i32 %spec.select)
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  br i1 %46, label %50, label %aws_raise_error.21.exit

50:                                               ; preds = %49
  %51 = load %struct.aws_allocator*, %struct.aws_allocator** %4, align 4, !tbaa !42
  %52 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %51, i32 %43)
  %53 = icmp eq i8* %52, null
  br i1 %53, label %aws_raise_error.21.exit, label %54

54:                                               ; preds = %50, %42
  %.13 = phi i32 [ %43, %50 ], [ %spec.select, %42 ]
  %.01 = phi i8* [ %52, %50 ], [ %47, %42 ]
  %55 = load i32, i32* %20, align 4, !tbaa !40
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %59 = load i8*, i8** %58, align 4, !tbaa !38
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %.01, i8* align 1 %59, i32 %55, i1 false) #18
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %23, align 4, !tbaa !43
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %20, align 4, !tbaa !40
  %65 = getelementptr inbounds i8, i8* %.01, i32 %64
  %66 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %67 = load i8*, i8** %66, align 4, !tbaa !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %65, i8* align 1 %67, i32 %61, i1 false) #18
  br label %68

68:                                               ; preds = %63, %60
  br i1 %2, label %69, label %.critedge6

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %71 = load i8*, i8** %70, align 4, !tbaa !38
  %72 = load i32, i32* %18, align 4, !tbaa !41
  tail call void @seahorn.fn.enter() #18
  call void @llvm.memset.p0i8.i32(i8* align 1 %71, i8 0, i32 %72, i1 false) #18
  tail call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %71) #18, !srcloc !46
  br label %.critedge6

.critedge6:                                       ; preds = %69, %68
  %73 = load %struct.aws_allocator*, %struct.aws_allocator** %4, align 4, !tbaa !42
  %74 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %75 = load i8*, i8** %74, align 4, !tbaa !38
  tail call void @seahorn.fn.enter() #18
  %76 = icmp eq %struct.aws_allocator* %73, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %.critedge6
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #19
  unreachable

78:                                               ; preds = %.critedge6
  %79 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %73, i32 0, i32 1
  %80 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %79, align 4, !tbaa !12
  %81 = icmp eq void (%struct.aws_allocator*, i8*)* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

83:                                               ; preds = %78
  %84 = icmp eq i8* %75, null
  br i1 %84, label %aws_mem_release.exit, label %85

85:                                               ; preds = %83
  tail call void %80(%struct.aws_allocator* nonnull %73, i8* nonnull %75) #18
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %83, %85
  store i8* %.01, i8** %74, align 4, !tbaa !38
  store i32 %.13, i32* %18, align 4, !tbaa !41
  br label %94

86:                                               ; preds = %17
  %87 = icmp eq i32 %24, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %90 = load i8*, i8** %89, align 4, !tbaa !38
  %91 = getelementptr inbounds i8, i8* %90, i32 %21
  %92 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %93 = load i8*, i8** %92, align 4, !tbaa !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %91, i8* align 1 %93, i32 %24, i1 false) #18
  br label %94

94:                                               ; preds = %88, %86, %aws_mem_release.exit
  %95 = load i32, i32* %23, align 4, !tbaa !43
  %96 = load i32, i32* %20, align 4, !tbaa !40
  %97 = add i32 %96, %95
  store i32 %97, i32* %20, align 4, !tbaa !40
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %40, %37, %35, %49, %50, %15, %12, %10, %94
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_size_saturating(i32 %0, i32 %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %3 = icmp ne i32 %1, 0
  %4 = sub nuw nsw i32 -1, %1
  %5 = icmp ult i32 %4, %0
  %or.cond.i = and i1 %3, %5
  %6 = add i32 %1, %0
  %.0.i = select i1 %or.cond.i, i32 -1, i32 %6
  ret i32 %.0.i
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u32_saturating(i32 %0, i32 %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %3 = icmp ne i32 %1, 0
  %4 = sub nuw nsw i32 -1, %1
  %5 = icmp ult i32 %4, %0
  %or.cond = and i1 %3, %5
  %6 = add i32 %1, %0
  %.0 = select i1 %or.cond, i32 -1, i32 %6
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_append_dynamic_secure(%struct.aws_byte_buf* nocapture %0, %struct.aws_byte_cursor* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %0, %struct.aws_byte_cursor* %1, i1 zeroext true)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_append_byte_dynamic(%struct.aws_byte_buf* nocapture %0, i8 zeroext %1) unnamed_addr #1 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.aws_byte_cursor, align 4
  tail call void @seahorn.fn.enter() #18
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3)
  tail call void @seahorn.fn.enter() #18
  store i8 %1, i8* %3, align 1, !tbaa !70
  %5 = bitcast %struct.aws_byte_cursor* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #18
  %6 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %4, i32 0, i32 0
  store i32 1, i32* %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %4, i32 0, i32 1
  store i8* %3, i8** %7, align 4, !tbaa !45
  call fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %0, %struct.aws_byte_cursor* nonnull %4, i1 zeroext false) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #18
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @s_aws_byte_buf_append_byte_dynamic(%struct.aws_byte_buf* nocapture %0, i8 zeroext %1, i1 zeroext %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = alloca i8, align 1
  %5 = alloca %struct.aws_byte_cursor, align 4
  store i8 %1, i8* %4, align 1, !tbaa !70
  %6 = bitcast %struct.aws_byte_cursor* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #18
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %5, i32 0, i32 0
  store i32 1, i32* %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %5, i32 0, i32 1
  store i8* %4, i8** %8, align 4, !tbaa !45
  call fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %0, %struct.aws_byte_cursor* nonnull %5, i1 zeroext %2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_append_byte_dynamic_secure(%struct.aws_byte_buf* nocapture %0, i8 zeroext %1) unnamed_addr #1 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.aws_byte_cursor, align 4
  tail call void @seahorn.fn.enter() #18
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3)
  tail call void @seahorn.fn.enter() #18
  store i8 %1, i8* %3, align 1, !tbaa !70
  %5 = bitcast %struct.aws_byte_cursor* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #18
  %6 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %4, i32 0, i32 0
  store i32 1, i32* %6, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %4, i32 0, i32 1
  store i8* %3, i8** %7, align 4, !tbaa !45
  call fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %0, %struct.aws_byte_cursor* nonnull %4, i1 zeroext true) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #18
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_byte_buf_reserve(%struct.aws_byte_buf* %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %4 = load %struct.aws_allocator*, %struct.aws_allocator** %3, align 4, !tbaa !42
  %5 = icmp eq %struct.aws_allocator* %4, null
  tail call void @seahorn.fn.enter() #18
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %7 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %7(i32 34, i8* %10) #18
  br label %aws_raise_error.21.exit

11:                                               ; preds = %6
  %12 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %aws_raise_error.21.exit, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %12(i32 34, i8* %15) #18
  br label %aws_raise_error.21.exit

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !41
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 4, !tbaa !40
  br i1 %19, label %22, label %28

22:                                               ; preds = %16
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %aws_byte_buf_is_valid.exit.thread

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %26 = load i8*, i8** %25, align 4, !tbaa !38
  %27 = icmp eq i8* %26, null
  br i1 %27, label %aws_byte_buf_is_valid.exit.thread4, label %aws_byte_buf_is_valid.exit.thread

28:                                               ; preds = %16
  %29 = icmp ugt i32 %21, %18
  br i1 %29, label %aws_byte_buf_is_valid.exit.thread, label %aws_byte_buf_is_valid.exit

aws_byte_buf_is_valid.exit:                       ; preds = %28
  %30 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %31 = load i8*, i8** %30, align 4, !tbaa !38
  %32 = icmp eq i8* %31, null
  br i1 %32, label %aws_byte_buf_is_valid.exit.thread, label %aws_byte_buf_is_valid.exit.thread4

aws_byte_buf_is_valid.exit.thread:                ; preds = %aws_byte_buf_is_valid.exit, %22, %24, %28
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %aws_byte_buf_is_valid.exit.thread
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %33(i32 34, i8* %36) #18
  br label %aws_raise_error.21.exit

37:                                               ; preds = %aws_byte_buf_is_valid.exit.thread
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.21.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %38(i32 34, i8* %41) #18
  br label %aws_raise_error.21.exit

aws_byte_buf_is_valid.exit.thread4:               ; preds = %aws_byte_buf_is_valid.exit, %24
  %42 = icmp ult i32 %18, %1
  br i1 %42, label %43, label %aws_raise_error.21.exit

43:                                               ; preds = %aws_byte_buf_is_valid.exit.thread4
  %44 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %45 = tail call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* nonnull %4, i8** nonnull %44, i32 %18, i32 %1)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %aws_raise_error.21.exit

47:                                               ; preds = %43
  store i32 %1, i32* %17, align 4, !tbaa !41
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %40, %37, %35, %14, %11, %9, %47, %43, %aws_byte_buf_is_valid.exit.thread4
  %.0 = phi i32 [ 0, %47 ], [ 0, %aws_byte_buf_is_valid.exit.thread4 ], [ -1, %43 ], [ -1, %9 ], [ -1, %11 ], [ -1, %14 ], [ -1, %35 ], [ -1, %37 ], [ -1, %40 ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_reserve_relative(%struct.aws_byte_buf* %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %4 = load %struct.aws_allocator*, %struct.aws_allocator** %3, align 4, !tbaa !42
  %5 = icmp eq %struct.aws_allocator* %4, null
  tail call void @seahorn.fn.enter() #18
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %7 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %7(i32 34, i8* %10) #18
  br label %aws_raise_error.21.exit

11:                                               ; preds = %6
  %12 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %aws_raise_error.21.exit, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %12(i32 34, i8* %15) #18
  br label %aws_raise_error.21.exit

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !41
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 4, !tbaa !40
  br i1 %19, label %22, label %28

22:                                               ; preds = %16
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %aws_byte_buf_is_valid.exit.thread

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %26 = load i8*, i8** %25, align 4, !tbaa !38
  %27 = icmp eq i8* %26, null
  br i1 %27, label %aws_byte_buf_is_valid.exit.thread3, label %aws_byte_buf_is_valid.exit.thread

28:                                               ; preds = %16
  %29 = icmp ugt i32 %21, %18
  br i1 %29, label %aws_byte_buf_is_valid.exit.thread, label %aws_byte_buf_is_valid.exit

aws_byte_buf_is_valid.exit:                       ; preds = %28
  %30 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %31 = load i8*, i8** %30, align 4, !tbaa !38
  %32 = icmp eq i8* %31, null
  br i1 %32, label %aws_byte_buf_is_valid.exit.thread, label %aws_byte_buf_is_valid.exit.thread3

aws_byte_buf_is_valid.exit.thread:                ; preds = %aws_byte_buf_is_valid.exit, %22, %24, %28
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %aws_byte_buf_is_valid.exit.thread
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %33(i32 34, i8* %36) #18
  br label %aws_raise_error.21.exit

37:                                               ; preds = %aws_byte_buf_is_valid.exit.thread
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.21.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %38(i32 34, i8* %41) #18
  br label %aws_raise_error.21.exit

aws_byte_buf_is_valid.exit.thread3:               ; preds = %aws_byte_buf_is_valid.exit, %24
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %42 = icmp ne i32 %1, 0
  %43 = sub nuw nsw i32 -1, %1
  %44 = icmp ult i32 %43, %21
  %or.cond.i.i = and i1 %42, %44
  br i1 %or.cond.i.i, label %45, label %55

45:                                               ; preds = %aws_byte_buf_is_valid.exit.thread3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 5, i32* @tl_last_error, align 4, !tbaa !17
  %46 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %47 = icmp eq void (i32, i8*)* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %46(i32 5, i8* %49) #18
  br label %aws_raise_error.21.exit

50:                                               ; preds = %45
  %51 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %aws_raise_error.21.exit, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %51(i32 5, i8* %54) #18
  br label %aws_raise_error.21.exit

55:                                               ; preds = %aws_byte_buf_is_valid.exit.thread3
  %56 = add i32 %21, %1
  %57 = tail call fastcc i32 @aws_byte_buf_reserve(%struct.aws_byte_buf* nonnull %0, i32 %56)
  br label %aws_raise_error.21.exit

aws_raise_error.21.exit:                          ; preds = %53, %50, %48, %55, %40, %37, %35, %14, %11, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_right_trim_pred(%struct.aws_byte_cursor* nocapture readonly %0, i1 (i8)* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %.pmcpy.elt = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack = load i32, i32* %.pmcpy.elt, align 4
  %3 = icmp eq i32 %.pmcpy.unpack, 0
  br i1 %3, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %.pmcpy.elt1 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack2 = load i8*, i8** %.pmcpy.elt1, align 4
  %4 = getelementptr inbounds i8, i8* %.pmcpy.unpack2, i32 -1
  br label %5

5:                                                ; preds = %5, %.lr.ph
  %.sroa.0.01 = phi i32 [ %.pmcpy.unpack, %.lr.ph ], [ %9, %5 ]
  %6 = getelementptr inbounds i8, i8* %4, i32 %.sroa.0.01
  %7 = load i8, i8* %6, align 1, !tbaa !70
  %8 = tail call zeroext i1 %1(i8 zeroext %7) #18
  %9 = add i32 %.sroa.0.01, -1
  %.not = xor i1 %8, true
  %10 = icmp eq i32 %9, 0
  %or.cond = or i1 %10, %.not
  br i1 %or.cond, label %.critedge, label %5, !llvm.loop !72

.critedge:                                        ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i64 @aws_byte_cursor_left_trim_pred(%struct.aws_byte_cursor* nocapture readonly %0, i1 (i8)* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %.pmcpy.elt = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack = load i32, i32* %.pmcpy.elt, align 4
  %.pmcpy.elt1 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack2 = load i8*, i8** %.pmcpy.elt1, align 4
  %3 = icmp eq i32 %.pmcpy.unpack, 0
  br i1 %3, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %4 = load i8, i8* %.pmcpy.unpack2, align 1, !tbaa !70
  %5 = tail call zeroext i1 %1(i8 zeroext %4) #18
  br i1 %5, label %.lr.ph9, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph9
  %6 = load i8, i8* %9, align 1, !tbaa !70
  %7 = tail call zeroext i1 %1(i8 zeroext %6) #18
  br i1 %7, label %.lr.ph9, label %.critedge, !llvm.loop !73

.lr.ph9:                                          ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.5.018 = phi i8* [ %9, %.lr.ph ], [ %.pmcpy.unpack2, %.lr.ph.preheader ]
  %.sroa.0.027 = phi i32 [ %8, %.lr.ph ], [ %.pmcpy.unpack, %.lr.ph.preheader ]
  %8 = add i32 %.sroa.0.027, -1
  %9 = getelementptr inbounds i8, i8* %.sroa.5.018, i32 1
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %.critedge, label %.lr.ph, !llvm.loop !73

.critedge:                                        ; preds = %.lr.ph, %.lr.ph9, %.lr.ph.preheader, %2
  %.sroa.5.0.lcssa = phi i8* [ %.pmcpy.unpack2, %2 ], [ %.pmcpy.unpack2, %.lr.ph.preheader ], [ %9, %.lr.ph9 ], [ %9, %.lr.ph ]
  %.sroa.0.0.lcssa = phi i32 [ 0, %2 ], [ %.pmcpy.unpack, %.lr.ph.preheader ], [ 0, %.lr.ph9 ], [ %8, %.lr.ph ]
  %11 = ptrtoint i8* %.sroa.5.0.lcssa to i32
  %.sroa.5.0.insert.ext = zext i32 %11 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0.lcssa to i64
  %.sroa.0.0.insert.insert = or i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_trim_pred(%struct.aws_byte_cursor* nocapture readonly %0, i1 (i8)* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 4
  %.pmcpy.elt1.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack2.i = load i8*, i8** %.pmcpy.elt1.i, align 4
  %3 = icmp eq i32 %.pmcpy.unpack.i, 0
  br i1 %3, label %aws_byte_cursor_left_trim_pred.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %2
  %4 = load i8, i8* %.pmcpy.unpack2.i, align 1, !tbaa !70
  %5 = tail call zeroext i1 %1(i8 zeroext %4) #18
  br i1 %5, label %.lr.ph.preheader, label %.lr.ph.i5

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %6 = add i32 %.pmcpy.unpack.i, -1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %aws_byte_cursor_left_trim_pred.exit.thread, label %.lr.ph.i, !llvm.loop !73

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.pmcpy.unpack2.i.pn = phi i8* [ %9, %.lr.ph ], [ %.pmcpy.unpack2.i, %.lr.ph.preheader ]
  %8 = phi i32 [ %12, %.lr.ph ], [ %6, %.lr.ph.preheader ]
  %9 = getelementptr inbounds i8, i8* %.pmcpy.unpack2.i.pn, i32 1
  %10 = load i8, i8* %9, align 1, !tbaa !70
  %11 = tail call zeroext i1 %1(i8 zeroext %10) #18
  br i1 %11, label %.lr.ph, label %.lr.ph.i5, !llvm.loop !73

.lr.ph:                                           ; preds = %.lr.ph.i
  %12 = add i32 %8, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %aws_byte_cursor_left_trim_pred.exit.thread, label %.lr.ph.i, !llvm.loop !73

aws_byte_cursor_left_trim_pred.exit.thread:       ; preds = %.lr.ph, %.lr.ph.preheader, %2
  tail call void @seahorn.fn.enter() #18
  br label %aws_byte_cursor_right_trim_pred.exit

.lr.ph.i5:                                        ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.5.0.lcssa.i = phi i8* [ %.pmcpy.unpack2.i, %.lr.ph.i.preheader ], [ %9, %.lr.ph.i ]
  %.sroa.0.0.lcssa.i = phi i32 [ %.pmcpy.unpack.i, %.lr.ph.i.preheader ], [ %8, %.lr.ph.i ]
  tail call void @seahorn.fn.enter() #18
  %14 = getelementptr inbounds i8, i8* %.sroa.5.0.lcssa.i, i32 -1
  br label %15

15:                                               ; preds = %15, %.lr.ph.i5
  %.sroa.0.01.i = phi i32 [ %.sroa.0.0.lcssa.i, %.lr.ph.i5 ], [ %19, %15 ]
  %16 = getelementptr inbounds i8, i8* %14, i32 %.sroa.0.01.i
  %17 = load i8, i8* %16, align 1, !tbaa !70
  %18 = tail call zeroext i1 %1(i8 zeroext %17) #18
  %19 = add i32 %.sroa.0.01.i, -1
  %.not.i = xor i1 %18, true
  %20 = icmp eq i32 %19, 0
  %or.cond.i = or i1 %20, %.not.i
  br i1 %or.cond.i, label %aws_byte_cursor_right_trim_pred.exit, label %15, !llvm.loop !72

aws_byte_cursor_right_trim_pred.exit:             ; preds = %15, %aws_byte_cursor_left_trim_pred.exit.thread
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_satisfies_pred(%struct.aws_byte_cursor* nocapture readonly %0, i1 (i8)* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 4
  %.pmcpy.elt1.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack2.i = load i8*, i8** %.pmcpy.elt1.i, align 4
  %3 = icmp eq i32 %.pmcpy.unpack.i, 0
  br i1 %3, label %aws_byte_cursor_left_trim_pred.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %2
  %4 = load i8, i8* %.pmcpy.unpack2.i, align 1, !tbaa !70
  %5 = tail call zeroext i1 %1(i8 zeroext %4) #18
  br i1 %5, label %.lr.ph.preheader, label %aws_byte_cursor_left_trim_pred.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %6 = add i32 %.pmcpy.unpack.i, -1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %aws_byte_cursor_left_trim_pred.exit, label %.lr.ph.i, !llvm.loop !73

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.pmcpy.unpack2.i.pn = phi i8* [ %9, %.lr.ph ], [ %.pmcpy.unpack2.i, %.lr.ph.preheader ]
  %8 = phi i32 [ %12, %.lr.ph ], [ %6, %.lr.ph.preheader ]
  %9 = getelementptr inbounds i8, i8* %.pmcpy.unpack2.i.pn, i32 1
  %10 = load i8, i8* %9, align 1, !tbaa !70
  %11 = tail call zeroext i1 %1(i8 zeroext %10) #18
  br i1 %11, label %.lr.ph, label %aws_byte_cursor_left_trim_pred.exit, !llvm.loop !73

.lr.ph:                                           ; preds = %.lr.ph.i
  %12 = add i32 %8, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %aws_byte_cursor_left_trim_pred.exit, label %.lr.ph.i, !llvm.loop !73

aws_byte_cursor_left_trim_pred.exit:              ; preds = %.lr.ph.i, %.lr.ph, %.lr.ph.preheader, %.lr.ph.i.preheader, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_compare_lexical(%struct.aws_byte_cursor* nocapture readnone %0, %struct.aws_byte_cursor* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_compare_lookup(%struct.aws_byte_cursor* nocapture readonly %0, %struct.aws_byte_cursor* nocapture readonly %1, i8* nocapture readonly %2) unnamed_addr #1 {
  %4 = tail call i32 @verifier.nondet.25() #18
  tail call void @seahorn.fn.enter() #18
  %5 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !43
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.loopexit, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !43
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %.loopexit, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %14 = load i8*, i8** %13, align 4, !tbaa !45
  %15 = getelementptr inbounds i8, i8* %14, i32 %6
  %16 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !45
  %18 = getelementptr inbounds i8, i8* %17, i32 %10
  %19 = icmp sgt i32 %6, 0
  %20 = icmp sgt i32 %10, 0
  %21 = and i1 %19, %20
  br i1 %21, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %12
  %22 = load i8, i8* %14, align 1, !tbaa !70
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, i8* %2, i32 %23
  %25 = load i8, i8* %24, align 1, !tbaa !70
  %26 = load i8, i8* %17, align 1, !tbaa !70
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds i8, i8* %2, i32 %27
  %29 = load i8, i8* %28, align 1, !tbaa !70
  %30 = icmp eq i8 %25, %29
  br i1 %30, label %.lr.ph4, label %.loopexit, !llvm.loop !74

.lr.ph4:                                          ; preds = %.lr.ph.preheader, %.lr.ph
  %.pn = phi i8* [ %32, %.lr.ph ], [ %17, %.lr.ph.preheader ]
  %.pn5 = phi i8* [ %31, %.lr.ph ], [ %14, %.lr.ph.preheader ]
  %31 = getelementptr inbounds i8, i8* %.pn5, i32 1
  %32 = getelementptr inbounds i8, i8* %.pn, i32 1
  %33 = icmp ult i8* %31, %15
  %34 = icmp ult i8* %32, %18
  %35 = and i1 %33, %34
  br i1 %35, label %.lr.ph, label %.loopexit, !llvm.loop !74

.lr.ph:                                           ; preds = %.lr.ph4
  %36 = load i8, i8* %31, align 1, !tbaa !70
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, i8* %2, i32 %37
  %39 = load i8, i8* %38, align 1, !tbaa !70
  %40 = load i8, i8* %32, align 1, !tbaa !70
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, i8* %2, i32 %41
  %43 = load i8, i8* %42, align 1, !tbaa !70
  %44 = icmp eq i8 %39, %43
  br i1 %44, label %.lr.ph4, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %.lr.ph4, %.lr.ph, %.lr.ph.preheader, %12, %3, %8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_from_c_str(%struct.aws_byte_buf* noalias nocapture align 4 %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = icmp eq i8* %1, null
  br i1 %3, label %.thread, label %6

.thread:                                          ; preds = %2
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %4, align 4, !tbaa !40
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 0, i32* %5, align 4, !tbaa !41
  br label %11

6:                                                ; preds = %2
  %7 = tail call i32 @strlen(i8* nonnull %1) #18
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 %7, i32* %8, align 4, !tbaa !40
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 %7, i32* %9, align 4, !tbaa !41
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %.thread, %6
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i8* [ null, %11 ], [ %1, %6 ]
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %13, i8** %14, align 4, !tbaa !38
  %15 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %15, align 4, !tbaa !42
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_from_array(%struct.aws_byte_buf* noalias nocapture align 4 %0, i8* %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i8* null, i8* %1
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %5, i8** %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 %2, i32* %7, align 4, !tbaa !40
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 %2, i32* %8, align 4, !tbaa !41
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %9, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* noalias nocapture align 4 %0, i8* %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i8* null, i8* %1
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %5, i8** %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  store i32 0, i32* %7, align 4, !tbaa !40
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  store i32 %2, i32* %8, align 4, !tbaa !41
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %9, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_from_c_str(i8* readnone %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_from_array(i8* nocapture readnone %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_nospec_mask(i32 %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #18, !srcloc !75
  %4 = or i32 %3, %1
  %5 = xor i32 %3, -1
  %6 = add i32 %5, %1
  %7 = or i32 %4, %6
  %8 = icmp sgt i32 %7, -1
  %9 = sext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i64 @aws_byte_cursor_advance_nospec(%struct.aws_byte_cursor* nocapture %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43
  %5 = icmp uge i32 %4, %1
  %6 = icmp sgt i32 %1, -1
  %or.cond = and i1 %6, %5
  %7 = icmp sgt i32 %4, -1
  %or.cond3 = and i1 %7, %or.cond
  br i1 %or.cond3, label %8, label %27

8:                                                ; preds = %2
  %9 = add nuw i32 %4, 1
  tail call void @seahorn.fn.enter() #18
  %10 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1) #18, !srcloc !75
  %11 = or i32 %10, %9
  %12 = sub i32 %4, %10
  %13 = or i32 %11, %12
  %14 = icmp sgt i32 %13, -1
  %15 = sext i1 %14 to i32
  %16 = and i32 %15, %1
  %17 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %18 = load i8*, i8** %17, align 4, !tbaa !45
  %19 = ptrtoint i8* %18 to i32
  %20 = and i32 %15, %19
  %21 = inttoptr i32 %20 to i8*
  %22 = load i32, i32* %3, align 4, !tbaa !43
  %23 = and i32 %22, %15
  %24 = icmp eq i32 %20, 0
  %25 = getelementptr inbounds i8, i8* %21, i32 %16
  %spec.select = select i1 %24, i8* null, i8* %25
  store i8* %spec.select, i8** %17, align 4, !tbaa !45
  %26 = sub i32 %23, %16
  store i32 %26, i32* %3, align 4, !tbaa !43
  %phitmp2 = zext i32 %20 to i64
  %phitmp3 = shl nuw i64 %phitmp2, 32
  %phitmp4 = zext i32 %16 to i64
  br label %27

27:                                               ; preds = %8, %2
  %.sroa.3.0 = phi i64 [ %phitmp3, %8 ], [ 0, %2 ]
  %.sroa.0.0 = phi i64 [ %phitmp4, %8 ], [ 0, %2 ]
  %.sroa.0.0.insert.insert = or i64 %.sroa.0.0, %.sroa.3.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_cursor_read(%struct.aws_byte_cursor* noalias nocapture %0, i8* noalias %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %aws_byte_cursor_advance_nospec.exit.thread, label %5

5:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #18
  %6 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !43
  %8 = icmp uge i32 %7, %2
  %9 = icmp sgt i32 %2, -1
  %or.cond.i = and i1 %9, %8
  %10 = icmp sgt i32 %7, -1
  %or.cond3.i = and i1 %10, %or.cond.i
  br i1 %or.cond3.i, label %aws_byte_cursor_advance_nospec.exit, label %aws_byte_cursor_advance_nospec.exit.thread

aws_byte_cursor_advance_nospec.exit:              ; preds = %5
  %11 = add nuw i32 %7, 1
  tail call void @seahorn.fn.enter() #18
  %12 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2) #18, !srcloc !75
  %13 = or i32 %12, %11
  %14 = sub i32 %7, %12
  %15 = or i32 %13, %14
  %16 = icmp sgt i32 %15, -1
  %17 = sext i1 %16 to i32
  %18 = and i32 %17, %2
  %19 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %20 = load i8*, i8** %19, align 4, !tbaa !45
  %21 = ptrtoint i8* %20 to i32
  %22 = and i32 %17, %21
  %23 = inttoptr i32 %22 to i8*
  %24 = and i32 %7, %17
  %25 = icmp eq i32 %22, 0
  %26 = getelementptr inbounds i8, i8* %23, i32 %18
  %spec.select.i = select i1 %25, i8* null, i8* %26
  store i8* %spec.select.i, i8** %19, align 4, !tbaa !45
  %27 = sub nsw i32 %24, %18
  store i32 %27, i32* %6, align 4, !tbaa !43
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %aws_byte_cursor_advance_nospec.exit.thread, label %29

29:                                               ; preds = %aws_byte_cursor_advance_nospec.exit
  %30 = inttoptr i32 %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* nonnull align 1 %30, i32 %2, i1 false) #18
  br label %aws_byte_cursor_advance_nospec.exit.thread

aws_byte_cursor_advance_nospec.exit.thread:       ; preds = %5, %29, %aws_byte_cursor_advance_nospec.exit, %3
  %.1 = phi i1 [ true, %3 ], [ true, %29 ], [ false, %aws_byte_cursor_advance_nospec.exit ], [ false, %5 ]
  ret i1 %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_and_fill_buffer(%struct.aws_byte_cursor* noalias nocapture %0, %struct.aws_byte_buf* noalias nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %4 = load i8*, i8** %3, align 4, !tbaa !38
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  %6 = load i32, i32* %5, align 4, !tbaa !41
  tail call void @seahorn.fn.enter() #18, !noalias !76
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #18, !noalias !76
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !43, !alias.scope !80, !noalias !81
  %11 = icmp uge i32 %10, %6
  %12 = icmp sgt i32 %6, -1
  %or.cond.i.i = and i1 %12, %11
  %13 = icmp sgt i32 %10, -1
  %or.cond3.i.i = and i1 %13, %or.cond.i.i
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %8
  %14 = add nuw i32 %10, 1
  tail call void @seahorn.fn.enter() #18, !noalias !76
  %15 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %6) #18, !noalias !76, !srcloc !75
  %16 = or i32 %15, %14
  %17 = sub i32 %10, %15
  %18 = or i32 %16, %17
  %19 = icmp sgt i32 %18, -1
  %20 = sext i1 %19 to i32
  %21 = and i32 %6, %20
  %22 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %23 = load i8*, i8** %22, align 4, !tbaa !45, !alias.scope !80, !noalias !81
  %24 = ptrtoint i8* %23 to i32
  %25 = and i32 %20, %24
  %26 = inttoptr i32 %25 to i8*
  %27 = and i32 %10, %20
  %28 = icmp eq i32 %25, 0
  %29 = getelementptr inbounds i8, i8* %26, i32 %21
  %spec.select.i.i = select i1 %28, i8* null, i8* %29
  store i8* %spec.select.i.i, i8** %22, align 4, !tbaa !45, !alias.scope !80, !noalias !81
  %30 = sub nsw i32 %27, %21
  store i32 %30, i32* %9, align 4, !tbaa !43, !alias.scope !80, !noalias !81
  br i1 %28, label %aws_byte_cursor_read.exit, label %31

31:                                               ; preds = %aws_byte_cursor_advance_nospec.exit.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %4, i8* nonnull align 1 %26, i32 %6, i1 false) #18
  br label %32

32:                                               ; preds = %2, %31
  %33 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  store i32 %6, i32* %33, align 4, !tbaa !40
  br label %aws_byte_cursor_read.exit

aws_byte_cursor_read.exit:                        ; preds = %aws_byte_cursor_advance_nospec.exit.i, %8, %32
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_u8(%struct.aws_byte_cursor* noalias nocapture %0, i8* noalias %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !82
  tail call void @seahorn.fn.enter() #18, !noalias !82
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43, !alias.scope !86, !noalias !87
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %2
  %6 = add nuw i32 %4, 1
  tail call void @seahorn.fn.enter() #18, !noalias !82
  %7 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !noalias !82, !srcloc !75
  %8 = or i32 %7, %6
  %9 = sub i32 %4, %7
  %10 = or i32 %8, %9
  %11 = icmp sgt i32 %10, -1
  %12 = sext i1 %11 to i32
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %15 = load i8*, i8** %14, align 4, !tbaa !45, !alias.scope !86, !noalias !87
  %16 = ptrtoint i8* %15 to i32
  %17 = and i32 %12, %16
  %18 = inttoptr i32 %17 to i8*
  %19 = and i32 %4, %12
  %20 = icmp eq i32 %17, 0
  %21 = getelementptr inbounds i8, i8* %18, i32 %13
  %spec.select.i.i = select i1 %20, i8* null, i8* %21
  store i8* %spec.select.i.i, i8** %14, align 4, !tbaa !45, !alias.scope !86, !noalias !87
  %22 = sub nsw i32 %19, %13
  store i32 %22, i32* %3, align 4, !tbaa !43, !alias.scope !86, !noalias !87
  br i1 %20, label %aws_byte_cursor_read.exit, label %23

23:                                               ; preds = %aws_byte_cursor_advance_nospec.exit.i
  %24 = load i8, i8* %18, align 1
  store i8 %24, i8* %1, align 1
  br label %aws_byte_cursor_read.exit

aws_byte_cursor_read.exit:                        ; preds = %2, %aws_byte_cursor_advance_nospec.exit.i, %23
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_be16(%struct.aws_byte_cursor* nocapture %0, i16* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !88
  tail call void @seahorn.fn.enter() #18, !noalias !88
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43, !alias.scope !92, !noalias !93
  %5 = icmp ugt i32 %4, 1
  %6 = icmp sgt i32 %4, -1
  %or.cond3.i.i = and i1 %6, %5
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit.thread, !prof !94

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %2
  %7 = add nuw i32 %4, 1
  tail call void @seahorn.fn.enter() #18, !noalias !88
  %8 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 2) #18, !noalias !88, !srcloc !75
  %9 = or i32 %8, %7
  %10 = sub i32 %4, %8
  %11 = or i32 %9, %10
  %12 = icmp sgt i32 %11, -1
  %13 = sext i1 %12 to i32
  %14 = and i32 %13, 2
  %15 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !45, !alias.scope !92, !noalias !93
  %17 = ptrtoint i8* %16 to i32
  %18 = and i32 %13, %17
  %19 = inttoptr i32 %18 to i8*
  %20 = and i32 %4, %13
  %21 = icmp eq i32 %18, 0
  %22 = getelementptr inbounds i8, i8* %19, i32 %14
  %spec.select.i.i = select i1 %21, i8* null, i8* %22
  store i8* %spec.select.i.i, i8** %15, align 4, !tbaa !45, !alias.scope !92, !noalias !93
  %23 = sub nsw i32 %20, %14
  store i32 %23, i32* %3, align 4, !tbaa !43, !alias.scope !92, !noalias !93
  br i1 %21, label %aws_byte_cursor_read.exit.thread, label %aws_ntoh16.exit, !prof !95

aws_ntoh16.exit:                                  ; preds = %aws_byte_cursor_advance_nospec.exit.i
  %24 = inttoptr i32 %18 to i16*
  %25 = load i16, i16* %24, align 1
  store i16 %25, i16* %1, align 1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %rev.i.i = tail call i16 @llvm.bswap.i16(i16 %25) #18
  store i16 %rev.i.i, i16* %1, align 2, !tbaa !96
  br label %aws_byte_cursor_read.exit.thread

aws_byte_cursor_read.exit.thread:                 ; preds = %2, %aws_byte_cursor_advance_nospec.exit.i, %aws_ntoh16.exit
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i16 @aws_ntoh16(i16 zeroext %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %0) #18
  ret i16 %rev.i
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i16 @_OSSwapInt16(i16 zeroext %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %rev = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %rev
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_be24(%struct.aws_byte_cursor* nocapture %0, i32* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = bitcast i32* %1 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i32 1
  tail call void @seahorn.fn.enter() #18, !noalias !97
  tail call void @seahorn.fn.enter() #18, !noalias !97
  %5 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !43, !alias.scope !101, !noalias !102
  %7 = icmp ugt i32 %6, 2
  %8 = icmp sgt i32 %6, -1
  %or.cond3.i.i = and i1 %8, %7
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit.thread, !prof !94

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %2
  %9 = add nuw i32 %6, 1
  tail call void @seahorn.fn.enter() #18, !noalias !97
  %10 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 3) #18, !noalias !97, !srcloc !75
  %11 = or i32 %10, %9
  %12 = sub i32 %6, %10
  %13 = or i32 %11, %12
  %14 = icmp sgt i32 %13, -1
  %15 = sext i1 %14 to i32
  %16 = and i32 %15, 3
  %17 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %18 = load i8*, i8** %17, align 4, !tbaa !45, !alias.scope !101, !noalias !102
  %19 = ptrtoint i8* %18 to i32
  %20 = and i32 %15, %19
  %21 = inttoptr i32 %20 to i8*
  %22 = and i32 %6, %15
  %23 = icmp eq i32 %20, 0
  %24 = getelementptr inbounds i8, i8* %21, i32 %16
  %spec.select.i.i = select i1 %23, i8* null, i8* %24
  store i8* %spec.select.i.i, i8** %17, align 4, !tbaa !45, !alias.scope !101, !noalias !102
  %25 = sub nsw i32 %22, %16
  store i32 %25, i32* %5, align 4, !tbaa !43, !alias.scope !101, !noalias !102
  br i1 %23, label %aws_byte_cursor_read.exit.thread, label %aws_ntoh32.exit, !prof !95

aws_ntoh32.exit:                                  ; preds = %aws_byte_cursor_advance_nospec.exit.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) %21, i32 3, i1 false) #18
  store i8 0, i8* %3, align 1, !tbaa !70
  %26 = load i32, i32* %1, align 4, !tbaa !17
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #18
  store i32 %27, i32* %1, align 4, !tbaa !17
  br label %aws_byte_cursor_read.exit.thread

aws_byte_cursor_read.exit.thread:                 ; preds = %2, %aws_byte_cursor_advance_nospec.exit.i, %aws_ntoh32.exit
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_ntoh32(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = tail call i32 @llvm.bswap.i32(i32 %0) #18
  ret i32 %2
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @_OSSwapInt32(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_be32(%struct.aws_byte_cursor* nocapture %0, i32* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !103
  tail call void @seahorn.fn.enter() #18, !noalias !103
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43, !alias.scope !107, !noalias !108
  %5 = icmp ugt i32 %4, 3
  %6 = icmp sgt i32 %4, -1
  %or.cond3.i.i = and i1 %6, %5
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit.thread, !prof !94

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %2
  %7 = add nuw i32 %4, 1
  tail call void @seahorn.fn.enter() #18, !noalias !103
  %8 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 4) #18, !noalias !103, !srcloc !75
  %9 = or i32 %8, %7
  %10 = sub i32 %4, %8
  %11 = or i32 %9, %10
  %12 = icmp sgt i32 %11, -1
  %13 = sext i1 %12 to i32
  %14 = and i32 %13, 4
  %15 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !45, !alias.scope !107, !noalias !108
  %17 = ptrtoint i8* %16 to i32
  %18 = and i32 %13, %17
  %19 = inttoptr i32 %18 to i8*
  %20 = and i32 %4, %13
  %21 = icmp eq i32 %18, 0
  %22 = getelementptr inbounds i8, i8* %19, i32 %14
  %spec.select.i.i = select i1 %21, i8* null, i8* %22
  store i8* %spec.select.i.i, i8** %15, align 4, !tbaa !45, !alias.scope !107, !noalias !108
  %23 = sub nsw i32 %20, %14
  store i32 %23, i32* %3, align 4, !tbaa !43, !alias.scope !107, !noalias !108
  br i1 %21, label %aws_byte_cursor_read.exit.thread, label %aws_ntoh32.exit, !prof !95

aws_ntoh32.exit:                                  ; preds = %aws_byte_cursor_advance_nospec.exit.i
  %24 = inttoptr i32 %18 to i32*
  %25 = load i32, i32* %24, align 1
  store i32 %25, i32* %1, align 1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #18
  store i32 %26, i32* %1, align 4, !tbaa !17
  br label %aws_byte_cursor_read.exit.thread

aws_byte_cursor_read.exit.thread:                 ; preds = %2, %aws_byte_cursor_advance_nospec.exit.i, %aws_ntoh32.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_float_be32(%struct.aws_byte_cursor* nocapture %0, float* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !109
  tail call void @seahorn.fn.enter() #18, !noalias !109
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43, !alias.scope !113, !noalias !114
  %5 = icmp ugt i32 %4, 3
  %6 = icmp sgt i32 %4, -1
  %or.cond3.i.i = and i1 %6, %5
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit.thread, !prof !94

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %2
  %7 = add nuw i32 %4, 1
  tail call void @seahorn.fn.enter() #18, !noalias !109
  %8 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 4) #18, !noalias !109, !srcloc !75
  %9 = or i32 %8, %7
  %10 = sub i32 %4, %8
  %11 = or i32 %9, %10
  %12 = icmp sgt i32 %11, -1
  %13 = sext i1 %12 to i32
  %14 = and i32 %13, 4
  %15 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !45, !alias.scope !113, !noalias !114
  %17 = ptrtoint i8* %16 to i32
  %18 = and i32 %13, %17
  %19 = inttoptr i32 %18 to i8*
  %20 = and i32 %4, %13
  %21 = icmp eq i32 %18, 0
  %22 = getelementptr inbounds i8, i8* %19, i32 %14
  %spec.select.i.i = select i1 %21, i8* null, i8* %22
  store i8* %spec.select.i.i, i8** %15, align 4, !tbaa !45, !alias.scope !113, !noalias !114
  %23 = sub nsw i32 %20, %14
  store i32 %23, i32* %3, align 4, !tbaa !43, !alias.scope !113, !noalias !114
  br i1 %21, label %aws_byte_cursor_read.exit.thread, label %24, !prof !95

24:                                               ; preds = %aws_byte_cursor_advance_nospec.exit.i
  %25 = inttoptr i32 %18 to i32*
  %26 = bitcast float* %1 to i32*
  %27 = load i32, i32* %25, align 1
  store i32 %27, i32* %26, align 1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %.2.extract.shift.i.i = lshr i32 %27, 16
  %.2.extract.trunc.i.i = trunc i32 %.2.extract.shift.i.i to i8
  %.1.insert.ext.i.i = zext i8 %.2.extract.trunc.i.i to i32
  %.1.insert.shift.i.i = shl nuw nsw i32 %.1.insert.ext.i.i, 8
  %.3.extract.shift.i.i = lshr i32 %27, 24
  %.3.extract.trunc.i.i = trunc i32 %.3.extract.shift.i.i to i8
  %.0.insert.ext.i.i = zext i8 %.3.extract.trunc.i.i to i32
  %.1.extract.shift.i.i = lshr i32 %27, 8
  %.1.extract.trunc.i.i = trunc i32 %.1.extract.shift.i.i to i8
  %.2.insert.ext.i.i = zext i8 %.1.extract.trunc.i.i to i32
  %.2.insert.shift.i.i = shl nuw nsw i32 %.2.insert.ext.i.i, 16
  %.0.extract.trunc.i.i = trunc i32 %27 to i8
  %.3.insert.ext.i.i = zext i8 %.0.extract.trunc.i.i to i32
  %.3.insert.shift.i.i = shl nuw i32 %.3.insert.ext.i.i, 24
  %.1.insert.insert.i.i = or i32 %.3.insert.shift.i.i, %.0.insert.ext.i.i
  %.2.insert.insert.i.i = or i32 %.1.insert.insert.i.i, %.1.insert.shift.i.i
  %.3.insert.insert.i.i = or i32 %.2.insert.insert.i.i, %.2.insert.shift.i.i
  %28 = bitcast float* %1 to i32*
  store i32 %.3.insert.insert.i.i, i32* %28, align 4, !tbaa !115
  br label %aws_byte_cursor_read.exit.thread

aws_byte_cursor_read.exit.thread:                 ; preds = %2, %aws_byte_cursor_advance_nospec.exit.i, %24
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc float @aws_ntohf32(float %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = bitcast float %0 to i32
  %.2.extract.shift.i = lshr i32 %2, 16
  %.2.extract.trunc.i = trunc i32 %.2.extract.shift.i to i8
  %.1.insert.ext.i = zext i8 %.2.extract.trunc.i to i32
  %.1.insert.shift.i = shl nuw nsw i32 %.1.insert.ext.i, 8
  %.3.extract.shift.i = lshr i32 %2, 24
  %.3.extract.trunc.i = trunc i32 %.3.extract.shift.i to i8
  %.0.insert.ext.i = zext i8 %.3.extract.trunc.i to i32
  %.1.extract.shift.i = lshr i32 %2, 8
  %.1.extract.trunc.i = trunc i32 %.1.extract.shift.i to i8
  %.2.insert.ext.i = zext i8 %.1.extract.trunc.i to i32
  %.2.insert.shift.i = shl nuw nsw i32 %.2.insert.ext.i, 16
  %.0.extract.trunc.i = trunc i32 %2 to i8
  %.3.insert.ext.i = zext i8 %.0.extract.trunc.i to i32
  %.3.insert.shift.i = shl nuw i32 %.3.insert.ext.i, 24
  %.1.insert.insert.i = or i32 %.3.insert.shift.i, %.0.insert.ext.i
  %.2.insert.insert.i = or i32 %.1.insert.insert.i, %.1.insert.shift.i
  %.3.insert.insert.i = or i32 %.2.insert.insert.i, %.2.insert.shift.i
  %3 = bitcast i32 %.3.insert.insert.i to float
  ret float %3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc float @aws_htonf32(float %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = bitcast float %0 to i32
  %.2.extract.shift = lshr i32 %2, 16
  %.2.extract.trunc = trunc i32 %.2.extract.shift to i8
  %.1.insert.ext = zext i8 %.2.extract.trunc to i32
  %.1.insert.shift = shl nuw nsw i32 %.1.insert.ext, 8
  %.3.extract.shift = lshr i32 %2, 24
  %.3.extract.trunc = trunc i32 %.3.extract.shift to i8
  %.0.insert.ext = zext i8 %.3.extract.trunc to i32
  %.1.extract.shift = lshr i32 %2, 8
  %.1.extract.trunc = trunc i32 %.1.extract.shift to i8
  %.2.insert.ext = zext i8 %.1.extract.trunc to i32
  %.2.insert.shift = shl nuw nsw i32 %.2.insert.ext, 16
  %.0.extract.trunc = trunc i32 %2 to i8
  %.3.insert.ext = zext i8 %.0.extract.trunc to i32
  %.3.insert.shift = shl nuw i32 %.3.insert.ext, 24
  %.1.insert.insert = or i32 %.3.insert.shift, %.0.insert.ext
  %.2.insert.insert = or i32 %.1.insert.insert, %.1.insert.shift
  %.3.insert.insert = or i32 %.2.insert.insert, %.2.insert.shift
  %3 = bitcast i32 %.3.insert.insert to float
  ret float %3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_is_big_endian() unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_float_be64(%struct.aws_byte_cursor* nocapture %0, double* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !117
  tail call void @seahorn.fn.enter() #18, !noalias !117
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43, !alias.scope !121, !noalias !122
  %5 = icmp ugt i32 %4, 7
  %6 = icmp sgt i32 %4, -1
  %or.cond3.i.i = and i1 %6, %5
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit.thread, !prof !94

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %2
  %7 = add nuw i32 %4, 1
  tail call void @seahorn.fn.enter() #18, !noalias !117
  %8 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 8) #18, !noalias !117, !srcloc !75
  %9 = or i32 %8, %7
  %10 = sub i32 %4, %8
  %11 = or i32 %9, %10
  %12 = icmp sgt i32 %11, -1
  %13 = sext i1 %12 to i32
  %14 = and i32 %13, 8
  %15 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !45, !alias.scope !121, !noalias !122
  %17 = ptrtoint i8* %16 to i32
  %18 = and i32 %13, %17
  %19 = inttoptr i32 %18 to i8*
  %20 = and i32 %4, %13
  %21 = icmp eq i32 %18, 0
  %22 = getelementptr inbounds i8, i8* %19, i32 %14
  %spec.select.i.i = select i1 %21, i8* null, i8* %22
  store i8* %spec.select.i.i, i8** %15, align 4, !tbaa !45, !alias.scope !121, !noalias !122
  %23 = sub nsw i32 %20, %14
  store i32 %23, i32* %3, align 4, !tbaa !43, !alias.scope !121, !noalias !122
  br i1 %21, label %aws_byte_cursor_read.exit.thread, label %24, !prof !95

24:                                               ; preds = %aws_byte_cursor_advance_nospec.exit.i
  %25 = inttoptr i32 %18 to i64*
  %26 = bitcast double* %1 to i64*
  %27 = load i64, i64* %25, align 1
  store i64 %27, i64* %26, align 1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %.6.extract.shift.i.i = lshr i64 %27, 48
  %.6.extract.trunc.i.i = trunc i64 %.6.extract.shift.i.i to i8
  %.1.insert.ext.i.i = zext i8 %.6.extract.trunc.i.i to i64
  %.1.insert.shift.i.i = shl nuw nsw i64 %.1.insert.ext.i.i, 8
  %.7.extract.shift.i.i = lshr i64 %27, 56
  %.7.extract.trunc.i.i = trunc i64 %.7.extract.shift.i.i to i8
  %.0.insert.ext.i.i = zext i8 %.7.extract.trunc.i.i to i64
  %.5.extract.shift.i.i = lshr i64 %27, 40
  %.5.extract.trunc.i.i = trunc i64 %.5.extract.shift.i.i to i8
  %.2.insert.ext.i.i = zext i8 %.5.extract.trunc.i.i to i64
  %.2.insert.shift.i.i = shl nuw nsw i64 %.2.insert.ext.i.i, 16
  %.4.extract.shift.i.i = lshr i64 %27, 32
  %.4.extract.trunc.i.i = trunc i64 %.4.extract.shift.i.i to i8
  %.3.insert.ext.i.i = zext i8 %.4.extract.trunc.i.i to i64
  %.3.insert.shift.i.i = shl nuw nsw i64 %.3.insert.ext.i.i, 24
  %.3.extract.shift.i.i = lshr i64 %27, 24
  %.3.extract.trunc.i.i = trunc i64 %.3.extract.shift.i.i to i8
  %.4.insert.ext.i.i = zext i8 %.3.extract.trunc.i.i to i64
  %.4.insert.shift.i.i = shl nuw nsw i64 %.4.insert.ext.i.i, 32
  %.2.extract.shift.i.i = lshr i64 %27, 16
  %.2.extract.trunc.i.i = trunc i64 %.2.extract.shift.i.i to i8
  %.5.insert.ext.i.i = zext i8 %.2.extract.trunc.i.i to i64
  %.5.insert.shift.i.i = shl nuw nsw i64 %.5.insert.ext.i.i, 40
  %.1.extract.shift.i.i = lshr i64 %27, 8
  %.1.extract.trunc.i.i = trunc i64 %.1.extract.shift.i.i to i8
  %.6.insert.ext.i.i = zext i8 %.1.extract.trunc.i.i to i64
  %.6.insert.shift.i.i = shl nuw nsw i64 %.6.insert.ext.i.i, 48
  %.0.extract.trunc.i.i = trunc i64 %27 to i8
  %.7.insert.ext.i.i = zext i8 %.0.extract.trunc.i.i to i64
  %.7.insert.shift.i.i = shl nuw i64 %.7.insert.ext.i.i, 56
  %.1.insert.insert.i.i = or i64 %.7.insert.shift.i.i, %.0.insert.ext.i.i
  %.2.insert.insert.i.i = or i64 %.1.insert.insert.i.i, %.1.insert.shift.i.i
  %.3.insert.insert.i.i = or i64 %.2.insert.insert.i.i, %.2.insert.shift.i.i
  %.5.insert.mask.masked.masked.i.i = or i64 %.3.insert.insert.i.i, %.3.insert.shift.i.i
  %.6.insert.mask.masked.i.i = or i64 %.5.insert.mask.masked.masked.i.i, %.4.insert.shift.i.i
  %.7.insert.mask.i.i = or i64 %.6.insert.mask.masked.i.i, %.5.insert.shift.i.i
  %.7.insert.insert.i.i = or i64 %.7.insert.mask.i.i, %.6.insert.shift.i.i
  %28 = bitcast double* %1 to i64*
  store i64 %.7.insert.insert.i.i, i64* %28, align 4, !tbaa !123
  br label %aws_byte_cursor_read.exit.thread

aws_byte_cursor_read.exit.thread:                 ; preds = %2, %aws_byte_cursor_advance_nospec.exit.i, %24
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc double @aws_ntohf64(double %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = bitcast double %0 to i64
  %.6.extract.shift.i = lshr i64 %2, 48
  %.6.extract.trunc.i = trunc i64 %.6.extract.shift.i to i8
  %.1.insert.ext.i = zext i8 %.6.extract.trunc.i to i64
  %.1.insert.shift.i = shl nuw nsw i64 %.1.insert.ext.i, 8
  %.7.extract.shift.i = lshr i64 %2, 56
  %.7.extract.trunc.i = trunc i64 %.7.extract.shift.i to i8
  %.0.insert.ext.i = zext i8 %.7.extract.trunc.i to i64
  %.5.extract.shift.i = lshr i64 %2, 40
  %.5.extract.trunc.i = trunc i64 %.5.extract.shift.i to i8
  %.2.insert.ext.i = zext i8 %.5.extract.trunc.i to i64
  %.2.insert.shift.i = shl nuw nsw i64 %.2.insert.ext.i, 16
  %.4.extract.shift.i = lshr i64 %2, 32
  %.4.extract.trunc.i = trunc i64 %.4.extract.shift.i to i8
  %.3.insert.ext.i = zext i8 %.4.extract.trunc.i to i64
  %.3.insert.shift.i = shl nuw nsw i64 %.3.insert.ext.i, 24
  %.3.extract.shift.i = lshr i64 %2, 24
  %.3.extract.trunc.i = trunc i64 %.3.extract.shift.i to i8
  %.4.insert.ext.i = zext i8 %.3.extract.trunc.i to i64
  %.4.insert.shift.i = shl nuw nsw i64 %.4.insert.ext.i, 32
  %.2.extract.shift.i = lshr i64 %2, 16
  %.2.extract.trunc.i = trunc i64 %.2.extract.shift.i to i8
  %.5.insert.ext.i = zext i8 %.2.extract.trunc.i to i64
  %.5.insert.shift.i = shl nuw nsw i64 %.5.insert.ext.i, 40
  %.1.extract.shift.i = lshr i64 %2, 8
  %.1.extract.trunc.i = trunc i64 %.1.extract.shift.i to i8
  %.6.insert.ext.i = zext i8 %.1.extract.trunc.i to i64
  %.6.insert.shift.i = shl nuw nsw i64 %.6.insert.ext.i, 48
  %.0.extract.trunc.i = trunc i64 %2 to i8
  %.7.insert.ext.i = zext i8 %.0.extract.trunc.i to i64
  %.7.insert.shift.i = shl nuw i64 %.7.insert.ext.i, 56
  %.1.insert.insert.i = or i64 %.7.insert.shift.i, %.0.insert.ext.i
  %.2.insert.insert.i = or i64 %.1.insert.insert.i, %.1.insert.shift.i
  %.3.insert.insert.i = or i64 %.2.insert.insert.i, %.2.insert.shift.i
  %.5.insert.mask.masked.masked.i = or i64 %.3.insert.insert.i, %.3.insert.shift.i
  %.6.insert.mask.masked.i = or i64 %.5.insert.mask.masked.masked.i, %.4.insert.shift.i
  %.7.insert.mask.i = or i64 %.6.insert.mask.masked.i, %.5.insert.shift.i
  %.7.insert.insert.i = or i64 %.7.insert.mask.i, %.6.insert.shift.i
  %3 = bitcast i64 %.7.insert.insert.i to double
  ret double %3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc double @aws_htonf64(double %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = bitcast double %0 to i64
  %.6.extract.shift = lshr i64 %2, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  %.1.insert.ext = zext i8 %.6.extract.trunc to i64
  %.1.insert.shift = shl nuw nsw i64 %.1.insert.ext, 8
  %.7.extract.shift = lshr i64 %2, 56
  %.7.extract.trunc = trunc i64 %.7.extract.shift to i8
  %.0.insert.ext = zext i8 %.7.extract.trunc to i64
  %.5.extract.shift = lshr i64 %2, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  %.2.insert.ext = zext i8 %.5.extract.trunc to i64
  %.2.insert.shift = shl nuw nsw i64 %.2.insert.ext, 16
  %.4.extract.shift = lshr i64 %2, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  %.3.insert.ext = zext i8 %.4.extract.trunc to i64
  %.3.insert.shift = shl nuw nsw i64 %.3.insert.ext, 24
  %.3.extract.shift = lshr i64 %2, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  %.4.insert.ext = zext i8 %.3.extract.trunc to i64
  %.4.insert.shift = shl nuw nsw i64 %.4.insert.ext, 32
  %.2.extract.shift = lshr i64 %2, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  %.5.insert.ext = zext i8 %.2.extract.trunc to i64
  %.5.insert.shift = shl nuw nsw i64 %.5.insert.ext, 40
  %.1.extract.shift = lshr i64 %2, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8
  %.6.insert.ext = zext i8 %.1.extract.trunc to i64
  %.6.insert.shift = shl nuw nsw i64 %.6.insert.ext, 48
  %.0.extract.trunc = trunc i64 %2 to i8
  %.7.insert.ext = zext i8 %.0.extract.trunc to i64
  %.7.insert.shift = shl nuw i64 %.7.insert.ext, 56
  %.1.insert.insert = or i64 %.7.insert.shift, %.0.insert.ext
  %.2.insert.insert = or i64 %.1.insert.insert, %.1.insert.shift
  %.3.insert.insert = or i64 %.2.insert.insert, %.2.insert.shift
  %.5.insert.mask.masked.masked = or i64 %.3.insert.insert, %.3.insert.shift
  %.6.insert.mask.masked = or i64 %.5.insert.mask.masked.masked, %.4.insert.shift
  %.7.insert.mask = or i64 %.6.insert.mask.masked, %.5.insert.shift
  %.7.insert.insert = or i64 %.7.insert.mask, %.6.insert.shift
  %3 = bitcast i64 %.7.insert.insert to double
  ret double %3
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_be64(%struct.aws_byte_cursor* nocapture %0, i64* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !125
  tail call void @seahorn.fn.enter() #18, !noalias !125
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43, !alias.scope !129, !noalias !130
  %5 = icmp ugt i32 %4, 7
  %6 = icmp sgt i32 %4, -1
  %or.cond3.i.i = and i1 %6, %5
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit.thread, !prof !94

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %2
  %7 = add nuw i32 %4, 1
  tail call void @seahorn.fn.enter() #18, !noalias !125
  %8 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 8) #18, !noalias !125, !srcloc !75
  %9 = or i32 %8, %7
  %10 = sub i32 %4, %8
  %11 = or i32 %9, %10
  %12 = icmp sgt i32 %11, -1
  %13 = sext i1 %12 to i32
  %14 = and i32 %13, 8
  %15 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !45, !alias.scope !129, !noalias !130
  %17 = ptrtoint i8* %16 to i32
  %18 = and i32 %13, %17
  %19 = inttoptr i32 %18 to i8*
  %20 = and i32 %4, %13
  %21 = icmp eq i32 %18, 0
  %22 = getelementptr inbounds i8, i8* %19, i32 %14
  %spec.select.i.i = select i1 %21, i8* null, i8* %22
  store i8* %spec.select.i.i, i8** %15, align 4, !tbaa !45, !alias.scope !129, !noalias !130
  %23 = sub nsw i32 %20, %14
  store i32 %23, i32* %3, align 4, !tbaa !43, !alias.scope !129, !noalias !130
  br i1 %21, label %aws_byte_cursor_read.exit.thread, label %aws_ntoh64.exit, !prof !95

aws_ntoh64.exit:                                  ; preds = %aws_byte_cursor_advance_nospec.exit.i
  %24 = inttoptr i32 %18 to i64*
  %25 = load i64, i64* %24, align 1
  store i64 %25, i64* %1, align 1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  tail call void @seahorn.fn.enter() #18
  %28 = trunc i64 %25 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #18
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 %30, 32
  tail call void @seahorn.fn.enter() #18
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #18
  %33 = zext i32 %32 to i64
  %34 = or i64 %31, %33
  store i64 %34, i64* %1, align 4, !tbaa !131
  br label %aws_byte_cursor_read.exit.thread

aws_byte_cursor_read.exit.thread:                 ; preds = %2, %aws_byte_cursor_advance_nospec.exit.i, %aws_ntoh64.exit
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i64 @aws_ntoh64(i64 %0) unnamed_addr #4 {
aws_hton64.exit:
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %1 = lshr i64 %0, 32
  %2 = trunc i64 %1 to i32
  tail call void @seahorn.fn.enter() #18
  %3 = trunc i64 %0 to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #18
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  tail call void @seahorn.fn.enter() #18
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  %8 = zext i32 %7 to i64
  %9 = or i64 %6, %8
  ret i64 %9
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i64 @aws_hton64(i64 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  tail call void @seahorn.fn.enter() #18
  %4 = trunc i64 %0 to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #18
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  tail call void @seahorn.fn.enter() #18
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #18
  %9 = zext i32 %8 to i64
  %10 = or i64 %7, %9
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_lookup_table_hex_to_num_get() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_read_hex_u8(%struct.aws_byte_cursor* nocapture %0, i8* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !43
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %28, label %6, !prof !47, !misexpect !133

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %8 = load i8*, i8** %7, align 4, !tbaa !45
  %9 = load i8, i8* %8, align 1, !tbaa !70
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @s_hex_to_num_table, i32 0, i32 %10
  %12 = load i8, i8* %11, align 1, !tbaa !70
  %13 = getelementptr inbounds i8, i8* %8, i32 1
  %14 = load i8, i8* %13, align 1, !tbaa !70
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @s_hex_to_num_table, i32 0, i32 %15
  %17 = load i8, i8* %16, align 1, !tbaa !70
  %18 = icmp eq i8 %12, -1
  %19 = icmp eq i8 %17, -1
  %20 = or i1 %18, %19
  br i1 %20, label %28, label %21, !prof !47, !misexpect !133

21:                                               ; preds = %6
  %22 = shl i8 %12, 4
  %23 = or i8 %17, %22
  store i8 %23, i8* %1, align 1, !tbaa !70
  %24 = load i8*, i8** %7, align 4, !tbaa !45
  %25 = getelementptr inbounds i8, i8* %24, i32 2
  store i8* %25, i8** %7, align 4, !tbaa !45
  %26 = load i32, i32* %3, align 4, !tbaa !43
  %27 = add i32 %26, -2
  store i32 %27, i32* %3, align 4, !tbaa !43
  br label %28

28:                                               ; preds = %21, %6, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_advance(%struct.aws_byte_buf* noalias nocapture %0, %struct.aws_byte_buf* noalias %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40
  %8 = sub i32 %5, %7
  %9 = icmp ult i32 %8, %2
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %12 = load i8*, i8** %11, align 4, !tbaa !38
  %13 = icmp eq i8* %12, null
  %14 = getelementptr inbounds i8, i8* %12, i32 %7
  tail call void @seahorn.fn.enter() #18, !noalias !134
  %15 = icmp eq i32 %2, 0
  %16 = or i1 %15, %13
  %17 = select i1 %16, i8* null, i8* %14
  %.repack = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  %.repack8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  store i8* %17, i8** %.repack8, align 4
  %.repack10 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  store i32 %2, i32* %.repack10, align 4
  %.repack12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack12, align 4
  %18 = add i32 %7, %2
  store i32 %18, i32* %6, align 4, !tbaa !40
  store i32 0, i32* %.repack, align 4, !tbaa !40
  br label %21

19:                                               ; preds = %3
  %20 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %20, i8 0, i32 16, i1 false) #18
  br label %21

21:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_buf_write(%struct.aws_byte_buf* noalias nocapture %0, i8* noalias %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40
  %8 = icmp slt i32 %7, 0
  %9 = icmp slt i32 %2, 0
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %19, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %7, %2
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !41
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !38
  %18 = getelementptr inbounds i8, i8* %17, i32 %7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %18, i8* align 1 %1, i32 %2, i1 false) #18
  store i32 %11, i32* %6, align 4, !tbaa !40
  br label %19

19:                                               ; preds = %15, %10, %5, %3
  %.0 = phi i1 [ true, %15 ], [ true, %3 ], [ false, %10 ], [ false, %5 ]
  ret i1 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_from_whole_buffer(%struct.aws_byte_buf* noalias nocapture %0, i32 %1, i8* %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !137
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %aws_byte_buf_write.exit, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40, !alias.scope !141, !noalias !142
  %8 = icmp slt i32 %7, 0
  %9 = icmp slt i32 %1, 0
  %or.cond.i = or i1 %9, %8
  br i1 %or.cond.i, label %aws_byte_buf_write.exit, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %7, %1
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !41, !alias.scope !141, !noalias !142
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %aws_byte_buf_write.exit, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !38, !alias.scope !141, !noalias !142
  %18 = getelementptr inbounds i8, i8* %17, i32 %7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %18, i8* align 1 %2, i32 %1, i1 false) #18
  store i32 %11, i32* %6, align 4, !tbaa !40, !alias.scope !141, !noalias !142
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %3, %5, %10, %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_from_whole_cursor(%struct.aws_byte_buf* noalias nocapture %0, i32 %1, i8* %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18, !noalias !143
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %aws_byte_buf_write.exit, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40, !alias.scope !147, !noalias !148
  %8 = icmp slt i32 %7, 0
  %9 = icmp slt i32 %1, 0
  %or.cond.i = or i1 %9, %8
  br i1 %or.cond.i, label %aws_byte_buf_write.exit, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %7, %1
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !41, !alias.scope !147, !noalias !148
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %aws_byte_buf_write.exit, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !38, !alias.scope !147, !noalias !148
  %18 = getelementptr inbounds i8, i8* %17, i32 %7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %18, i8* align 1 %2, i32 %1, i1 false) #18
  store i32 %11, i32* %6, align 4, !tbaa !40, !alias.scope !147, !noalias !148
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %3, %5, %10, %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_to_capacity(%struct.aws_byte_buf* nocapture %0, %struct.aws_byte_cursor* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !41
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !43
  tail call void @seahorn.fn.enter() #18
  %10 = icmp ult i32 %7, %9
  %11 = select i1 %10, i32 %7, i32 %9
  tail call void @seahorn.fn.enter() #18
  %12 = icmp slt i32 %9, 0
  %13 = icmp slt i32 %11, 0
  %or.cond.i = or i1 %12, %13
  br i1 %or.cond.i, label %aws_byte_cursor_advance.exit, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !45
  %17 = icmp eq i8* %16, null
  %18 = getelementptr inbounds i8, i8* %16, i32 %11
  %spec.select.i = select i1 %17, i8* null, i8* %18
  store i8* %spec.select.i, i8** %15, align 4, !tbaa !45
  %19 = sub nsw i32 %9, %11
  store i32 %19, i32* %8, align 4, !tbaa !43
  br label %aws_byte_cursor_advance.exit

aws_byte_cursor_advance.exit:                     ; preds = %2, %14
  %.sroa.3.0.i.off32 = phi i8* [ %16, %14 ], [ null, %2 ]
  %.sroa.0.0.i.off0 = phi i32 [ %11, %14 ], [ 0, %2 ]
  tail call void @seahorn.fn.enter() #18, !noalias !149
  tail call void @seahorn.fn.enter() #18, !noalias !152
  %20 = icmp eq i32 %.sroa.0.0.i.off0, 0
  %21 = icmp slt i32 %6, 0
  %or.cond = or i1 %20, %21
  br i1 %or.cond, label %aws_byte_buf_write_from_whole_cursor.exit, label %22

22:                                               ; preds = %aws_byte_cursor_advance.exit
  %23 = add nuw i32 %.sroa.0.0.i.off0, %6
  %24 = icmp ugt i32 %23, %4
  br i1 %24, label %aws_byte_buf_write_from_whole_cursor.exit, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %27 = load i8*, i8** %26, align 4, !tbaa !38, !alias.scope !156, !noalias !157
  %28 = getelementptr inbounds i8, i8* %27, i32 %6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %28, i8* align 1 %.sroa.3.0.i.off32, i32 %.sroa.0.0.i.off0, i1 false) #18
  store i32 %23, i32* %5, align 4, !tbaa !40, !alias.scope !156, !noalias !157
  br label %aws_byte_buf_write_from_whole_cursor.exit

aws_byte_buf_write_from_whole_cursor.exit:        ; preds = %aws_byte_cursor_advance.exit, %22, %25
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_min_size(i32 %0, i32 %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %3 = icmp ult i32 %0, %1
  %4 = select i1 %3, i32 %0, i32 %1
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_u8(%struct.aws_byte_buf* noalias nocapture %0, i8 zeroext %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = alloca i8, align 1
  store i8 %1, i8* %3, align 1, !tbaa !70
  tail call void @seahorn.fn.enter() #18, !noalias !158
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40, !alias.scope !162, !noalias !163
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %aws_byte_buf_write.exit, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa !41, !alias.scope !162, !noalias !163
  %10 = icmp ult i32 %5, %9
  br i1 %10, label %11, label %aws_byte_buf_write.exit

11:                                               ; preds = %7
  %12 = add nuw i32 %5, 1
  %13 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %14 = load i8*, i8** %13, align 4, !tbaa !38, !alias.scope !162, !noalias !163
  %15 = getelementptr inbounds i8, i8* %14, i32 %5
  %16 = load i8, i8* %3, align 1
  store i8 %16, i8* %15, align 1
  store i32 %12, i32* %4, align 4, !tbaa !40, !alias.scope !162, !noalias !163
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %7, %2, %11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_u8_n(%struct.aws_byte_buf* nocapture %0, i8 zeroext %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp slt i32 %5, 0
  %7 = icmp slt i32 %2, 0
  %or.cond = or i1 %7, %6
  br i1 %or.cond, label %19, label %8

8:                                                ; preds = %3
  %9 = add nuw i32 %5, %2
  %10 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %11 = load i32, i32* %10, align 4, !tbaa !41
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %15 = load i8*, i8** %14, align 4, !tbaa !38
  %16 = getelementptr inbounds i8, i8* %15, i32 %5
  call void @llvm.memset.p0i8.i32(i8* align 1 %16, i8 %1, i32 %2, i1 false) #18
  %17 = load i32, i32* %4, align 4, !tbaa !40
  %18 = add i32 %17, %2
  store i32 %18, i32* %4, align 4, !tbaa !40
  br label %19

19:                                               ; preds = %13, %8, %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_be16(%struct.aws_byte_buf* nocapture %0, i16 zeroext %1) unnamed_addr #1 {
aws_hton16.exit:
  tail call void @seahorn.fn.enter() #18
  %2 = alloca i16, align 2
  store i16 %1, i16* %2, align 2, !tbaa !96
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %rev.i.i = tail call i16 @llvm.bswap.i16(i16 %1) #18
  store i16 %rev.i.i, i16* %2, align 2, !tbaa !96
  tail call void @seahorn.fn.enter() #18, !noalias !164
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !40, !alias.scope !168, !noalias !169
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %aws_byte_buf_write.exit, label %6

6:                                                ; preds = %aws_hton16.exit
  %7 = add nuw i32 %4, 2
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa !41, !alias.scope !168, !noalias !169
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %aws_byte_buf_write.exit, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !38, !alias.scope !168, !noalias !169
  %14 = getelementptr inbounds i8, i8* %13, i32 %4
  %15 = bitcast i8* %14 to i16*
  %16 = load i16, i16* %2, align 2
  store i16 %16, i16* %15, align 1
  store i32 %7, i32* %3, align 4, !tbaa !40, !alias.scope !168, !noalias !169
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %aws_hton16.exit, %6, %11
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i16 @aws_hton16(i16 zeroext %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %0) #18
  ret i16 %rev.i
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_be24(%struct.aws_byte_buf* nocapture %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = alloca i32, align 4
  %4 = icmp ugt i32 %1, 16777215
  br i1 %4, label %20, label %aws_hton32.exit

aws_hton32.exit:                                  ; preds = %2
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #18
  store i32 %6, i32* %3, align 4, !tbaa !17
  %7 = getelementptr inbounds i8, i8* %5, i32 1
  tail call void @seahorn.fn.enter() #18, !noalias !170
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !40, !alias.scope !174, !noalias !175
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %aws_byte_buf_write.exit, label %11

11:                                               ; preds = %aws_hton32.exit
  %12 = add nuw i32 %9, 3
  %13 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !41, !alias.scope !174, !noalias !175
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %aws_byte_buf_write.exit, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %18 = load i8*, i8** %17, align 4, !tbaa !38, !alias.scope !174, !noalias !175
  %19 = getelementptr inbounds i8, i8* %18, i32 %9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %19, i8* nonnull align 1 dereferenceable(3) %7, i32 3, i1 false) #18
  store i32 %12, i32* %8, align 4, !tbaa !40, !alias.scope !174, !noalias !175
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %aws_hton32.exit, %11, %16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18
  br label %20

20:                                               ; preds = %aws_byte_buf_write.exit, %2
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_hton32(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %2 = tail call i32 @llvm.bswap.i32(i32 %0) #18
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_be32(%struct.aws_byte_buf* nocapture %0, i32 %1) unnamed_addr #1 {
aws_hton32.exit:
  tail call void @seahorn.fn.enter() #18
  %2 = alloca i32, align 4
  store i32 %1, i32* %2, align 4, !tbaa !17
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %3 = tail call i32 @llvm.bswap.i32(i32 %1) #18
  store i32 %3, i32* %2, align 4, !tbaa !17
  tail call void @seahorn.fn.enter() #18, !noalias !176
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40, !alias.scope !180, !noalias !181
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %aws_byte_buf_write.exit, label %7

7:                                                ; preds = %aws_hton32.exit
  %8 = add nuw i32 %5, 4
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %10 = load i32, i32* %9, align 4, !tbaa !41, !alias.scope !180, !noalias !181
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %aws_byte_buf_write.exit, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %14 = load i8*, i8** %13, align 4, !tbaa !38, !alias.scope !180, !noalias !181
  %15 = getelementptr inbounds i8, i8* %14, i32 %5
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %16, align 1
  store i32 %8, i32* %4, align 4, !tbaa !40, !alias.scope !180, !noalias !181
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %aws_hton32.exit, %7, %12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_float_be32(%struct.aws_byte_buf* nocapture %0, float %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = alloca float, align 4
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %4 = bitcast float %1 to i32
  %.2.extract.shift.i = lshr i32 %4, 16
  %.2.extract.trunc.i = trunc i32 %.2.extract.shift.i to i8
  %.1.insert.ext.i = zext i8 %.2.extract.trunc.i to i32
  %.1.insert.shift.i = shl nuw nsw i32 %.1.insert.ext.i, 8
  %.3.extract.shift.i = lshr i32 %4, 24
  %.3.extract.trunc.i = trunc i32 %.3.extract.shift.i to i8
  %.0.insert.ext.i = zext i8 %.3.extract.trunc.i to i32
  %.1.extract.shift.i = lshr i32 %4, 8
  %.1.extract.trunc.i = trunc i32 %.1.extract.shift.i to i8
  %.2.insert.ext.i = zext i8 %.1.extract.trunc.i to i32
  %.2.insert.shift.i = shl nuw nsw i32 %.2.insert.ext.i, 16
  %.0.extract.trunc.i = trunc i32 %4 to i8
  %.3.insert.ext.i = zext i8 %.0.extract.trunc.i to i32
  %.3.insert.shift.i = shl nuw i32 %.3.insert.ext.i, 24
  %.1.insert.insert.i = or i32 %.3.insert.shift.i, %.0.insert.ext.i
  %.2.insert.insert.i = or i32 %.1.insert.insert.i, %.1.insert.shift.i
  %.3.insert.insert.i = or i32 %.2.insert.insert.i, %.2.insert.shift.i
  %5 = bitcast float* %3 to i32*
  store i32 %.3.insert.insert.i, i32* %5, align 4, !tbaa !115
  tail call void @seahorn.fn.enter() #18, !noalias !182
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40, !alias.scope !186, !noalias !187
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %aws_byte_buf_write.exit, label %9

9:                                                ; preds = %2
  %10 = add nuw i32 %7, 4
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !41, !alias.scope !186, !noalias !187
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %aws_byte_buf_write.exit, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !38, !alias.scope !186, !noalias !187
  %17 = getelementptr inbounds i8, i8* %16, i32 %7
  %18 = bitcast float* %3 to i32*
  %19 = bitcast i8* %17 to i32*
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %19, align 1
  store i32 %10, i32* %6, align 4, !tbaa !40, !alias.scope !186, !noalias !187
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %2, %9, %14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_be64(%struct.aws_byte_buf* nocapture %0, i64 %1) unnamed_addr #1 {
aws_hton64.exit:
  tail call void @seahorn.fn.enter() #18
  %2 = alloca i64, align 8
  store i64 %1, i64* %2, align 8, !tbaa !131
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  tail call void @seahorn.fn.enter() #18
  %5 = trunc i64 %1 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #18
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  tail call void @seahorn.fn.enter() #18
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #18
  %10 = zext i32 %9 to i64
  %11 = or i64 %8, %10
  store i64 %11, i64* %2, align 8, !tbaa !131
  tail call void @seahorn.fn.enter() #18, !noalias !188
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %13 = load i32, i32* %12, align 4, !tbaa !40, !alias.scope !192, !noalias !193
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %aws_byte_buf_write.exit, label %15

15:                                               ; preds = %aws_hton64.exit
  %16 = add nuw i32 %13, 8
  %17 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !41, !alias.scope !192, !noalias !193
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %aws_byte_buf_write.exit, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %22 = load i8*, i8** %21, align 4, !tbaa !38, !alias.scope !192, !noalias !193
  %23 = getelementptr inbounds i8, i8* %22, i32 %13
  %24 = bitcast i8* %23 to i64*
  %25 = load i64, i64* %2, align 8
  store i64 %25, i64* %24, align 1
  store i32 %16, i32* %12, align 4, !tbaa !40, !alias.scope !192, !noalias !193
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %aws_hton64.exit, %15, %20
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_float_be64(%struct.aws_byte_buf* nocapture %0, double %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = alloca double, align 8
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %4 = bitcast double %1 to i64
  %.6.extract.shift.i = lshr i64 %4, 48
  %.6.extract.trunc.i = trunc i64 %.6.extract.shift.i to i8
  %.1.insert.ext.i = zext i8 %.6.extract.trunc.i to i64
  %.1.insert.shift.i = shl nuw nsw i64 %.1.insert.ext.i, 8
  %.7.extract.shift.i = lshr i64 %4, 56
  %.7.extract.trunc.i = trunc i64 %.7.extract.shift.i to i8
  %.0.insert.ext.i = zext i8 %.7.extract.trunc.i to i64
  %.5.extract.shift.i = lshr i64 %4, 40
  %.5.extract.trunc.i = trunc i64 %.5.extract.shift.i to i8
  %.2.insert.ext.i = zext i8 %.5.extract.trunc.i to i64
  %.2.insert.shift.i = shl nuw nsw i64 %.2.insert.ext.i, 16
  %.4.extract.shift.i = lshr i64 %4, 32
  %.4.extract.trunc.i = trunc i64 %.4.extract.shift.i to i8
  %.3.insert.ext.i = zext i8 %.4.extract.trunc.i to i64
  %.3.insert.shift.i = shl nuw nsw i64 %.3.insert.ext.i, 24
  %.3.extract.shift.i = lshr i64 %4, 24
  %.3.extract.trunc.i = trunc i64 %.3.extract.shift.i to i8
  %.4.insert.ext.i = zext i8 %.3.extract.trunc.i to i64
  %.4.insert.shift.i = shl nuw nsw i64 %.4.insert.ext.i, 32
  %.2.extract.shift.i = lshr i64 %4, 16
  %.2.extract.trunc.i = trunc i64 %.2.extract.shift.i to i8
  %.5.insert.ext.i = zext i8 %.2.extract.trunc.i to i64
  %.5.insert.shift.i = shl nuw nsw i64 %.5.insert.ext.i, 40
  %.1.extract.shift.i = lshr i64 %4, 8
  %.1.extract.trunc.i = trunc i64 %.1.extract.shift.i to i8
  %.6.insert.ext.i = zext i8 %.1.extract.trunc.i to i64
  %.6.insert.shift.i = shl nuw nsw i64 %.6.insert.ext.i, 48
  %.0.extract.trunc.i = trunc i64 %4 to i8
  %.7.insert.ext.i = zext i8 %.0.extract.trunc.i to i64
  %.7.insert.shift.i = shl nuw i64 %.7.insert.ext.i, 56
  %.1.insert.insert.i = or i64 %.7.insert.shift.i, %.0.insert.ext.i
  %.2.insert.insert.i = or i64 %.1.insert.insert.i, %.1.insert.shift.i
  %.3.insert.insert.i = or i64 %.2.insert.insert.i, %.2.insert.shift.i
  %.5.insert.mask.masked.masked.i = or i64 %.3.insert.insert.i, %.3.insert.shift.i
  %.6.insert.mask.masked.i = or i64 %.5.insert.mask.masked.masked.i, %.4.insert.shift.i
  %.7.insert.mask.i = or i64 %.6.insert.mask.masked.i, %.5.insert.shift.i
  %.7.insert.insert.i = or i64 %.7.insert.mask.i, %.6.insert.shift.i
  %5 = bitcast double* %3 to i64*
  store i64 %.7.insert.insert.i, i64* %5, align 8, !tbaa !123
  tail call void @seahorn.fn.enter() #18, !noalias !194
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40, !alias.scope !198, !noalias !199
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %aws_byte_buf_write.exit, label %9

9:                                                ; preds = %2
  %10 = add nuw i32 %7, 8
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !41, !alias.scope !198, !noalias !199
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %aws_byte_buf_write.exit, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !38, !alias.scope !198, !noalias !199
  %17 = getelementptr inbounds i8, i8* %16, i32 %7
  %18 = bitcast double* %3 to i64*
  %19 = bitcast i8* %17 to i64*
  %20 = load i64, i64* %18, align 8
  store i64 %20, i64* %19, align 1
  store i32 %10, i32* %6, align 4, !tbaa !40, !alias.scope !198, !noalias !199
  br label %aws_byte_buf_write.exit

aws_byte_buf_write.exit:                          ; preds = %2, %9, %14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_append_null_terminator(%struct.aws_byte_buf* nocapture %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  tail call fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %0, %struct.aws_byte_cursor* nonnull @s_null_terminator_cursor, i1 zeroext false) #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_isalnum(i8 zeroext %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_isalpha(i8 zeroext %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_isdigit(i8 zeroext %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_isxdigit(i8 zeroext %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_isspace(i8 zeroext %0) unnamed_addr #1 {
NodeBlock:
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_init(%struct.aws_ring_buffer* %0, %struct.aws_allocator* %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = bitcast %struct.aws_ring_buffer* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false) #18
  %5 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %1, i32 %2)
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  store i8* %5, i8** %6, align 4, !tbaa !5
  %7 = icmp eq i8* %5, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  store %struct.aws_allocator* %1, %struct.aws_allocator** %9, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #18
  %10 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2, i32 0
  store volatile i8* %5, i8** %10, align 4, !tbaa !200
  tail call void @seahorn.fn.enter() #18
  %11 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3, i32 0
  store volatile i8* %5, i8** %11, align 4, !tbaa !200
  %12 = getelementptr inbounds i8, i8* %5, i32 %2
  %13 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  store i8* %12, i8** %13, align 4, !tbaa !14
  br label %14

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_atomic_init_ptr(%struct.aws_atomic_var* %0, i8* %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_atomic_var, %struct.aws_atomic_var* %0, i32 0, i32 0
  store volatile i8* %1, i8** %3, align 4, !tbaa !200
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %3 = load i8*, i8** %2, align 4, !tbaa !5
  %4 = icmp eq i8* %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  %7 = load %struct.aws_allocator*, %struct.aws_allocator** %6, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #18
  %8 = icmp eq %struct.aws_allocator* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #19
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %7, i32 0, i32 1
  %12 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %11, align 4, !tbaa !12
  %13 = icmp eq void (%struct.aws_allocator*, i8*)* %12, null
  br i1 %13, label %14, label %aws_mem_release.exit

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #19
  unreachable

aws_mem_release.exit:                             ; preds = %10
  tail call void %12(%struct.aws_allocator* nonnull %7, i8* nonnull %3) #18
  br label %15

15:                                               ; preds = %aws_mem_release.exit, %1
  %16 = bitcast %struct.aws_ring_buffer* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %16, i8 0, i32 20, i1 false) #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %0, i32 %1, %struct.aws_byte_buf* nocapture %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %6 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %7 = icmp eq void (i32, i8*)* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %6(i32 34, i8* %9) #18
  br label %aws_raise_error.29.exit

10:                                               ; preds = %5
  %11 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %12 = icmp eq void (i32, i8*)* %11, null
  br i1 %12, label %aws_raise_error.29.exit, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %11(i32 34, i8* %14) #18
  br label %aws_raise_error.29.exit

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %17 = bitcast %struct.aws_atomic_var* %16 to i32*
  %18 = load atomic volatile i32, i32* %17 acquire, align 4
  %19 = inttoptr i32 %18 to i8*
  %20 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %21 = bitcast %struct.aws_atomic_var* %20 to i32*
  %22 = load atomic volatile i32, i32* %21 monotonic, align 4
  %23 = inttoptr i32 %22 to i8*
  %24 = icmp eq i8* %23, %19
  br i1 %24, label %25, label %55

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %27 = load i8*, i8** %26, align 4, !tbaa !14
  %28 = icmp eq i8* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %31 = load i8*, i8** %30, align 4, !tbaa !5
  %32 = ptrtoint i8* %27 to i32
  %33 = ptrtoint i8* %31 to i32
  %34 = sub i32 %32, %33
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i32 [ %34, %29 ], [ 0, %25 ]
  %37 = icmp ult i32 %36, %1
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %39 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %40 = icmp eq void (i32, i8*)* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %39(i32 1, i8* %42) #18
  br label %aws_raise_error.29.exit

43:                                               ; preds = %38
  %44 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %45 = icmp eq void (i32, i8*)* %44, null
  br i1 %45, label %aws_raise_error.29.exit, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %44(i32 1, i8* %47) #18
  br label %aws_raise_error.29.exit

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %50 = load i8*, i8** %49, align 4, !tbaa !5
  %51 = getelementptr inbounds i8, i8* %50, i32 %1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %52 = ptrtoint i8* %51 to i32
  store atomic volatile i32 %52, i32* %21 monotonic, align 4
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %53 = ptrtoint i8* %50 to i32
  store atomic volatile i32 %53, i32* %17 release, align 4
  %54 = load i8*, i8** %49, align 4, !tbaa !5
  tail call void @seahorn.fn.enter() #18, !noalias !201
  %.repack53 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 0, i32* %.repack53, align 4
  %.repack54 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %54, i8** %.repack54, align 4
  %.repack56 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %1, i32* %.repack56, align 4
  %.repack58 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack58, align 4
  br label %aws_raise_error.29.exit

55:                                               ; preds = %15
  %56 = icmp ugt i8* %19, %23
  br i1 %56, label %57, label %63

57:                                               ; preds = %55
  %58 = xor i32 %22, -1
  %59 = add i32 %18, %58
  %60 = icmp ult i32 %59, %1
  br i1 %60, label %83, label %.critedge

.critedge:                                        ; preds = %57
  %61 = getelementptr inbounds i8, i8* %23, i32 %1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %62 = ptrtoint i8* %61 to i32
  store atomic volatile i32 %62, i32* %21 monotonic, align 4
  tail call void @seahorn.fn.enter() #18, !noalias !204
  %.repack39 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 0, i32* %.repack39, align 4
  %.repack40 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %23, i8** %.repack40, align 4
  %.repack42 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %1, i32* %.repack42, align 4
  %.repack44 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack44, align 4
  br label %aws_raise_error.29.exit

63:                                               ; preds = %55
  %64 = icmp ult i8* %19, %23
  br i1 %64, label %65, label %83

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %67 = load i8*, i8** %66, align 4, !tbaa !14
  %68 = ptrtoint i8* %67 to i32
  %69 = sub i32 %68, %22
  %70 = icmp ult i32 %69, %1
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds i8, i8* %23, i32 %1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %73 = ptrtoint i8* %72 to i32
  store atomic volatile i32 %73, i32* %21 monotonic, align 4
  tail call void @seahorn.fn.enter() #18, !noalias !207
  %.repack25 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 0, i32* %.repack25, align 4
  %.repack26 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %23, i8** %.repack26, align 4
  %.repack28 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %1, i32* %.repack28, align 4
  %.repack30 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack30, align 4
  br label %aws_raise_error.29.exit

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %76 = load i8*, i8** %75, align 4, !tbaa !5
  %77 = ptrtoint i8* %76 to i32
  %78 = sub i32 %18, %77
  %79 = icmp ugt i32 %78, %1
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds i8, i8* %76, i32 %1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %82 = ptrtoint i8* %81 to i32
  store atomic volatile i32 %82, i32* %21 monotonic, align 4
  tail call void @seahorn.fn.enter() #18, !noalias !210
  %.repack = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 0, i32* %.repack, align 4
  %.repack12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %76, i8** %.repack12, align 4
  %.repack14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %1, i32* %.repack14, align 4
  %.repack16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack16, align 4
  br label %aws_raise_error.29.exit

83:                                               ; preds = %74, %63, %57
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %84 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %85 = icmp eq void (i32, i8*)* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %84(i32 1, i8* %87) #18
  br label %aws_raise_error.29.exit

88:                                               ; preds = %83
  %89 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %90 = icmp eq void (i32, i8*)* %89, null
  br i1 %90, label %aws_raise_error.29.exit, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %89(i32 1, i8* %92) #18
  br label %aws_raise_error.29.exit

aws_raise_error.29.exit:                          ; preds = %91, %88, %86, %46, %43, %41, %13, %10, %8, %80, %71, %.critedge, %48
  %.3 = phi i32 [ 0, %71 ], [ 0, %80 ], [ 0, %48 ], [ 0, %.critedge ], [ -1, %8 ], [ -1, %10 ], [ -1, %13 ], [ -1, %41 ], [ -1, %43 ], [ -1, %46 ], [ -1, %86 ], [ -1, %88 ], [ -1, %91 ]
  ret i32 %.3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.29(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 %0, i32* @tl_last_error, align 4, !tbaa !17
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %2(i32 %0, i8* %5) #18
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %7(i32 %0, i8* %10) #18
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr_explicit.30(%struct.aws_atomic_var* %0, i32 %1) unnamed_addr #4 {
NodeBlock:
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %Pivot8.i = icmp slt i32 %1, 3
  br i1 %Pivot8.i, label %NodeBlock2.i, label %NodeBlock5.i

NodeBlock5.i:                                     ; preds = %NodeBlock
  %Pivot4.i = icmp slt i32 %1, 5
  br i1 %Pivot4.i, label %NewDefault, label %LeafBlock1.i

LeafBlock1.i:                                     ; preds = %NodeBlock5.i
  %SwitchLeaf2.i = icmp eq i32 %1, 5
  br i1 %SwitchLeaf2.i, label %7, label %NewDefault.i

NodeBlock2.i:                                     ; preds = %NodeBlock
  switch i32 %1, label %NewDefault.i [
    i32 2, label %4
    i32 0, label %NewDefault
  ]

NewDefault.i:                                     ; preds = %NodeBlock2.i, %LeafBlock1.i
  tail call void @abort() #20
  unreachable

NewDefault:                                       ; preds = %NodeBlock2.i, %NodeBlock5.i
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 monotonic, align 4
  br label %10

4:                                                ; preds = %NodeBlock2.i
  %5 = bitcast %struct.aws_atomic_var* %0 to i32*
  %6 = load atomic volatile i32, i32* %5 acquire, align 4
  br label %10

7:                                                ; preds = %LeafBlock1.i
  %8 = bitcast %struct.aws_atomic_var* %0 to i32*
  %9 = load atomic volatile i32, i32* %8 seq_cst, align 4
  br label %10

10:                                               ; preds = %7, %4, %NewDefault
  %.0 = phi i32 [ %3, %NewDefault ], [ %9, %7 ], [ %6, %4 ]
  %11 = inttoptr i32 %.0 to i8*
  ret i8* %11
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_atomic_store_ptr_explicit(%struct.aws_atomic_var* %0, i8* %1, i32 %2) unnamed_addr #4 {
NodeBlock:
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %Pivot8.i = icmp slt i32 %2, 3
  br i1 %Pivot8.i, label %NodeBlock2.i, label %NodeBlock5.i

NodeBlock5.i:                                     ; preds = %NodeBlock
  %Pivot6.i = icmp eq i32 %2, 3
  br i1 %Pivot6.i, label %5, label %NodeBlock3.i

NodeBlock3.i:                                     ; preds = %NodeBlock5.i
  %Pivot4.i = icmp slt i32 %2, 5
  br i1 %Pivot4.i, label %NewDefault, label %LeafBlock1.i

LeafBlock1.i:                                     ; preds = %NodeBlock3.i
  %SwitchLeaf2.i = icmp eq i32 %2, 5
  br i1 %SwitchLeaf2.i, label %8, label %NewDefault.i

NodeBlock2.i:                                     ; preds = %NodeBlock
  switch i32 %2, label %NewDefault.i [
    i32 2, label %NewDefault
    i32 0, label %NewDefault
  ]

NewDefault.i:                                     ; preds = %NodeBlock2.i, %LeafBlock1.i
  tail call void @abort() #20
  unreachable

NewDefault:                                       ; preds = %NodeBlock2.i, %NodeBlock2.i, %NodeBlock3.i
  %3 = ptrtoint i8* %1 to i32
  %4 = bitcast %struct.aws_atomic_var* %0 to i32*
  store atomic volatile i32 %3, i32* %4 monotonic, align 4
  br label %11

5:                                                ; preds = %NodeBlock5.i
  %6 = ptrtoint i8* %1 to i32
  %7 = bitcast %struct.aws_atomic_var* %0 to i32*
  store atomic volatile i32 %6, i32* %7 release, align 4
  br label %11

8:                                                ; preds = %LeafBlock1.i
  %9 = ptrtoint i8* %1 to i32
  %10 = bitcast %struct.aws_atomic_var* %0 to i32*
  store atomic volatile i32 %9, i32* %10 seq_cst, align 4
  br label %11

11:                                               ; preds = %8, %5, %NewDefault
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_atomic_priv_xlate_order.31(i32 %0) unnamed_addr #4 {
NodeBlock7:
  tail call void @seahorn.fn.enter() #18
  %Pivot8 = icmp slt i32 %0, 3
  br i1 %Pivot8, label %NodeBlock2, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %Pivot6 = icmp eq i32 %0, 3
  br i1 %Pivot6, label %1, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %Pivot4 = icmp slt i32 %0, 5
  br i1 %Pivot4, label %1, label %LeafBlock1

LeafBlock1:                                       ; preds = %NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %0, 5
  br i1 %SwitchLeaf2, label %1, label %NewDefault

NodeBlock2:                                       ; preds = %NodeBlock7
  switch i32 %0, label %NewDefault [
    i32 2, label %1
    i32 0, label %.fold.split
  ]

NewDefault:                                       ; preds = %NodeBlock2, %LeafBlock1
  tail call void @abort() #20
  unreachable

.fold.split:                                      ; preds = %NodeBlock2
  br label %1

1:                                                ; preds = %NodeBlock2, %.fold.split, %LeafBlock1, %NodeBlock3, %NodeBlock5
  %.0 = phi i32 [ 3, %NodeBlock5 ], [ 4, %NodeBlock3 ], [ 5, %LeafBlock1 ], [ %0, %NodeBlock2 ], [ 0, %.fold.split ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_acquire_up_to(%struct.aws_ring_buffer* %0, i32 %1, i32 %2, %struct.aws_byte_buf* %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %5 = icmp ne i32 %2, 0
  %6 = icmp ne i32 %1, 0
  %or.cond.not = and i1 %6, %5
  %7 = icmp ne %struct.aws_ring_buffer* %0, null
  %or.cond4 = and i1 %7, %or.cond.not
  %8 = icmp ne %struct.aws_byte_buf* %3, null
  %or.cond6 = and i1 %8, %or.cond4
  br i1 %or.cond6, label %19, label %9

9:                                                ; preds = %4
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %10 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %11 = icmp eq void (i32, i8*)* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %10(i32 34, i8* %13) #18
  br label %aws_raise_error.29.exit

14:                                               ; preds = %9
  %15 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %16 = icmp eq void (i32, i8*)* %15, null
  br i1 %16, label %aws_raise_error.29.exit, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %15(i32 34, i8* %18) #18
  br label %aws_raise_error.29.exit

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %21 = bitcast %struct.aws_atomic_var* %20 to i32*
  %22 = load atomic volatile i32, i32* %21 acquire, align 4
  %23 = inttoptr i32 %22 to i8*
  %24 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %25 = bitcast %struct.aws_atomic_var* %24 to i32*
  %26 = load atomic volatile i32, i32* %25 monotonic, align 4
  %27 = inttoptr i32 %26 to i8*
  %28 = icmp eq i8* %27, %23
  br i1 %28, label %29, label %63

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %31 = load i8*, i8** %30, align 4, !tbaa !14
  %32 = icmp eq i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %35 = load i8*, i8** %34, align 4, !tbaa !5
  %36 = ptrtoint i8* %31 to i32
  %37 = ptrtoint i8* %35 to i32
  %38 = sub i32 %36, %37
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i32 [ %38, %33 ], [ 0, %29 ]
  %41 = icmp ugt i32 %40, %2
  %42 = select i1 %41, i32 %2, i32 %40
  %43 = icmp ult i32 %42, %1
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %45 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %46 = icmp eq void (i32, i8*)* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %45(i32 1, i8* %48) #18
  br label %aws_raise_error.29.exit

49:                                               ; preds = %44
  %50 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %51 = icmp eq void (i32, i8*)* %50, null
  br i1 %51, label %aws_raise_error.29.exit, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %50(i32 1, i8* %53) #18
  br label %aws_raise_error.29.exit

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %56 = load i8*, i8** %55, align 4, !tbaa !5
  %57 = getelementptr inbounds i8, i8* %56, i32 %42
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %58 = ptrtoint i8* %57 to i32
  store atomic volatile i32 %58, i32* %25 monotonic, align 4
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %59 = ptrtoint i8* %56 to i32
  store atomic volatile i32 %59, i32* %21 release, align 4
  %60 = load i8*, i8** %55, align 4, !tbaa !5
  tail call void @seahorn.fn.enter() #18, !noalias !213
  %61 = icmp eq i32 %42, 0
  %62 = select i1 %61, i8* null, i8* %60
  %.repack90 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 0, i32* %.repack90, align 4
  %.repack91 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %62, i8** %.repack91, align 4
  %.repack93 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %42, i32* %.repack93, align 4
  %.repack95 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack95, align 4
  br label %aws_raise_error.29.exit

63:                                               ; preds = %19
  %64 = icmp ugt i8* %23, %27
  br i1 %64, label %65, label %75

65:                                               ; preds = %63
  %66 = sub i32 %22, %26
  %67 = add i32 %66, -1
  %68 = icmp ugt i32 %67, %2
  %69 = select i1 %68, i32 %2, i32 %67
  %70 = icmp ult i32 %69, %1
  br i1 %70, label %105, label %.critedge

.critedge:                                        ; preds = %65
  %71 = getelementptr inbounds i8, i8* %27, i32 %69
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %72 = ptrtoint i8* %71 to i32
  store atomic volatile i32 %72, i32* %25 monotonic, align 4
  tail call void @seahorn.fn.enter() #18, !noalias !216
  %73 = icmp eq i32 %69, 0
  %74 = select i1 %73, i8* null, i8* %27
  %.repack76 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 0, i32* %.repack76, align 4
  %.repack77 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %74, i8** %.repack77, align 4
  %.repack79 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %69, i32* %.repack79, align 4
  %.repack81 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack81, align 4
  br label %aws_raise_error.29.exit

75:                                               ; preds = %63
  %76 = icmp ult i8* %23, %27
  br i1 %76, label %77, label %105

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %79 = load i8*, i8** %78, align 4, !tbaa !14
  %80 = ptrtoint i8* %79 to i32
  %81 = sub i32 %80, %26
  %82 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %83 = load i8*, i8** %82, align 4, !tbaa !5
  %84 = ptrtoint i8* %83 to i32
  %85 = sub i32 %22, %84
  %86 = icmp ult i32 %81, %2
  br i1 %86, label %89, label %.critedge97

.critedge97:                                      ; preds = %77
  %87 = getelementptr inbounds i8, i8* %27, i32 %2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %88 = ptrtoint i8* %87 to i32
  store atomic volatile i32 %88, i32* %25 monotonic, align 4
  tail call void @seahorn.fn.enter() #18, !noalias !219
  %.repack62 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 0, i32* %.repack62, align 4
  %.repack63 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %27, i8** %.repack63, align 4
  %.repack65 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %2, i32* %.repack65, align 4
  %.repack67 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack67, align 4
  br label %aws_raise_error.29.exit

89:                                               ; preds = %77
  %90 = icmp ugt i32 %85, %2
  br i1 %90, label %.critedge98, label %93

.critedge98:                                      ; preds = %89
  %91 = getelementptr inbounds i8, i8* %83, i32 %2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %92 = ptrtoint i8* %91 to i32
  store atomic volatile i32 %92, i32* %25 monotonic, align 4
  tail call void @seahorn.fn.enter() #18, !noalias !222
  %.repack48 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 0, i32* %.repack48, align 4
  %.repack49 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %83, i8** %.repack49, align 4
  %.repack51 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %2, i32* %.repack51, align 4
  %.repack53 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack53, align 4
  br label %aws_raise_error.29.exit

93:                                               ; preds = %89
  %94 = icmp ult i32 %81, %1
  %95 = icmp ult i32 %81, %85
  %or.cond = or i1 %94, %95
  br i1 %or.cond, label %98, label %.critedge99

.critedge99:                                      ; preds = %93
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store atomic volatile i32 %80, i32* %25 monotonic, align 4
  tail call void @seahorn.fn.enter() #18, !noalias !225
  %96 = icmp eq i32 %81, 0
  %97 = select i1 %96, i8* null, i8* %27
  %.repack34 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 0, i32* %.repack34, align 4
  %.repack35 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %97, i8** %.repack35, align 4
  %.repack37 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %81, i32* %.repack37, align 4
  %.repack39 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack39, align 4
  br label %aws_raise_error.29.exit

98:                                               ; preds = %93
  %99 = icmp ugt i32 %85, %1
  br i1 %99, label %.critedge100, label %105

.critedge100:                                     ; preds = %98
  %100 = getelementptr inbounds i8, i8* %23, i32 -1
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %101 = ptrtoint i8* %100 to i32
  store atomic volatile i32 %101, i32* %25 monotonic, align 4
  %102 = add i32 %85, -1
  tail call void @seahorn.fn.enter() #18, !noalias !228
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i8* null, i8* %83
  %.repack = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 0, i32* %.repack, align 4
  %.repack21 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %104, i8** %.repack21, align 4
  %.repack23 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %102, i32* %.repack23, align 4
  %.repack25 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* null, %struct.aws_allocator** %.repack25, align 4
  br label %aws_raise_error.29.exit

105:                                              ; preds = %98, %75, %65
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 1, i32* @tl_last_error, align 4, !tbaa !17
  %106 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %107 = icmp eq void (i32, i8*)* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %106(i32 1, i8* %109) #18
  br label %aws_raise_error.29.exit

110:                                              ; preds = %105
  %111 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %112 = icmp eq void (i32, i8*)* %111, null
  br i1 %112, label %aws_raise_error.29.exit, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %111(i32 1, i8* %114) #18
  br label %aws_raise_error.29.exit

aws_raise_error.29.exit:                          ; preds = %113, %110, %108, %52, %49, %47, %17, %14, %12, %.critedge100, %.critedge99, %.critedge98, %.critedge97, %.critedge, %54
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_release(%struct.aws_ring_buffer* %0, %struct.aws_byte_buf* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %5 = load i8*, i8** %4, align 4, !tbaa !38
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !41
  %8 = getelementptr inbounds i8, i8* %5, i32 %7
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast %struct.aws_atomic_var* %3 to i32*
  store atomic volatile i32 %9, i32* %10 release, align 4
  %11 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %11, i8 0, i32 16, i1 false) #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_buf_belongs_to_pool(%struct.aws_ring_buffer* nocapture readnone %0, %struct.aws_byte_buf* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @s_buf_belongs_to_pool(%struct.aws_ring_buffer* nocapture readnone %0, %struct.aws_byte_buf* nocapture readnone %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_allocator_init(%struct.aws_allocator* %0, %struct.aws_ring_buffer* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = icmp eq %struct.aws_allocator* %0, null
  %4 = icmp eq %struct.aws_ring_buffer* %1, null
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %5, label %15

5:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  store i32 34, i32* @tl_last_error, align 4, !tbaa !17
  %6 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !15
  %7 = icmp eq void (i32, i8*)* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !15
  tail call void %6(i32 34, i8* %9) #18
  br label %aws_raise_error.29.exit

10:                                               ; preds = %5
  %11 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !15
  %12 = icmp eq void (i32, i8*)* %11, null
  br i1 %12, label %aws_raise_error.29.exit, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** @s_global_error_context, align 4, !tbaa !15
  tail call void %11(i32 34, i8* %14) #18
  br label %aws_raise_error.29.exit

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %17 = bitcast i8** %16 to %struct.aws_ring_buffer**
  store %struct.aws_ring_buffer* %1, %struct.aws_ring_buffer** %17, align 4, !tbaa !231
  %18 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  store i8* (%struct.aws_allocator*, i32)* @s_ring_buffer_mem_acquire, i8* (%struct.aws_allocator*, i32)** %18, align 4, !tbaa !16
  %19 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  store void (%struct.aws_allocator*, i8*)* @s_ring_buffer_mem_release, void (%struct.aws_allocator*, i8*)** %19, align 4, !tbaa !12
  %20 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  store i8* (%struct.aws_allocator*, i32, i32)* @s_ring_buffer_mem_calloc, i8* (%struct.aws_allocator*, i32, i32)** %20, align 4, !tbaa !19
  %21 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_ring_buffer_mem_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** %21, align 4, !tbaa !20
  br label %aws_raise_error.29.exit

aws_raise_error.29.exit:                          ; preds = %13, %10, %8, %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_ring_buffer_mem_acquire(%struct.aws_allocator* nocapture readonly %0, i32 %1) #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = alloca %struct.aws_byte_buf, align 4
  %4 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %5 = load i8*, i8** %4, align 4, !tbaa !231
  %6 = bitcast i8* %5 to %struct.aws_ring_buffer*
  %7 = bitcast %struct.aws_byte_buf* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #18
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false)
  %8 = add i32 %1, 4
  %9 = call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %6, i32 %8, %struct.aws_byte_buf* nonnull %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !41
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  %15 = load i8*, i8** %14, align 4, !tbaa !38
  %16 = bitcast i8* %15 to i32*
  store i32 %13, i32* %16, align 4, !tbaa !232
  %17 = getelementptr inbounds i8, i8* %15, i32 4
  br label %18

18:                                               ; preds = %11, %2
  %.0 = phi i8* [ %17, %11 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #18
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_ring_buffer_mem_release(%struct.aws_allocator* %0, i8* %1) #1 {
  tail call void @seahorn.fn.enter() #18
  %3 = getelementptr inbounds i8, i8* %1, i32 -4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !232
  tail call void @seahorn.fn.enter() #18, !noalias !233
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i8* null, i8* %3
  %8 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %9 = load i8*, i8** %8, align 4, !tbaa !231
  tail call void @seahorn.fn.enter() #18
  %10 = getelementptr inbounds i8, i8* %9, i32 12
  %11 = getelementptr inbounds i8, i8* %7, i32 %5
  tail call void @seahorn.fn.enter() #18
  tail call void @seahorn.fn.enter() #18
  %12 = ptrtoint i8* %11 to i32
  %13 = bitcast i8* %10 to i32*
  store atomic volatile i32 %12, i32* %13 release, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_ring_buffer_mem_calloc(%struct.aws_allocator* nocapture readonly %0, i32 %1, i32 %2) #1 {
  %4 = alloca %struct.aws_byte_buf, align 4
  tail call void @seahorn.fn.enter() #18
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #18
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 4, !tbaa !231
  %8 = bitcast i8* %7 to %struct.aws_ring_buffer*
  %9 = bitcast %struct.aws_byte_buf* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #18
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #18
  %10 = add i32 %5, 4
  %11 = call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %8, i32 %10, %struct.aws_byte_buf* nonnull %4) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %s_ring_buffer_mem_acquire.exit.thread

s_ring_buffer_mem_acquire.exit.thread:            ; preds = %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #18
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 2
  %15 = load i32, i32* %14, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !38
  %18 = bitcast i8* %17 to i32*
  store i32 %15, i32* %18, align 4, !tbaa !232
  %19 = getelementptr inbounds i8, i8* %17, i32 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #18
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %19, i8 0, i32 %5, i1 false) #18
  br label %20

20:                                               ; preds = %s_ring_buffer_mem_acquire.exit.thread, %13
  %.0 = phi i8* [ %19, %13 ], [ null, %s_ring_buffer_mem_acquire.exit.thread ]
  ret i8* %.0
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal noalias nonnull i8* @s_ring_buffer_mem_realloc(%struct.aws_allocator* nocapture readnone %0, i8* nocapture readnone %1, i32 %2, i32 %3) #13 {
  tail call void @seahorn.fn.enter() #18
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1.33, i32 0, i32 0), i32 304) #19
  unreachable
}

; Function Attrs: noreturn
define i32 @main() local_unnamed_addr #14 {
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
  store i32 0, i32* @tl_last_error, align 4
  store void (i32, i8*)* null, void (i32, i8*)** @tl_thread_handler, align 4
  store void (i32, i8*)* null, void (i32, i8*)** @s_global_handler, align 4
  store i8* null, i8** @s_global_error_context, align 4
  store i32 1, i32* getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.26, i32 0, i32 0), i8** getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 1), align 4
  store %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), %struct.aws_log_subject_info** getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 0), align 8
  store i32 5, i32* getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 1), align 4
  tail call void @seahorn.fn.enter()
  tail call fastcc void @aws_ring_buffer_clean_up_harness()
  %1 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %2 = tail call fastcc i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* %1)
  %3 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %4 = tail call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %3)
  %5 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %6 = tail call i32 @verifier.nondet.3()
  %7 = tail call fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %5, i32 %6)
  %8 = tail call i32 @verifier.nondet.3()
  %9 = tail call fastcc i32 @aws_atomic_priv_xlate_order(i32 %8)
  %10 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %11 = tail call i8* @verifier.nondet.4()
  %12 = tail call fastcc i1 @aws_ring_buffer_check_atomic_ptr(%struct.aws_ring_buffer* %10, i8* %11)
  %13 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_allocator_is_valid(%struct.aws_allocator* %13)
  tail call fastcc void @aws_default_allocator()
  %14 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %15 = tail call i32 @verifier.nondet.3()
  %16 = tail call i8* @s_default_malloc(%struct.aws_allocator* %14, i32 %15)
  %17 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %18 = tail call i8* @verifier.nondet.4()
  tail call void @s_default_free(%struct.aws_allocator* %17, i8* %18)
  %19 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %20 = tail call i8* @verifier.nondet.4()
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
  tail call fastcc void @aws_raise_error(i32 %31)
  %32 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %33 = tail call i32 @verifier.nondet.3()
  %34 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_mem_calloc(%struct.aws_allocator* %32, i32 %33, i32 %34)
  %35 = tail call i32 @verifier.nondet.3()
  %36 = tail call i32 @verifier.nondet.3()
  %37 = tail call i32* @verifier.nondet.6()
  tail call fastcc void @aws_mul_size_checked(i32 %35, i32 %36, i32* %37)
  %38 = tail call i32 @verifier.nondet.3()
  %39 = tail call i32 @verifier.nondet.3()
  %40 = tail call i32* @verifier.nondet.6()
  tail call fastcc void @aws_mul_u32_checked(i32 %38, i32 %39, i32* %40)
  %41 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %42 = tail call i32 @verifier.nondet.3()
  %43 = tail call i8* (%struct.aws_allocator*, i32, ...) @aws_mem_acquire_many(%struct.aws_allocator* %41, i32 %42)
  %44 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %45 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_mem_release(%struct.aws_allocator* %44, i8* %45)
  %46 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %47 = tail call i8** @verifier.nondet.7()
  %48 = tail call i32 @verifier.nondet.3()
  %49 = tail call i32 @verifier.nondet.3()
  %50 = tail call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %46, i8** %47, i32 %48, i32 %49)
  %51 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %51)
  %52 = tail call i8* @verifier.nondet.4()
  %53 = tail call i32 @verifier.nondet.3()
  %54 = tail call i32 @verifier.nondet.3()
  %55 = tail call i8* @verifier.nondet.4()
  %56 = tail call i8* @s_cf_allocator_reallocate(i8* %52, i32 %53, i32 %54, i8* %55)
  %57 = tail call i8* @verifier.nondet.4()
  %58 = tail call %struct.__CFString* @s_cf_allocator_copy_description(i8* %57)
  %59 = tail call i32 @verifier.nondet.3()
  %60 = tail call i32 @verifier.nondet.3()
  %61 = tail call i8* @verifier.nondet.4()
  %62 = tail call i8* @s_cf_allocator_allocate(i32 %59, i32 %60, i8* %61)
  %63 = tail call i8* @verifier.nondet.4()
  %64 = tail call i8* @verifier.nondet.4()
  tail call void @s_cf_allocator_deallocate(i8* %63, i8* %64)
  %65 = tail call i32 @verifier.nondet.3()
  %66 = tail call i32 @verifier.nondet.3()
  %67 = tail call i8* @verifier.nondet.4()
  %68 = tail call i32 @s_cf_allocator_preferred_size(i32 %65, i32 %66, i8* %67)
  %69 = tail call %struct.__CFAllocator* @verifier.nondet.8()
  tail call fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %69)
  %70 = tail call fastcc i32 @aws_last_error()
  %71 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_str(i32 %71)
  %72 = tail call i32 @verifier.nondet.3()
  %73 = tail call fastcc %struct.aws_error_info* @get_error_by_code(i32 %72)
  %74 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_name(i32 %74)
  %75 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_lib_name(i32 %75)
  %76 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_debug_str(i32 %76)
  %77 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error_private(i32 %77)
  tail call fastcc void @aws_reset_error()
  %78 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_restore_error(i32 %78)
  %79 = tail call void (i32, i8*)* @verifier.nondet.9()
  %80 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %79, i8* %80)
  %81 = tail call void (i32, i8*)* @verifier.nondet.9()
  %82 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %81, i8* %82)
  %83 = tail call %struct.aws_error_info_list* @verifier.nondet.10()
  tail call fastcc void @aws_register_error_info(%struct.aws_error_info_list* %83)
  %84 = tail call %struct.aws_error_info_list* @verifier.nondet.10()
  tail call fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* %84)
  %85 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_translate_and_raise_io_error(i32 %85)
  %86 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.20(i32 %86)
  %87 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %88 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %89 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_init(%struct.aws_byte_buf* %87, %struct.aws_allocator* %88, i32 %89)
  %90 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %91 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %92 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_buf_init_copy(%struct.aws_byte_buf* %90, %struct.aws_allocator* %91, %struct.aws_byte_buf* %92)
  %93 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %94 = tail call fastcc i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* %93)
  %95 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.21(i32 %95)
  %96 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %97 = tail call fastcc i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* %96)
  %98 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %99 = tail call i1 @verifier.nondet.13()
  tail call fastcc void @aws_byte_buf_reset(%struct.aws_byte_buf* %98, i1 %99)
  %100 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_buf_secure_zero(%struct.aws_byte_buf* %100)
  %101 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_buf_clean_up(%struct.aws_byte_buf* %101)
  %102 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_buf_clean_up_secure(%struct.aws_byte_buf* %102)
  %103 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %104 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_buf_eq(%struct.aws_byte_buf* %103, %struct.aws_byte_buf* %104)
  %105 = tail call i8* @verifier.nondet.4()
  %106 = tail call i32 @verifier.nondet.3()
  %107 = tail call i8* @verifier.nondet.4()
  %108 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_array_eq(i8* %105, i32 %106, i8* %107, i32 %108)
  %109 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %110 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_buf_eq_ignore_case(%struct.aws_byte_buf* %109, %struct.aws_byte_buf* %110)
  %111 = tail call i8* @verifier.nondet.4()
  %112 = tail call i32 @verifier.nondet.3()
  %113 = tail call i8* @verifier.nondet.4()
  %114 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_array_eq_ignore_case(i8* %111, i32 %112, i8* %113, i32 %114)
  %115 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %116 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_buf_eq_c_str(%struct.aws_byte_buf* %115, i8* %116)
  %117 = tail call i8* @verifier.nondet.4()
  %118 = tail call i32 @verifier.nondet.3()
  %119 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_array_eq_c_str(i8* %117, i32 %118, i8* %119)
  %120 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %121 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_buf_eq_c_str_ignore_case(%struct.aws_byte_buf* %120, i8* %121)
  %122 = tail call i8* @verifier.nondet.4()
  %123 = tail call i32 @verifier.nondet.3()
  %124 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_array_eq_c_str_ignore_case(i8* %122, i32 %123, i8* %124)
  %125 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %126 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %127 = tail call i32 @verifier.nondet.3()
  %128 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_buf_init_copy_from_cursor(%struct.aws_byte_buf* %125, %struct.aws_allocator* %126, i32 %127, i8* %128)
  %129 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %130 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %131 = tail call i32 (%struct.aws_byte_buf*, %struct.aws_allocator*, ...) @aws_byte_buf_init_cache_and_update_cursors(%struct.aws_byte_buf* %129, %struct.aws_allocator* %130)
  %132 = tail call i32 @verifier.nondet.3()
  %133 = tail call i32 @verifier.nondet.3()
  %134 = tail call i32* @verifier.nondet.6()
  %135 = tail call fastcc i32 @aws_add_size_checked(i32 %132, i32 %133, i32* %134)
  %136 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %137 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_buf_append_and_update(%struct.aws_byte_buf* %136, %struct.aws_byte_cursor* %137)
  %138 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %139 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %140 = tail call fastcc i32 @aws_byte_buf_append(%struct.aws_byte_buf* %138, %struct.aws_byte_cursor* %139)
  %141 = tail call i32 @verifier.nondet.3()
  %142 = tail call i32 @verifier.nondet.3()
  %143 = tail call i32* @verifier.nondet.6()
  %144 = tail call fastcc i32 @aws_add_u32_checked(i32 %141, i32 %142, i32* %143)
  %145 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %146 = tail call i8 @verifier.nondet.14()
  %147 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %148 = tail call fastcc i1 @aws_byte_cursor_next_split(%struct.aws_byte_cursor* %145, i8 %146, %struct.aws_byte_cursor* %147)
  %149 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %150 = tail call i8 @verifier.nondet.14()
  %151 = tail call i32 @verifier.nondet.3()
  %152 = tail call %struct.aws_array_list* @verifier.nondet.15()
  tail call fastcc void @aws_byte_cursor_split_on_char_n(%struct.aws_byte_cursor* %149, i8 %150, i32 %151, %struct.aws_array_list* %152)
  %153 = tail call %struct.aws_array_list* @verifier.nondet.15()
  %154 = tail call i8* @verifier.nondet.4()
  %155 = tail call fastcc i32 @aws_array_list_push_back(%struct.aws_array_list* %153, i8* %154)
  %156 = tail call %struct.aws_array_list* @verifier.nondet.15()
  %157 = tail call fastcc i32 @aws_array_list_length(%struct.aws_array_list* %156)
  %158 = tail call %struct.aws_array_list* @verifier.nondet.15()
  %159 = tail call i8* @verifier.nondet.4()
  %160 = tail call i32 @verifier.nondet.3()
  %161 = tail call fastcc i32 @aws_array_list_set_at(%struct.aws_array_list* %158, i8* %159, i32 %160)
  %162 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %163 = tail call i8 @verifier.nondet.14()
  %164 = tail call %struct.aws_array_list* @verifier.nondet.15()
  tail call fastcc void @aws_byte_cursor_split_on_char(%struct.aws_byte_cursor* %162, i8 %163, %struct.aws_array_list* %164)
  %165 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %166 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %167 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_cursor_find_exact(%struct.aws_byte_cursor* %165, %struct.aws_byte_cursor* %166, %struct.aws_byte_cursor* %167)
  %168 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %169 = tail call i32 @verifier.nondet.3()
  %170 = tail call fastcc i64 @aws_byte_cursor_advance(%struct.aws_byte_cursor* %168, i32 %169)
  %171 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %172 = tail call i32 @verifier.nondet.3()
  %173 = tail call i32 (%struct.aws_byte_buf*, i32, ...) @aws_byte_buf_cat(%struct.aws_byte_buf* %171, i32 %172)
  %174 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_cursor_from_buf(%struct.aws_byte_buf* %174)
  %175 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %176 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_cursor_eq(%struct.aws_byte_cursor* %175, %struct.aws_byte_cursor* %176)
  %177 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %178 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_cursor_eq_ignore_case(%struct.aws_byte_cursor* %177, %struct.aws_byte_cursor* %178)
  tail call fastcc void @aws_lookup_table_to_lower_get()
  %179 = tail call i8* @verifier.nondet.4()
  %180 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_hash_array_ignore_case(i8* %179, i32 %180)
  %181 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_hash_byte_cursor_ptr_ignore_case(i8* %181)
  %182 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %183 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_cursor_eq_byte_buf(%struct.aws_byte_cursor* %182, %struct.aws_byte_buf* %183)
  %184 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %185 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_cursor_eq_byte_buf_ignore_case(%struct.aws_byte_cursor* %184, %struct.aws_byte_buf* %185)
  %186 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %187 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_cursor_eq_c_str(%struct.aws_byte_cursor* %186, i8* %187)
  %188 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %189 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_cursor_eq_c_str_ignore_case(%struct.aws_byte_cursor* %188, i8* %189)
  %190 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %191 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %192 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_buf_append_with_lookup(%struct.aws_byte_buf* %190, %struct.aws_byte_cursor* %191, i8* %192)
  %193 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %194 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %193, %struct.aws_byte_cursor* %194)
  %195 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %196 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %197 = tail call i1 @verifier.nondet.13()
  tail call fastcc void @s_aws_byte_buf_append_dynamic(%struct.aws_byte_buf* %195, %struct.aws_byte_cursor* %196, i1 %197)
  %198 = tail call i32 @verifier.nondet.3()
  %199 = tail call i32 @verifier.nondet.3()
  %200 = tail call fastcc i32 @aws_add_size_saturating(i32 %198, i32 %199)
  %201 = tail call i32 @verifier.nondet.3()
  %202 = tail call i32 @verifier.nondet.3()
  %203 = tail call fastcc i32 @aws_add_u32_saturating(i32 %201, i32 %202)
  %204 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %205 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_buf_append_dynamic_secure(%struct.aws_byte_buf* %204, %struct.aws_byte_cursor* %205)
  %206 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %207 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_byte_buf_append_byte_dynamic(%struct.aws_byte_buf* %206, i8 %207)
  %208 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %209 = tail call i8 @verifier.nondet.14()
  %210 = tail call i1 @verifier.nondet.13()
  tail call fastcc void @s_aws_byte_buf_append_byte_dynamic(%struct.aws_byte_buf* %208, i8 %209, i1 %210)
  %211 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %212 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_byte_buf_append_byte_dynamic_secure(%struct.aws_byte_buf* %211, i8 %212)
  %213 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %214 = tail call i32 @verifier.nondet.3()
  %215 = tail call fastcc i32 @aws_byte_buf_reserve(%struct.aws_byte_buf* %213, i32 %214)
  %216 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %217 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_reserve_relative(%struct.aws_byte_buf* %216, i32 %217)
  %218 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %219 = tail call i1 (i8)* @verifier.nondet.16()
  tail call fastcc void @aws_byte_cursor_right_trim_pred(%struct.aws_byte_cursor* %218, i1 (i8)* %219)
  %220 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %221 = tail call i1 (i8)* @verifier.nondet.16()
  %222 = tail call fastcc i64 @aws_byte_cursor_left_trim_pred(%struct.aws_byte_cursor* %220, i1 (i8)* %221)
  %223 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %224 = tail call i1 (i8)* @verifier.nondet.16()
  tail call fastcc void @aws_byte_cursor_trim_pred(%struct.aws_byte_cursor* %223, i1 (i8)* %224)
  %225 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %226 = tail call i1 (i8)* @verifier.nondet.16()
  tail call fastcc void @aws_byte_cursor_satisfies_pred(%struct.aws_byte_cursor* %225, i1 (i8)* %226)
  %227 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %228 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_cursor_compare_lexical(%struct.aws_byte_cursor* %227, %struct.aws_byte_cursor* %228)
  %229 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %230 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %231 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_cursor_compare_lookup(%struct.aws_byte_cursor* %229, %struct.aws_byte_cursor* %230, i8* %231)
  %232 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %233 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_buf_from_c_str(%struct.aws_byte_buf* noalias %232, i8* %233)
  %234 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %235 = tail call i8* @verifier.nondet.4()
  %236 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_from_array(%struct.aws_byte_buf* noalias %234, i8* %235, i32 %236)
  %237 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %238 = tail call i8* @verifier.nondet.4()
  %239 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* noalias %237, i8* %238, i32 %239)
  %240 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_cursor_from_c_str(i8* %240)
  %241 = tail call i8* @verifier.nondet.4()
  %242 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_cursor_from_array(i8* %241, i32 %242)
  %243 = tail call i32 @verifier.nondet.3()
  %244 = tail call i32 @verifier.nondet.3()
  %245 = tail call fastcc i32 @aws_nospec_mask(i32 %243, i32 %244)
  %246 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %247 = tail call i32 @verifier.nondet.3()
  %248 = tail call fastcc i64 @aws_byte_cursor_advance_nospec(%struct.aws_byte_cursor* %246, i32 %247)
  %249 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %250 = tail call i8* @verifier.nondet.4()
  %251 = tail call i32 @verifier.nondet.3()
  %252 = tail call fastcc i1 @aws_byte_cursor_read(%struct.aws_byte_cursor* %249, i8* %250, i32 %251)
  %253 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %254 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_cursor_read_and_fill_buffer(%struct.aws_byte_cursor* %253, %struct.aws_byte_buf* %254)
  %255 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %256 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_cursor_read_u8(%struct.aws_byte_cursor* %255, i8* %256)
  %257 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %258 = tail call i16* @verifier.nondet.17()
  tail call fastcc void @aws_byte_cursor_read_be16(%struct.aws_byte_cursor* %257, i16* %258)
  %259 = tail call i16 @verifier.nondet.18()
  %260 = tail call fastcc i16 @aws_ntoh16(i16 %259)
  %261 = tail call i16 @verifier.nondet.18()
  %262 = tail call fastcc i16 @_OSSwapInt16(i16 %261)
  %263 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %264 = tail call i32* @verifier.nondet.6()
  tail call fastcc void @aws_byte_cursor_read_be24(%struct.aws_byte_cursor* %263, i32* %264)
  %265 = tail call i32 @verifier.nondet.3()
  %266 = tail call fastcc i32 @aws_ntoh32(i32 %265)
  %267 = tail call i32 @verifier.nondet.3()
  %268 = tail call fastcc i32 @_OSSwapInt32(i32 %267)
  %269 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %270 = tail call i32* @verifier.nondet.6()
  tail call fastcc void @aws_byte_cursor_read_be32(%struct.aws_byte_cursor* %269, i32* %270)
  %271 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %272 = tail call float* @verifier.nondet.19()
  tail call fastcc void @aws_byte_cursor_read_float_be32(%struct.aws_byte_cursor* %271, float* %272)
  %273 = tail call float @verifier.nondet.20()
  %274 = tail call fastcc float @aws_ntohf32(float %273)
  %275 = tail call float @verifier.nondet.20()
  %276 = tail call fastcc float @aws_htonf32(float %275)
  tail call fastcc void @aws_is_big_endian()
  %277 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %278 = tail call double* @verifier.nondet.21()
  tail call fastcc void @aws_byte_cursor_read_float_be64(%struct.aws_byte_cursor* %277, double* %278)
  %279 = tail call double @verifier.nondet.22()
  %280 = tail call fastcc double @aws_ntohf64(double %279)
  %281 = tail call double @verifier.nondet.22()
  %282 = tail call fastcc double @aws_htonf64(double %281)
  %283 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %284 = tail call i64* @verifier.nondet.23()
  tail call fastcc void @aws_byte_cursor_read_be64(%struct.aws_byte_cursor* %283, i64* %284)
  %285 = tail call i64 @verifier.nondet.24()
  %286 = tail call fastcc i64 @aws_ntoh64(i64 %285)
  %287 = tail call i64 @verifier.nondet.24()
  %288 = tail call fastcc i64 @aws_hton64(i64 %287)
  tail call fastcc void @aws_lookup_table_hex_to_num_get()
  %289 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  %290 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_cursor_read_hex_u8(%struct.aws_byte_cursor* %289, i8* %290)
  %291 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %292 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %293 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_advance(%struct.aws_byte_buf* %291, %struct.aws_byte_buf* %292, i32 %293)
  %294 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %295 = tail call i8* @verifier.nondet.4()
  %296 = tail call i32 @verifier.nondet.3()
  %297 = tail call fastcc i1 @aws_byte_buf_write(%struct.aws_byte_buf* %294, i8* %295, i32 %296)
  %298 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %299 = tail call i32 @verifier.nondet.3()
  %300 = tail call i8* @verifier.nondet.4()
  %301 = tail call i32 @verifier.nondet.3()
  %302 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_byte_buf_write_from_whole_buffer(%struct.aws_byte_buf* %298, i32 %299, i8* %300)
  %303 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %304 = tail call i32 @verifier.nondet.3()
  %305 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_byte_buf_write_from_whole_cursor(%struct.aws_byte_buf* %303, i32 %304, i8* %305)
  %306 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %307 = tail call %struct.aws_byte_cursor* @verifier.nondet.12()
  tail call fastcc void @aws_byte_buf_write_to_capacity(%struct.aws_byte_buf* %306, %struct.aws_byte_cursor* %307)
  %308 = tail call i32 @verifier.nondet.3()
  %309 = tail call i32 @verifier.nondet.3()
  %310 = tail call fastcc i32 @aws_min_size(i32 %308, i32 %309)
  %311 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %312 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_byte_buf_write_u8(%struct.aws_byte_buf* %311, i8 %312)
  %313 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %314 = tail call i8 @verifier.nondet.14()
  %315 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_write_u8_n(%struct.aws_byte_buf* %313, i8 %314, i32 %315)
  %316 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %317 = tail call i16 @verifier.nondet.18()
  tail call fastcc void @aws_byte_buf_write_be16(%struct.aws_byte_buf* %316, i16 %317)
  %318 = tail call i16 @verifier.nondet.18()
  %319 = tail call fastcc i16 @aws_hton16(i16 %318)
  %320 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %321 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_write_be24(%struct.aws_byte_buf* %320, i32 %321)
  %322 = tail call i32 @verifier.nondet.3()
  %323 = tail call fastcc i32 @aws_hton32(i32 %322)
  %324 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %325 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_byte_buf_write_be32(%struct.aws_byte_buf* %324, i32 %325)
  %326 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %327 = tail call float @verifier.nondet.20()
  tail call fastcc void @aws_byte_buf_write_float_be32(%struct.aws_byte_buf* %326, float %327)
  %328 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %329 = tail call i64 @verifier.nondet.24()
  tail call fastcc void @aws_byte_buf_write_be64(%struct.aws_byte_buf* %328, i64 %329)
  %330 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %331 = tail call double @verifier.nondet.22()
  tail call fastcc void @aws_byte_buf_write_float_be64(%struct.aws_byte_buf* %330, double %331)
  %332 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_byte_buf_append_null_terminator(%struct.aws_byte_buf* %332)
  %333 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_isalnum(i8 %333)
  %334 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_isalpha(i8 %334)
  %335 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_isdigit(i8 %335)
  %336 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_isxdigit(i8 %336)
  %337 = tail call i8 @verifier.nondet.14()
  tail call fastcc void @aws_isspace(i8 %337)
  %338 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %339 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %340 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_ring_buffer_init(%struct.aws_ring_buffer* %338, %struct.aws_allocator* %339, i32 %340)
  %341 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %342 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_atomic_init_ptr(%struct.aws_atomic_var* %341, i8* %342)
  %343 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  tail call fastcc void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer* %343)
  %344 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %345 = tail call i32 @verifier.nondet.3()
  %346 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %347 = tail call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %344, i32 %345, %struct.aws_byte_buf* %346)
  %348 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.29(i32 %348)
  %349 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %350 = tail call i32 @verifier.nondet.3()
  %351 = tail call fastcc i8* @aws_atomic_load_ptr_explicit.30(%struct.aws_atomic_var* %349, i32 %350)
  %352 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %353 = tail call i8* @verifier.nondet.4()
  %354 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_atomic_store_ptr_explicit(%struct.aws_atomic_var* %352, i8* %353, i32 %354)
  %355 = tail call i32 @verifier.nondet.3()
  %356 = tail call fastcc i32 @aws_atomic_priv_xlate_order.31(i32 %355)
  %357 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %358 = tail call i32 @verifier.nondet.3()
  %359 = tail call i32 @verifier.nondet.3()
  %360 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_ring_buffer_acquire_up_to(%struct.aws_ring_buffer* %357, i32 %358, i32 %359, %struct.aws_byte_buf* %360)
  %361 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %362 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_ring_buffer_release(%struct.aws_ring_buffer* %361, %struct.aws_byte_buf* %362)
  %363 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %364 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_ring_buffer_buf_belongs_to_pool(%struct.aws_ring_buffer* %363, %struct.aws_byte_buf* %364)
  %365 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %366 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @s_buf_belongs_to_pool(%struct.aws_ring_buffer* %365, %struct.aws_byte_buf* %366)
  %367 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %368 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  tail call fastcc void @aws_ring_buffer_allocator_init(%struct.aws_allocator* %367, %struct.aws_ring_buffer* %368)
  %369 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %370 = tail call i32 @verifier.nondet.3()
  %371 = tail call i8* @s_ring_buffer_mem_acquire(%struct.aws_allocator* %369, i32 %370)
  %372 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %373 = tail call i8* @verifier.nondet.4()
  tail call void @s_ring_buffer_mem_release(%struct.aws_allocator* %372, i8* %373)
  %374 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %375 = tail call i32 @verifier.nondet.3()
  %376 = tail call i32 @verifier.nondet.3()
  %377 = tail call i8* @s_ring_buffer_mem_calloc(%struct.aws_allocator* %374, i32 %375, i32 %376)
  %378 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %379 = tail call i8* @verifier.nondet.4()
  %380 = tail call i32 @verifier.nondet.3()
  %381 = tail call i32 @verifier.nondet.3()
  %382 = tail call i8* @s_ring_buffer_mem_realloc(%struct.aws_allocator* %378, i8* %379, i32 %380, i32 %381)
  unreachable
}

declare %struct.aws_ring_buffer* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_atomic_var* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

declare i8* @verifier.nondet.4() local_unnamed_addr

declare %struct.aws_allocator* @verifier.nondet.5() local_unnamed_addr

declare i32* @verifier.nondet.6() local_unnamed_addr

declare i8** @verifier.nondet.7() local_unnamed_addr

declare %struct.__CFAllocator* @verifier.nondet.8() local_unnamed_addr

declare void (i32, i8*)* @verifier.nondet.9() local_unnamed_addr

declare %struct.aws_error_info_list* @verifier.nondet.10() local_unnamed_addr

declare %struct.aws_byte_buf* @verifier.nondet.11() local_unnamed_addr

declare %struct.aws_byte_cursor* @verifier.nondet.12() local_unnamed_addr

declare i1 @verifier.nondet.13() local_unnamed_addr

declare i8 @verifier.nondet.14() local_unnamed_addr

declare %struct.aws_array_list* @verifier.nondet.15() local_unnamed_addr

declare i1 (i8)* @verifier.nondet.16() local_unnamed_addr

declare i16* @verifier.nondet.17() local_unnamed_addr

declare i16 @verifier.nondet.18() local_unnamed_addr

declare float* @verifier.nondet.19() local_unnamed_addr

declare float @verifier.nondet.20() local_unnamed_addr

declare double* @verifier.nondet.21() local_unnamed_addr

declare double @verifier.nondet.22() local_unnamed_addr

declare i64* @verifier.nondet.23() local_unnamed_addr

declare i64 @verifier.nondet.24() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #15

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #15

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #15

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #16

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #17

declare i32 @verifier.nondet.25() local_unnamed_addr

declare i1 @verifier.nondet.26() local_unnamed_addr

; Function Attrs: nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { "objc_arc_inert" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone speculatable willreturn }
attributes #13 = { noreturn nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn }
attributes #15 = { inaccessiblememonly nofree norecurse nounwind }
attributes #16 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #17 = { inaccessiblememonly }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !7, i64 4}
!6 = !{!"aws_ring_buffer", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 12, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"aws_atomic_var", !7, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !7, i64 4}
!13 = !{!"aws_allocator", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!14 = !{!6, !7, i64 16}
!15 = !{!7, !7, i64 0}
!16 = !{!13, !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !8, i64 0}
!19 = !{!13, !7, i64 12}
!20 = !{!13, !7, i64 8}
!21 = !{!22, !23, i64 0}
!22 = !{!"", !23, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!23 = !{!"long", !8, i64 0}
!24 = !{!22, !7, i64 4}
!25 = !{!22, !7, i64 8}
!26 = !{!22, !7, i64 12}
!27 = !{!22, !7, i64 16}
!28 = !{!22, !7, i64 20}
!29 = !{!22, !7, i64 24}
!30 = !{!22, !7, i64 28}
!31 = !{!22, !7, i64 32}
!32 = !{!33, !34, i64 4}
!33 = !{!"aws_error_info_list", !7, i64 0, !34, i64 4}
!34 = !{!"short", !8, i64 0}
!35 = !{!33, !7, i64 0}
!36 = !{!37, !18, i64 0}
!37 = !{!"aws_error_info", !18, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!38 = !{!39, !7, i64 4}
!39 = !{!"aws_byte_buf", !23, i64 0, !7, i64 4, !23, i64 8, !7, i64 12}
!40 = !{!39, !23, i64 0}
!41 = !{!39, !23, i64 8}
!42 = !{!39, !7, i64 12}
!43 = !{!44, !23, i64 0}
!44 = !{!"aws_byte_cursor", !23, i64 0, !7, i64 4}
!45 = !{!44, !7, i64 4}
!46 = !{i32 1682}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"misexpect", i64 0, i64 2000, i64 1}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!"branch_weights", i32 2002, i32 2000}
!52 = !{!53}
!53 = distinct !{!53, !54, !"aws_array_list_length: argument 0"}
!54 = distinct !{!54, !"aws_array_list_length"}
!55 = !{!56, !23, i64 8}
!56 = !{!"aws_array_list", !7, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !7, i64 16}
!57 = !{!56, !7, i64 16}
!58 = !{!56, !7, i64 0}
!59 = !{!56, !23, i64 12}
!60 = !{!61}
!61 = distinct !{!61, !62, !"aws_array_list_length: argument 0"}
!62 = distinct !{!62, !"aws_array_list_length"}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"aws_byte_cursor_split_on_char_n: argument 0"}
!65 = distinct !{!65, !"aws_byte_cursor_split_on_char_n"}
!66 = distinct !{!66, !65, !"aws_byte_cursor_split_on_char_n: argument 1"}
!67 = !{!64}
!68 = !{!66}
!69 = !{!"branch_weights", i32 2000, i32 2002}
!70 = !{!8, !8, i64 0}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = !{i32 34259}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"aws_byte_cursor_read: argument 0"}
!78 = distinct !{!78, !"aws_byte_cursor_read"}
!79 = distinct !{!79, !78, !"aws_byte_cursor_read: argument 1"}
!80 = !{!77}
!81 = !{!79}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"aws_byte_cursor_read: argument 0"}
!84 = distinct !{!84, !"aws_byte_cursor_read"}
!85 = distinct !{!85, !84, !"aws_byte_cursor_read: argument 1"}
!86 = !{!83}
!87 = !{!85}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"aws_byte_cursor_read: argument 0"}
!90 = distinct !{!90, !"aws_byte_cursor_read"}
!91 = distinct !{!91, !90, !"aws_byte_cursor_read: argument 1"}
!92 = !{!89}
!93 = !{!91}
!94 = !{!"branch_weights", i32 2146410443, i32 1073205}
!95 = !{!"branch_weights", i32 1073205, i32 2146410443}
!96 = !{!34, !34, i64 0}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"aws_byte_cursor_read: argument 0"}
!99 = distinct !{!99, !"aws_byte_cursor_read"}
!100 = distinct !{!100, !99, !"aws_byte_cursor_read: argument 1"}
!101 = !{!98}
!102 = !{!100}
!103 = !{!104, !106}
!104 = distinct !{!104, !105, !"aws_byte_cursor_read: argument 0"}
!105 = distinct !{!105, !"aws_byte_cursor_read"}
!106 = distinct !{!106, !105, !"aws_byte_cursor_read: argument 1"}
!107 = !{!104}
!108 = !{!106}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"aws_byte_cursor_read: argument 0"}
!111 = distinct !{!111, !"aws_byte_cursor_read"}
!112 = distinct !{!112, !111, !"aws_byte_cursor_read: argument 1"}
!113 = !{!110}
!114 = !{!112}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !8, i64 0}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"aws_byte_cursor_read: argument 0"}
!119 = distinct !{!119, !"aws_byte_cursor_read"}
!120 = distinct !{!120, !119, !"aws_byte_cursor_read: argument 1"}
!121 = !{!118}
!122 = !{!120}
!123 = !{!124, !124, i64 0}
!124 = !{!"double", !8, i64 0}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"aws_byte_cursor_read: argument 0"}
!127 = distinct !{!127, !"aws_byte_cursor_read"}
!128 = distinct !{!128, !127, !"aws_byte_cursor_read: argument 1"}
!129 = !{!126}
!130 = !{!128}
!131 = !{!132, !132, i64 0}
!132 = !{!"long long", !8, i64 0}
!133 = !{!"misexpect", i64 1, i64 2000, i64 1}
!134 = !{!135}
!135 = distinct !{!135, !136, !"aws_byte_buf_from_array: argument 0"}
!136 = distinct !{!136, !"aws_byte_buf_from_array"}
!137 = !{!138, !140}
!138 = distinct !{!138, !139, !"aws_byte_buf_write: argument 0"}
!139 = distinct !{!139, !"aws_byte_buf_write"}
!140 = distinct !{!140, !139, !"aws_byte_buf_write: argument 1"}
!141 = !{!138}
!142 = !{!140}
!143 = !{!144, !146}
!144 = distinct !{!144, !145, !"aws_byte_buf_write: argument 0"}
!145 = distinct !{!145, !"aws_byte_buf_write"}
!146 = distinct !{!146, !145, !"aws_byte_buf_write: argument 1"}
!147 = !{!144}
!148 = !{!146}
!149 = !{!150}
!150 = distinct !{!150, !151, !"aws_byte_buf_write_from_whole_cursor: argument 0"}
!151 = distinct !{!151, !"aws_byte_buf_write_from_whole_cursor"}
!152 = !{!153, !155, !150}
!153 = distinct !{!153, !154, !"aws_byte_buf_write: argument 0"}
!154 = distinct !{!154, !"aws_byte_buf_write"}
!155 = distinct !{!155, !154, !"aws_byte_buf_write: argument 1"}
!156 = !{!153, !150}
!157 = !{!155}
!158 = !{!159, !161}
!159 = distinct !{!159, !160, !"aws_byte_buf_write: argument 0"}
!160 = distinct !{!160, !"aws_byte_buf_write"}
!161 = distinct !{!161, !160, !"aws_byte_buf_write: argument 1"}
!162 = !{!159}
!163 = !{!161}
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"aws_byte_buf_write: argument 0"}
!166 = distinct !{!166, !"aws_byte_buf_write"}
!167 = distinct !{!167, !166, !"aws_byte_buf_write: argument 1"}
!168 = !{!165}
!169 = !{!167}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"aws_byte_buf_write: argument 0"}
!172 = distinct !{!172, !"aws_byte_buf_write"}
!173 = distinct !{!173, !172, !"aws_byte_buf_write: argument 1"}
!174 = !{!171}
!175 = !{!173}
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"aws_byte_buf_write: argument 0"}
!178 = distinct !{!178, !"aws_byte_buf_write"}
!179 = distinct !{!179, !178, !"aws_byte_buf_write: argument 1"}
!180 = !{!177}
!181 = !{!179}
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"aws_byte_buf_write: argument 0"}
!184 = distinct !{!184, !"aws_byte_buf_write"}
!185 = distinct !{!185, !184, !"aws_byte_buf_write: argument 1"}
!186 = !{!183}
!187 = !{!185}
!188 = !{!189, !191}
!189 = distinct !{!189, !190, !"aws_byte_buf_write: argument 0"}
!190 = distinct !{!190, !"aws_byte_buf_write"}
!191 = distinct !{!191, !190, !"aws_byte_buf_write: argument 1"}
!192 = !{!189}
!193 = !{!191}
!194 = !{!195, !197}
!195 = distinct !{!195, !196, !"aws_byte_buf_write: argument 0"}
!196 = distinct !{!196, !"aws_byte_buf_write"}
!197 = distinct !{!197, !196, !"aws_byte_buf_write: argument 1"}
!198 = !{!195}
!199 = !{!197}
!200 = !{!10, !7, i64 0}
!201 = !{!202}
!202 = distinct !{!202, !203, !"aws_byte_buf_from_empty_array: argument 0"}
!203 = distinct !{!203, !"aws_byte_buf_from_empty_array"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"aws_byte_buf_from_empty_array: argument 0"}
!206 = distinct !{!206, !"aws_byte_buf_from_empty_array"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"aws_byte_buf_from_empty_array: argument 0"}
!209 = distinct !{!209, !"aws_byte_buf_from_empty_array"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"aws_byte_buf_from_empty_array: argument 0"}
!212 = distinct !{!212, !"aws_byte_buf_from_empty_array"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"aws_byte_buf_from_empty_array: argument 0"}
!215 = distinct !{!215, !"aws_byte_buf_from_empty_array"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"aws_byte_buf_from_empty_array: argument 0"}
!218 = distinct !{!218, !"aws_byte_buf_from_empty_array"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"aws_byte_buf_from_empty_array: argument 0"}
!221 = distinct !{!221, !"aws_byte_buf_from_empty_array"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"aws_byte_buf_from_empty_array: argument 0"}
!224 = distinct !{!224, !"aws_byte_buf_from_empty_array"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"aws_byte_buf_from_empty_array: argument 0"}
!227 = distinct !{!227, !"aws_byte_buf_from_empty_array"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"aws_byte_buf_from_empty_array: argument 0"}
!230 = distinct !{!230, !"aws_byte_buf_from_empty_array"}
!231 = !{!13, !7, i64 16}
!232 = !{!23, !23, i64 0}
!233 = !{!234}
!234 = distinct !{!234, !235, !"aws_byte_buf_from_array: argument 0"}
!235 = distinct !{!235, !"aws_byte_buf_from_array"}
