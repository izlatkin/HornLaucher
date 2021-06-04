; ModuleID = '../out/aws_ring_buffer_release_harness.c/aws_ring_buffer_release_harnessabe96.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_ring_buffer_release/aws_ring_buffer_release_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_ring_buffer = type { %struct.aws_allocator*, i8*, %struct.aws_atomic_var, %struct.aws_atomic_var, i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_atomic_var = type { i8* }
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
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
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 seq_cst, align 4
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @is_front_valid_state(%struct.aws_ring_buffer* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
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
  tail call void @seahorn.fn.enter() #7
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
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
  tail call void @seahorn.fn.enter() #7
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  %10 = icmp ugt i8* %9, %5
  ret i1 %10
}

declare void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer*, i32) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_is_empty(%struct.aws_ring_buffer* %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #7
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  %10 = icmp eq i8* %5, %9
  ret i1 %10
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #7
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @verifier.assume(i1 true) #7
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  tail call void @seahorn.fn.enter() #7
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
  tail call void @seahorn.fn.enter() #7
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

declare zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf*) local_unnamed_addr #3

declare void @aws_ring_buffer_release(%struct.aws_ring_buffer*, %struct.aws_byte_buf*) local_unnamed_addr #3

declare %struct.aws_ring_buffer* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_atomic_var* @verifier.nondet.2() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #4

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #4

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #4

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #5

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #6

declare i32 @verifier.nondet.5() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_byte_buf, align 8
  %1 = alloca %struct.aws_ring_buffer, align 8
  %2 = alloca %struct.aws_ring_buffer, align 8
  tail call void @seahorn.fn.enter()
  %3 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %4 = tail call fastcc i1 @is_empty_state(%struct.aws_ring_buffer* %3)
  %5 = tail call %struct.aws_atomic_var* @verifier.nondet.2()
  %6 = tail call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %5)
  %7 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %8 = tail call fastcc i1 @is_front_valid_state(%struct.aws_ring_buffer* %7)
  %9 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %10 = tail call fastcc i1 @is_middle_valid_state(%struct.aws_ring_buffer* %9)
  %11 = tail call %struct.aws_ring_buffer* @verifier.nondet.1()
  %12 = tail call fastcc i1 @is_ends_valid_state(%struct.aws_ring_buffer* %11)
  %13 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %13)
  %14 = tail call i32 @verifier.nondet.5() #7
  tail call void @seahorn.fn.enter() #7
  %15 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7
  %16 = bitcast %struct.aws_ring_buffer* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %16) #7
  call void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer* nonnull %1, i32 %14) #7
  %17 = call fastcc zeroext i1 @aws_ring_buffer_is_empty(%struct.aws_ring_buffer* nonnull %1) #7
  %18 = xor i1 %17, true
  call void @verifier.assume(i1 %18) #7
  %19 = call fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* nonnull %1) #7
  call void @verifier.assume(i1 %19) #7
  call void @ensure_byte_buf_has_allocated_buffer_member_in_ring_buf(%struct.aws_byte_buf* nonnull %0, %struct.aws_ring_buffer* nonnull %1) #7
  %20 = call zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #7
  call void @verifier.assume(i1 %20) #7
  %21 = bitcast %struct.aws_ring_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %21) #7
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 0
  %.pmcpy.unpack.i = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt.i, align 8
  %.pmcpy.elt2.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 1
  %.pmcpy.unpack3.i = load i8*, i8** %.pmcpy.elt2.i, align 4
  %22 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 2, i32 0
  %.pmcpy.unpack5.unpack.i = load i8*, i8** %22, align 8
  %23 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 3, i32 0
  %.pmcpy.unpack7.unpack.i = load i8*, i8** %23, align 4
  %.pmcpy.elt8.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 4
  %.pmcpy.unpack9.i = load i8*, i8** %.pmcpy.elt8.i, align 8
  %.repack.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 0
  store %struct.aws_allocator* %.pmcpy.unpack.i, %struct.aws_allocator** %.repack.i, align 8
  %.repack13.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 1
  store i8* %.pmcpy.unpack3.i, i8** %.repack13.i, align 4
  %24 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 2, i32 0
  store i8* %.pmcpy.unpack5.unpack.i, i8** %24, align 8
  %25 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 3, i32 0
  store i8* %.pmcpy.unpack7.unpack.i, i8** %25, align 4
  %.repack19.i = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 4
  store i8* %.pmcpy.unpack9.i, i8** %.repack19.i, align 8
  %.pmcpy1.elt21.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %.pmcpy1.unpack22.i = load i8*, i8** %.pmcpy1.elt21.i, align 4
  %.pmcpy1.elt23.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %.pmcpy1.unpack24.i = load i32, i32* %.pmcpy1.elt23.i, align 8
  call void @aws_ring_buffer_release(%struct.aws_ring_buffer* nonnull %1, %struct.aws_byte_buf* nonnull %0) #7
  %26 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 2
  %27 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %26) #7
  %28 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %2, i32 0, i32 3
  %29 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %28) #7
  %30 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 2
  %31 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %30) #7
  %32 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 3
  %33 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %32) #7
  %34 = call fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* nonnull %1) #7
  br i1 %34, label %35, label %verifier.error

35:                                               ; preds = %entry
  %36 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt.i, align 8, !tbaa !12
  %37 = load %struct.aws_allocator*, %struct.aws_allocator** %.repack.i, align 8, !tbaa !12
  %38 = icmp eq %struct.aws_allocator* %36, %37
  br i1 %38, label %39, label %verifier.error

39:                                               ; preds = %35
  %40 = load i8*, i8** %.pmcpy.elt2.i, align 4, !tbaa !5
  %41 = load i8*, i8** %.repack13.i, align 4, !tbaa !5
  %42 = icmp eq i8* %40, %41
  %43 = icmp eq i8* %31, %27
  %or.cond = and i1 %43, %42
  %44 = getelementptr inbounds i8, i8* %.pmcpy1.unpack22.i, i32 %.pmcpy1.unpack24.i
  %45 = icmp eq i8* %33, %44
  %or.cond2 = and i1 %45, %or.cond
  br i1 %or.cond2, label %46, label %verifier.error

46:                                               ; preds = %39
  %47 = load i8*, i8** %.pmcpy.elt8.i, align 8, !tbaa !11
  %48 = load i8*, i8** %.repack19.i, align 8, !tbaa !11
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %verifier.error

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %52 = load %struct.aws_allocator*, %struct.aws_allocator** %51, align 4, !tbaa !13
  %53 = icmp eq %struct.aws_allocator* %52, null
  %54 = load i8*, i8** %.pmcpy1.elt21.i, align 4
  %55 = icmp eq i8* %54, null
  %or.cond4 = and i1 %53, %55
  br i1 %or.cond4, label %56, label %verifier.error

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %58 = load i32, i32* %57, align 8, !tbaa !16
  %59 = icmp eq i32 %58, 0
  %60 = load i32, i32* %.pmcpy1.elt23.i, align 8
  %61 = icmp eq i32 %60, 0
  %or.cond6 = and i1 %59, %61
  br i1 %or.cond6, label %62, label %verifier.error

62:                                               ; preds = %56
  %63 = call fastcc zeroext i1 @is_front_valid_state(%struct.aws_ring_buffer* nonnull %2) #7
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = call fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* nonnull %1) #7
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %1) #7
  br i1 %67, label %68, label %verifier.error

68:                                               ; preds = %66, %64, %62
  %69 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %2) #7
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = call fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* nonnull %1) #7
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %1) #7
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = call fastcc zeroext i1 @is_ends_valid_state(%struct.aws_ring_buffer* nonnull %1) #7
  br i1 %75, label %76, label %verifier.error

76:                                               ; preds = %74, %72, %70, %68
  %77 = call fastcc zeroext i1 @is_ends_valid_state(%struct.aws_ring_buffer* nonnull %2) #7
  call void @verifier.assume(i1 %77)
  %78 = call fastcc zeroext i1 @is_empty_state(%struct.aws_ring_buffer* nonnull %1) #7
  call void @verifier.assume.not(i1 %78)
  %79 = call fastcc zeroext i1 @is_middle_valid_state(%struct.aws_ring_buffer* nonnull %1) #7
  call void @verifier.assume.not(i1 %79)
  %80 = call fastcc zeroext i1 @is_ends_valid_state(%struct.aws_ring_buffer* nonnull %1) #7
  call void @verifier.assume.not(i1 %80)
  br label %verifier.error

verifier.error:                                   ; preds = %74, %66, %56, %50, %46, %39, %35, %entry, %76
  call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nofree norecurse nounwind }
attributes #5 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #6 = { inaccessiblememonly }
attributes #7 = { nounwind }

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
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 0}
!13 = !{!14, !7, i64 12}
!14 = !{!"aws_byte_buf", !15, i64 0, !7, i64 4, !15, i64 8, !7, i64 12}
!15 = !{!"long", !8, i64 0}
!16 = !{!14, !15, i64 0}
