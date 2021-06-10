; ModuleID = '../out2/ring_buffer.c/ring_buffer675e3.bc.txt'
source_filename = "/tmp/aws-c-common/source/ring_buffer.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_ring_buffer = type { %struct.aws_allocator*, i8*, %struct.aws_atomic_var, %struct.aws_atomic_var, i8* }
%struct.aws_atomic_var = type { i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }

@.str = private unnamed_addr constant [84 x i8] c"!\22ring_buffer_allocator does not support realloc, as it breaks allocation ordering\22\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"/tmp/aws-c-common/source/ring_buffer.c\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_init(%struct.aws_ring_buffer* %0, %struct.aws_allocator* %1, i32 %2) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #11
  %4 = bitcast %struct.aws_ring_buffer* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false) #11
  %5 = tail call i8* @aws_mem_acquire(%struct.aws_allocator* %1, i32 %2) #11
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  store i8* %5, i8** %6, align 4, !tbaa !5
  %7 = icmp eq i8* %5, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  store %struct.aws_allocator* %1, %struct.aws_allocator** %9, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #11
  %10 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2, i32 0
  store volatile i8* %5, i8** %10, align 4, !tbaa !12
  tail call void @seahorn.fn.enter() #11
  %11 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3, i32 0
  store volatile i8* %5, i8** %11, align 4, !tbaa !12
  %12 = getelementptr inbounds i8, i8* %5, i32 %2
  %13 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  store i8* %12, i8** %13, align 4, !tbaa !13
  br label %14

14:                                               ; preds = %8, %3
  ret void
}

declare i8* @aws_mem_acquire(%struct.aws_allocator*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_atomic_init_ptr(%struct.aws_atomic_var* %0, i8* %1) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #11
  %3 = getelementptr inbounds %struct.aws_atomic_var, %struct.aws_atomic_var* %0, i32 0, i32 0
  store volatile i8* %1, i8** %3, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #11
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %3 = load i8*, i8** %2, align 4, !tbaa !5
  %4 = icmp eq i8* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  %7 = load %struct.aws_allocator*, %struct.aws_allocator** %6, align 4, !tbaa !11
  tail call void @aws_mem_release(%struct.aws_allocator* %7, i8* nonnull %3) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = bitcast %struct.aws_ring_buffer* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %9, i8 0, i32 20, i1 false) #11
  ret void
}

declare void @aws_mem_release(%struct.aws_allocator*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %0, i32 %1, %struct.aws_byte_buf* nocapture %2) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #11
  %4 = alloca %struct.aws_byte_buf, align 8
  %5 = alloca %struct.aws_byte_buf, align 8
  %6 = alloca %struct.aws_byte_buf, align 8
  %7 = alloca %struct.aws_byte_buf, align 8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 34) #11
  br label %74

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %12 = bitcast %struct.aws_atomic_var* %11 to i32*
  %13 = load atomic volatile i32, i32* %12 acquire, align 4
  %14 = inttoptr i32 %13 to i8*
  %15 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %16 = bitcast %struct.aws_atomic_var* %15 to i32*
  %17 = load atomic volatile i32, i32* %16 monotonic, align 4
  %18 = inttoptr i32 %17 to i8*
  %19 = icmp eq i8* %18, %14
  br i1 %19, label %20, label %42

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %22 = load i8*, i8** %21, align 4, !tbaa !13
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %26 = load i8*, i8** %25, align 4, !tbaa !5
  %27 = ptrtoint i8* %22 to i32
  %28 = ptrtoint i8* %26 to i32
  %29 = sub i32 %27, %28
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i32 [ %29, %24 ], [ 0, %20 ]
  %32 = icmp ult i32 %31, %1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 1) #11
  br label %74

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %36 = load i8*, i8** %35, align 4, !tbaa !5
  %37 = getelementptr inbounds i8, i8* %36, i32 %1
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %38 = ptrtoint i8* %37 to i32
  store atomic volatile i32 %38, i32* %16 monotonic, align 4
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %39 = ptrtoint i8* %36 to i32
  store atomic volatile i32 %39, i32* %12 release, align 4
  %40 = bitcast %struct.aws_byte_buf* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #11
  %41 = load i8*, i8** %35, align 4, !tbaa !5
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %4, i8* %41, i32 %1) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #11
  br label %74

42:                                               ; preds = %10
  %43 = icmp ugt i8* %14, %18
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = xor i32 %17, -1
  %46 = add i32 %13, %45
  %47 = icmp ult i32 %46, %1
  br i1 %47, label %73, label %.critedge

.critedge:                                        ; preds = %44
  %48 = getelementptr inbounds i8, i8* %18, i32 %1
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %49 = ptrtoint i8* %48 to i32
  store atomic volatile i32 %49, i32* %16 monotonic, align 4
  %50 = bitcast %struct.aws_byte_buf* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #11
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %5, i8* %18, i32 %1) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50) #11
  br label %74

51:                                               ; preds = %42
  %52 = icmp ult i8* %14, %18
  br i1 %52, label %53, label %73

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %55 = load i8*, i8** %54, align 4, !tbaa !13
  %56 = ptrtoint i8* %55 to i32
  %57 = sub i32 %56, %17
  %58 = icmp ult i32 %57, %1
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, i8* %18, i32 %1
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %61 = ptrtoint i8* %60 to i32
  store atomic volatile i32 %61, i32* %16 monotonic, align 4
  %62 = bitcast %struct.aws_byte_buf* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #11
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %6, i8* %18, i32 %1) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #11
  br label %74

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %65 = load i8*, i8** %64, align 4, !tbaa !5
  %66 = ptrtoint i8* %65 to i32
  %67 = sub i32 %13, %66
  %68 = icmp ugt i32 %67, %1
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, i8* %65, i32 %1
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %71 = ptrtoint i8* %70 to i32
  store atomic volatile i32 %71, i32* %16 monotonic, align 4
  %72 = bitcast %struct.aws_byte_buf* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %72) #11
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %7, i8* %65, i32 %1) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %72) #11
  br label %74

73:                                               ; preds = %63, %51, %44
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 1) #11
  br label %74

74:                                               ; preds = %73, %69, %59, %.critedge, %34, %33, %9
  %.3 = phi i32 [ -1, %9 ], [ -1, %73 ], [ 0, %59 ], [ 0, %69 ], [ -1, %33 ], [ 0, %34 ], [ 0, %.critedge ]
  ret i32 %.3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 %0) #11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %0, i32 %1) unnamed_addr #2 {
NodeBlock:
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
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
  tail call void @abort() #12
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
define internal fastcc void @aws_atomic_store_ptr_explicit(%struct.aws_atomic_var* %0, i8* %1, i32 %2) unnamed_addr #2 {
NodeBlock:
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
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
  tail call void @abort() #12
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

declare void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* sret align 4, i8*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_acquire_up_to(%struct.aws_ring_buffer* %0, i32 %1, i32 %2, %struct.aws_byte_buf* %3) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #11
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
  br i1 %or.cond6, label %16, label %15

15:                                               ; preds = %4
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 34) #11
  br label %92

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %18 = bitcast %struct.aws_atomic_var* %17 to i32*
  %19 = load atomic volatile i32, i32* %18 acquire, align 4
  %20 = inttoptr i32 %19 to i8*
  %21 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %22 = bitcast %struct.aws_atomic_var* %21 to i32*
  %23 = load atomic volatile i32, i32* %22 monotonic, align 4
  %24 = inttoptr i32 %23 to i8*
  %25 = icmp eq i8* %24, %20
  br i1 %25, label %26, label %50

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %28 = load i8*, i8** %27, align 4, !tbaa !13
  %29 = icmp eq i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %32 = load i8*, i8** %31, align 4, !tbaa !5
  %33 = ptrtoint i8* %28 to i32
  %34 = ptrtoint i8* %32 to i32
  %35 = sub i32 %33, %34
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i32 [ %35, %30 ], [ 0, %26 ]
  %38 = icmp ugt i32 %37, %2
  %39 = select i1 %38, i32 %2, i32 %37
  %40 = icmp ult i32 %39, %1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 1) #11
  br label %92

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %44 = load i8*, i8** %43, align 4, !tbaa !5
  %45 = getelementptr inbounds i8, i8* %44, i32 %39
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %46 = ptrtoint i8* %45 to i32
  store atomic volatile i32 %46, i32* %22 monotonic, align 4
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %47 = ptrtoint i8* %44 to i32
  store atomic volatile i32 %47, i32* %18 release, align 4
  %48 = bitcast %struct.aws_byte_buf* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #11
  %49 = load i8*, i8** %43, align 4, !tbaa !5
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %5, i8* %49, i32 %39) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #11
  br label %92

50:                                               ; preds = %16
  %51 = icmp ugt i8* %20, %24
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  %53 = sub i32 %19, %23
  %54 = add i32 %53, -1
  %55 = icmp ugt i32 %54, %2
  %56 = select i1 %55, i32 %2, i32 %54
  %57 = icmp ult i32 %56, %1
  br i1 %57, label %91, label %.critedge

.critedge:                                        ; preds = %52
  %58 = getelementptr inbounds i8, i8* %24, i32 %56
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %59 = ptrtoint i8* %58 to i32
  store atomic volatile i32 %59, i32* %22 monotonic, align 4
  %60 = bitcast %struct.aws_byte_buf* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #11
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %6, i8* %24, i32 %56) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #11
  br label %92

61:                                               ; preds = %50
  %62 = icmp ult i8* %20, %24
  br i1 %62, label %63, label %91

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %65 = load i8*, i8** %64, align 4, !tbaa !13
  %66 = ptrtoint i8* %65 to i32
  %67 = sub i32 %66, %23
  %68 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %69 = load i8*, i8** %68, align 4, !tbaa !5
  %70 = ptrtoint i8* %69 to i32
  %71 = sub i32 %19, %70
  %72 = icmp ult i32 %67, %2
  br i1 %72, label %76, label %.critedge97

.critedge97:                                      ; preds = %63
  %73 = getelementptr inbounds i8, i8* %24, i32 %2
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %74 = ptrtoint i8* %73 to i32
  store atomic volatile i32 %74, i32* %22 monotonic, align 4
  %75 = bitcast %struct.aws_byte_buf* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %75) #11
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %7, i8* %24, i32 %2) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %75) #11
  br label %92

76:                                               ; preds = %63
  %77 = icmp ugt i32 %71, %2
  br i1 %77, label %.critedge98, label %81

.critedge98:                                      ; preds = %76
  %78 = getelementptr inbounds i8, i8* %69, i32 %2
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %79 = ptrtoint i8* %78 to i32
  store atomic volatile i32 %79, i32* %22 monotonic, align 4
  %80 = bitcast %struct.aws_byte_buf* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80) #11
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %8, i8* %69, i32 %2) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80) #11
  br label %92

81:                                               ; preds = %76
  %82 = icmp ult i32 %67, %1
  %83 = icmp ult i32 %67, %71
  %or.cond = or i1 %82, %83
  br i1 %or.cond, label %85, label %.critedge99

.critedge99:                                      ; preds = %81
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  store atomic volatile i32 %66, i32* %22 monotonic, align 4
  %84 = bitcast %struct.aws_byte_buf* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %84) #11
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %9, i8* %24, i32 %67) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %84) #11
  br label %92

85:                                               ; preds = %81
  %86 = icmp ugt i32 %71, %1
  br i1 %86, label %.critedge100, label %91

.critedge100:                                     ; preds = %85
  %87 = getelementptr inbounds i8, i8* %20, i32 -1
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %88 = ptrtoint i8* %87 to i32
  store atomic volatile i32 %88, i32* %22 monotonic, align 4
  %89 = bitcast %struct.aws_byte_buf* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %89) #11
  %90 = add i32 %71, -1
  call void @aws_byte_buf_from_empty_array(%struct.aws_byte_buf* nonnull sret align 4 %10, i8* %69, i32 %90) #11
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %89) #11
  br label %92

91:                                               ; preds = %85, %61, %52
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 1) #11
  br label %92

92:                                               ; preds = %91, %.critedge100, %.critedge99, %.critedge98, %.critedge97, %.critedge, %42, %41, %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_release(%struct.aws_ring_buffer* %0, %struct.aws_byte_buf* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #11
  %3 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %5 = load i8*, i8** %4, align 4, !tbaa !14
  %6 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !17
  %8 = getelementptr inbounds i8, i8* %5, i32 %7
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast %struct.aws_atomic_var* %3 to i32*
  store atomic volatile i32 %9, i32* %10 release, align 4
  %11 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %11, i8 0, i32 16, i1 false) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_buf_belongs_to_pool(%struct.aws_ring_buffer* nocapture readnone %0, %struct.aws_byte_buf* nocapture readnone %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #11
  tail call void @seahorn.fn.enter() #11
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @s_buf_belongs_to_pool(%struct.aws_ring_buffer* nocapture readnone %0, %struct.aws_byte_buf* nocapture readnone %1) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_ring_buffer_allocator_init(%struct.aws_allocator* %0, %struct.aws_ring_buffer* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #11
  %3 = icmp eq %struct.aws_allocator* %0, null
  %4 = icmp eq %struct.aws_ring_buffer* %1, null
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %5, label %6

5:                                                ; preds = %2
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_raise_error_private(i32 34) #11
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %8 = bitcast i8** %7 to %struct.aws_ring_buffer**
  store %struct.aws_ring_buffer* %1, %struct.aws_ring_buffer** %8, align 4, !tbaa !18
  %9 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 0
  store i8* (%struct.aws_allocator*, i32)* @s_ring_buffer_mem_acquire, i8* (%struct.aws_allocator*, i32)** %9, align 4, !tbaa !20
  %10 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 1
  store void (%struct.aws_allocator*, i8*)* @s_ring_buffer_mem_release, void (%struct.aws_allocator*, i8*)** %10, align 4, !tbaa !21
  %11 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 3
  store i8* (%struct.aws_allocator*, i32, i32)* @s_ring_buffer_mem_calloc, i8* (%struct.aws_allocator*, i32, i32)** %11, align 4, !tbaa !22
  %12 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 2
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_ring_buffer_mem_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** %12, align 4, !tbaa !23
  br label %13

13:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_ring_buffer_mem_acquire(%struct.aws_allocator* nocapture readonly %0, i32 %1) #0 {
  tail call void @seahorn.fn.enter() #11
  %3 = alloca %struct.aws_byte_buf, align 4
  %4 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %5 = load i8*, i8** %4, align 4, !tbaa !18
  %6 = bitcast i8* %5 to %struct.aws_ring_buffer*
  %7 = bitcast %struct.aws_byte_buf* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #11
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false)
  %8 = add i32 %1, 4
  %9 = call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %6, i32 %8, %struct.aws_byte_buf* nonnull %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !17
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  %15 = load i8*, i8** %14, align 4, !tbaa !14
  %16 = bitcast i8* %15 to i32*
  store i32 %13, i32* %16, align 4, !tbaa !24
  %17 = getelementptr inbounds i8, i8* %15, i32 4
  br label %18

18:                                               ; preds = %11, %2
  %.0 = phi i8* [ %17, %11 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #11
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_ring_buffer_mem_release(%struct.aws_allocator* %0, i8* %1) #0 {
  tail call void @seahorn.fn.enter() #11
  %3 = alloca %struct.aws_byte_buf, align 4
  %4 = getelementptr inbounds i8, i8* %1, i32 -4
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !24
  %7 = bitcast %struct.aws_byte_buf* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #11
  call void @aws_byte_buf_from_array(%struct.aws_byte_buf* nonnull sret align 4 %3, i8* nonnull %4, i32 %6) #11
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 3
  store %struct.aws_allocator* %0, %struct.aws_allocator** %8, align 4, !tbaa !25
  %9 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %10 = load i8*, i8** %9, align 4, !tbaa !18
  call void @seahorn.fn.enter() #11
  %11 = getelementptr inbounds i8, i8* %10, i32 12
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !14
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %3, i32 0, i32 2
  %15 = load i32, i32* %14, align 4, !tbaa !17
  %16 = getelementptr inbounds i8, i8* %13, i32 %15
  call void @seahorn.fn.enter() #11
  call void @seahorn.fn.enter() #11
  %17 = ptrtoint i8* %16 to i32
  %18 = bitcast i8* %11 to i32*
  store atomic volatile i32 %17, i32* %18 release, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_ring_buffer_mem_calloc(%struct.aws_allocator* nocapture readonly %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aws_byte_buf, align 4
  tail call void @seahorn.fn.enter() #11
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #11
  %6 = getelementptr inbounds %struct.aws_allocator, %struct.aws_allocator* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 4, !tbaa !18
  %8 = bitcast i8* %7 to %struct.aws_ring_buffer*
  %9 = bitcast %struct.aws_byte_buf* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #11
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #11
  %10 = add i32 %5, 4
  %11 = call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %8, i32 %10, %struct.aws_byte_buf* nonnull %4) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %s_ring_buffer_mem_acquire.exit.thread

s_ring_buffer_mem_acquire.exit.thread:            ; preds = %3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #11
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 2
  %15 = load i32, i32* %14, align 4, !tbaa !17
  %16 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %4, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !14
  %18 = bitcast i8* %17 to i32*
  store i32 %15, i32* %18, align 4, !tbaa !24
  %19 = getelementptr inbounds i8, i8* %17, i32 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #11
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %19, i8 0, i32 %5, i1 false) #11
  br label %20

20:                                               ; preds = %s_ring_buffer_mem_acquire.exit.thread, %13
  %.0 = phi i8* [ %19, %13 ], [ null, %s_ring_buffer_mem_acquire.exit.thread ]
  ret i8* %.0
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal noalias nonnull i8* @s_ring_buffer_mem_realloc(%struct.aws_allocator* nocapture readnone %0, i8* nocapture readnone %1, i32 %2, i32 %3) #4 {
  tail call void @seahorn.fn.enter() #11
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0), i32 304) #13
  unreachable
}

declare void @aws_raise_error_private(i32) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @abort() local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

declare void @aws_byte_buf_from_array(%struct.aws_byte_buf* sret align 4, i8*, i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #6

; Function Attrs: noreturn
define i32 @main() local_unnamed_addr #7 {
  tail call void @seahorn.fn.enter()
  %1 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %2 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %3 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_ring_buffer_init(%struct.aws_ring_buffer* %1, %struct.aws_allocator* %2, i32 %3)
  %4 = tail call %struct.aws_atomic_var* @verifier.nondet.4()
  %5 = tail call i8* @verifier.nondet.5()
  tail call fastcc void @aws_atomic_init_ptr(%struct.aws_atomic_var* %4, i8* %5)
  %6 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  tail call fastcc void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer* %6)
  %7 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %8 = tail call i32 @verifier.nondet.3()
  %9 = tail call %struct.aws_byte_buf* @verifier.nondet.6()
  %10 = tail call fastcc i32 @aws_ring_buffer_acquire(%struct.aws_ring_buffer* %7, i32 %8, %struct.aws_byte_buf* %9)
  %11 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error(i32 %11)
  %12 = tail call %struct.aws_atomic_var* @verifier.nondet.4()
  %13 = tail call i32 @verifier.nondet.3()
  %14 = tail call fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %12, i32 %13)
  %15 = tail call %struct.aws_atomic_var* @verifier.nondet.4()
  %16 = tail call i8* @verifier.nondet.5()
  %17 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_atomic_store_ptr_explicit(%struct.aws_atomic_var* %15, i8* %16, i32 %17)
  %18 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %19 = tail call i32 @verifier.nondet.3()
  %20 = tail call i32 @verifier.nondet.3()
  %21 = tail call %struct.aws_byte_buf* @verifier.nondet.6()
  tail call fastcc void @aws_ring_buffer_acquire_up_to(%struct.aws_ring_buffer* %18, i32 %19, i32 %20, %struct.aws_byte_buf* %21)
  %22 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %23 = tail call %struct.aws_byte_buf* @verifier.nondet.6()
  tail call fastcc void @aws_ring_buffer_release(%struct.aws_ring_buffer* %22, %struct.aws_byte_buf* %23)
  %24 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %25 = tail call %struct.aws_byte_buf* @verifier.nondet.6()
  tail call fastcc void @aws_ring_buffer_buf_belongs_to_pool(%struct.aws_ring_buffer* %24, %struct.aws_byte_buf* %25)
  %26 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %27 = tail call %struct.aws_byte_buf* @verifier.nondet.6()
  tail call fastcc void @s_buf_belongs_to_pool(%struct.aws_ring_buffer* %26, %struct.aws_byte_buf* %27)
  %28 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %29 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  tail call fastcc void @aws_ring_buffer_allocator_init(%struct.aws_allocator* %28, %struct.aws_ring_buffer* %29)
  %30 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %31 = tail call i32 @verifier.nondet.3()
  %32 = tail call i8* @s_ring_buffer_mem_acquire(%struct.aws_allocator* %30, i32 %31)
  %33 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %34 = tail call i8* @verifier.nondet.5()
  tail call void @s_ring_buffer_mem_release(%struct.aws_allocator* %33, i8* %34)
  %35 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %36 = tail call i32 @verifier.nondet.3()
  %37 = tail call i32 @verifier.nondet.3()
  %38 = tail call i8* @s_ring_buffer_mem_calloc(%struct.aws_allocator* %35, i32 %36, i32 %37)
  %39 = tail call %struct.aws_allocator* @verifier.nondet.2()
  %40 = tail call i8* @verifier.nondet.5()
  %41 = tail call i32 @verifier.nondet.3()
  %42 = tail call i32 @verifier.nondet.3()
  %43 = tail call i8* @s_ring_buffer_mem_realloc(%struct.aws_allocator* %39, i8* %40, i32 %41, i32 %42)
  unreachable
}

declare %struct.aws_ring_buffer* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_allocator* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

declare %struct.aws_atomic_var* @verifier.nondet.4() local_unnamed_addr

declare i8* @verifier.nondet.5() local_unnamed_addr

declare %struct.aws_byte_buf* @verifier.nondet.6() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #8

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #8

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #8

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #9

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #10

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { inaccessiblememonly nofree norecurse nounwind }
attributes #9 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #10 = { inaccessiblememonly }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"aws_ring_buffer", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 12, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"aws_atomic_var", !7, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!10, !7, i64 0}
!13 = !{!6, !7, i64 16}
!14 = !{!15, !7, i64 4}
!15 = !{!"aws_byte_buf", !16, i64 0, !7, i64 4, !16, i64 8, !7, i64 12}
!16 = !{!"long", !8, i64 0}
!17 = !{!15, !16, i64 8}
!18 = !{!19, !7, i64 16}
!19 = !{!"aws_allocator", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!20 = !{!19, !7, i64 0}
!21 = !{!19, !7, i64 4}
!22 = !{!19, !7, i64 12}
!23 = !{!19, !7, i64 8}
!24 = !{!16, !16, i64 0}
!25 = !{!15, !7, i64 12}
