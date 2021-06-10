; ModuleID = '../out2/aws_linked_list_insert_before_harness.c/aws_linked_list_insert_before_harness2e981.bc.txt'
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
%struct.aws_linked_list_node = type { %struct.aws_linked_list_node*, %struct.aws_linked_list_node* }
%struct.CFAllocatorContext = type { i32, i8*, i8* (i8*)*, void (i8*)*, %struct.__CFString* (i8*)*, i8* (i32, i32, i8*)*, i8* (i8*, i32, i32, i8*)*, void (i8*, i8*)*, i32 (i32, i32, i8*)* }
%struct.__CFString = type opaque
%struct.__CFAllocator = type opaque

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
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_linked_list_insert_before_harness() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  call void @seahorn.fn.enter() #12
  call void @seahorn.fn.enter() #12
  call void @seahorn.fn.enter() #12
  call void @seahorn.fn.enter() #12
  call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_linked_list_insert_before(%struct.aws_linked_list_node* %0, %struct.aws_linked_list_node* %1) unnamed_addr #3 {
  tail call void @seahorn.fn.enter() #12
  %3 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %1, i32 0, i32 0
  store %struct.aws_linked_list_node* %0, %struct.aws_linked_list_node** %3, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 1
  %5 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  %6 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %1, i32 0, i32 1
  store %struct.aws_linked_list_node* %5, %struct.aws_linked_list_node** %6, align 4, !tbaa !10
  %7 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  %8 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %7, i32 0, i32 0
  store %struct.aws_linked_list_node* %1, %struct.aws_linked_list_node** %8, align 4, !tbaa !5
  store %struct.aws_linked_list_node* %1, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_linked_list_node_prev_is_valid(%struct.aws_linked_list_node* nocapture readnone %0) unnamed_addr #3 {
  tail call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_linked_list_node_next_is_valid(%struct.aws_linked_list_node* nocapture readnone %0) unnamed_addr #3 {
  tail call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_allocator_is_valid(%struct.aws_allocator* nocapture readnone %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_default_allocator() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #1 {
  tail call void @seahorn.fn.enter() #12
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12
  store i8* null, i8** %3, align 4, !tbaa !11
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #12
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #1 {
  tail call void @seahorn.fn.enter() #12
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #1 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #12
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
  tail call void @seahorn.fn.enter() #12
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #12
  store i8* null, i8** %5, align 4, !tbaa !11
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #12
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #12
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #12
  call void @seahorn.fn.enter() #12
  call void @free(i8* nonnull %1) #12
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #1 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #12
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #12
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #12
  store i8* null, i8** %4, align 4, !tbaa !11
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #12
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #12
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #12
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
  tail call void @seahorn.fn.enter() #12
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 115) #13
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %7 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %6, align 4, !tbaa !12
  %8 = icmp eq i8* (%struct.aws_allocator*, i32)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 116) #13
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 118) #13
  unreachable

13:                                               ; preds = %10
  %14 = tail call i8* %7(%struct.aws_allocator* nonnull %0, i32 %1) #12
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %aws_raise_error.exit

16:                                               ; preds = %13
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %17 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %17(i32 1, i8* %20) #12
  br label %aws_raise_error.exit

21:                                               ; preds = %16
  %22 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %aws_raise_error.exit, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %22(i32 1, i8* %25) #12
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %24, %21, %19, %13
  ret i8* %14
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #3 {
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %2(i32 %0, i8* %5) #12
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %7(i32 %0, i8* %10) #12
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_calloc(%struct.aws_allocator* %0, i32 %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %4 = icmp eq %struct.aws_allocator* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 128) #13
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  %8 = load i8* (%struct.aws_allocator*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)** %7, align 4, !tbaa !14
  %9 = icmp eq i8* (%struct.aws_allocator*, i32, i32)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %12 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %11, align 4, !tbaa !12
  %13 = icmp eq i8* (%struct.aws_allocator*, i32)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 129) #13
  unreachable

15:                                               ; preds = %10, %6
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %2, 0
  %or.cond = and i1 %16, %17
  br i1 %or.cond, label %19, label %18

18:                                               ; preds = %15
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 131) #13
  unreachable

19:                                               ; preds = %15
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %20 = mul i32 %2, %1
  br i1 %9, label %34, label %21

21:                                               ; preds = %19
  %22 = tail call i8* %8(%struct.aws_allocator* nonnull %0, i32 %1, i32 %2) #12
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %aws_raise_error.exit

24:                                               ; preds = %21
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %25 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %25(i32 1, i8* %28) #12
  br label %aws_raise_error.exit

29:                                               ; preds = %24
  %30 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %31 = icmp eq void (i32, i8*)* %30, null
  br i1 %31, label %aws_raise_error.exit, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %30(i32 1, i8* %33) #12
  br label %aws_raise_error.exit

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %36 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %35, align 4, !tbaa !12
  %37 = tail call i8* %36(%struct.aws_allocator* nonnull %0, i32 %20) #12
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %40 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %41 = icmp eq void (i32, i8*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %40(i32 1, i8* %43) #12
  br label %aws_raise_error.exit

44:                                               ; preds = %39
  %45 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %46 = icmp eq void (i32, i8*)* %45, null
  br i1 %46, label %aws_raise_error.exit, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %45(i32 1, i8* %48) #12
  br label %aws_raise_error.exit

49:                                               ; preds = %34
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %37, i8 0, i32 %20, i1 false) #12
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %47, %44, %42, %32, %29, %27, %49, %21
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #3 {
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !15
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #3 {
  tail call void @seahorn.fn.enter() #12
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind ssp uwtable
declare i8* @aws_mem_acquire_many(%struct.aws_allocator*, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_mem_release(%struct.aws_allocator* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %3 = icmp eq %struct.aws_allocator* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #13
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %7 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %6, align 4, !tbaa !17
  %8 = icmp eq void (%struct.aws_allocator*, i8*)* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #13
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i8* %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void %7(%struct.aws_allocator* nonnull %0, i8* nonnull %1) #12
  br label %13

13:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %0, i8** nocapture %1, i32 %2, i32 %3) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %5 = icmp eq %struct.aws_allocator* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 224) #13
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %9 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %8, align 4, !tbaa !18
  %10 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %13 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %12, align 4, !tbaa !12
  %14 = icmp eq i8* (%struct.aws_allocator*, i32)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 225) #13
  unreachable

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %18 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !17
  %19 = icmp eq void (%struct.aws_allocator*, i8*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 226) #13
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8*, i8** %1, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #12
  %25 = icmp eq i8* %24, null
  br i1 %25, label %aws_mem_release.exit, label %26

26:                                               ; preds = %23
  tail call void %18(%struct.aws_allocator* nonnull %0, i8* nonnull %24) #12
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %23, %26
  store i8* null, i8** %1, align 4, !tbaa !11
  br label %aws_raise_error.exit

27:                                               ; preds = %21
  br i1 %10, label %43, label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %1, align 4, !tbaa !11
  %30 = tail call i8* %9(%struct.aws_allocator* nonnull %0, i8* %29, i32 %2, i32 %3) #12
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %33 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %34 = icmp eq void (i32, i8*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %33(i32 1, i8* %36) #12
  br label %aws_raise_error.exit

37:                                               ; preds = %32
  %38 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %39 = icmp eq void (i32, i8*)* %38, null
  br i1 %39, label %aws_raise_error.exit, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %38(i32 1, i8* %41) #12
  br label %aws_raise_error.exit

42:                                               ; preds = %28
  store i8* %30, i8** %1, align 4, !tbaa !11
  br label %aws_raise_error.exit

43:                                               ; preds = %27
  %44 = icmp ugt i32 %3, %2
  br i1 %44, label %45, label %aws_raise_error.exit

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %47 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %46, align 4, !tbaa !12
  %48 = tail call i8* %47(%struct.aws_allocator* nonnull %0, i32 %3) #12
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %51 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %52 = icmp eq void (i32, i8*)* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %51(i32 1, i8* %54) #12
  br label %aws_raise_error.exit

55:                                               ; preds = %50
  %56 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %57 = icmp eq void (i32, i8*)* %56, null
  br i1 %57, label %aws_raise_error.exit, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %56(i32 1, i8* %59) #12
  br label %aws_raise_error.exit

60:                                               ; preds = %45
  %61 = load i8*, i8** %1, align 4, !tbaa !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %48, i8* align 1 %61, i32 %2, i1 false) #12
  %62 = getelementptr inbounds i8, i8* %48, i32 %2
  %63 = sub i32 %3, %2
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %62, i8 0, i32 %63, i1 false) #12
  %64 = load i8*, i8** %1, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #12
  %65 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !17
  %66 = icmp eq void (%struct.aws_allocator*, i8*)* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #13
  unreachable

68:                                               ; preds = %60
  %69 = icmp eq i8* %64, null
  br i1 %69, label %aws_mem_release.exit7, label %70

70:                                               ; preds = %68
  tail call void %65(%struct.aws_allocator* nonnull %0, i8* nonnull %64) #12
  br label %aws_mem_release.exit7

aws_mem_release.exit7:                            ; preds = %68, %70
  store i8* %48, i8** %1, align 4, !tbaa !11
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %58, %55, %53, %40, %37, %35, %aws_mem_release.exit7, %43, %42, %aws_mem_release.exit
  %.2 = phi i32 [ 0, %aws_mem_release.exit ], [ 0, %42 ], [ 0, %43 ], [ 0, %aws_mem_release.exit7 ], [ -1, %35 ], [ -1, %37 ], [ -1, %40 ], [ -1, %53 ], [ -1, %55 ], [ -1, %58 ]
  ret i32 %.2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %2 = alloca %struct.CFAllocatorContext, align 4
  %3 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %4 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %3, align 4, !tbaa !18
  %5 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %4, null
  %spec.store.select = select i1 %5, i8* (i8*, i32, i32, i8*)* null, i8* (i8*, i32, i32, i8*)* @s_cf_allocator_reallocate
  %6 = bitcast %struct.CFAllocatorContext* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %6) #12
  %7 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 0
  store i32 0, i32* %7, align 4, !tbaa !19
  %8 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 1
  %9 = bitcast i8** %8 to %struct.aws_allocator**
  store %struct.aws_allocator* %0, %struct.aws_allocator** %9, align 4, !tbaa !22
  %10 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 2
  store i8* (i8*)* null, i8* (i8*)** %10, align 4, !tbaa !23
  %11 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %11, align 4, !tbaa !24
  %12 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 4
  store %struct.__CFString* (i8*)* @s_cf_allocator_copy_description, %struct.__CFString* (i8*)** %12, align 4, !tbaa !25
  %13 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 5
  store i8* (i32, i32, i8*)* @s_cf_allocator_allocate, i8* (i32, i32, i8*)** %13, align 4, !tbaa !26
  %14 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 6
  store i8* (i8*, i32, i32, i8*)* %spec.store.select, i8* (i8*, i32, i32, i8*)** %14, align 4, !tbaa !27
  %15 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 7
  store void (i8*, i8*)* @s_cf_allocator_deallocate, void (i8*, i8*)** %15, align 4, !tbaa !28
  %16 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 8
  store i32 (i32, i32, i8*)* @s_cf_allocator_preferred_size, i32 (i32, i32, i8*)** %16, align 4, !tbaa !29
  %17 = call %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator* null, %struct.CFAllocatorContext* nonnull %2) #12
  %18 = icmp eq %struct.__CFAllocator* %17, null
  br i1 %18, label %19, label %aws_raise_error.exit

19:                                               ; preds = %1
  call void @seahorn.fn.enter() #12
  call void @seahorn.fn.enter() #12
  %20 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %21 = icmp eq void (i32, i8*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  call void %20(i32 1, i8* %23) #12
  br label %aws_raise_error.exit

24:                                               ; preds = %19
  %25 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %26 = icmp eq void (i32, i8*)* %25, null
  br i1 %26, label %aws_raise_error.exit, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  call void %25(i32 1, i8* %28) #12
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %27, %24, %22, %1
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %6) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_reallocate(i8* %0, i32 %1, i32 %2, i8* %3) #1 {
  tail call void @seahorn.fn.enter() #12
  %5 = alloca i8*, align 4
  %6 = bitcast i8* %3 to %struct.aws_allocator*
  %7 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #12
  %8 = getelementptr inbounds i8, i8* %0, i32 -4
  store i8* %8, i8** %5, align 4, !tbaa !11
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 1
  %11 = call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %6, i8** nonnull %5, i32 %10, i32 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 4, !tbaa !11
  %15 = bitcast i8* %14 to i32*
  store i32 %1, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %14, i32 4
  br label %17

17:                                               ; preds = %13, %4
  %.0 = phi i8* [ %16, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #12
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.__CFString* @s_cf_allocator_copy_description(i8* nocapture readnone %0) #1 {
  tail call void @seahorn.fn.enter() #12
  ret %struct.__CFString* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to %struct.__CFString*)
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_cf_allocator_allocate(i32 %0, i32 %1, i8* %2) #1 {
  tail call void @seahorn.fn.enter() #12
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
  tail call void @seahorn.fn.enter() #12
  %3 = bitcast i8* %1 to %struct.aws_allocator*
  %4 = getelementptr inbounds i8, i8* %0, i32 -4
  tail call void @seahorn.fn.enter() #12
  %5 = icmp eq i8* %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 215) #13
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i32 4
  %9 = bitcast i8* %8 to void (%struct.aws_allocator*, i8*)**
  %10 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %9, align 4, !tbaa !17
  %11 = icmp eq void (%struct.aws_allocator*, i8*)* %10, null
  br i1 %11, label %12, label %aws_mem_release.exit

12:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #13
  unreachable

aws_mem_release.exit:                             ; preds = %7
  tail call void %10(%struct.aws_allocator* nonnull %3, i8* nonnull %4) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @s_cf_allocator_preferred_size(i32 %0, i32 %1, i8* nocapture readnone %2) #1 {
  tail call void @seahorn.fn.enter() #12
  %4 = add i32 %0, 4
  ret i32 %4
}

declare %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator*, %struct.CFAllocatorContext*) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %2 = bitcast %struct.__CFAllocator* %0 to i8*
  tail call void @CFRelease(i8* %2) #12
  ret void
}

declare void @CFRelease(i8*) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_last_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !11
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_error_info* @get_error_by_code(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = and i32 %0, 1023
  %6 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %7 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %6, align 4, !tbaa !11
  %8 = icmp eq %struct.aws_error_info_list* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !30
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 0
  %16 = load %struct.aws_error_info*, %struct.aws_error_info** %15, align 4, !tbaa !33
  %17 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %16, i32 %5
  br label %18

18:                                               ; preds = %14, %9, %3, %1
  %.1 = phi %struct.aws_error_info* [ null, %1 ], [ %17, %14 ], [ null, %9 ], [ null, %3 ]
  ret %struct.aws_error_info* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !11
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_lib_name(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !11
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_debug_str(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !11
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_raise_error_private(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %2(i32 %0, i8* %5) #12
  br label %11

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %7(i32 %0, i8* %10) #12
  br label %11

11:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_reset_error() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_restore_error(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  store void (i32, i8*)* %0, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  store i8* %1, i8** @s_global_error_context, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  store void (i32, i8*)* %0, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  store i8* %1, i8** @tl_thread_handler_context, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_register_error_info(%struct.aws_error_info_list* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 133) #13
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !33
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 134) #13
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !30
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 135) #13
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !34
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !11
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #12
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 144) #13
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* %0, %struct.aws_error_info_list** %23, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #12
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 167) #13
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !33
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 168) #13
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !30
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 169) #13
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !34
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !11
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.17, i32 0, i32 0), i32 %17) #12
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.14, i32 0, i32 0), i32 178) #13
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %23, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_translate_and_raise_io_error(i32 %0) unnamed_addr #1 {
NodeBlock25:
  tail call void @seahorn.fn.enter() #12
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
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %2(i32 34, i8* %5) #12
  br label %aws_raise_error.20.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error.20.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %7(i32 34, i8* %10) #12
  br label %aws_raise_error.20.exit

11:                                               ; preds = %LeafBlock15
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %12(i32 42, i8* %15) #12
  br label %aws_raise_error.20.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.20.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %17(i32 42, i8* %20) #12
  br label %aws_raise_error.20.exit

21:                                               ; preds = %LeafBlock, %LeafBlock3
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %22(i32 43, i8* %25) #12
  br label %aws_raise_error.20.exit

26:                                               ; preds = %21
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.20.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %27(i32 43, i8* %30) #12
  br label %aws_raise_error.20.exit

31:                                               ; preds = %LeafBlock1, %NodeBlock5, %LeafBlock17
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %32 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %32(i32 44, i8* %35) #12
  br label %aws_raise_error.20.exit

36:                                               ; preds = %31
  %37 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %38 = icmp eq void (i32, i8*)* %37, null
  br i1 %38, label %aws_raise_error.20.exit, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %37(i32 44, i8* %40) #12
  br label %aws_raise_error.20.exit

41:                                               ; preds = %LeafBlock11
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %42 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %43 = icmp eq void (i32, i8*)* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %42(i32 45, i8* %45) #12
  br label %aws_raise_error.20.exit

46:                                               ; preds = %41
  %47 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %aws_raise_error.20.exit, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %47(i32 45, i8* %50) #12
  br label %aws_raise_error.20.exit

51:                                               ; preds = %NodeBlock7
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %52 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %52(i32 1, i8* %55) #12
  br label %aws_raise_error.20.exit

56:                                               ; preds = %51
  %57 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %58 = icmp eq void (i32, i8*)* %57, null
  br i1 %58, label %aws_raise_error.20.exit, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %57(i32 1, i8* %60) #12
  br label %aws_raise_error.20.exit

61:                                               ; preds = %NodeBlock21
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %62(i32 2, i8* %65) #12
  br label %aws_raise_error.20.exit

66:                                               ; preds = %61
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.20.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %67(i32 2, i8* %70) #12
  br label %aws_raise_error.20.exit

NewDefault:                                       ; preds = %LeafBlock, %LeafBlock1, %LeafBlock3, %LeafBlock11, %LeafBlock15, %LeafBlock17
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %71 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %72 = icmp eq void (i32, i8*)* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %NewDefault
  %74 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %71(i32 46, i8* %74) #12
  br label %aws_raise_error.20.exit

75:                                               ; preds = %NewDefault
  %76 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %77 = icmp eq void (i32, i8*)* %76, null
  br i1 %77, label %aws_raise_error.20.exit, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %76(i32 46, i8* %79) #12
  br label %aws_raise_error.20.exit

aws_raise_error.20.exit:                          ; preds = %78, %75, %73, %69, %66, %64, %59, %56, %54, %49, %46, %44, %39, %36, %34, %29, %26, %24, %19, %16, %14, %9, %6, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.20(i32 %0) unnamed_addr #3 {
  tail call void @seahorn.fn.enter() #12
  tail call void @seahorn.fn.enter() #12
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !11
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !11
  tail call void %2(i32 %0, i8* %5) #12
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !11
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !11
  tail call void %7(i32 %0, i8* %10) #12
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
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
  tail call void @seahorn.fn.enter()
  tail call fastcc void @aws_linked_list_insert_before_harness()
  %1 = tail call %struct.aws_linked_list_node* @verifier.nondet.1()
  %2 = tail call %struct.aws_linked_list_node* @verifier.nondet.1()
  tail call fastcc void @aws_linked_list_insert_before(%struct.aws_linked_list_node* %1, %struct.aws_linked_list_node* %2)
  %3 = tail call %struct.aws_linked_list_node* @verifier.nondet.1()
  tail call fastcc void @aws_linked_list_node_prev_is_valid(%struct.aws_linked_list_node* %3)
  %4 = tail call %struct.aws_linked_list_node* @verifier.nondet.1()
  tail call fastcc void @aws_linked_list_node_next_is_valid(%struct.aws_linked_list_node* %4)
  %5 = tail call %struct.aws_allocator* @verifier.nondet.2()
  tail call fastcc void @aws_allocator_is_valid(%struct.aws_allocator* %5)
  tail call fastcc void @aws_default_allocator()
  %6 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %7 = tail call i32 @verifier.nondet.3()
  %8 = tail call i8* @s_default_malloc(%struct.aws_allocator* %6, i32 %7)
  %9 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %10 = tail call i8* @verifier.nondet.4()
  tail call void @s_default_free(%struct.aws_allocator* %9, i8* %10)
  %11 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %12 = tail call i8* @verifier.nondet.4()
  %13 = tail call i32 @verifier.nondet.3()
  %14 = tail call i32 @verifier.nondet.3()
  %15 = tail call i8* @s_default_realloc(%struct.aws_allocator* %11, i8* %12, i32 %13, i32 %14)
  %16 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %17 = tail call i32 @verifier.nondet.3()
  %18 = tail call i32 @verifier.nondet.3()
  %19 = tail call i8* @s_default_calloc(%struct.aws_allocator* %16, i32 %17, i32 %18)
  %20 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %21 = tail call i32 @verifier.nondet.3()
  %22 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %20, i32 %21)
  %23 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error(i32 %23)
  %24 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %25 = tail call i32 @verifier.nondet.3()
  %26 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_mem_calloc(%struct.aws_allocator* %24, i32 %25, i32 %26)
  %27 = tail call i32 @verifier.nondet.3()
  %28 = tail call i32 @verifier.nondet.3()
  %29 = tail call i32* @verifier.nondet.5()
  tail call fastcc void @aws_mul_size_checked(i32 %27, i32 %28, i32* %29)
  %30 = tail call i32 @verifier.nondet.3()
  %31 = tail call i32 @verifier.nondet.3()
  %32 = tail call i32* @verifier.nondet.5()
  tail call fastcc void @aws_mul_u32_checked(i32 %30, i32 %31, i32* %32)
  %33 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %34 = tail call i32 @verifier.nondet.3()
  %35 = tail call i8* (%struct.aws_allocator*, i32, ...) @aws_mem_acquire_many(%struct.aws_allocator* %33, i32 %34)
  %36 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %37 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_mem_release(%struct.aws_allocator* %36, i8* %37)
  %38 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %39 = tail call i8** @verifier.nondet.6()
  %40 = tail call i32 @verifier.nondet.3()
  %41 = tail call i32 @verifier.nondet.3()
  %42 = tail call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %38, i8** %39, i32 %40, i32 %41)
  %43 = tail call %struct.aws_allocator* @verifier.nondet.2()
  tail call fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %43)
  %44 = tail call i8* @verifier.nondet.4()
  %45 = tail call i32 @verifier.nondet.3()
  %46 = tail call i32 @verifier.nondet.3()
  %47 = tail call i8* @verifier.nondet.4()
  %48 = tail call i8* @s_cf_allocator_reallocate(i8* %44, i32 %45, i32 %46, i8* %47)
  %49 = tail call i8* @verifier.nondet.4()
  %50 = tail call %struct.__CFString* @s_cf_allocator_copy_description(i8* %49)
  %51 = tail call i32 @verifier.nondet.3()
  %52 = tail call i32 @verifier.nondet.3()
  %53 = tail call i8* @verifier.nondet.4()
  %54 = tail call i8* @s_cf_allocator_allocate(i32 %51, i32 %52, i8* %53)
  %55 = tail call i8* @verifier.nondet.4()
  %56 = tail call i8* @verifier.nondet.4()
  tail call void @s_cf_allocator_deallocate(i8* %55, i8* %56)
  %57 = tail call i32 @verifier.nondet.3()
  %58 = tail call i32 @verifier.nondet.3()
  %59 = tail call i8* @verifier.nondet.4()
  %60 = tail call i32 @s_cf_allocator_preferred_size(i32 %57, i32 %58, i8* %59)
  %61 = tail call %struct.__CFAllocator* @verifier.nondet.7()
  tail call fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %61)
  tail call fastcc void @aws_last_error()
  %62 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_str(i32 %62)
  %63 = tail call i32 @verifier.nondet.3()
  %64 = tail call fastcc %struct.aws_error_info* @get_error_by_code(i32 %63)
  %65 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_name(i32 %65)
  %66 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_lib_name(i32 %66)
  %67 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_error_debug_str(i32 %67)
  %68 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error_private(i32 %68)
  tail call fastcc void @aws_reset_error()
  %69 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_restore_error(i32 %69)
  %70 = tail call void (i32, i8*)* @verifier.nondet.8()
  %71 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %70, i8* %71)
  %72 = tail call void (i32, i8*)* @verifier.nondet.8()
  %73 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %72, i8* %73)
  %74 = tail call %struct.aws_error_info_list* @verifier.nondet.9()
  tail call fastcc void @aws_register_error_info(%struct.aws_error_info_list* %74)
  %75 = tail call %struct.aws_error_info_list* @verifier.nondet.9()
  tail call fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* %75)
  %76 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_translate_and_raise_io_error(i32 %76)
  %77 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.20(i32 %77)
  ret i32 42
}

declare %struct.aws_linked_list_node* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_allocator* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

declare i8* @verifier.nondet.4() local_unnamed_addr

declare i32* @verifier.nondet.5() local_unnamed_addr

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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

attributes #0 = { "objc_arc_inert" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inaccessiblememonly nofree norecurse nounwind }
attributes #10 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #11 = { inaccessiblememonly }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !7, i64 0}
!6 = !{!"aws_linked_list_node", !7, i64 0, !7, i64 4}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"aws_allocator", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!14 = !{!13, !7, i64 12}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !8, i64 0}
!17 = !{!13, !7, i64 4}
!18 = !{!13, !7, i64 8}
!19 = !{!20, !21, i64 0}
!20 = !{!"", !21, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!21 = !{!"long", !8, i64 0}
!22 = !{!20, !7, i64 4}
!23 = !{!20, !7, i64 8}
!24 = !{!20, !7, i64 12}
!25 = !{!20, !7, i64 16}
!26 = !{!20, !7, i64 20}
!27 = !{!20, !7, i64 24}
!28 = !{!20, !7, i64 28}
!29 = !{!20, !7, i64 32}
!30 = !{!31, !32, i64 4}
!31 = !{!"aws_error_info_list", !7, i64 0, !32, i64 4}
!32 = !{!"short", !8, i64 0}
!33 = !{!31, !7, i64 0}
!34 = !{!35, !16, i64 0}
!35 = !{!"aws_error_info", !16, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
