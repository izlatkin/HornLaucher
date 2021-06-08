; ModuleID = '../out/aws_byte_cursor_read_and_fill_buffer_harness.c/aws_byte_cursor_read_and_fill_buffer_harness62779.bc.txt'
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
@s_null_terminator_cursor = internal unnamed_addr global %struct.aws_byte_cursor { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.32, i32 0, i32 0) }, align 8
@.str.4.32 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@s_common_log_subject_list = internal unnamed_addr global %struct.aws_log_subject_info_list { %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), i32 5 }, align 8
@s_common_log_subject_infos = internal global [5 x %struct.aws_log_subject_info] [%struct.aws_log_subject_info { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26.46, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.175, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.177, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.179, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.183, i32 0, i32 0) }], align 4
@.str.26.46 = private unnamed_addr constant [13 x i8] c"aws-c-common\00", align 1
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

declare void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor*) local_unnamed_addr #1

declare void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf*) local_unnamed_addr #1

declare void @save_byte_from_array(i8*, i32, %struct.store_byte_from_buffer*) local_unnamed_addr #1

declare void @assert_bytes_match(i8*, i8*, i32) local_unnamed_addr #1

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
define internal fastcc zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* readonly %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #8
  %2 = icmp eq %struct.aws_byte_cursor* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %9 = load i8*, i8** %8, align 4, !tbaa !16
  %10 = icmp ne i8* %9, null
  ret i1 %10

11:                                               ; preds = %3, %1
  %12 = phi i1 [ false, %1 ], [ true, %3 ]
  ret i1 %12
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_byte_cursor_read_and_fill_buffer(%struct.aws_byte_cursor* noalias nocapture %0, %struct.aws_byte_buf* noalias nocapture %1) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #8
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %4 = load i8*, i8** %3, align 4, !tbaa !13
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  %6 = load i32, i32* %5, align 4, !tbaa !9
  tail call void @seahorn.fn.enter() #8, !noalias !17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #8, !noalias !17
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !14, !alias.scope !21, !noalias !22
  %11 = icmp uge i32 %10, %6
  %12 = icmp sgt i32 %6, -1
  %or.cond.i.i = and i1 %12, %11
  %13 = icmp sgt i32 %10, -1
  %or.cond3.i.i = and i1 %13, %or.cond.i.i
  br i1 %or.cond3.i.i, label %aws_byte_cursor_advance_nospec.exit.i, label %aws_byte_cursor_read.exit

aws_byte_cursor_advance_nospec.exit.i:            ; preds = %8
  %14 = add nuw i32 %10, 1
  tail call void @seahorn.fn.enter() #8, !noalias !17
  %15 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %6) #8, !noalias !17, !srcloc !23
  %16 = or i32 %15, %14
  %17 = sub i32 %10, %15
  %18 = or i32 %16, %17
  %19 = icmp sgt i32 %18, -1
  %20 = sext i1 %19 to i32
  %21 = and i32 %6, %20
  %22 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %23 = load i8*, i8** %22, align 4, !tbaa !16, !alias.scope !21, !noalias !22
  %24 = ptrtoint i8* %23 to i32
  %25 = and i32 %20, %24
  %26 = inttoptr i32 %25 to i8*
  %27 = and i32 %10, %20
  %28 = icmp eq i32 %25, 0
  %29 = getelementptr inbounds i8, i8* %26, i32 %21
  %spec.select.i.i = select i1 %28, i8* null, i8* %29
  store i8* %spec.select.i.i, i8** %22, align 4, !tbaa !16, !alias.scope !21, !noalias !22
  %30 = sub nsw i32 %27, %21
  store i32 %30, i32* %9, align 4, !tbaa !14, !alias.scope !21, !noalias !22
  br i1 %28, label %aws_byte_cursor_read.exit, label %31

31:                                               ; preds = %aws_byte_cursor_advance_nospec.exit.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %4, i8* nonnull align 1 %26, i32 %6, i1 false) #8
  br label %32

32:                                               ; preds = %2, %31
  %33 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  store i32 %6, i32* %33, align 4, !tbaa !12
  br label %aws_byte_cursor_read.exit

aws_byte_cursor_read.exit:                        ; preds = %aws_byte_cursor_advance_nospec.exit.i, %8, %32
  %.0 = phi i1 [ true, %32 ], [ false, %8 ], [ false, %aws_byte_cursor_advance_nospec.exit.i ]
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

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_byte_cursor, align 8
  %1 = alloca %struct.aws_byte_buf, align 8
  %2 = alloca %struct.store_byte_from_buffer, align 4
  %3 = alloca %struct.store_byte_from_buffer, align 4
  store i8* (%struct.aws_allocator*, i32)* @s_default_malloc, i8* (%struct.aws_allocator*, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 0), align 8
  store void (%struct.aws_allocator*, i8*)* @s_default_free, void (%struct.aws_allocator*, i8*)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 1), align 4
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 2), align 8
  store i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* (%struct.aws_allocator*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 3), align 4
  store i8* null, i8** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.32, i32 0, i32 0), i8** getelementptr inbounds (%struct.aws_byte_cursor, %struct.aws_byte_cursor* @s_null_terminator_cursor, i32 0, i32 1), align 4
  store %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), %struct.aws_log_subject_info** getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 0), align 8
  store i32 5, i32* getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 1), align 4
  tail call void @seahorn.fn.enter()
  %4 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %4)
  tail call void @seahorn.fn.enter() #8
  %5 = bitcast %struct.aws_byte_cursor* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  %6 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8
  call void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor* nonnull %0) #8
  %7 = call fastcc zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #8
  call void @verifier.assume(i1 %7) #8
  call void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf* nonnull %1) #8
  %8 = call fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %1) #8
  call void @verifier.assume(i1 %8) #8
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 8
  %.pmcpy.elt2.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack3.i = load i8*, i8** %.pmcpy.elt2.i, align 4
  %9 = bitcast %struct.store_byte_from_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8
  call void @save_byte_from_array(i8* %.pmcpy.unpack3.i, i32 %.pmcpy.unpack.i, %struct.store_byte_from_buffer* nonnull %2) #8
  %.pmcpy1.elt9.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  %.pmcpy1.unpack10.i = load i32, i32* %.pmcpy1.elt9.i, align 8
  %.pmcpy1.elt11.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 3
  %.pmcpy1.unpack12.i = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy1.elt11.i, align 4
  %10 = bitcast %struct.store_byte_from_buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %12 = load i8*, i8** %11, align 4, !tbaa !13
  %13 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !12
  call void @save_byte_from_array(i8* %12, i32 %14, %struct.store_byte_from_buffer* nonnull %3) #8
  %15 = call fastcc zeroext i1 @aws_byte_cursor_read_and_fill_buffer(%struct.aws_byte_cursor* nonnull %0, %struct.aws_byte_buf* nonnull %1) #8
  br i1 %15, label %16, label %22

16:                                               ; preds = %entry
  %17 = load i32, i32* %13, align 8, !tbaa !12
  %18 = load i32, i32* %.pmcpy1.elt9.i, align 8, !tbaa !9
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %verifier.error

20:                                               ; preds = %16
  %21 = load i8*, i8** %11, align 4, !tbaa !13
  call void @assert_bytes_match(i8* %.pmcpy.unpack3.i, i8* %21, i32 %17) #8
  br label %22

22:                                               ; preds = %20, %entry
  %23 = call fastcc zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #8
  br i1 %23, label %24, label %verifier.error

24:                                               ; preds = %22
  %25 = call fastcc zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %1) #8
  %26 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy1.elt11.i, align 4
  %27 = icmp eq %struct.aws_allocator* %.pmcpy1.unpack12.i, %26
  %or.cond = and i1 %25, %27
  br i1 %or.cond, label %28, label %verifier.error

28:                                               ; preds = %24
  %29 = icmp slt i32 %.pmcpy.unpack.i, 0
  %30 = icmp slt i32 %.pmcpy1.unpack10.i, 0
  %or.cond.i = or i1 %29, %30
  %31 = icmp ult i32 %.pmcpy.unpack.i, %.pmcpy1.unpack10.i
  %or.cond36.i = or i1 %31, %or.cond.i
  call void @verifier.assume.not(i1 %or.cond36.i)
  %32 = icmp eq i8* %.pmcpy.unpack3.i, null
  %33 = load i8*, i8** %.pmcpy.elt2.i, align 4, !tbaa !16
  br i1 %32, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, i8* %.pmcpy.unpack3.i, i32 %.pmcpy1.unpack10.i
  %36 = icmp eq i8* %33, %35
  br i1 %36, label %39, label %verifier.error

37:                                               ; preds = %28
  %38 = icmp eq i8* %33, null
  br i1 %38, label %39, label %verifier.error

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !14
  %41 = sub i32 %.pmcpy.unpack.i, %.pmcpy1.unpack10.i
  %42 = icmp eq i32 %40, %41
  call void @verifier.assume.not(i1 %42)
  br label %verifier.error

verifier.error:                                   ; preds = %37, %34, %24, %22, %16, %39
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

!llvm.ident = !{!0, !0, !0, !0, !0}
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
!14 = !{!15, !11, i64 0}
!15 = !{!"aws_byte_cursor", !11, i64 0, !6, i64 4}
!16 = !{!15, !6, i64 4}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"aws_byte_cursor_read: argument 0"}
!19 = distinct !{!19, !"aws_byte_cursor_read"}
!20 = distinct !{!20, !19, !"aws_byte_cursor_read: argument 1"}
!21 = !{!18}
!22 = !{!20}
!23 = !{i32 34259}
