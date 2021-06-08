; ModuleID = '../out/aws_ring_buffer_release_harness.c/aws_ring_buffer_release_harnessabe96.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_byte_cursor = type { i32, i8* }
%struct.aws_log_subject_info_list = type { %struct.aws_log_subject_info*, i32 }
%struct.aws_log_subject_info = type { i32, i8*, i8* }
%struct.aws_ring_buffer = type { %struct.aws_allocator*, i8*, %struct.aws_atomic_var, %struct.aws_atomic_var, i8* }
%struct.aws_atomic_var = type { i8* }
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }

@default_allocator = internal unnamed_addr global %struct.aws_allocator { i8* (%struct.aws_allocator*, i32)* @s_default_malloc, void (%struct.aws_allocator*, i8*)* @s_default_free, i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* null }, align 8
@s_null_terminator_cursor = internal unnamed_addr global %struct.aws_byte_cursor { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.14, i32 0, i32 0) }, align 8
@.str.4.14 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
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
define internal fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #9
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  %10 = icmp eq i8* %9, %5
  ret i1 %10
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 seq_cst, align 4
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %0, i32 %1) unnamed_addr #2 {
NodeBlock:
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  %Pivot8.i = icmp slt i32 %1, 3
  br i1 %Pivot8.i, label %NodeBlock2.i, label %NodeBlock5.i

NodeBlock5.i:                                     ; preds = %NodeBlock
  %Pivot4.i = icmp slt i32 %1, 5
  br i1 %Pivot4.i, label %NewDefault, label %7

NodeBlock2.i:                                     ; preds = %NodeBlock
  %Pivot.i = icmp eq i32 %1, 2
  br i1 %Pivot.i, label %4, label %LeafBlock.i

LeafBlock.i:                                      ; preds = %NodeBlock2.i
  %SwitchLeaf.i = icmp eq i32 %1, 0
  tail call void @verifier.assume(i1 %SwitchLeaf.i) #9
  br label %NewDefault

NewDefault:                                       ; preds = %NodeBlock5.i, %LeafBlock.i
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 monotonic, align 4
  br label %10

4:                                                ; preds = %NodeBlock2.i
  %5 = bitcast %struct.aws_atomic_var* %0 to i32*
  %6 = load atomic volatile i32, i32* %5 acquire, align 4
  br label %10

7:                                                ; preds = %NodeBlock5.i
  %SwitchLeaf2.i = icmp eq i32 %1, 5
  tail call void @verifier.assume(i1 %SwitchLeaf2.i) #9
  %8 = bitcast %struct.aws_atomic_var* %0 to i32*
  %9 = load atomic volatile i32, i32* %8 seq_cst, align 4
  br label %10

10:                                               ; preds = %7, %4, %NewDefault
  %.0 = phi i32 [ %3, %NewDefault ], [ %9, %7 ], [ %6, %4 ]
  %11 = inttoptr i32 %.0 to i8*
  ret i8* %11
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_atomic_priv_xlate_order(i32 %0) unnamed_addr #2 {
NodeBlock7:
  tail call void @seahorn.fn.enter() #9
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
  tail call void @verifier.assume(i1 %SwitchLeaf2)
  br label %1

NodeBlock2:                                       ; preds = %NodeBlock7
  %Pivot = icmp eq i32 %0, 2
  br i1 %Pivot, label %1, label %LeafBlock

LeafBlock:                                        ; preds = %NodeBlock2
  %SwitchLeaf = icmp eq i32 %0, 0
  tail call void @verifier.assume(i1 %SwitchLeaf)
  br label %1

1:                                                ; preds = %NodeBlock2, %LeafBlock, %LeafBlock1, %NodeBlock3, %NodeBlock5
  %.0 = phi i32 [ 0, %LeafBlock ], [ 3, %NodeBlock5 ], [ 4, %NodeBlock3 ], [ 5, %LeafBlock1 ], [ 2, %NodeBlock2 ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @is_front_valid_state(%struct.aws_ring_buffer* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #9
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  %10 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %11 = load i8*, i8** %10, align 4, !tbaa !5
  %12 = icmp eq i8* %11, %9
  %13 = icmp ult i8* %9, %5
  %14 = and i1 %12, %13
  ret i1 %14
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #9
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  %10 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %11 = load i8*, i8** %10, align 4, !tbaa !5
  %12 = icmp ult i8* %11, %9
  %13 = icmp ult i8* %9, %5
  %14 = and i1 %12, %13
  ret i1 %14
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @is_ends_valid_state(%struct.aws_ring_buffer* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #9
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  %10 = icmp ugt i8* %9, %5
  ret i1 %10
}

declare void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer*, i32) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_is_empty(%struct.aws_ring_buffer* %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #9
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  %10 = icmp eq i8* %5, %9
  ret i1 %10
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #9
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @seahorn.fn.enter() #9
  tail call void @verifier.assume(i1 true) #9
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  tail call void @seahorn.fn.enter() #9
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %aws_ring_buffer_check_atomic_ptr.exit, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !5
  %14 = icmp ugt i8* %13, %5
  br i1 %14, label %aws_ring_buffer_check_atomic_ptr.exit, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %17 = load i8*, i8** %16, align 4, !tbaa !11
  %18 = icmp uge i8* %17, %5
  br label %aws_ring_buffer_check_atomic_ptr.exit

aws_ring_buffer_check_atomic_ptr.exit:            ; preds = %1, %11, %15
  %19 = phi i1 [ false, %1 ], [ false, %11 ], [ %18, %15 ]
  tail call void @seahorn.fn.enter() #9
  %20 = icmp eq i32 %8, 0
  %.phi.trans.insert = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %.pre = load i8*, i8** %.phi.trans.insert, align 4, !tbaa !5
  %21 = icmp ugt i8* %.pre, %9
  %or.cond4 = or i1 %20, %21
  br i1 %or.cond4, label %aws_ring_buffer_check_atomic_ptr.exit._crit_edge, label %22

22:                                               ; preds = %aws_ring_buffer_check_atomic_ptr.exit
  %23 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %24 = load i8*, i8** %23, align 4, !tbaa !11
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
  %32 = load %struct.aws_allocator*, %struct.aws_allocator** %31, align 4, !tbaa !12
  %33 = icmp ne %struct.aws_allocator* %32, null
  br label %34

34:                                               ; preds = %30, %aws_ring_buffer_check_atomic_ptr.exit._crit_edge
  %35 = phi i1 [ false, %aws_ring_buffer_check_atomic_ptr.exit._crit_edge ], [ %33, %30 ]
  ret i1 %35
}

declare void @ensure_byte_buf_has_allocated_buffer_member_in_ring_buf(%struct.aws_byte_buf*, %struct.aws_ring_buffer*) local_unnamed_addr #3

declare void @aws_ring_buffer_release(%struct.aws_ring_buffer*, %struct.aws_byte_buf*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #0 {
  tail call void @seahorn.fn.enter() #9
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store i8* null, i8** %3, align 4, !tbaa !13
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #9
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #0 {
  tail call void @seahorn.fn.enter() #9
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #9
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
  tail call void @seahorn.fn.enter() #9
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #9
  store i8* null, i8** %5, align 4, !tbaa !13
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #9
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #9
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #9
  call void @seahorn.fn.enter() #9
  call void @free(i8* nonnull %1) #9
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #9
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #9
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #9
  store i8* null, i8** %4, align 4, !tbaa !13
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #9
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #9
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #9
  br label %15

15:                                               ; preds = %14, %3
  ret i8* %12
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nofree
declare i32 @posix_memalign(i8**, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #9
  %2 = icmp eq %struct.aws_byte_buf* %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !14
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !17
  br i1 %6, label %9, label %15

9:                                                ; preds = %3
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %.thread

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !18
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %.thread

.thread:                                          ; preds = %11, %9
  br label %21

15:                                               ; preds = %3
  %16 = icmp ugt i32 %8, %5
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %19 = load i8*, i8** %18, align 4, !tbaa !18
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %.thread, %17, %15, %11, %1
  %22 = phi i1 [ false, %1 ], [ true, %11 ], [ false, %15 ], [ %20, %17 ], [ false, %.thread ]
  ret i1 %22
}

declare %struct.aws_ring_buffer* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_atomic_var* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #6

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #6

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #6

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #7

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #8

declare i32 @verifier.nondet.23() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_byte_buf, align 8
  %1 = alloca %struct.aws_ring_buffer, align 8
  %2 = alloca %struct.aws_ring_buffer, align 8
  store i8* (%struct.aws_allocator*, i32)* @s_default_malloc, i8* (%struct.aws_allocator*, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 0), align 8
  store void (%struct.aws_allocator*, i8*)* @s_default_free, void (%struct.aws_allocator*, i8*)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 1), align 4
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 2), align 8
  store i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* (%struct.aws_allocator*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 3), align 4
  store i8* null, i8** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.14, i32 0, i32 0), i8** getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 1), align 4
  store %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), %struct.aws_log_subject_info** getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 0), align 8
  store i32 5, i32* getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 1), align 4
  tail call void @seahorn.fn.enter()
  %3 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %4 = tail call fastcc i1 @is_empty_state(%struct.aws_ring_buffer* %3)
  %5 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %6 = tail call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %5)
  %7 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %8 = tail call i32 @verifier.nondet.3()
  %9 = tail call fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %7, i32 %8)
  %10 = tail call i32 @verifier.nondet.3()
  %11 = tail call fastcc i32 @aws_atomic_priv_xlate_order(i32 %10)
  %12 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %13 = tail call fastcc i1 @is_front_valid_state(%struct.aws_ring_buffer* %12)
  %14 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %15 = tail call fastcc i1 @is_middle_valid_state(%struct.aws_ring_buffer* %14)
  %16 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %17 = tail call fastcc i1 @is_ends_valid_state(%struct.aws_ring_buffer* %16)
  %18 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %18)
  %19 = tail call i32 @verifier.nondet.23() #9
  tail call void @seahorn.fn.enter() #9
  %20 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #9
  %21 = bitcast %struct.aws_ring_buffer* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %21) #9
  call void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer* nonnull %1, i32 %19) #9
  %22 = call fastcc zeroext i1 @aws_ring_buffer_is_empty(%struct.aws_ring_buffer* nonnull %1) #9
  %23 = xor i1 %22, true
  call void @verifier.assume(i1 %23) #9
  %24 = call fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* nonnull %1) #9
  call void @verifier.assume(i1 %24) #9
  call void @ensure_byte_buf_has_allocated_buffer_member_in_ring_buf(%struct.aws_byte_buf* nonnull %0, %struct.aws_ring_buffer* nonnull %1) #9
  %25 = call fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #9
  call void @verifier.assume(i1 %25) #9
  %26 = bitcast %struct.aws_ring_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %26) #9
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 0
  %.pmcpy.unpack.i = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt.i, align 8
  %.pmcpy.elt2.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 1
  %.pmcpy.unpack3.i = load i8*, i8** %.pmcpy.elt2.i, align 4
  %27 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 2, i32 0
  %.pmcpy.unpack5.unpack.i = load i8*, i8** %27, align 8
  %28 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 3, i32 0
  %.pmcpy.unpack7.unpack.i = load i8*, i8** %28, align 4
  %.pmcpy.elt8.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 4
  %.pmcpy.unpack9.i = load i8*, i8** %.pmcpy.elt8.i, align 8
  %.repack.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 0
  store %struct.aws_allocator* %.pmcpy.unpack.i, %struct.aws_allocator** %.repack.i, align 8
  %.repack13.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 1
  store i8* %.pmcpy.unpack3.i, i8** %.repack13.i, align 4
  %29 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 2, i32 0
  store i8* %.pmcpy.unpack5.unpack.i, i8** %29, align 8
  %30 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 3, i32 0
  store i8* %.pmcpy.unpack7.unpack.i, i8** %30, align 4
  %.repack19.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 4
  store i8* %.pmcpy.unpack9.i, i8** %.repack19.i, align 8
  %.pmcpy1.elt21.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %.pmcpy1.unpack22.i = load i8*, i8** %.pmcpy1.elt21.i, align 4
  %.pmcpy1.elt23.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %.pmcpy1.unpack24.i = load i32, i32* %.pmcpy1.elt23.i, align 8
  call void @aws_ring_buffer_release(%struct.aws_ring_buffer* nonnull %1, %struct.aws_byte_buf* nonnull %0) #9
  %31 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 2
  %32 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %31) #9
  %33 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 3
  %34 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %33) #9
  %35 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 2
  %36 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %35) #9
  %37 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 3
  %38 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %37) #9
  %39 = call fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* nonnull %1) #9
  br i1 %39, label %40, label %verifier.error

40:                                               ; preds = %entry
  %41 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt.i, align 8, !tbaa !12
  %42 = load %struct.aws_allocator*, %struct.aws_allocator** %.repack.i, align 8, !tbaa !12
  %43 = icmp eq %struct.aws_allocator* %41, %42
  br i1 %43, label %44, label %verifier.error

44:                                               ; preds = %40
  %45 = load i8*, i8** %.pmcpy.elt2.i, align 4, !tbaa !5
  %46 = load i8*, i8** %.repack13.i, align 4, !tbaa !5
  %47 = icmp eq i8* %45, %46
  %48 = icmp eq i8* %36, %32
  %or.cond = and i1 %48, %47
  %49 = getelementptr inbounds i8, i8* %.pmcpy1.unpack22.i, i32 %.pmcpy1.unpack24.i
  %50 = icmp eq i8* %38, %49
  %or.cond2 = and i1 %50, %or.cond
  br i1 %or.cond2, label %51, label %verifier.error

51:                                               ; preds = %44
  %52 = load i8*, i8** %.pmcpy.elt8.i, align 8, !tbaa !11
  %53 = load i8*, i8** %.repack19.i, align 8, !tbaa !11
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %verifier.error

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %57 = load %struct.aws_allocator*, %struct.aws_allocator** %56, align 4, !tbaa !19
  %58 = icmp eq %struct.aws_allocator* %57, null
  %59 = load i8*, i8** %.pmcpy1.elt21.i, align 4
  %60 = icmp eq i8* %59, null
  %or.cond4 = and i1 %58, %60
  br i1 %or.cond4, label %61, label %verifier.error

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %63 = load i32, i32* %62, align 8, !tbaa !17
  %64 = icmp eq i32 %63, 0
  %65 = load i32, i32* %.pmcpy1.elt23.i, align 8
  %66 = icmp eq i32 %65, 0
  %or.cond6 = and i1 %64, %66
  br i1 %or.cond6, label %67, label %verifier.error

67:                                               ; preds = %61
  %68 = call fastcc zeroext i1 @is_front_valid_state(%struct.aws_ring_buffer* nonnull %2) #9
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = call fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* nonnull %1) #9
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %1) #9
  br i1 %72, label %73, label %verifier.error

73:                                               ; preds = %71, %69, %67
  %74 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %2) #9
  br i1 %74, label %75, label %81

75:                                               ; preds = %73
  %76 = call fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* nonnull %1) #9
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %1) #9
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = call fastcc zeroext i1 @is_ends_valid_state(%struct.aws_ring_buffer* nonnull %1) #9
  br i1 %80, label %81, label %verifier.error

81:                                               ; preds = %79, %77, %75, %73
  %82 = call fastcc zeroext i1 @is_ends_valid_state(%struct.aws_ring_buffer* nonnull %2) #9
  call void @verifier.assume(i1 %82)
  %83 = call fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* nonnull %1) #9
  call void @verifier.assume.not(i1 %83)
  %84 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %1) #9
  call void @verifier.assume.not(i1 %84)
  %85 = call fastcc zeroext i1 @is_ends_valid_state(%struct.aws_ring_buffer* nonnull %1) #9
  call void @verifier.assume.not(i1 %85)
  br label %verifier.error

verifier.error:                                   ; preds = %79, %71, %61, %55, %51, %44, %40, %entry, %81
  call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inaccessiblememonly nofree norecurse nounwind }
attributes #7 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #8 = { inaccessiblememonly }
attributes #9 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"aws_byte_buf", !16, i64 0, !7, i64 4, !16, i64 8, !7, i64 12}
!16 = !{!"long", !8, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!15, !7, i64 4}
!19 = !{!15, !7, i64 12}
