; ModuleID = '../out2/aws_string_bytes_harness.c/aws_string_bytes_harness2cf21.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.__NSConstantString_tag = type { i32*, i32, i8*, i32 }
%struct.aws_string = type { %struct.aws_allocator*, i32, [1 x i8] }
%struct.CFAllocatorContext = type { i32, i8*, i8* (i8*)*, void (i8*)*, %struct.__CFString* (i8*)*, i8* (i32, i32, i8*)*, i8* (i8*, i32, i32, i8*)*, void (i8*, i8*)*, i32 (i32, i32, i8*)* }
%struct.__CFString = type opaque
%struct.__CFAllocator = type opaque
%struct.aws_byte_cursor = type { i32, i8* }
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }

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
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_bytes_harness() unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %1 = tail call %struct.aws_string* bitcast (%struct.aws_string* (...)* @ensure_string_is_allocated_nondet_length to %struct.aws_string* ()*)() #13
  tail call void @seahorn.fn.enter() #13
  %2 = icmp eq %struct.aws_string* %1, null
  br i1 %2, label %aws_string_is_valid.exit1.critedge, label %aws_string_is_valid.exit

aws_string_is_valid.exit:                         ; preds = %0
  %3 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 2, i32 %4
  %6 = load i8, i8* %5, align 1, !tbaa !11
  %7 = icmp eq i8 %6, 0
  tail call void @verifier.assume(i1 %7)
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  br label %aws_string_is_valid.exit1

aws_string_is_valid.exit1.critedge:               ; preds = %0
  tail call void @verifier.assume(i1 false)
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  br label %aws_string_is_valid.exit1

aws_string_is_valid.exit1:                        ; preds = %aws_string_is_valid.exit1.critedge, %aws_string_is_valid.exit
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.aws_string* @ensure_string_is_allocated_nondet_length(...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_string_is_valid(%struct.aws_string* readonly %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %2 = icmp eq %struct.aws_string* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 %5
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %8 = icmp eq i8 %7, 0
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i1 [ false, %1 ], [ %8, %3 ]
  ret i1 %10
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_string_bytes(%struct.aws_string* nocapture readnone %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

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
  store i8* null, i8** %3, align 4, !tbaa !12
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
  store i8* null, i8** %5, align 4, !tbaa !12
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
  store i8* null, i8** %4, align 4, !tbaa !12
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

; Function Attrs: nofree
declare i32 @posix_memalign(i8**, i32, i32) local_unnamed_addr #6

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
  %7 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %6, align 4, !tbaa !13
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 1) #13
  br label %17

17:                                               ; preds = %16, %13
  ret i8* %14
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 %0) #13
  ret void
}

declare void @aws_raise_error_private(i32) local_unnamed_addr #3

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
  %8 = load i8* (%struct.aws_allocator*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)** %7, align 4, !tbaa !15
  %9 = icmp eq i8* (%struct.aws_allocator*, i32, i32)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %12 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %11, align 4, !tbaa !13
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
  br i1 %9, label %25, label %21

21:                                               ; preds = %19
  %22 = tail call i8* %8(%struct.aws_allocator* nonnull %0, i32 %1, i32 %2) #13
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 1) #13
  br label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %27 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %26, align 4, !tbaa !13
  %28 = tail call i8* %27(%struct.aws_allocator* nonnull %0, i32 %20) #13
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 1) #13
  br label %32

31:                                               ; preds = %25
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %28, i8 0, i32 %20, i1 false) #13
  br label %32

32:                                               ; preds = %31, %30, %24, %21
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !16
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !16
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
  %7 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %6, align 4, !tbaa !18
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
  %9 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %8, align 4, !tbaa !19
  %10 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %13 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %12, align 4, !tbaa !13
  %14 = icmp eq i8* (%struct.aws_allocator*, i32)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 225) #14
  unreachable

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  %18 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !18
  %19 = icmp eq void (%struct.aws_allocator*, i8*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 226) #14
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8*, i8** %1, align 4, !tbaa !12
  tail call void @seahorn.fn.enter() #13
  %25 = icmp eq i8* %24, null
  br i1 %25, label %aws_mem_release.exit, label %26

26:                                               ; preds = %23
  tail call void %18(%struct.aws_allocator* nonnull %0, i8* nonnull %24) #13
  br label %aws_mem_release.exit

aws_mem_release.exit:                             ; preds = %23, %26
  store i8* null, i8** %1, align 4, !tbaa !12
  br label %53

27:                                               ; preds = %21
  br i1 %10, label %34, label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %1, align 4, !tbaa !12
  %30 = tail call i8* %9(%struct.aws_allocator* nonnull %0, i8* %29, i32 %2, i32 %3) #13
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 1) #13
  br label %53

33:                                               ; preds = %28
  store i8* %30, i8** %1, align 4, !tbaa !12
  br label %53

34:                                               ; preds = %27
  %35 = icmp ugt i32 %3, %2
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  %38 = load i8* (%struct.aws_allocator*, i32)*, i8* (%struct.aws_allocator*, i32)** %37, align 4, !tbaa !13
  %39 = tail call i8* %38(%struct.aws_allocator* nonnull %0, i32 %3) #13
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 1) #13
  br label %53

42:                                               ; preds = %36
  %43 = load i8*, i8** %1, align 4, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %39, i8* align 1 %43, i32 %2, i1 false) #13
  %44 = getelementptr inbounds i8, i8* %39, i32 %2
  %45 = sub i32 %3, %2
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %44, i8 0, i32 %45, i1 false) #13
  %46 = load i8*, i8** %1, align 4, !tbaa !12
  tail call void @seahorn.fn.enter() #13
  %47 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %17, align 4, !tbaa !18
  %48 = icmp eq void (%struct.aws_allocator*, i8*)* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

50:                                               ; preds = %42
  %51 = icmp eq i8* %46, null
  br i1 %51, label %aws_mem_release.exit6, label %52

52:                                               ; preds = %50
  tail call void %47(%struct.aws_allocator* nonnull %0, i8* nonnull %46) #13
  br label %aws_mem_release.exit6

aws_mem_release.exit6:                            ; preds = %50, %52
  store i8* %39, i8** %1, align 4, !tbaa !12
  br label %53

53:                                               ; preds = %aws_mem_release.exit6, %41, %34, %33, %32, %aws_mem_release.exit
  %.2 = phi i32 [ 0, %aws_mem_release.exit ], [ 0, %33 ], [ -1, %32 ], [ 0, %34 ], [ 0, %aws_mem_release.exit6 ], [ -1, %41 ]
  ret i32 %.2
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = alloca %struct.CFAllocatorContext, align 4
  %3 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  %4 = load i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i8*, i32, i32)** %3, align 4, !tbaa !19
  %5 = icmp eq i8* (%struct.aws_allocator*, i8*, i32, i32)* %4, null
  %spec.store.select = select i1 %5, i8* (i8*, i32, i32, i8*)* null, i8* (i8*, i32, i32, i8*)* @s_cf_allocator_reallocate
  %6 = bitcast %struct.CFAllocatorContext* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %6) #13
  %7 = getelementptr inbounds %struct.CFAllocatorContext, %struct.CFAllocatorContext* %2, i32 0, i32 0
  store i32 0, i32* %7, align 4, !tbaa !20
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
  %17 = call %struct.__CFAllocator* @CFAllocatorCreate(%struct.__CFAllocator* null, %struct.CFAllocatorContext* nonnull %2) #13
  %18 = icmp eq %struct.__CFAllocator* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  call void @seahorn.fn.enter() #13
  call void @aws_raise_error_private(i32 1) #13
  br label %20

20:                                               ; preds = %19, %1
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
  store i8* %8, i8** %5, align 4, !tbaa !12
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 1
  %11 = call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %6, i8** nonnull %5, i32 %10, i32 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 4, !tbaa !12
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
  %10 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %9, align 4, !tbaa !18
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

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = bitcast %struct.__CFAllocator* %0 to i8*
  tail call void @CFRelease(i8* %2) #13
  ret void
}

declare void @CFRelease(i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_new_from_c_str(%struct.aws_allocator* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %1) #13
  %4 = tail call fastcc %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %0, i8* %1, i32 %3)
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %0, i8* %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %4 = icmp ugt i32 %2, -14
  br i1 %4, label %aws_add_size_checked.exit, label %5

aws_add_size_checked.exit:                        ; preds = %3
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 5) #13
  br label %20

5:                                                ; preds = %3
  %6 = add nuw i32 %2, 13
  %7 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %0, i32 %6)
  %8 = bitcast i8* %7 to %struct.aws_string*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = bitcast i8* %7 to %struct.aws_allocator**
  store %struct.aws_allocator* %0, %struct.aws_allocator** %11, align 4, !tbaa !12
  %12 = getelementptr inbounds i8, i8* %7, i32 4
  %13 = bitcast i8* %12 to i32*
  store i32 %2, i32* %13, align 4, !tbaa !30
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %7, i32 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %16, i8* align 1 %1, i32 %2, i1 false) #13
  br label %17

17:                                               ; preds = %15, %10
  %18 = getelementptr inbounds i8, i8* %7, i32 8
  %19 = getelementptr inbounds i8, i8* %18, i32 %2
  store i8 0, i8* %19, align 1, !tbaa !11
  br label %20

20:                                               ; preds = %aws_add_size_checked.exit, %17, %5
  %.1 = phi %struct.aws_string* [ null, %aws_add_size_checked.exit ], [ %8, %17 ], [ null, %5 ]
  ret %struct.aws_string* %.1
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond.i = and i1 %4, %6
  br i1 %or.cond.i, label %7, label %8

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 5) #13
  br label %aws_add_u32_checked.exit

8:                                                ; preds = %3
  %9 = add i32 %1, %0
  store i32 %9, i32* %2, align 4, !tbaa !16
  br label %aws_add_u32_checked.exit

aws_add_u32_checked.exit:                         ; preds = %7, %8
  %.0.i = phi i32 [ -1, %7 ], [ 0, %8 ]
  ret i32 %.0.i
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %7, label %8

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 5) #13
  br label %10

8:                                                ; preds = %3
  %9 = add i32 %1, %0
  store i32 %9, i32* %2, align 4, !tbaa !16
  br label %10

10:                                               ; preds = %8, %7
  %.0 = phi i32 [ -1, %7 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.3(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 %0) #13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_string* @aws_string_new_from_string(%struct.aws_allocator* %0, %struct.aws_string* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 2, i32 0
  %4 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = tail call fastcc %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %0, i8* nonnull %3, i32 %5)
  ret %struct.aws_string* %6
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_new_from_cursor(%struct.aws_allocator* %0, %struct.aws_byte_cursor* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %4 = load i8*, i8** %3, align 4, !tbaa !31
  %5 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !33
  %7 = tail call fastcc %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %0, i8* %4, i32 %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_new_from_buf(%struct.aws_allocator* %0, %struct.aws_byte_buf* nocapture readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %4 = load i8*, i8** %3, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !36
  %7 = tail call fastcc %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %0, i8* %4, i32 %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_destroy(%struct.aws_string* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = icmp eq %struct.aws_string* %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 0
  %5 = load %struct.aws_allocator*, %struct.aws_allocator** %4, align 4, !tbaa !37
  %6 = icmp eq %struct.aws_allocator* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #13
  %8 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %5, i32 0, i32 1
  %9 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %8, align 4, !tbaa !18
  %10 = icmp eq void (%struct.aws_allocator*, i8*)* %9, null
  br i1 %10, label %11, label %aws_mem_release.exit

11:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

aws_mem_release.exit:                             ; preds = %7
  %12 = bitcast %struct.aws_string* %0 to i8*
  tail call void %9(%struct.aws_allocator* nonnull %5, i8* nonnull %12) #13
  br label %13

13:                                               ; preds = %aws_mem_release.exit, %3, %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_destroy_secure(%struct.aws_string* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %2 = icmp eq %struct.aws_string* %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  tail call void @seahorn.fn.enter() #13
  %4 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %5 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !5
  tail call void @aws_secure_zero(i8* nonnull %4, i32 %6) #13
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 0
  %8 = load %struct.aws_allocator*, %struct.aws_allocator** %7, align 4, !tbaa !37
  %9 = icmp eq %struct.aws_allocator* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  tail call void @seahorn.fn.enter() #13
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %8, i32 0, i32 1
  %12 = load void (%struct.aws_allocator*, i8*)*, void (%struct.aws_allocator*, i8*)** %11, align 4, !tbaa !18
  %13 = icmp eq void (%struct.aws_allocator*, i8*)* %12, null
  br i1 %13, label %14, label %aws_mem_release.exit

14:                                               ; preds = %10
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.2, i32 0, i32 0), i32 216) #14
  unreachable

aws_mem_release.exit:                             ; preds = %10
  %15 = bitcast %struct.aws_string* %0 to i8*
  tail call void %12(%struct.aws_allocator* nonnull %8, i8* nonnull %15) #13
  br label %16

16:                                               ; preds = %aws_mem_release.exit, %3, %1
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc nonnull i8* @aws_string_bytes.4(%struct.aws_string* readnone %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #13
  %2 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  ret i8* %2
}

declare void @aws_secure_zero(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_string_compare(%struct.aws_string* readonly %0, %struct.aws_string* readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, %1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = icmp eq %struct.aws_string* %0, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = icmp eq %struct.aws_string* %1, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = icmp ult i32 %10, %12
  %14 = select i1 %13, i32 %10, i32 %12
  tail call void @seahorn.fn.enter() #13
  %15 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  tail call void @seahorn.fn.enter() #13
  %16 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 2, i32 0
  %17 = tail call i32 @memcmp(i8* nonnull %15, i8* nonnull %16, i32 %14) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = icmp eq i32 %10, %12
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = icmp ugt i32 %10, %12
  %. = select i1 %22, i32 1, i32 -1
  br label %23

23:                                               ; preds = %21, %19, %8, %6, %4, %2
  %.1 = phi i32 [ 0, %2 ], [ -1, %4 ], [ 1, %6 ], [ %17, %8 ], [ 0, %19 ], [ %., %21 ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_comparator_string(i8* readonly %0, i8* readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq i8* %0, %1
  %4 = icmp eq i8* %0, null
  %or.cond = or i1 %4, %3
  %5 = icmp eq i8* %1, null
  %or.cond1 = or i1 %5, %or.cond
  br i1 %or.cond1, label %aws_string_compare.exit, label %6

6:                                                ; preds = %2
  %7 = bitcast i8* %0 to %struct.aws_string**
  %8 = load %struct.aws_string*, %struct.aws_string** %7, align 4, !tbaa !12
  %9 = bitcast i8* %1 to %struct.aws_string**
  %10 = load %struct.aws_string*, %struct.aws_string** %9, align 4, !tbaa !12
  tail call void @seahorn.fn.enter() #13
  %11 = icmp eq %struct.aws_string* %8, %10
  %12 = icmp eq %struct.aws_string* %8, null
  %or.cond2 = or i1 %12, %11
  %13 = icmp eq %struct.aws_string* %10, null
  %or.cond3 = or i1 %13, %or.cond2
  br i1 %or.cond3, label %aws_string_compare.exit, label %14

14:                                               ; preds = %6
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  ret void

aws_string_compare.exit:                          ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq(%struct.aws_string* %0, %struct.aws_string* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, %1
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq %struct.aws_string* %0, null
  %6 = icmp eq %struct.aws_string* %1, null
  %or.cond = or i1 %5, %6
  br i1 %or.cond, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %9 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 2, i32 0
  %12 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = tail call zeroext i1 @aws_array_eq(i8* nonnull %8, i32 %10, i8* nonnull %11, i32 %13) #13
  br label %15

15:                                               ; preds = %7, %4, %2
  ret void
}

declare zeroext i1 @aws_array_eq(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq_ignore_case(%struct.aws_string* %0, %struct.aws_string* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, %1
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq %struct.aws_string* %0, null
  %6 = icmp eq %struct.aws_string* %1, null
  %or.cond = or i1 %5, %6
  br i1 %or.cond, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %9 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 2, i32 0
  %12 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = tail call zeroext i1 @aws_array_eq_ignore_case(i8* nonnull %8, i32 %10, i8* nonnull %11, i32 %13) #13
  br label %15

15:                                               ; preds = %7, %4, %2
  ret void
}

declare zeroext i1 @aws_array_eq_ignore_case(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq_byte_cursor(%struct.aws_string* %0, %struct.aws_byte_cursor* readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, null
  %4 = icmp eq %struct.aws_byte_cursor* %1, null
  %or.cond3 = or i1 %3, %4
  br i1 %or.cond3, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %10 = load i8*, i8** %9, align 4, !tbaa !31
  %11 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !33
  %13 = tail call zeroext i1 @aws_array_eq(i8* nonnull %6, i32 %8, i8* %10, i32 %12) #13
  br label %14

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq_byte_cursor_ignore_case(%struct.aws_string* %0, %struct.aws_byte_cursor* readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, null
  %4 = icmp eq %struct.aws_byte_cursor* %1, null
  %or.cond3 = or i1 %3, %4
  br i1 %or.cond3, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %10 = load i8*, i8** %9, align 4, !tbaa !31
  %11 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !33
  %13 = tail call zeroext i1 @aws_array_eq_ignore_case(i8* nonnull %6, i32 %8, i8* %10, i32 %12) #13
  br label %14

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq_byte_buf(%struct.aws_string* %0, %struct.aws_byte_buf* readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, null
  %4 = icmp eq %struct.aws_byte_buf* %1, null
  %or.cond3 = or i1 %3, %4
  br i1 %or.cond3, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %10 = load i8*, i8** %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !36
  %13 = tail call zeroext i1 @aws_array_eq(i8* nonnull %6, i32 %8, i8* %10, i32 %12) #13
  br label %14

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq_byte_buf_ignore_case(%struct.aws_string* %0, %struct.aws_byte_buf* readonly %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, null
  %4 = icmp eq %struct.aws_byte_buf* %1, null
  %or.cond3 = or i1 %3, %4
  br i1 %or.cond3, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %10 = load i8*, i8** %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !36
  %13 = tail call zeroext i1 @aws_array_eq_ignore_case(i8* nonnull %6, i32 %8, i8* %10, i32 %12) #13
  br label %14

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq_c_str(%struct.aws_string* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, null
  %4 = icmp eq i8* %1, null
  %or.cond3 = or i1 %3, %4
  br i1 %or.cond3, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = tail call zeroext i1 @aws_array_eq_c_str(i8* nonnull %6, i32 %8, i8* nonnull %1) #13
  br label %10

10:                                               ; preds = %5, %2
  ret void
}

declare zeroext i1 @aws_array_eq_c_str(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_eq_c_str_ignore_case(%struct.aws_string* %0, i8* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_string* %0, null
  %4 = icmp eq i8* %1, null
  %or.cond3 = or i1 %3, %4
  br i1 %or.cond3, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = tail call zeroext i1 @aws_array_eq_c_str_ignore_case(i8* nonnull %6, i32 %8, i8* nonnull %1) #13
  br label %10

10:                                               ; preds = %5, %2
  ret void
}

declare zeroext i1 @aws_array_eq_c_str_ignore_case(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_write_from_whole_string(%struct.aws_byte_buf* noalias %0, %struct.aws_string* noalias %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = icmp eq %struct.aws_byte_buf* %0, null
  %4 = icmp eq %struct.aws_string* %1, null
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %10, label %5

5:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #13
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 2, i32 0
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = tail call zeroext i1 @aws_byte_buf_write(%struct.aws_byte_buf* nonnull %0, i8* nonnull %6, i32 %8) #13
  br label %10

10:                                               ; preds = %5, %2
  ret void
}

declare zeroext i1 @aws_byte_buf_write(%struct.aws_byte_buf*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_from_string(%struct.aws_string* %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  tail call void @seahorn.fn.enter() #13
  %2 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 0
  %3 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = tail call i64 @aws_byte_cursor_from_array(i8* nonnull %2, i32 %4) #13
  ret void
}

declare i64 @aws_byte_cursor_from_array(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_string_clone_or_reuse(%struct.aws_allocator* %0, %struct.aws_string* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %3 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 0
  %4 = load %struct.aws_allocator*, %struct.aws_allocator** %3, align 4, !tbaa !37
  %5 = icmp eq %struct.aws_allocator* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #13
  %7 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 2, i32 0
  %8 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %1, i32 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = tail call fastcc %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %0, i8* nonnull %7, i32 %9) #13
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_secure_strlen(i8* %0, i32 %1, i32* %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #13
  %4 = icmp ne i8* %0, null
  %5 = icmp ne i32* %2, null
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %7, label %6

6:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 34) #13
  br label %15

7:                                                ; preds = %3
  %8 = tail call i8* @memchr(i8* nonnull %0, i32 0, i32 %1) #13
  %9 = icmp eq i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = ptrtoint i8* %8 to i32
  %12 = ptrtoint i8* %0 to i32
  %13 = sub i32 %11, %12
  store i32 %13, i32* %2, align 4, !tbaa !30
  br label %15

14:                                               ; preds = %7
  tail call void @seahorn.fn.enter() #13
  tail call void @aws_raise_error_private(i32 47) #13
  br label %15

15:                                               ; preds = %14, %10, %6
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i32) local_unnamed_addr #9

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
  tail call void @seahorn.fn.enter()
  tail call fastcc void @aws_string_bytes_harness()
  %1 = tail call %struct.aws_string* @verifier.nondet.1()
  %2 = tail call fastcc i1 @aws_string_is_valid(%struct.aws_string* %1)
  %3 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_string_bytes(%struct.aws_string* %3)
  %4 = tail call %struct.aws_allocator* @verifier.nondet.2()
  tail call fastcc void @aws_allocator_is_valid(%struct.aws_allocator* %4)
  tail call fastcc void @aws_default_allocator()
  %5 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %6 = tail call i32 @verifier.nondet.3()
  %7 = tail call i8* @s_default_malloc(%struct.aws_allocator* %5, i32 %6)
  %8 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %9 = tail call i8* @verifier.nondet.4()
  tail call void @s_default_free(%struct.aws_allocator* %8, i8* %9)
  %10 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %11 = tail call i8* @verifier.nondet.4()
  %12 = tail call i32 @verifier.nondet.3()
  %13 = tail call i32 @verifier.nondet.3()
  %14 = tail call i8* @s_default_realloc(%struct.aws_allocator* %10, i8* %11, i32 %12, i32 %13)
  %15 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %16 = tail call i32 @verifier.nondet.3()
  %17 = tail call i32 @verifier.nondet.3()
  %18 = tail call i8* @s_default_calloc(%struct.aws_allocator* %15, i32 %16, i32 %17)
  %19 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %20 = tail call i32 @verifier.nondet.3()
  %21 = tail call fastcc i8* @aws_mem_acquire(%struct.aws_allocator* %19, i32 %20)
  %22 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error(i32 %22)
  %23 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %24 = tail call i32 @verifier.nondet.3()
  %25 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_mem_calloc(%struct.aws_allocator* %23, i32 %24, i32 %25)
  %26 = tail call i32 @verifier.nondet.3()
  %27 = tail call i32 @verifier.nondet.3()
  %28 = tail call i32* @verifier.nondet.5()
  tail call fastcc void @aws_mul_size_checked(i32 %26, i32 %27, i32* %28)
  %29 = tail call i32 @verifier.nondet.3()
  %30 = tail call i32 @verifier.nondet.3()
  %31 = tail call i32* @verifier.nondet.5()
  tail call fastcc void @aws_mul_u32_checked(i32 %29, i32 %30, i32* %31)
  %32 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %33 = tail call i32 @verifier.nondet.3()
  %34 = tail call i8* (%struct.aws_allocator*, i32, ...) @aws_mem_acquire_many(%struct.aws_allocator* %32, i32 %33)
  %35 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %36 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_mem_release(%struct.aws_allocator* %35, i8* %36)
  %37 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %38 = tail call i8** @verifier.nondet.6()
  %39 = tail call i32 @verifier.nondet.3()
  %40 = tail call i32 @verifier.nondet.3()
  %41 = tail call fastcc i32 @aws_mem_realloc(%struct.aws_allocator* %37, i8** %38, i32 %39, i32 %40)
  %42 = tail call %struct.aws_allocator* @verifier.nondet.2()
  tail call fastcc void @aws_wrapped_cf_allocator_new(%struct.aws_allocator* %42)
  %43 = tail call i8* @verifier.nondet.4()
  %44 = tail call i32 @verifier.nondet.3()
  %45 = tail call i32 @verifier.nondet.3()
  %46 = tail call i8* @verifier.nondet.4()
  %47 = tail call i8* @s_cf_allocator_reallocate(i8* %43, i32 %44, i32 %45, i8* %46)
  %48 = tail call i8* @verifier.nondet.4()
  %49 = tail call %struct.__CFString* @s_cf_allocator_copy_description(i8* %48)
  %50 = tail call i32 @verifier.nondet.3()
  %51 = tail call i32 @verifier.nondet.3()
  %52 = tail call i8* @verifier.nondet.4()
  %53 = tail call i8* @s_cf_allocator_allocate(i32 %50, i32 %51, i8* %52)
  %54 = tail call i8* @verifier.nondet.4()
  %55 = tail call i8* @verifier.nondet.4()
  tail call void @s_cf_allocator_deallocate(i8* %54, i8* %55)
  %56 = tail call i32 @verifier.nondet.3()
  %57 = tail call i32 @verifier.nondet.3()
  %58 = tail call i8* @verifier.nondet.4()
  %59 = tail call i32 @s_cf_allocator_preferred_size(i32 %56, i32 %57, i8* %58)
  %60 = tail call %struct.__CFAllocator* @verifier.nondet.7()
  tail call fastcc void @aws_wrapped_cf_allocator_destroy(%struct.__CFAllocator* %60)
  %61 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %62 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_string_new_from_c_str(%struct.aws_allocator* %61, i8* %62)
  %63 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %64 = tail call i8* @verifier.nondet.4()
  %65 = tail call i32 @verifier.nondet.3()
  %66 = tail call fastcc %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %63, i8* %64, i32 %65)
  %67 = tail call i32 @verifier.nondet.3()
  %68 = tail call i32 @verifier.nondet.3()
  %69 = tail call i32* @verifier.nondet.5()
  %70 = tail call fastcc i32 @aws_add_size_checked(i32 %67, i32 %68, i32* %69)
  %71 = tail call i32 @verifier.nondet.3()
  %72 = tail call i32 @verifier.nondet.3()
  %73 = tail call i32* @verifier.nondet.5()
  %74 = tail call fastcc i32 @aws_add_u32_checked(i32 %71, i32 %72, i32* %73)
  %75 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error.3(i32 %75)
  %76 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %77 = tail call %struct.aws_string* @verifier.nondet.1()
  %78 = tail call fastcc %struct.aws_string* @aws_string_new_from_string(%struct.aws_allocator* %76, %struct.aws_string* %77)
  %79 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %80 = tail call %struct.aws_byte_cursor* @verifier.nondet.8()
  tail call fastcc void @aws_string_new_from_cursor(%struct.aws_allocator* %79, %struct.aws_byte_cursor* %80)
  %81 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %82 = tail call %struct.aws_byte_buf* @verifier.nondet.9()
  tail call fastcc void @aws_string_new_from_buf(%struct.aws_allocator* %81, %struct.aws_byte_buf* %82)
  %83 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_string_destroy(%struct.aws_string* %83)
  %84 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_string_destroy_secure(%struct.aws_string* %84)
  %85 = tail call %struct.aws_string* @verifier.nondet.1()
  %86 = tail call fastcc i8* @aws_string_bytes.4(%struct.aws_string* %85)
  %87 = tail call %struct.aws_string* @verifier.nondet.1()
  %88 = tail call %struct.aws_string* @verifier.nondet.1()
  %89 = tail call fastcc i32 @aws_string_compare(%struct.aws_string* %87, %struct.aws_string* %88)
  %90 = tail call i8* @verifier.nondet.4()
  %91 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_array_list_comparator_string(i8* %90, i8* %91)
  %92 = tail call %struct.aws_string* @verifier.nondet.1()
  %93 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_string_eq(%struct.aws_string* %92, %struct.aws_string* %93)
  %94 = tail call %struct.aws_string* @verifier.nondet.1()
  %95 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_string_eq_ignore_case(%struct.aws_string* %94, %struct.aws_string* %95)
  %96 = tail call %struct.aws_string* @verifier.nondet.1()
  %97 = tail call %struct.aws_byte_cursor* @verifier.nondet.8()
  tail call fastcc void @aws_string_eq_byte_cursor(%struct.aws_string* %96, %struct.aws_byte_cursor* %97)
  %98 = tail call %struct.aws_string* @verifier.nondet.1()
  %99 = tail call %struct.aws_byte_cursor* @verifier.nondet.8()
  tail call fastcc void @aws_string_eq_byte_cursor_ignore_case(%struct.aws_string* %98, %struct.aws_byte_cursor* %99)
  %100 = tail call %struct.aws_string* @verifier.nondet.1()
  %101 = tail call %struct.aws_byte_buf* @verifier.nondet.9()
  tail call fastcc void @aws_string_eq_byte_buf(%struct.aws_string* %100, %struct.aws_byte_buf* %101)
  %102 = tail call %struct.aws_string* @verifier.nondet.1()
  %103 = tail call %struct.aws_byte_buf* @verifier.nondet.9()
  tail call fastcc void @aws_string_eq_byte_buf_ignore_case(%struct.aws_string* %102, %struct.aws_byte_buf* %103)
  %104 = tail call %struct.aws_string* @verifier.nondet.1()
  %105 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_string_eq_c_str(%struct.aws_string* %104, i8* %105)
  %106 = tail call %struct.aws_string* @verifier.nondet.1()
  %107 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_string_eq_c_str_ignore_case(%struct.aws_string* %106, i8* %107)
  %108 = tail call %struct.aws_byte_buf* @verifier.nondet.9()
  %109 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_byte_buf_write_from_whole_string(%struct.aws_byte_buf* %108, %struct.aws_string* %109)
  %110 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_byte_cursor_from_string(%struct.aws_string* %110)
  %111 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %112 = tail call %struct.aws_string* @verifier.nondet.1()
  tail call fastcc void @aws_string_clone_or_reuse(%struct.aws_allocator* %111, %struct.aws_string* %112)
  %113 = tail call i8* @verifier.nondet.4()
  %114 = tail call i32 @verifier.nondet.3()
  %115 = tail call i32* @verifier.nondet.5()
  tail call fastcc void @aws_secure_strlen(i8* %113, i32 %114, i32* %115)
  ret i32 42
}

declare %struct.aws_string* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_allocator* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

declare i8* @verifier.nondet.4() local_unnamed_addr

declare i32* @verifier.nondet.5() local_unnamed_addr

declare i8** @verifier.nondet.6() local_unnamed_addr

declare %struct.__CFAllocator* @verifier.nondet.7() local_unnamed_addr

declare %struct.aws_byte_cursor* @verifier.nondet.8() local_unnamed_addr

declare %struct.aws_byte_buf* @verifier.nondet.9() local_unnamed_addr

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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

attributes #0 = { "objc_arc_inert" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inaccessiblememonly nofree norecurse nounwind }
attributes #11 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #12 = { inaccessiblememonly }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !10, i64 4}
!6 = !{!"aws_string", !7, i64 0, !10, i64 4, !8, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"aws_allocator", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!15 = !{!14, !7, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !8, i64 0}
!18 = !{!14, !7, i64 4}
!19 = !{!14, !7, i64 8}
!20 = !{!21, !10, i64 0}
!21 = !{!"", !10, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!22 = !{!21, !7, i64 4}
!23 = !{!21, !7, i64 8}
!24 = !{!21, !7, i64 12}
!25 = !{!21, !7, i64 16}
!26 = !{!21, !7, i64 20}
!27 = !{!21, !7, i64 24}
!28 = !{!21, !7, i64 28}
!29 = !{!21, !7, i64 32}
!30 = !{!10, !10, i64 0}
!31 = !{!32, !7, i64 4}
!32 = !{!"aws_byte_cursor", !10, i64 0, !7, i64 4}
!33 = !{!32, !10, i64 0}
!34 = !{!35, !7, i64 4}
!35 = !{!"aws_byte_buf", !10, i64 0, !7, i64 4, !10, i64 8, !7, i64 12}
!36 = !{!35, !10, i64 0}
!37 = !{!6, !7, i64 0}
