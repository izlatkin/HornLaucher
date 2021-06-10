; ModuleID = '../out2/aws_ring_buffer_init_harness.c/aws_ring_buffer_init_harnessc8eb9.bc.txt'
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
%struct.aws_ring_buffer = type { %struct.aws_allocator*, i8*, %struct.aws_atomic_var, %struct.aws_atomic_var, i8* }
%struct.aws_atomic_var = type { i8* }
%struct.CFAllocatorContext = type { i32, i8*, i8* (i8*)*, void (i8*)*, %struct.__CFString* (i8*)*, i8* (i32, i32, i8*)*, i8* (i8*, i32, i32, i8*)*, void (i8*, i8*)*, i32 (i32, i32, i8*)* }
%struct.__CFString = type opaque
%struct.__CFAllocator = type opaque
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }

@default_allocator = internal global %struct.aws_allocator { i8* (%struct.aws_allocator*, i32)* @s_default_malloc, void (%struct.aws_allocator*, i8*)* @s_default_free, i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* null }, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"allocator != ((void*)0)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"/tmp/aws-c-common/source/allocator.c\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"allocator->mem_acquire != ((void*)0)\00", align 1
@.str.3.4 = private unnamed_addr constant [10 x i8] c"size != 0\00", align 1
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
@.str.26 = private unnamed_addr constant [84 x i8] c"!\22ring_buffer_allocator does not support realloc, as it breaks allocation ordering\22\00", align 1
@.str.1.27 = private unnamed_addr constant [39 x i8] c"/tmp/aws-c-common/source/ring_buffer.c\00", align 1
@s_common_log_subject_list = internal unnamed_addr global %struct.aws_log_subject_info_list { %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), i32 5 }, align 8
@s_common_log_subject_infos = internal global [5 x %struct.aws_log_subject_info] [%struct.aws_log_subject_info { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26.39, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.175, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.177, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.179, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.183, i32 0, i32 0) }], align 4
@.str.26.39 = private unnamed_addr constant [13 x i8] c"aws-c-common\00", align 1
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
define internal fastcc void @aws_ring_buffer_init_harness() unnamed_addr #1 {
  %1 = tail call i32 @verifier.nondet.12() #16
  %2 = tail call i32 @verifier.nondet.12() #16
  %3 = tail call i32 @verifier.nondet.12() #16
  tail call void @seahorn.fn.enter() #16
  %4 = tail call dereferenceable_or_null(20) i8* @malloc(i32 20) #17
  tail call void @seahorn.fn.enter() #16
  %5 = icmp ne i8* %4, null
  tail call void @verifier.assume(i1 %5)
  tail call void @verifier.assume(i1 true)
  %6 = icmp ne i32 %3, 0
  %7 = icmp ult i32 %2, 8388607
  %8 = and i1 %7, %6
  tail call void @verifier.assume(i1 %8)
  tail call void @seahorn.fn.enter() #16
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false) #16
  %9 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* nonnull @default_allocator, i32 %1) #16
  %10 = getelementptr inbounds i8, i8* %4, i32 4
  %11 = bitcast i8* %10 to i8**
  store i8* %9, i8** %11, align 4, !tbaa !5
  %12 = icmp eq i8* %9, null
  br i1 %12, label %UnifiedReturnBlock, label %13

13:                                               ; preds = %0
  %14 = bitcast i8* %4 to %struct.aws_allocator**
  store %struct.aws_allocator* @default_allocator, %struct.aws_allocator** %14, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #16
  %15 = getelementptr inbounds i8, i8* %4, i32 8
  %16 = bitcast i8* %15 to i8**
  store volatile i8* %9, i8** %16, align 4, !tbaa !12
  tail call void @seahorn.fn.enter() #16
  %17 = getelementptr inbounds i8, i8* %4, i32 12
  %18 = bitcast i8* %17 to i8**
  store volatile i8* %9, i8** %18, align 4, !tbaa !12
  %19 = getelementptr inbounds i8, i8* %9, i32 %1
  %20 = getelementptr inbounds i8, i8* %4, i32 16
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 4, !tbaa !13
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %22 = bitcast i8* %15 to i32*
  %23 = load atomic volatile i32, i32* %22 seq_cst, align 4
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %24 = bitcast i8* %17 to i32*
  %25 = load atomic volatile i32, i32* %24 seq_cst, align 4
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  br label %UnifiedReturnBlock

UnifiedReturnBlock:                               ; preds = %0, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind allocsize(0)
declare noalias i8* @malloc(i32) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* %0) unnamed_addr #4 {
aws_ring_buffer_check_atomic_ptr.exit:
  tail call void @seahorn.fn.enter() #16
  %1 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = bitcast %struct.aws_atomic_var* %1 to i32*
  %3 = load atomic volatile i32, i32* %2 seq_cst, align 4
  %4 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %5 = bitcast %struct.aws_atomic_var* %4 to i32*
  %6 = load atomic volatile i32, i32* %5 seq_cst, align 4
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 seq_cst, align 4
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_check_atomic_ptr(%struct.aws_ring_buffer* nocapture readonly %0, i8* readnone %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  %3 = icmp eq i8* %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %6 = load i8*, i8** %5, align 4, !tbaa !5
  %7 = icmp ugt i8* %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %10 = load i8*, i8** %9, align 4, !tbaa !13
  %11 = icmp uge i8* %10, %1
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i1 [ false, %2 ], [ false, %4 ], [ %11, %8 ]
  ret i1 %13
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %0, i32 %1) unnamed_addr #4 {
NodeBlock:
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
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
  tail call void @abort() #18
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
  tail call void @seahorn.fn.enter() #16
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
  tail call void @abort() #18
  unreachable

.fold.split:                                      ; preds = %NodeBlock2
  br label %1

1:                                                ; preds = %NodeBlock2, %.fold.split, %LeafBlock1, %NodeBlock3, %NodeBlock5
  %.0 = phi i32 [ 3, %NodeBlock5 ], [ 4, %NodeBlock3 ], [ 5, %LeafBlock1 ], [ %0, %NodeBlock2 ], [ 0, %.fold.split ]
  ret i32 %.0
}

; Function Attrs: cold noreturn
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_allocator_is_valid(%struct.aws_allocator* nocapture readnone %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_default_allocator() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #1 {
  tail call void @seahorn.fn.enter() #16
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16
  store i8* null, i8** %3, align 4, !tbaa !14
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #16
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #1 {
  tail call void @seahorn.fn.enter() #16
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #1 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #16
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
  tail call void @seahorn.fn.enter() #16
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #16
  store i8* null, i8** %5, align 4, !tbaa !14
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #16
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #16
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #16
  call void @seahorn.fn.enter() #16
  call void @free(i8* nonnull %1) #16
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #1 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #16
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #16
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #16
  store i8* null, i8** %4, align 4, !tbaa !14
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #16
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #16
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #16
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
  tail call void @seahorn.fn.enter() #16
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 115) #19
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %7 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %6, align 4, !tbaa !15
  %8 = icmp eq i8* (%struct.aws_allocator*, i32)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 116) #19
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 118) #19
  unreachable

13:                                               ; preds = %10
  %14 = tail call i8* %7(%struct.aws_allocator* nonnull %0, i32 %1) #16
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %aws_raise_error.exit

16:                                               ; preds = %13
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %17 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %17(i32 1, i8* %20) #16
  br label %aws_raise_error.exit

21:                                               ; preds = %16
  %22 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %aws_raise_error.exit, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %22(i32 1, i8* %25) #16
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %24, %21, %19, %13
  ret i8* %14
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %2(i32 %0, i8* %5) #16
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %7(i32 %0, i8* %10) #16
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_calloc(%struct.aws_allocator* %0, i32 %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %4 = icmp eq %struct.aws_allocator* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 128) #19
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  %8 = load i8* (%struct.aws_allocator*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)** %7, align 4, !tbaa !17
  %9 = icmp eq i8* (%struct.aws_allocator*, i32, i32)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %12 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %11, align 4, !tbaa !15
  %13 = icmp eq i8* (%struct.aws_allocator*, i32)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 129) #19
  unreachable

15:                                               ; preds = %10, %6
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %2, 0
  %or.cond = and i1 %16, %17
  br i1 %or.cond, label %19, label %18

18:                                               ; preds = %15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 131) #19
  unreachable

19:                                               ; preds = %15
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %20 = mul i32 %2, %1
  br i1 %9, label %34, label %21

21:                                               ; preds = %19
  %22 = tail call i8* %8(%struct.aws_allocator* nonnull %0, i32 %1, i32 %2) #16
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %aws_raise_error.exit

24:                                               ; preds = %21
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %25 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %25(i32 1, i8* %28) #16
  br label %aws_raise_error.exit

29:                                               ; preds = %24
  %30 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %31 = icmp eq void (i32, i8*)* %30, null
  br i1 %31, label %aws_raise_error.exit, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %30(i32 1, i8* %33) #16
  br label %aws_raise_error.exit

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %36 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %35, align 4, !tbaa !15
  %37 = tail call i8* %36(%struct.aws_allocator* nonnull %0, i32 %20) #16
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %40 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %41 = icmp eq void (i32, i8*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %40(i32 1, i8* %43) #16
  br label %aws_raise_error.exit

44:                                               ; preds = %39
  %45 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %46 = icmp eq void (i32, i8*)* %45, null
  br i1 %46, label %aws_raise_error.exit, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %45(i32 1, i8* %48) #16
  br label %aws_raise_error.exit

49:                                               ; preds = %34
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %37, i8 0, i32 %20, i1 false) #16
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %47, %44, %42, %32, %29, %27, %49, %21
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !18
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind ssp uwtable
declare i8* @aws_mem_acquire_many(%struct.aws_allocator*, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_release(%struct.aws_allocator* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 215) #19
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %7 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %6, align 4, !tbaa !20
  %8 = icmp eq void (%struct.aws_allocator*, i8*)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 216) #19
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i8* %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void %7(%struct.aws_allocator* nonnull %0, i8* nonnull %1) #16
  br label %13

13:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %0, i8** nocapture %1, i32 %2, i32 %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %5 = icmp eq %struct.aws_allocator* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 224) #19
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %9 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %8, align 4, !tbaa !21
  %10 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %13 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %12, align 4, !tbaa !15
  %14 = icmp eq i8* (%struct.aws_allocator*, i32)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 225) #19
  unreachable

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %18 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !20
  %19 = icmp eq void (%struct.aws_allocator*, i8*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 226) #19
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8*, i8** %1, align 4, !tbaa !14
  tail call void @seahorn.fn.enter() #16
  %25 = icmp eq i8* %24, null
  br i1 %25, label %aws_mem_release.exit, label %26

26:                                               ; preds = %23
  tail call void %18(%struct.aws_allocator* nonnull %0, i8* nonnull %24) #16
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %23, %26
  store i8* null, i8** %1, align 4, !tbaa !14
  br label %aws_raise_error.exit

27:                                               ; preds = %21
  br i1 %10, label %43, label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %1, align 4, !tbaa !14
  %30 = tail call i8* %9(%struct.aws_allocator* nonnull %0, i8* %29, i32 %2, i32 %3) #16
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %33(i32 1, i8* %36) #16
  br label %aws_raise_error.exit

37:                                               ; preds = %32
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %38(i32 1, i8* %41) #16
  br label %aws_raise_error.exit

42:                                               ; preds = %28
  store i8* %30, i8** %1, align 4, !tbaa !14
  br label %aws_raise_error.exit

43:                                               ; preds = %27
  %44 = icmp ugt i32 %3, %2
  br i1 %44, label %45, label %aws_raise_error.exit

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %47 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %46, align 4, !tbaa !15
  %48 = tail call i8* %47(%struct.aws_allocator* nonnull %0, i32 %3) #16
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %51 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %51(i32 1, i8* %54) #16
  br label %aws_raise_error.exit

55:                                               ; preds = %50
  %56 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %57 = icmp eq void (i32, i8*)* %56, null
  br i1 %57, label %aws_raise_error.exit, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %56(i32 1, i8* %59) #16
  br label %aws_raise_error.exit

60:                                               ; preds = %45
  %61 = load i8*, i8** %1, align 4, !tbaa !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %48, i8* align 1 %61, i32 %2, i1 false) #16
  %62 = getelementptr inbounds i8, i8* %48, i32 %2
  %63 = sub i32 %3, %2
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %62, i8 0, i32 %63, i1 false) #16
  %64 = load i8*, i8** %1, align 4, !tbaa !14
  tail call void @seahorn.fn.enter() #16
  %65 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !20
  %66 = icmp eq void (%struct.aws_allocator*, i8*)* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 216) #19
  unreachable

68:                                               ; preds = %60
  %69 = icmp eq i8* %64, null
  br i1 %69, label %aws_mem_release.exit7, label %70

70:                                               ; preds = %68
  tail call void %65(%struct.aws_allocator* nonnull %0, i8* nonnull %64) #16
  br label %aws_mem_release.exit7

aws_mem_release.exit7:                            ; preds = %68, %70
  store i8* %48, i8** %1, align 4, !tbaa !14
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %58, %55, %53, %40, %37, %35, %aws_mem_release.exit7, %43, %42, %aws_mem_release.exit
  %.2 = phi i32 [ 0, %aws_mem_release.exit ], [ 0, %42 ], [ 0, %43 ], [ 0, %aws_mem_release.exit7 ], [ -1, %35 ], [ -1, %37 ], [ -1, %40 ], [ -1, %53 ], [ -1, %55 ], [ -1, %58 ]
  ret i32 %.2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %2 = alloca %struct.CFAllocatorContext, align 4
  %3 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %4 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %3, align 4, !tbaa !21
  %5 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %4, null
  %spec.store.select = select i1 %5, i8* (i8*, i32, i32, i8*)* null, i8* (i8*, i32, i32, i8*)* @s_cf_allocator_reallocate
  %6 = bitcast %struct.CFAllocatorContext* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %6) #16
  %7 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 0
  store i32 0, i32* %7, align 4, !tbaa !22
  %8 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 1
  %9 = bitcast i8** %8 to %struct.aws_allocator**
  store %struct.aws_allocator* %0, %struct.aws_allocator** %9, align 4, !tbaa !25
  %10 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 2
  store i8* (i8*)* null, i8* (i8*)** %10, align 4, !tbaa !26
  %11 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %11, align 4, !tbaa !27
  %12 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 4
  store %struct.__CFString* (i8*)* @s_cf_allocator_copy_description, %struct.__CFString* (i8*)** %12, align 4, !tbaa !28
  %13 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 5
  store i8* (i32, i32, i8*)* @s_cf_allocator_allocate, i8* (i32, i32, i8*)** %13, align 4, !tbaa !29
  %14 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 6
  store i8* (i8*, i32, i32, i8*)* %spec.store.select, i8* (i8*, i32, i32, i8*)** %14, align 4, !tbaa !30
  %15 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 7
  store void (i8*, i8*)* @s_cf_allocator_deallocate, void (i8*, i8*)** %15, align 4, !tbaa !31
  %16 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 8
  store i32 (i32, i32, i8*)* @s_cf_allocator_preferred_size, i32 (i32, i32, i8*)** %16, align 4, !tbaa !32
  %17 = call %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator* null, %struct.CFAllocatorContext* nonnull %2) #16
  %18 = icmp eq %struct.__CFAllocator* %17, null
  br i1 %18, label %19, label %aws_raise_error.exit

19:                                               ; preds = %1
  call void @seahorn.fn.enter() #16
  call void @seahorn.fn.enter() #16
  %20 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %21 = icmp eq void (i32, i8*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  call void %20(i32 1, i8* %23) #16
  br label %aws_raise_error.exit

24:                                               ; preds = %19
  %25 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %aws_raise_error.exit, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  call void %25(i32 1, i8* %28) #16
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %27, %24, %22, %1
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %6) #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_reallocate(i8* %0, i32 %1, i32 %2, i8* %3) #1 {
  tail call void @seahorn.fn.enter() #16
  %5 = alloca i8*, align 4
  %6 = bitcast i8* %3 to %struct.aws_allocator*
  %7 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16
  %8 = getelementptr inbounds i8, i8* %0, i32 -4
  store i8* %8, i8** %5, align 4, !tbaa !14
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 1
  %11 = call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %6, i8** nonnull %5, i32 %10, i32 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 4, !tbaa !14
  %15 = bitcast i8* %14 to i32*
  store i32 %1, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %14, i32 4
  br label %17

17:                                               ; preds = %13, %4
  %.0 = phi i8* [ %16, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.__CFString* @s_cf_allocator_copy_description(i8* nocapture readnone %0) #1 {
  tail call void @seahorn.fn.enter() #16
  ret %struct.__CFString* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to %struct.__CFString*)
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_allocate(i32 %0, i32 %1, i8* %2) #1 {
  tail call void @seahorn.fn.enter() #16
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
  tail call void @seahorn.fn.enter() #16
  %3 = bitcast i8* %1 to %struct.aws_allocator*
  %4 = getelementptr inbounds i8, i8* %0, i32 -4
  tail call void @seahorn.fn.enter() #16
  %5 = icmp eq i8* %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 215) #19
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i32 4
  %9 = bitcast i8* %8 to void (%struct.aws_allocator*, i8*)**
  %10 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %9, align 4, !tbaa !20
  %11 = icmp eq void (%struct.aws_allocator*, i8*)* %10, null
  br i1 %11, label %12, label %aws_mem_release.exit

12:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 216) #19
  unreachable

aws_mem_release.exit:                             ; preds = %7
  tail call void %10(%struct.aws_allocator* nonnull %3, i8* nonnull %4) #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @s_cf_allocator_preferred_size(i32 %0, i32 %1, i8* nocapture readnone %2) #1 {
  tail call void @seahorn.fn.enter() #16
  %4 = add i32 %0, 4
  ret i32 %4
}

declare %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator*, %struct.CFAllocatorContext*) local_unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %2 = bitcast %struct.__CFAllocator* %0 to i8*
  tail call void @CFRelease(i8* %2) #16
  ret void
}

declare void @CFRelease(i8*) local_unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_last_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !14
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_error_info* @get_error_by_code(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = and i32 %0, 1023
  %6 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %7 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %6, align 4, !tbaa !14
  %8 = icmp eq %struct.aws_error_info_list* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !33
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 0
  %16 = load %struct.aws_error_info*, %struct.aws_error_info** %15, align 4, !tbaa !36
  %17 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %16, i32 %5
  br label %18

18:                                               ; preds = %14, %9, %3, %1
  %.1 = phi %struct.aws_error_info* [ null, %1 ], [ %17, %14 ], [ null, %9 ], [ null, %3 ]
  ret %struct.aws_error_info* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !14
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_lib_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !14
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_debug_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !14
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_raise_error_private(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %2(i32 %0, i8* %5) #16
  br label %11

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %7(i32 %0, i8* %10) #16
  br label %11

11:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_reset_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_restore_error(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  store void (i32, i8*)* %0, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  store i8* %1, i8** @s_global_error_context, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  store void (i32, i8*)* %0, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  store i8* %1, i8** @tl_thread_handler_context, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_register_error_info(%struct.aws_error_info_list* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 133) #19
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !36
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 134) #19
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !33
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 135) #19
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !37
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !14
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 144) #19
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* %0, %struct.aws_error_info_list** %23, align 4, !tbaa !14
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 167) #19
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !36
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 168) #19
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !33
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 169) #19
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !37
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !14
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 178) #19
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %23, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_translate_and_raise_io_error(i32 %0) unnamed_addr #1 {
NodeBlock25:
  tail call void @seahorn.fn.enter() #16
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
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %2(i32 34, i8* %5) #16
  br label %aws_raise_error.20.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error.20.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %7(i32 34, i8* %10) #16
  br label %aws_raise_error.20.exit

11:                                               ; preds = %LeafBlock15
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %12(i32 42, i8* %15) #16
  br label %aws_raise_error.20.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.20.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %17(i32 42, i8* %20) #16
  br label %aws_raise_error.20.exit

21:                                               ; preds = %LeafBlock, %LeafBlock3
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %22(i32 43, i8* %25) #16
  br label %aws_raise_error.20.exit

26:                                               ; preds = %21
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.20.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %27(i32 43, i8* %30) #16
  br label %aws_raise_error.20.exit

31:                                               ; preds = %LeafBlock1, %NodeBlock5, %LeafBlock17
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %32 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %32(i32 44, i8* %35) #16
  br label %aws_raise_error.20.exit

36:                                               ; preds = %31
  %37 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %38 = icmp eq void (i32, i8*)* %37, null
  br i1 %38, label %aws_raise_error.20.exit, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %37(i32 44, i8* %40) #16
  br label %aws_raise_error.20.exit

41:                                               ; preds = %LeafBlock11
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %42 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %43 = icmp eq void (i32, i8*)* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %42(i32 45, i8* %45) #16
  br label %aws_raise_error.20.exit

46:                                               ; preds = %41
  %47 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %aws_raise_error.20.exit, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %47(i32 45, i8* %50) #16
  br label %aws_raise_error.20.exit

51:                                               ; preds = %NodeBlock7
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %52 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %52(i32 1, i8* %55) #16
  br label %aws_raise_error.20.exit

56:                                               ; preds = %51
  %57 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %58 = icmp eq void (i32, i8*)* %57, null
  br i1 %58, label %aws_raise_error.20.exit, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %57(i32 1, i8* %60) #16
  br label %aws_raise_error.20.exit

61:                                               ; preds = %NodeBlock21
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %62(i32 2, i8* %65) #16
  br label %aws_raise_error.20.exit

66:                                               ; preds = %61
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.20.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %67(i32 2, i8* %70) #16
  br label %aws_raise_error.20.exit

NewDefault:                                       ; preds = %LeafBlock, %LeafBlock1, %LeafBlock3, %LeafBlock11, %LeafBlock15, %LeafBlock17
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %71 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %72 = icmp eq void (i32, i8*)* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %NewDefault
  %74 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %71(i32 46, i8* %74) #16
  br label %aws_raise_error.20.exit

75:                                               ; preds = %NewDefault
  %76 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %77 = icmp eq void (i32, i8*)* %76, null
  br i1 %77, label %aws_raise_error.20.exit, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %76(i32 46, i8* %79) #16
  br label %aws_raise_error.20.exit

aws_raise_error.20.exit:                          ; preds = %78, %75, %73, %69, %66, %64, %59, %56, %54, %49, %46, %44, %39, %36, %34, %29, %26, %24, %19, %16, %14, %9, %6, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.20(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %2(i32 %0, i8* %5) #16
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %7(i32 %0, i8* %10) #16
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_ring_buffer_init(%struct.aws_ring_buffer* %0, %struct.aws_allocator* %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %4 = bitcast %struct.aws_ring_buffer* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false) #16
  %5 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %1, i32 %2)
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  store i8* %5, i8** %6, align 4, !tbaa !5
  %7 = icmp eq i8* %5, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  store %struct.aws_allocator* %1, %struct.aws_allocator** %9, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #16
  %10 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2, i32 0
  store volatile i8* %5, i8** %10, align 4, !tbaa !12
  tail call void @seahorn.fn.enter() #16
  %11 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3, i32 0
  store volatile i8* %5, i8** %11, align 4, !tbaa !12
  %12 = getelementptr inbounds i8, i8* %5, i32 %2
  %13 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  store i8* %12, i8** %13, align 4, !tbaa !13
  br label %14

14:                                               ; preds = %8, %3
  %.0 = phi i32 [ 0, %8 ], [ -1, %3 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_atomic_init_ptr(%struct.aws_atomic_var* %0, i8* %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  %3 = getelementptr inbounds %struct.aws_atomic_var, %struct.aws_atomic_var* %0, i32 0, i32 0
  store volatile i8* %1, i8** %3, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %3 = load i8*, i8** %2, align 4, !tbaa !5
  %4 = icmp eq i8* %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  %7 = load %struct.aws_allocator*, %struct.aws_allocator** %6, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #16
  %8 = icmp eq %struct.aws_allocator* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 215) #19
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %7, i32 0, i32 1
  %12 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %11, align 4, !tbaa !20
  %13 = icmp eq void (%struct.aws_allocator*, i8*)* %12, null
  br i1 %13, label %14, label %aws_mem_release.exit

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 216) #19
  unreachable

aws_mem_release.exit:                             ; preds = %10
  tail call void %12(%struct.aws_allocator* nonnull %7, i8* nonnull %3) #16
  br label %15

15:                                               ; preds = %aws_mem_release.exit, %1
  %16 = bitcast %struct.aws_ring_buffer* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %16, i8 0, i32 20, i1 false) #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %0, i32 %1, %struct.aws_byte_buf* nocapture %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %4 = alloca %struct.aws_byte_buf, align 8
  %5 = alloca %struct.aws_byte_buf, align 8
  %6 = alloca %struct.aws_byte_buf, align 8
  %7 = alloca %struct.aws_byte_buf, align 8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %10 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %11 = icmp eq void (i32, i8*)* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %10(i32 34, i8* %13) #16
  br label %aws_raise_error.23.exit

14:                                               ; preds = %9
  %15 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %16 = icmp eq void (i32, i8*)* %15, null
  br i1 %16, label %aws_raise_error.23.exit, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %15(i32 34, i8* %18) #16
  br label %aws_raise_error.23.exit

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %21 = bitcast %struct.aws_atomic_var* %20 to i32*
  %22 = load atomic volatile i32, i32* %21 acquire, align 4
  %23 = inttoptr i32 %22 to i8*
  %24 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %25 = bitcast %struct.aws_atomic_var* %24 to i32*
  %26 = load atomic volatile i32, i32* %25 monotonic, align 4
  %27 = inttoptr i32 %26 to i8*
  %28 = icmp eq i8* %27, %23
  br i1 %28, label %29, label %60

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %31 = load i8*, i8** %30, align 4, !tbaa !13
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
  %41 = icmp ult i32 %40, %1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %43 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %44 = icmp eq void (i32, i8*)* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %43(i32 1, i8* %46) #16
  br label %aws_raise_error.23.exit

47:                                               ; preds = %42
  %48 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %49 = icmp eq void (i32, i8*)* %48, null
  br i1 %49, label %aws_raise_error.23.exit, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %48(i32 1, i8* %51) #16
  br label %aws_raise_error.23.exit

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %54 = load i8*, i8** %53, align 4, !tbaa !5
  %55 = getelementptr inbounds i8, i8* %54, i32 %1
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %56 = ptrtoint i8* %55 to i32
  store atomic volatile i32 %56, i32* %25 monotonic, align 4
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %57 = ptrtoint i8* %54 to i32
  store atomic volatile i32 %57, i32* %21 release, align 4
  %58 = bitcast %struct.aws_byte_buf* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #16
  %59 = load i8*, i8** %53, align 4, !tbaa !5
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %4, i8* %59, i32 %1) #16
  %.pmcpy.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 0
  %.pmcpy.unpack = load i32, i32* %.pmcpy.elt, align 8
  %.pmcpy.elt46 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 1
  %.pmcpy.unpack47 = load i8*, i8** %.pmcpy.elt46, align 4
  %.pmcpy.elt48 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 2
  %.pmcpy.unpack49 = load i32, i32* %.pmcpy.elt48, align 8
  %.pmcpy.elt50 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 3
  %.pmcpy.unpack51 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt50, align 4
  %.repack53 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 %.pmcpy.unpack, i32* %.repack53, align 4
  %.repack54 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %.pmcpy.unpack47, i8** %.repack54, align 4
  %.repack56 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %.pmcpy.unpack49, i32* %.repack56, align 4
  %.repack58 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy.unpack51, %struct.aws_allocator** %.repack58, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #16
  br label %aws_raise_error.23.exit

60:                                               ; preds = %19
  %61 = icmp ugt i8* %23, %27
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  %63 = xor i32 %26, -1
  %64 = add i32 %22, %63
  %65 = icmp ult i32 %64, %1
  br i1 %65, label %91, label %.critedge

.critedge:                                        ; preds = %62
  %66 = getelementptr inbounds i8, i8* %27, i32 %1
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %67 = ptrtoint i8* %66 to i32
  store atomic volatile i32 %67, i32* %25 monotonic, align 4
  %68 = bitcast %struct.aws_byte_buf* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #16
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %5, i8* %27, i32 %1) #16
  %.pmcpy2.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 0
  %.pmcpy2.unpack = load i32, i32* %.pmcpy2.elt, align 8
  %.pmcpy2.elt32 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 1
  %.pmcpy2.unpack33 = load i8*, i8** %.pmcpy2.elt32, align 4
  %.pmcpy2.elt34 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 2
  %.pmcpy2.unpack35 = load i32, i32* %.pmcpy2.elt34, align 8
  %.pmcpy2.elt36 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 3
  %.pmcpy2.unpack37 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy2.elt36, align 4
  %.repack39 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 %.pmcpy2.unpack, i32* %.repack39, align 4
  %.repack40 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %.pmcpy2.unpack33, i8** %.repack40, align 4
  %.repack42 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %.pmcpy2.unpack35, i32* %.repack42, align 4
  %.repack44 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy2.unpack37, %struct.aws_allocator** %.repack44, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #16
  br label %aws_raise_error.23.exit

69:                                               ; preds = %60
  %70 = icmp ult i8* %23, %27
  br i1 %70, label %71, label %91

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %73 = load i8*, i8** %72, align 4, !tbaa !13
  %74 = ptrtoint i8* %73 to i32
  %75 = sub i32 %74, %26
  %76 = icmp ult i32 %75, %1
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds i8, i8* %27, i32 %1
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %79 = ptrtoint i8* %78 to i32
  store atomic volatile i32 %79, i32* %25 monotonic, align 4
  %80 = bitcast %struct.aws_byte_buf* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80) #16
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %6, i8* %27, i32 %1) #16
  %.pmcpy3.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 0
  %.pmcpy3.unpack = load i32, i32* %.pmcpy3.elt, align 8
  %.pmcpy3.elt18 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 1
  %.pmcpy3.unpack19 = load i8*, i8** %.pmcpy3.elt18, align 4
  %.pmcpy3.elt20 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 2
  %.pmcpy3.unpack21 = load i32, i32* %.pmcpy3.elt20, align 8
  %.pmcpy3.elt22 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 3
  %.pmcpy3.unpack23 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy3.elt22, align 4
  %.repack25 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 %.pmcpy3.unpack, i32* %.repack25, align 4
  %.repack26 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %.pmcpy3.unpack19, i8** %.repack26, align 4
  %.repack28 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %.pmcpy3.unpack21, i32* %.repack28, align 4
  %.repack30 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy3.unpack23, %struct.aws_allocator** %.repack30, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80) #16
  br label %aws_raise_error.23.exit

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %83 = load i8*, i8** %82, align 4, !tbaa !5
  %84 = ptrtoint i8* %83 to i32
  %85 = sub i32 %22, %84
  %86 = icmp ugt i32 %85, %1
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, i8* %83, i32 %1
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %89 = ptrtoint i8* %88 to i32
  store atomic volatile i32 %89, i32* %25 monotonic, align 4
  %90 = bitcast %struct.aws_byte_buf* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %90) #16
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %7, i8* %83, i32 %1) #16
  %.pmcpy4.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 0
  %.pmcpy4.unpack = load i32, i32* %.pmcpy4.elt, align 8
  %.pmcpy4.elt5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 1
  %.pmcpy4.unpack6 = load i8*, i8** %.pmcpy4.elt5, align 4
  %.pmcpy4.elt7 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 2
  %.pmcpy4.unpack8 = load i32, i32* %.pmcpy4.elt7, align 8
  %.pmcpy4.elt9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 3
  %.pmcpy4.unpack10 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy4.elt9, align 4
  %.repack = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 0
  store i32 %.pmcpy4.unpack, i32* %.repack, align 4
  %.repack12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 1
  store i8* %.pmcpy4.unpack6, i8** %.repack12, align 4
  %.repack14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 2
  store i32 %.pmcpy4.unpack8, i32* %.repack14, align 4
  %.repack16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %2, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy4.unpack10, %struct.aws_allocator** %.repack16, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %90) #16
  br label %aws_raise_error.23.exit

91:                                               ; preds = %81, %69, %62
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %92 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %93 = icmp eq void (i32, i8*)* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %92(i32 1, i8* %95) #16
  br label %aws_raise_error.23.exit

96:                                               ; preds = %91
  %97 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %98 = icmp eq void (i32, i8*)* %97, null
  br i1 %98, label %aws_raise_error.23.exit, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %97(i32 1, i8* %100) #16
  br label %aws_raise_error.23.exit

aws_raise_error.23.exit:                          ; preds = %99, %96, %94, %50, %47, %45, %17, %14, %12, %87, %77, %.critedge, %52
  %.3 = phi i32 [ 0, %77 ], [ 0, %87 ], [ 0, %52 ], [ 0, %.critedge ], [ -1, %12 ], [ -1, %14 ], [ -1, %17 ], [ -1, %45 ], [ -1, %47 ], [ -1, %50 ], [ -1, %94 ], [ -1, %96 ], [ -1, %99 ]
  ret i32 %.3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.23(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %2(i32 %0, i8* %5) #16
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %7(i32 %0, i8* %10) #16
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr_explicit.24(%struct.aws_atomic_var* %0, i32 %1) unnamed_addr #4 {
NodeBlock:
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
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
  tail call void @abort() #18
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
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
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
  tail call void @abort() #18
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

declare void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* sret align 4, i8*, i32) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_atomic_priv_xlate_order.25(i32 %0) unnamed_addr #4 {
NodeBlock7:
  tail call void @seahorn.fn.enter() #16
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
  tail call void @abort() #18
  unreachable

.fold.split:                                      ; preds = %NodeBlock2
  br label %1

1:                                                ; preds = %NodeBlock2, %.fold.split, %LeafBlock1, %NodeBlock3, %NodeBlock5
  %.0 = phi i32 [ 3, %NodeBlock5 ], [ 4, %NodeBlock3 ], [ 5, %LeafBlock1 ], [ %0, %NodeBlock2 ], [ 0, %.fold.split ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_acquire_up_to(%struct.aws_ring_buffer* %0, i32 %1, i32 %2, %struct.aws_byte_buf* %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %5 = alloca %struct.aws_byte_buf, align 8
  %6 = alloca %struct.aws_byte_buf, align 8
  %7 = alloca %struct.aws_byte_buf, align 8
  %8 = alloca %struct.aws_byte_buf, align 8
  %9 = alloca %struct.aws_byte_buf, align 8
  %10 = alloca %struct.aws_byte_buf, align 8
  %11 = icmp ne i32 %2, 0
  %12 = icmp ne i32 %1, 0
  %or.cond.not = and i1 %12, %11
  %13 = icmp ne %struct.aws_ring_buffer* %0, null
  %or.cond4 = and i1 %13, %or.cond.not
  %14 = icmp ne %struct.aws_byte_buf* %3, null
  %or.cond6 = and i1 %14, %or.cond4
  br i1 %or.cond6, label %25, label %15

15:                                               ; preds = %4
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %16 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %17 = icmp eq void (i32, i8*)* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %16(i32 34, i8* %19) #16
  br label %aws_raise_error.23.exit

20:                                               ; preds = %15
  %21 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %22 = icmp eq void (i32, i8*)* %21, null
  br i1 %22, label %aws_raise_error.23.exit, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %21(i32 34, i8* %24) #16
  br label %aws_raise_error.23.exit

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %27 = bitcast %struct.aws_atomic_var* %26 to i32*
  %28 = load atomic volatile i32, i32* %27 acquire, align 4
  %29 = inttoptr i32 %28 to i8*
  %30 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %31 = bitcast %struct.aws_atomic_var* %30 to i32*
  %32 = load atomic volatile i32, i32* %31 monotonic, align 4
  %33 = inttoptr i32 %32 to i8*
  %34 = icmp eq i8* %33, %29
  br i1 %34, label %35, label %68

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %37 = load i8*, i8** %36, align 4, !tbaa !13
  %38 = icmp eq i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %41 = load i8*, i8** %40, align 4, !tbaa !5
  %42 = ptrtoint i8* %37 to i32
  %43 = ptrtoint i8* %41 to i32
  %44 = sub i32 %42, %43
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i32 [ %44, %39 ], [ 0, %35 ]
  %47 = icmp ugt i32 %46, %2
  %48 = select i1 %47, i32 %2, i32 %46
  %49 = icmp ult i32 %48, %1
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %51 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %51(i32 1, i8* %54) #16
  br label %aws_raise_error.23.exit

55:                                               ; preds = %50
  %56 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %57 = icmp eq void (i32, i8*)* %56, null
  br i1 %57, label %aws_raise_error.23.exit, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %56(i32 1, i8* %59) #16
  br label %aws_raise_error.23.exit

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %62 = load i8*, i8** %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i8, i8* %62, i32 %48
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %64 = ptrtoint i8* %63 to i32
  store atomic volatile i32 %64, i32* %31 monotonic, align 4
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %65 = ptrtoint i8* %62 to i32
  store atomic volatile i32 %65, i32* %27 release, align 4
  %66 = bitcast %struct.aws_byte_buf* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %66) #16
  %67 = load i8*, i8** %61, align 4, !tbaa !5
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %5, i8* %67, i32 %48) #16
  %.pmcpy.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 0
  %.pmcpy.unpack = load i32, i32* %.pmcpy.elt, align 8
  %.pmcpy.elt83 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 1
  %.pmcpy.unpack84 = load i8*, i8** %.pmcpy.elt83, align 4
  %.pmcpy.elt85 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 2
  %.pmcpy.unpack86 = load i32, i32* %.pmcpy.elt85, align 8
  %.pmcpy.elt87 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %5, i32 0, i32 3
  %.pmcpy.unpack88 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt87, align 4
  %.repack90 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 %.pmcpy.unpack, i32* %.repack90, align 4
  %.repack91 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %.pmcpy.unpack84, i8** %.repack91, align 4
  %.repack93 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %.pmcpy.unpack86, i32* %.repack93, align 4
  %.repack95 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy.unpack88, %struct.aws_allocator** %.repack95, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %66) #16
  br label %aws_raise_error.23.exit

68:                                               ; preds = %25
  %69 = icmp ugt i8* %29, %33
  br i1 %69, label %70, label %79

70:                                               ; preds = %68
  %71 = sub i32 %28, %32
  %72 = add i32 %71, -1
  %73 = icmp ugt i32 %72, %2
  %74 = select i1 %73, i32 %2, i32 %72
  %75 = icmp ult i32 %74, %1
  br i1 %75, label %109, label %.critedge

.critedge:                                        ; preds = %70
  %76 = getelementptr inbounds i8, i8* %33, i32 %74
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %77 = ptrtoint i8* %76 to i32
  store atomic volatile i32 %77, i32* %31 monotonic, align 4
  %78 = bitcast %struct.aws_byte_buf* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #16
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %6, i8* %33, i32 %74) #16
  %.pmcpy9.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 0
  %.pmcpy9.unpack = load i32, i32* %.pmcpy9.elt, align 8
  %.pmcpy9.elt69 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 1
  %.pmcpy9.unpack70 = load i8*, i8** %.pmcpy9.elt69, align 4
  %.pmcpy9.elt71 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 2
  %.pmcpy9.unpack72 = load i32, i32* %.pmcpy9.elt71, align 8
  %.pmcpy9.elt73 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %6, i32 0, i32 3
  %.pmcpy9.unpack74 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy9.elt73, align 4
  %.repack76 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 %.pmcpy9.unpack, i32* %.repack76, align 4
  %.repack77 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %.pmcpy9.unpack70, i8** %.repack77, align 4
  %.repack79 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %.pmcpy9.unpack72, i32* %.repack79, align 4
  %.repack81 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy9.unpack74, %struct.aws_allocator** %.repack81, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #16
  br label %aws_raise_error.23.exit

79:                                               ; preds = %68
  %80 = icmp ult i8* %29, %33
  br i1 %80, label %81, label %109

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %83 = load i8*, i8** %82, align 4, !tbaa !13
  %84 = ptrtoint i8* %83 to i32
  %85 = sub i32 %84, %32
  %86 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %87 = load i8*, i8** %86, align 4, !tbaa !5
  %88 = ptrtoint i8* %87 to i32
  %89 = sub i32 %28, %88
  %90 = icmp ult i32 %85, %2
  br i1 %90, label %94, label %.critedge97

.critedge97:                                      ; preds = %81
  %91 = getelementptr inbounds i8, i8* %33, i32 %2
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %92 = ptrtoint i8* %91 to i32
  store atomic volatile i32 %92, i32* %31 monotonic, align 4
  %93 = bitcast %struct.aws_byte_buf* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %93) #16
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %7, i8* %33, i32 %2) #16
  %.pmcpy10.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 0
  %.pmcpy10.unpack = load i32, i32* %.pmcpy10.elt, align 8
  %.pmcpy10.elt55 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 1
  %.pmcpy10.unpack56 = load i8*, i8** %.pmcpy10.elt55, align 4
  %.pmcpy10.elt57 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 2
  %.pmcpy10.unpack58 = load i32, i32* %.pmcpy10.elt57, align 8
  %.pmcpy10.elt59 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %7, i32 0, i32 3
  %.pmcpy10.unpack60 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy10.elt59, align 4
  %.repack62 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 %.pmcpy10.unpack, i32* %.repack62, align 4
  %.repack63 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %.pmcpy10.unpack56, i8** %.repack63, align 4
  %.repack65 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %.pmcpy10.unpack58, i32* %.repack65, align 4
  %.repack67 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy10.unpack60, %struct.aws_allocator** %.repack67, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %93) #16
  br label %aws_raise_error.23.exit

94:                                               ; preds = %81
  %95 = icmp ugt i32 %89, %2
  br i1 %95, label %.critedge98, label %99

.critedge98:                                      ; preds = %94
  %96 = getelementptr inbounds i8, i8* %87, i32 %2
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %97 = ptrtoint i8* %96 to i32
  store atomic volatile i32 %97, i32* %31 monotonic, align 4
  %98 = bitcast %struct.aws_byte_buf* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %98) #16
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %8, i8* %87, i32 %2) #16
  %.pmcpy11.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %8, i32 0, i32 0
  %.pmcpy11.unpack = load i32, i32* %.pmcpy11.elt, align 8
  %.pmcpy11.elt41 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %8, i32 0, i32 1
  %.pmcpy11.unpack42 = load i8*, i8** %.pmcpy11.elt41, align 4
  %.pmcpy11.elt43 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %8, i32 0, i32 2
  %.pmcpy11.unpack44 = load i32, i32* %.pmcpy11.elt43, align 8
  %.pmcpy11.elt45 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %8, i32 0, i32 3
  %.pmcpy11.unpack46 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy11.elt45, align 4
  %.repack48 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 %.pmcpy11.unpack, i32* %.repack48, align 4
  %.repack49 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %.pmcpy11.unpack42, i8** %.repack49, align 4
  %.repack51 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %.pmcpy11.unpack44, i32* %.repack51, align 4
  %.repack53 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy11.unpack46, %struct.aws_allocator** %.repack53, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %98) #16
  br label %aws_raise_error.23.exit

99:                                               ; preds = %94
  %100 = icmp ult i32 %85, %1
  %101 = icmp ult i32 %85, %89
  %or.cond = or i1 %100, %101
  br i1 %or.cond, label %103, label %.critedge99

.critedge99:                                      ; preds = %99
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  store atomic volatile i32 %84, i32* %31 monotonic, align 4
  %102 = bitcast %struct.aws_byte_buf* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %102) #16
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %9, i8* %33, i32 %85) #16
  %.pmcpy12.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %9, i32 0, i32 0
  %.pmcpy12.unpack = load i32, i32* %.pmcpy12.elt, align 8
  %.pmcpy12.elt27 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %9, i32 0, i32 1
  %.pmcpy12.unpack28 = load i8*, i8** %.pmcpy12.elt27, align 4
  %.pmcpy12.elt29 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %9, i32 0, i32 2
  %.pmcpy12.unpack30 = load i32, i32* %.pmcpy12.elt29, align 8
  %.pmcpy12.elt31 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %9, i32 0, i32 3
  %.pmcpy12.unpack32 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy12.elt31, align 4
  %.repack34 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 %.pmcpy12.unpack, i32* %.repack34, align 4
  %.repack35 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %.pmcpy12.unpack28, i8** %.repack35, align 4
  %.repack37 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %.pmcpy12.unpack30, i32* %.repack37, align 4
  %.repack39 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy12.unpack32, %struct.aws_allocator** %.repack39, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %102) #16
  br label %aws_raise_error.23.exit

103:                                              ; preds = %99
  %104 = icmp ugt i32 %89, %1
  br i1 %104, label %.critedge100, label %109

.critedge100:                                     ; preds = %103
  %105 = getelementptr inbounds i8, i8* %29, i32 -1
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %106 = ptrtoint i8* %105 to i32
  store atomic volatile i32 %106, i32* %31 monotonic, align 4
  %107 = bitcast %struct.aws_byte_buf* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %107) #16
  %108 = add i32 %89, -1
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %10, i8* %87, i32 %108) #16
  %.pmcpy13.elt = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %10, i32 0, i32 0
  %.pmcpy13.unpack = load i32, i32* %.pmcpy13.elt, align 8
  %.pmcpy13.elt14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %10, i32 0, i32 1
  %.pmcpy13.unpack15 = load i8*, i8** %.pmcpy13.elt14, align 4
  %.pmcpy13.elt16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %10, i32 0, i32 2
  %.pmcpy13.unpack17 = load i32, i32* %.pmcpy13.elt16, align 8
  %.pmcpy13.elt18 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %10, i32 0, i32 3
  %.pmcpy13.unpack19 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy13.elt18, align 4
  %.repack = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 0
  store i32 %.pmcpy13.unpack, i32* %.repack, align 4
  %.repack21 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  store i8* %.pmcpy13.unpack15, i8** %.repack21, align 4
  %.repack23 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  store i32 %.pmcpy13.unpack17, i32* %.repack23, align 4
  %.repack25 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy13.unpack19, %struct.aws_allocator** %.repack25, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %107) #16
  br label %aws_raise_error.23.exit

109:                                              ; preds = %103, %79, %70
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %110 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %111 = icmp eq void (i32, i8*)* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %110(i32 1, i8* %113) #16
  br label %aws_raise_error.23.exit

114:                                              ; preds = %109
  %115 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %116 = icmp eq void (i32, i8*)* %115, null
  br i1 %116, label %aws_raise_error.23.exit, label %117

117:                                              ; preds = %114
  %118 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %115(i32 1, i8* %118) #16
  br label %aws_raise_error.23.exit

aws_raise_error.23.exit:                          ; preds = %117, %114, %112, %58, %55, %53, %23, %20, %18, %.critedge100, %.critedge99, %.critedge98, %.critedge97, %.critedge, %60
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_release(%struct.aws_ring_buffer* %0, %struct.aws_byte_buf* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %3 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %5 = load i8*, i8** %4, align 4, !tbaa !39
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !41
  %8 = getelementptr inbounds i8, i8* %5, i32 %7
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast %struct.aws_atomic_var* %3 to i32*
  store atomic volatile i32 %9, i32* %10 release, align 4
  %11 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %11, i8 0, i32 16, i1 false) #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_buf_belongs_to_pool(%struct.aws_ring_buffer* nocapture readnone %0, %struct.aws_byte_buf* nocapture readnone %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @s_buf_belongs_to_pool(%struct.aws_ring_buffer* nocapture readnone %0, %struct.aws_byte_buf* nocapture readnone %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_allocator_init(%struct.aws_allocator* %0, %struct.aws_ring_buffer* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #16
  %3 = icmp eq %struct.aws_allocator* %0, null
  %4 = icmp eq %struct.aws_ring_buffer* %1, null
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %5, label %15

5:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #16
  tail call void @seahorn.fn.enter() #16
  %6 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !14
  %7 = icmp eq void (i32, i8*)* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !14
  tail call void %6(i32 34, i8* %9) #16
  br label %aws_raise_error.23.exit

10:                                               ; preds = %5
  %11 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !14
  %12 = icmp eq void (i32, i8*)* %11, null
  br i1 %12, label %aws_raise_error.23.exit, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** @s_global_error_context, align 4, !tbaa !14
  tail call void %11(i32 34, i8* %14) #16
  br label %aws_raise_error.23.exit

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %17 = bitcast i8** %16 to %struct.aws_ring_buffer**
  store %struct.aws_ring_buffer* %1, %struct.aws_ring_buffer** %17, align 4, !tbaa !42
  %18 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  store i8* (%struct.aws_allocator*, i32)* @s_ring_buffer_mem_acquire, i8* (%struct.aws_allocator*, i32)** %18, align 4, !tbaa !15
  %19 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  store void (%struct.aws_allocator*, i8*)* @s_ring_buffer_mem_release, void (%struct.aws_allocator*, i8*)** %19, align 4, !tbaa !20
  %20 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  store i8* (%struct.aws_allocator*, i32, i32)* @s_ring_buffer_mem_calloc, i8* (%struct.aws_allocator*, i32, i32)** %20, align 4, !tbaa !17
  %21 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_ring_buffer_mem_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** %21, align 4, !tbaa !21
  br label %aws_raise_error.23.exit

aws_raise_error.23.exit:                          ; preds = %13, %10, %8, %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_ring_buffer_mem_acquire(%struct.aws_allocator* nocapture readonly %0, i32 %1) #1 {
  tail call void @seahorn.fn.enter() #16
  %3 = alloca %struct.aws_byte_buf, align 4
  %4 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %5 = load i8*, i8** %4, align 4, !tbaa !42
  %6 = bitcast i8* %5 to %struct.aws_ring_buffer*
  %7 = bitcast %struct.aws_byte_buf* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #16
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false)
  %8 = add i32 %1, 4
  %9 = call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %6, i32 %8, %struct.aws_byte_buf* nonnull %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !41
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  %15 = load i8*, i8** %14, align 4, !tbaa !39
  %16 = bitcast i8* %15 to i32*
  store i32 %13, i32* %16, align 4, !tbaa !43
  %17 = getelementptr inbounds i8, i8* %15, i32 4
  br label %18

18:                                               ; preds = %11, %2
  %.0 = phi i8* [ %17, %11 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #16
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_ring_buffer_mem_release(%struct.aws_allocator* %0, i8* %1) #1 {
  tail call void @seahorn.fn.enter() #16
  %3 = alloca %struct.aws_byte_buf, align 4
  %4 = getelementptr inbounds i8, i8* %1, i32 -4
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !43
  %7 = bitcast %struct.aws_byte_buf* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #16
  call void @aws_byte_buf_from_array(%struct.aws_byte_buf* nonnull sret align 4 %3, i8* nonnull %4, i32 %6) #16
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %0, %struct.aws_allocator** %8, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %10 = load i8*, i8** %9, align 4, !tbaa !42
  call void @seahorn.fn.enter() #16
  %11 = getelementptr inbounds i8, i8* %10, i32 12
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !39
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  %15 = load i32, i32* %14, align 4, !tbaa !41
  %16 = getelementptr inbounds i8, i8* %13, i32 %15
  call void @seahorn.fn.enter() #16
  call void @seahorn.fn.enter() #16
  %17 = ptrtoint i8* %16 to i32
  %18 = bitcast i8* %11 to i32*
  store atomic volatile i32 %17, i32* %18 release, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_ring_buffer_mem_calloc(%struct.aws_allocator* nocapture readonly %0, i32 %1, i32 %2) #1 {
  %4 = alloca %struct.aws_byte_buf, align 4
  tail call void @seahorn.fn.enter() #16
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #16
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 4, !tbaa !42
  %8 = bitcast i8* %7 to %struct.aws_ring_buffer*
  %9 = bitcast %struct.aws_byte_buf* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #16
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #16
  %10 = add i32 %5, 4
  %11 = call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %8, i32 %10, %struct.aws_byte_buf* nonnull %4) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %s_ring_buffer_mem_acquire.exit.thread

s_ring_buffer_mem_acquire.exit.thread:            ; preds = %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #16
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 2
  %15 = load i32, i32* %14, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !39
  %18 = bitcast i8* %17 to i32*
  store i32 %15, i32* %18, align 4, !tbaa !43
  %19 = getelementptr inbounds i8, i8* %17, i32 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #16
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %19, i8 0, i32 %5, i1 false) #16
  br label %20

20:                                               ; preds = %s_ring_buffer_mem_acquire.exit.thread, %13
  %.0 = phi i8* [ %19, %13 ], [ null, %s_ring_buffer_mem_acquire.exit.thread ]
  ret i8* %.0
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal noalias nonnull i8* @s_ring_buffer_mem_realloc(%struct.aws_allocator* nocapture readnone %0, i8* nocapture readnone %1, i32 %2, i32 %3) #11 {
  tail call void @seahorn.fn.enter() #16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1.27, i32 0, i32 0), i32 304) #19
  unreachable
}

declare void @aws_byte_buf_from_array(%struct.aws_byte_buf* sret align 4, i8*, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: noreturn
define i32 @main() local_unnamed_addr #12 {
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
  store %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), %struct.aws_log_subject_info** getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 0), align 8
  store i32 5, i32* getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 1), align 4
  tail call void @seahorn.fn.enter()
  tail call fastcc void @aws_ring_buffer_init_harness()
  %1 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  tail call fastcc void @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* %1)
  %2 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %3 = tail call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %2)
  %4 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %5 = tail call i8* @verifier.nondet.3()
  %6 = tail call fastcc i1 @aws_ring_buffer_check_atomic_ptr(%struct.aws_ring_buffer* %4, i8* %5)
  %7 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %8 = tail call i32 @verifier.nondet.4()
  %9 = tail call fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %7, i32 %8)
  %10 = tail call i32 @verifier.nondet.4()
  %11 = tail call fastcc i32 @aws_atomic_priv_xlate_order(i32 %10)
  %12 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_allocator_is_valid(%struct.aws_allocator* %12)
  tail call fastcc void @aws_default_allocator()
  %13 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %14 = tail call i32 @verifier.nondet.4()
  %15 = tail call i8* @s_default_malloc(%struct.aws_allocator* %13, i32 %14)
  %16 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %17 = tail call i8* @verifier.nondet.3()
  tail call void @s_default_free(%struct.aws_allocator* %16, i8* %17)
  %18 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %19 = tail call i8* @verifier.nondet.3()
  %20 = tail call i32 @verifier.nondet.4()
  %21 = tail call i32 @verifier.nondet.4()
  %22 = tail call i8* @s_default_realloc(%struct.aws_allocator* %18, i8* %19, i32 %20, i32 %21)
  %23 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %24 = tail call i32 @verifier.nondet.4()
  %25 = tail call i32 @verifier.nondet.4()
  %26 = tail call i8* @s_default_calloc(%struct.aws_allocator* %23, i32 %24, i32 %25)
  %27 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %28 = tail call i32 @verifier.nondet.4()
  %29 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %27, i32 %28)
  %30 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_raise_error(i32 %30)
  %31 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %32 = tail call i32 @verifier.nondet.4()
  %33 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_mem_calloc(%struct.aws_allocator* %31, i32 %32, i32 %33)
  %34 = tail call i32 @verifier.nondet.4()
  %35 = tail call i32 @verifier.nondet.4()
  %36 = tail call i32* @verifier.nondet.6()
  tail call fastcc void @aws_mul_size_checked(i32 %34, i32 %35, i32* %36)
  %37 = tail call i32 @verifier.nondet.4()
  %38 = tail call i32 @verifier.nondet.4()
  %39 = tail call i32* @verifier.nondet.6()
  tail call fastcc void @aws_mul_u32_checked(i32 %37, i32 %38, i32* %39)
  %40 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %41 = tail call i32 @verifier.nondet.4()
  %42 = tail call i8* (%struct.aws_allocator*, i32, ...) @aws_mem_acquire_many(%struct.aws_allocator* %40, i32 %41)
  %43 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %44 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_mem_release(%struct.aws_allocator* %43, i8* %44)
  %45 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %46 = tail call i8** @verifier.nondet.7()
  %47 = tail call i32 @verifier.nondet.4()
  %48 = tail call i32 @verifier.nondet.4()
  %49 = tail call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %45, i8** %46, i32 %47, i32 %48)
  %50 = tail call %struct.aws_allocator* @verifier.nondet.5()
  tail call fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %50)
  %51 = tail call i8* @verifier.nondet.3()
  %52 = tail call i32 @verifier.nondet.4()
  %53 = tail call i32 @verifier.nondet.4()
  %54 = tail call i8* @verifier.nondet.3()
  %55 = tail call i8* @s_cf_allocator_reallocate(i8* %51, i32 %52, i32 %53, i8* %54)
  %56 = tail call i8* @verifier.nondet.3()
  %57 = tail call %struct.__CFString* @s_cf_allocator_copy_description(i8* %56)
  %58 = tail call i32 @verifier.nondet.4()
  %59 = tail call i32 @verifier.nondet.4()
  %60 = tail call i8* @verifier.nondet.3()
  %61 = tail call i8* @s_cf_allocator_allocate(i32 %58, i32 %59, i8* %60)
  %62 = tail call i8* @verifier.nondet.3()
  %63 = tail call i8* @verifier.nondet.3()
  tail call void @s_cf_allocator_deallocate(i8* %62, i8* %63)
  %64 = tail call i32 @verifier.nondet.4()
  %65 = tail call i32 @verifier.nondet.4()
  %66 = tail call i8* @verifier.nondet.3()
  %67 = tail call i32 @s_cf_allocator_preferred_size(i32 %64, i32 %65, i8* %66)
  %68 = tail call %struct.__CFAllocator* @verifier.nondet.8()
  tail call fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %68)
  tail call fastcc void @aws_last_error()
  %69 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_error_str(i32 %69)
  %70 = tail call i32 @verifier.nondet.4()
  %71 = tail call fastcc %struct.aws_error_info* @get_error_by_code(i32 %70)
  %72 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_error_name(i32 %72)
  %73 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_error_lib_name(i32 %73)
  %74 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_error_debug_str(i32 %74)
  %75 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_raise_error_private(i32 %75)
  tail call fastcc void @aws_reset_error()
  %76 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_restore_error(i32 %76)
  %77 = tail call void (i32, i8*)* @verifier.nondet.9()
  %78 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %77, i8* %78)
  %79 = tail call void (i32, i8*)* @verifier.nondet.9()
  %80 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %79, i8* %80)
  %81 = tail call %struct.aws_error_info_list* @verifier.nondet.10()
  tail call fastcc void @aws_register_error_info(%struct.aws_error_info_list* %81)
  %82 = tail call %struct.aws_error_info_list* @verifier.nondet.10()
  tail call fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* %82)
  %83 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_translate_and_raise_io_error(i32 %83)
  %84 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_raise_error.20(i32 %84)
  %85 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %86 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %87 = tail call i32 @verifier.nondet.4()
  %88 = tail call fastcc i32 @aws_ring_buffer_init(%struct.aws_ring_buffer* %85, %struct.aws_allocator* %86, i32 %87)
  %89 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %90 = tail call i8* @verifier.nondet.3()
  tail call fastcc void @aws_atomic_init_ptr(%struct.aws_atomic_var* %89, i8* %90)
  %91 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  tail call fastcc void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer* %91)
  %92 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %93 = tail call i32 @verifier.nondet.4()
  %94 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  %95 = tail call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %92, i32 %93, %struct.aws_byte_buf* %94)
  %96 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_raise_error.23(i32 %96)
  %97 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %98 = tail call i32 @verifier.nondet.4()
  %99 = tail call fastcc i8* @aws_atomic_load_ptr_explicit.24(%struct.aws_atomic_var* %97, i32 %98)
  %100 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %101 = tail call i8* @verifier.nondet.3()
  %102 = tail call i32 @verifier.nondet.4()
  tail call fastcc void @aws_atomic_store_ptr_explicit(%struct.aws_atomic_var* %100, i8* %101, i32 %102)
  %103 = tail call i32 @verifier.nondet.4()
  %104 = tail call fastcc i32 @aws_atomic_priv_xlate_order.25(i32 %103)
  %105 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %106 = tail call i32 @verifier.nondet.4()
  %107 = tail call i32 @verifier.nondet.4()
  %108 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_ring_buffer_acquire_up_to(%struct.aws_ring_buffer* %105, i32 %106, i32 %107, %struct.aws_byte_buf* %108)
  %109 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %110 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_ring_buffer_release(%struct.aws_ring_buffer* %109, %struct.aws_byte_buf* %110)
  %111 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %112 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @aws_ring_buffer_buf_belongs_to_pool(%struct.aws_ring_buffer* %111, %struct.aws_byte_buf* %112)
  %113 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %114 = tail call %struct.aws_byte_buf* @verifier.nondet.11()
  tail call fastcc void @s_buf_belongs_to_pool(%struct.aws_ring_buffer* %113, %struct.aws_byte_buf* %114)
  %115 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %116 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  tail call fastcc void @aws_ring_buffer_allocator_init(%struct.aws_allocator* %115, %struct.aws_ring_buffer* %116)
  %117 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %118 = tail call i32 @verifier.nondet.4()
  %119 = tail call i8* @s_ring_buffer_mem_acquire(%struct.aws_allocator* %117, i32 %118)
  %120 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %121 = tail call i8* @verifier.nondet.3()
  tail call void @s_ring_buffer_mem_release(%struct.aws_allocator* %120, i8* %121)
  %122 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %123 = tail call i32 @verifier.nondet.4()
  %124 = tail call i32 @verifier.nondet.4()
  %125 = tail call i8* @s_ring_buffer_mem_calloc(%struct.aws_allocator* %122, i32 %123, i32 %124)
  %126 = tail call %struct.aws_allocator* @verifier.nondet.5()
  %127 = tail call i8* @verifier.nondet.3()
  %128 = tail call i32 @verifier.nondet.4()
  %129 = tail call i32 @verifier.nondet.4()
  %130 = tail call i8* @s_ring_buffer_mem_realloc(%struct.aws_allocator* %126, i8* %127, i32 %128, i32 %129)
  unreachable
}

declare %struct.aws_ring_buffer* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_atomic_var* @verifier.nondet.2() local_unnamed_addr

declare i8* @verifier.nondet.3() local_unnamed_addr

declare i32 @verifier.nondet.4() local_unnamed_addr

declare %struct.aws_allocator* @verifier.nondet.5() local_unnamed_addr

declare i32* @verifier.nondet.6() local_unnamed_addr

declare i8** @verifier.nondet.7() local_unnamed_addr

declare %struct.__CFAllocator* @verifier.nondet.8() local_unnamed_addr

declare void (i32, i8*)* @verifier.nondet.9() local_unnamed_addr

declare %struct.aws_error_info_list* @verifier.nondet.10() local_unnamed_addr

declare %struct.aws_byte_buf* @verifier.nondet.11() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #13

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #13

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #13

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #14

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #15

declare i32 @verifier.nondet.12() local_unnamed_addr

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { "objc_arc_inert" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn }
attributes #13 = { inaccessiblememonly nofree norecurse nounwind }
attributes #14 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #15 = { inaccessiblememonly }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0}
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
!12 = !{!10, !7, i64 0}
!13 = !{!6, !7, i64 16}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !7, i64 0}
!16 = !{!"aws_allocator", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!17 = !{!16, !7, i64 12}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !8, i64 0}
!20 = !{!16, !7, i64 4}
!21 = !{!16, !7, i64 8}
!22 = !{!23, !24, i64 0}
!23 = !{!"", !24, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!24 = !{!"long", !8, i64 0}
!25 = !{!23, !7, i64 4}
!26 = !{!23, !7, i64 8}
!27 = !{!23, !7, i64 12}
!28 = !{!23, !7, i64 16}
!29 = !{!23, !7, i64 20}
!30 = !{!23, !7, i64 24}
!31 = !{!23, !7, i64 28}
!32 = !{!23, !7, i64 32}
!33 = !{!34, !35, i64 4}
!34 = !{!"aws_error_info_list", !7, i64 0, !35, i64 4}
!35 = !{!"short", !8, i64 0}
!36 = !{!34, !7, i64 0}
!37 = !{!38, !19, i64 0}
!38 = !{!"aws_error_info", !19, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!39 = !{!40, !7, i64 4}
!40 = !{!"aws_byte_buf", !24, i64 0, !7, i64 4, !24, i64 8, !7, i64 12}
!41 = !{!40, !24, i64 8}
!42 = !{!16, !7, i64 16}
!43 = !{!24, !24, i64 0}
!44 = !{!40, !7, i64 12}
