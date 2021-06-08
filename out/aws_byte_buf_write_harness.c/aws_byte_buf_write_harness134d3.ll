; ModuleID = '../out/aws_byte_buf_write_harness.c/aws_byte_buf_write_harness134d3.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_byte_cursor = type { i32, i8* }
%struct.aws_log_subject_info_list = type { %struct.aws_log_subject_info*, i32 }
%struct.aws_log_subject_info = type { i32, i8*, i8* }
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }
%struct.store_byte_from_buffer = type { i32, i8 }

@default_allocator = internal unnamed_addr global %struct.aws_allocator { i8* (%struct.aws_allocator*, i32)* @s_default_malloc, void (%struct.aws_allocator*, i8*)* @s_default_free, i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* null }, align 8
@s_null_terminator_cursor = internal unnamed_addr global %struct.aws_byte_cursor { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.16, i32 0, i32 0) }, align 8
@.str.4.16 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf*) local_unnamed_addr #1

declare void @save_byte_from_array(i8*, i32, %struct.store_byte_from_buffer*) local_unnamed_addr #1

declare void @assert_bytes_match(i8*, i8*, i32) local_unnamed_addr #1

declare void @assert_byte_buf_equivalence(%struct.aws_byte_buf*, %struct.aws_byte_buf*, %struct.store_byte_from_buffer*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #2 {
  tail call void @seahorn.fn.enter() #8
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
  store i8* null, i8** %3, align 4, !tbaa !5
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #8
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #2 {
  tail call void @seahorn.fn.enter() #8
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #2 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #8
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
  tail call void @seahorn.fn.enter() #8
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #8
  store i8* null, i8** %5, align 4, !tbaa !5
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #8
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #8
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #8
  call void @seahorn.fn.enter() #8
  call void @free(i8* nonnull %1) #8
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #2 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #8
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #8
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  store i8* null, i8** %4, align 4, !tbaa !5
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #8
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #8
  br label %15

15:                                               ; preds = %14, %3
  ret i8* %12
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree
declare i32 @posix_memalign(i8**, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* readonly %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #8
  %2 = icmp eq %struct.aws_byte_buf* %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !12
  br i1 %6, label %9, label %15

9:                                                ; preds = %3
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %.thread

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !13
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %.thread

.thread:                                          ; preds = %11, %9
  br label %21

15:                                               ; preds = %3
  %16 = icmp ugt i32 %8, %5
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %19 = load i8*, i8** %18, align 4, !tbaa !13
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %.thread, %17, %15, %11, %1
  %22 = phi i1 [ false, %1 ], [ true, %11 ], [ false, %15 ], [ %20, %17 ], [ false, %.thread ]
  ret i1 %22
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_buf_write(%struct.aws_byte_buf* noalias nocapture %0, i8* noalias %1, i32 %2) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #8
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !12
  %8 = icmp slt i32 %7, 0
  %9 = icmp slt i32 %2, 0
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %19, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %7, %2
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !9
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !13
  %18 = getelementptr inbounds i8, i8* %17, i32 %7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %18, i8* align 1 %1, i32 %2, i1 false) #8
  store i32 %11, i32* %6, align 4, !tbaa !12
  br label %19

19:                                               ; preds = %15, %10, %5, %3
  %.0 = phi i1 [ true, %15 ], [ true, %3 ], [ false, %10 ], [ false, %5 ]
  ret i1 %.0
}

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

declare i32 @verifier.nondet.21() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_byte_buf, align 8
  %1 = alloca %struct.aws_byte_buf, align 8
  %2 = alloca %struct.store_byte_from_buffer, align 4
  store i8* (%struct.aws_allocator*, i32)* @s_default_malloc, i8* (%struct.aws_allocator*, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 0), align 8
  store void (%struct.aws_allocator*, i8*)* @s_default_free, void (%struct.aws_allocator*, i8*)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 1), align 4
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 2), align 8
  store i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* (%struct.aws_allocator*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 3), align 4
  store i8* null, i8** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.16, i32 0, i32 0), i8** getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 1), align 4
  store %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), %struct.aws_log_subject_info** getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 0), align 8
  store i32 5, i32* getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 1), align 4
  tail call void @seahorn.fn.enter()
  %3 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %3)
  %4 = tail call i32 @verifier.nondet.21() #8
  %5 = tail call i32 @verifier.nondet.21() #8
  %6 = tail call i32 @verifier.nondet.21() #8
  %7 = tail call i32 @verifier.nondet.21() #8
  %8 = tail call i32 @verifier.nondet.21() #8
  tail call void @seahorn.fn.enter() #8
  %9 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8
  %malloc = alloca i8, i32 %8, align 1
  tail call void @verifier.assume(i1 true) #8
  call void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf* nonnull %0) #8
  %10 = call fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #8
  call void @verifier.assume(i1 %10) #8
  %11 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 8
  %.pmcpy.elt1.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %.pmcpy.unpack2.i = load i8*, i8** %.pmcpy.elt1.i, align 4
  %.pmcpy.elt3.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %.pmcpy.unpack4.i = load i32, i32* %.pmcpy.elt3.i, align 8
  %.pmcpy.elt5.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %.pmcpy.unpack6.i = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt5.i, align 4
  %.repack.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  store i32 %.pmcpy.unpack.i, i32* %.repack.i, align 8
  %.repack8.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  store i8* %.pmcpy.unpack2.i, i8** %.repack8.i, align 4
  %.repack10.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  store i32 %.pmcpy.unpack4.i, i32* %.repack10.i, align 8
  %.repack12.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy.unpack6.i, %struct.aws_allocator** %.repack12.i, align 4
  %12 = bitcast %struct.store_byte_from_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #8
  call void @save_byte_from_array(i8* %.pmcpy.unpack2.i, i32 %.pmcpy.unpack.i, %struct.store_byte_from_buffer* nonnull %2) #8
  %13 = call fastcc zeroext i1 @aws_byte_buf_write(%struct.aws_byte_buf* nonnull %0, i8* nonnull %malloc, i32 %7) #8
  br i1 %13, label %14, label %28

14:                                               ; preds = %entry
  %15 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !12
  %16 = add i32 %.pmcpy.unpack.i, %6
  %17 = icmp eq i32 %15, %16
  %18 = load i32, i32* %.pmcpy.elt3.i, align 8
  %19 = icmp eq i32 %.pmcpy.unpack4.i, %18
  %or.cond2 = and i1 %17, %19
  %20 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt5.i, align 4
  %21 = icmp eq %struct.aws_allocator* %.pmcpy.unpack6.i, %20
  %or.cond4 = and i1 %or.cond2, %21
  br i1 %or.cond4, label %22, label %verifier.error

22:                                               ; preds = %14
  %23 = icmp eq i32 %5, 0
  %24 = icmp eq i32 %15, 0
  %or.cond = or i1 %23, %24
  br i1 %or.cond, label %29, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %.pmcpy.elt1.i, align 4, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %26, i32 %.pmcpy.unpack.i
  call void @assert_bytes_match(i8* %27, i8* nonnull %malloc, i32 %4) #8
  br label %29

28:                                               ; preds = %entry
  call void @assert_byte_buf_equivalence(%struct.aws_byte_buf* nonnull %0, %struct.aws_byte_buf* nonnull %1, %struct.store_byte_from_buffer* nonnull %2) #8
  br label %29

29:                                               ; preds = %28, %25, %22
  %30 = call fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #8
  call void @verifier.assume.not(i1 %30)
  br label %verifier.error

verifier.error:                                   ; preds = %14, %29
  call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #0

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblememonly nofree norecurse nounwind }
attributes #6 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #7 = { inaccessiblememonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
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
!9 = !{!10, !11, i64 8}
!10 = !{!"aws_byte_buf", !11, i64 0, !6, i64 4, !11, i64 8, !6, i64 12}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!10, !6, i64 4}
