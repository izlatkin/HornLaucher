; ModuleID = '../out2/make_common_data_structures.c/make_common_data_structures77d3d.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/sources/make_common_data_structures.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_ring_buffer = type { %struct.aws_allocator*, i8*, %struct.aws_atomic_var, %struct.aws_atomic_var, i8* }
%struct.aws_atomic_var = type { i8* }
%struct.aws_byte_cursor = type { i32, i8* }
%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }
%struct.aws_linked_list = type { %struct.aws_linked_list_node, %struct.aws_linked_list_node }
%struct.aws_linked_list_node = type { %struct.aws_linked_list_node*, %struct.aws_linked_list_node* }
%struct.aws_priority_queue = type { i32 (i8*, i8*)*, %struct.aws_array_list, %struct.aws_array_list }
%struct.aws_hash_table = type { %struct.hash_table_state* }
%struct.hash_table_state = type { i64 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*, %struct.aws_allocator*, i32, i32, i32, i32, double, [0 x %struct.hash_table_entry] }
%struct.hash_table_entry = type { %struct.aws_hash_element, i64 }
%struct.aws_hash_element = type { i8*, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_is_bounded(%struct.aws_byte_buf* nocapture readnone %0, i32 %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_buf_has_allocator(%struct.aws_byte_buf* nocapture readnone %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  ret void
}

declare %struct.aws_allocator* @aws_default_allocator() local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = icmp eq %struct.aws_byte_buf* %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi %struct.aws_allocator* [ %6, %5 ], [ null, %3 ]
  %9 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* %8, %struct.aws_allocator** %9, align 4, !tbaa !5
  %10 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %11 = load i32, i32* %10, align 4, !tbaa !11
  %12 = tail call i8* @malloc(i32 %11) #11
  %13 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %12, i8** %13, align 4, !tbaa !12
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

declare zeroext i1 @nondet_bool(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind allocsize(0)
declare noalias i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer* %0, i32 %1) unnamed_addr #0 {
  %3 = tail call i32 @verifier.nondet.13() #10
  %4 = tail call i32 @verifier.nondet.13() #10
  %5 = tail call i32 @verifier.nondet.13() #10
  %6 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %7 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  %8 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  store %struct.aws_allocator* %7, %struct.aws_allocator** %8, align 4, !tbaa !13
  %.off = add i32 %1, -1
  %9 = icmp ult i32 %.off, 8388607
  tail call void @verifier.assume(i1 %9)
  %10 = tail call i8* @malloc(i32 %1) #11
  %11 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  store i8* %10, i8** %11, align 4, !tbaa !16
  %12 = icmp ult i32 %6, %1
  tail call void @verifier.assume(i1 %12)
  %13 = icmp ult i32 %5, %1
  tail call void @verifier.assume(i1 %13)
  %14 = icmp eq i8* %10, null
  %15 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  br i1 %14, label %27, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, i8* %10, i32 %4
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %18 = ptrtoint i8* %17 to i32
  %19 = bitcast %struct.aws_atomic_var* %15 to i32*
  store atomic volatile i32 %18, i32* %19 seq_cst, align 4
  %20 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  %21 = load i8*, i8** %11, align 4, !tbaa !16
  %22 = getelementptr inbounds i8, i8* %21, i32 %3
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %23 = ptrtoint i8* %22 to i32
  %24 = bitcast %struct.aws_atomic_var* %20 to i32*
  store atomic volatile i32 %23, i32* %24 seq_cst, align 4
  %25 = load i8*, i8** %11, align 4, !tbaa !16
  %26 = getelementptr inbounds i8, i8* %25, i32 %1
  br label %31

27:                                               ; preds = %2
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %28 = bitcast %struct.aws_atomic_var* %15 to i32*
  store atomic volatile i32 0, i32* %28 seq_cst, align 4
  %29 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %30 = bitcast %struct.aws_atomic_var* %29 to i32*
  store atomic volatile i32 0, i32* %30 seq_cst, align 4
  br label %31

31:                                               ; preds = %27, %16
  %.sink = phi i8* [ null, %27 ], [ %26, %16 ]
  %32 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  store i8* %.sink, i8** %32, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_atomic_store_ptr(%struct.aws_atomic_var* %0, i8* %1) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %3 = ptrtoint i8* %1 to i32
  %4 = bitcast %struct.aws_atomic_var* %0 to i32*
  store atomic volatile i32 %3, i32* %4 seq_cst, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_byte_buf_has_allocated_buffer_member_in_range(%struct.aws_byte_buf* nocapture %0, i8* %1, i8* %2) unnamed_addr #0 {
  %4 = tail call i32 @verifier.nondet.13() #10
  %5 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %6 = ptrtoint i8* %2 to i32
  %7 = ptrtoint i8* %1 to i32
  %8 = sub i32 %6, %7
  %9 = icmp ult i32 %5, %8
  tail call void @verifier.assume(i1 %9)
  %10 = getelementptr inbounds i8, i8* %1, i32 %4
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %10, i8** %11, align 4, !tbaa !12
  %12 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !11
  %14 = icmp ne i32 %13, 0
  %15 = ptrtoint i8* %10 to i32
  %16 = sub i32 %6, %15
  %17 = icmp ule i32 %13, %16
  %18 = and i1 %14, %17
  tail call void @verifier.assume(i1 %18)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_byte_buf_has_allocated_buffer_member_in_ring_buf(%struct.aws_byte_buf* nocapture %0, %struct.aws_ring_buffer* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %3 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi %struct.aws_allocator* [ %5, %4 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  store %struct.aws_allocator* %7, %struct.aws_allocator** %8, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 2
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %10 = bitcast %struct.aws_atomic_var* %9 to i32*
  %11 = load atomic volatile i32, i32* %10 seq_cst, align 4
  %12 = inttoptr i32 %11 to i8*
  %13 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 3
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %14 = bitcast %struct.aws_atomic_var* %13 to i32*
  %15 = load atomic volatile i32, i32* %14 seq_cst, align 4
  %16 = inttoptr i32 %15 to i8*
  %17 = icmp ult i8* %12, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %6
  %19 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %19, label %20, label %38

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 4
  %22 = load i8*, i8** %21, align 4, !tbaa !17
  %23 = icmp ugt i8* %22, %16
  tail call void @verifier.assume(i1 %23)
  %24 = tail call i32 @verifier.nondet.13() #10
  %25 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %26 = ptrtoint i8* %22 to i32
  %27 = sub i32 %26, %15
  %28 = icmp ult i32 %25, %27
  tail call void @verifier.assume(i1 %28) #10
  %29 = getelementptr inbounds i8, i8* %16, i32 %24
  %30 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %29, i8** %30, align 4, !tbaa !12
  %31 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %32 = load i32, i32* %31, align 4, !tbaa !11
  %33 = icmp ne i32 %32, 0
  %34 = ptrtoint i8* %29 to i32
  %35 = sub i32 %26, %34
  %36 = icmp ule i32 %32, %35
  %37 = and i1 %33, %36
  tail call void @verifier.assume(i1 %37) #10
  br label %70

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %1, i32 0, i32 1
  %40 = load i8*, i8** %39, align 4, !tbaa !16
  %41 = icmp ult i8* %40, %12
  tail call void @verifier.assume(i1 %41)
  %42 = tail call i32 @verifier.nondet.13() #10
  %43 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %44 = ptrtoint i8* %40 to i32
  %45 = sub i32 %11, %44
  %46 = icmp ult i32 %43, %45
  tail call void @verifier.assume(i1 %46) #10
  %47 = getelementptr inbounds i8, i8* %40, i32 %42
  %48 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %47, i8** %48, align 4, !tbaa !12
  %49 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %50 = load i32, i32* %49, align 4, !tbaa !11
  %51 = icmp ne i32 %50, 0
  %52 = ptrtoint i8* %47 to i32
  %53 = sub i32 %11, %52
  %54 = icmp ule i32 %50, %53
  %55 = and i1 %51, %54
  tail call void @verifier.assume(i1 %55) #10
  br label %70

56:                                               ; preds = %6
  %57 = tail call i32 @verifier.nondet.13() #10
  %58 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %59 = sub i32 %11, %15
  %60 = icmp ult i32 %58, %59
  tail call void @verifier.assume(i1 %60) #10
  %61 = getelementptr inbounds i8, i8* %16, i32 %57
  %62 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  store i8* %61, i8** %62, align 4, !tbaa !12
  %63 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %64 = load i32, i32* %63, align 4, !tbaa !11
  %65 = icmp ne i32 %64, 0
  %66 = ptrtoint i8* %61 to i32
  %67 = sub i32 %11, %66
  %68 = icmp ule i32 %64, %67
  %69 = and i1 %65, %68
  tail call void @verifier.assume(i1 %69) #10
  br label %70

70:                                               ; preds = %56, %38, %20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 seq_cst, align 4
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_byte_cursor_is_bounded(%struct.aws_byte_cursor* nocapture readnone %0, i32 %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = icmp eq %struct.aws_byte_cursor* %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !18
  %6 = tail call i8* @malloc(i32 %5) #11
  %7 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  store i8* %6, i8** %7, align 4, !tbaa !20
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_array_list_is_bounded(%struct.aws_array_list* nocapture readonly %0, i32 %1, i32 %2) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %5 = load i32, i32* %4, align 4, !tbaa !21
  %6 = icmp ule i32 %5, %2
  %7 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !23
  %9 = icmp ule i32 %8, %1
  %10 = and i1 %6, %9
  ret i1 %10
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_array_list_has_allocated_data_member(%struct.aws_array_list* nocapture %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !24
  %4 = tail call i8* @malloc(i32 %3) #11
  %5 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  store i8* %4, i8** %5, align 4, !tbaa !25
  %6 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi %struct.aws_allocator* [ %8, %7 ], [ null, %1 ]
  %11 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 0
  store %struct.aws_allocator* %10, %struct.aws_allocator** %11, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_linked_list_is_allocated(%struct.aws_linked_list* %0, i32 %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %3 = getelementptr inbounds %struct.aws_linked_list, %struct.aws_linked_list* %0, i32 0, i32 0, i32 1
  store %struct.aws_linked_list_node* null, %struct.aws_linked_list_node** %3, align 4, !tbaa !27
  %4 = getelementptr inbounds %struct.aws_linked_list, %struct.aws_linked_list* %0, i32 0, i32 1, i32 0
  store %struct.aws_linked_list_node* null, %struct.aws_linked_list_node** %4, align 4, !tbaa !30
  %5 = getelementptr inbounds %struct.aws_linked_list, %struct.aws_linked_list* %0, i32 0, i32 0
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %7 = tail call dereferenceable_or_null(8) i8* @malloc(i32 8) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %._crit_edge, label %.lr.ph19

.lr.ph:                                           ; preds = %.lr.ph19
  %9 = tail call dereferenceable_or_null(8) i8* @malloc(i32 8) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %._crit_edge.loopexit, label %.lr.ph19, !llvm.loop !31

.lr.ph19:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %11 = phi i8* [ %9, %.lr.ph ], [ %7, %.lr.ph.preheader ]
  %.02718 = phi %struct.aws_linked_list_node* [ %12, %.lr.ph ], [ %5, %.lr.ph.preheader ]
  %.01817 = phi i32 [ %16, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %12 = bitcast i8* %11 to %struct.aws_linked_list_node*
  %13 = bitcast %struct.aws_linked_list_node* %.02718 to i8**
  store i8* %11, i8** %13, align 4, !tbaa !33
  %14 = getelementptr inbounds i8, i8* %11, i32 4
  %15 = bitcast i8* %14 to %struct.aws_linked_list_node**
  store %struct.aws_linked_list_node* %.02718, %struct.aws_linked_list_node** %15, align 4, !tbaa !34
  %16 = add nuw i32 %.01817, 1
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %.lr.ph, label %._crit_edge.loopexit.split.loop.exit, !llvm.loop !31

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph19
  %18 = bitcast i8* %11 to %struct.aws_linked_list_node*
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %19 = bitcast i8* %11 to %struct.aws_linked_list_node*
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.preheader, %._crit_edge.loopexit.split.loop.exit, %2
  %.02.lcssa = phi %struct.aws_linked_list_node* [ %5, %2 ], [ %18, %._crit_edge.loopexit.split.loop.exit ], [ %5, %.lr.ph.preheader ], [ %19, %._crit_edge.loopexit ]
  %20 = getelementptr inbounds %struct.aws_linked_list, %struct.aws_linked_list* %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %.02.lcssa, i32 0, i32 0
  store %struct.aws_linked_list_node* %20, %struct.aws_linked_list_node** %21, align 4, !tbaa !33
  %22 = getelementptr inbounds %struct.aws_linked_list, %struct.aws_linked_list* %0, i32 0, i32 1, i32 1
  store %struct.aws_linked_list_node* %.02.lcssa, %struct.aws_linked_list_node** %22, align 4, !tbaa !35
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_priority_queue_is_bounded(%struct.aws_priority_queue* nocapture readonly %0, i32 %1, i32 %2) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_priority_queue_has_allocated_members(%struct.aws_priority_queue* nocapture %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
  %2 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !24
  %4 = tail call i8* @malloc(i32 %3) #11
  %5 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 4
  store i8* %4, i8** %5, align 4, !tbaa !25
  %6 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %6, label %ensure_array_list_has_allocated_data_member.exit, label %7

7:                                                ; preds = %1
  %8 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %ensure_array_list_has_allocated_data_member.exit

ensure_array_list_has_allocated_data_member.exit: ; preds = %1, %7
  %9 = phi %struct.aws_allocator* [ %8, %7 ], [ null, %1 ]
  %10 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 0
  store %struct.aws_allocator* %9, %struct.aws_allocator** %10, align 4, !tbaa !26
  tail call void @seahorn.fn.enter() #10
  %11 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 2, i32 1
  %12 = load i32, i32* %11, align 4, !tbaa !24
  %13 = tail call i8* @malloc(i32 %12) #11
  %14 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 2, i32 4
  store i8* %13, i8** %14, align 4, !tbaa !25
  %15 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %15, label %ensure_array_list_has_allocated_data_member.exit1, label %16

16:                                               ; preds = %ensure_array_list_has_allocated_data_member.exit
  %17 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %ensure_array_list_has_allocated_data_member.exit1

ensure_array_list_has_allocated_data_member.exit1: ; preds = %ensure_array_list_has_allocated_data_member.exit, %16
  %18 = phi %struct.aws_allocator* [ %17, %16 ], [ null, %ensure_array_list_has_allocated_data_member.exit ]
  %19 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 2, i32 0
  store %struct.aws_allocator* %18, %struct.aws_allocator** %19, align 4, !tbaa !26
  %20 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 0
  store i32 (i8*, i8*)* @nondet_compare, i32 (i8*, i8*)** %20, align 4, !tbaa !36
  ret void
}

declare i32 @nondet_compare(i8*, i8*) #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_allocated_hash_table(%struct.aws_hash_table* %0, i32 %1) unnamed_addr #0 {
  %3 = tail call i32 @verifier.nondet.13() #10
  %4 = tail call i32 @verifier.nondet.13() #10
  %5 = tail call i32 @verifier.nondet.13() #10
  %6 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %7 = alloca i32, align 4
  %8 = icmp eq %struct.aws_hash_table* %0, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = icmp ule i32 %6, %1
  tail call void @verifier.assume(i1 %10)
  tail call void @seahorn.fn.enter() #10
  %11 = tail call i32 @llvm.ctpop.i32(i32 %5) #10, !range !38
  %12 = icmp eq i32 %11, 1
  tail call void @verifier.assume(i1 %12)
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #10
  %14 = call i32 @hash_table_state_required_bytes(i32 %4, i32* nonnull %7) #10
  %15 = icmp eq i32 %14, 0
  call void @verifier.assume(i1 %15)
  %16 = load i32, i32* %7, align 4, !tbaa !39
  %17 = call i8* @malloc(i32 %16) #11
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds i8, i8* %17, i32 20
  %21 = bitcast i8* %20 to i32*
  store i32 %3, i32* %21, align 4, !tbaa !39
  %22 = bitcast %struct.aws_hash_table* %0 to i8**
  store i8* %17, i8** %22, align 4, !tbaa !40
  br label %25

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  store %struct.hash_table_state* null, %struct.hash_table_state** %24, align 4, !tbaa !40
  br label %25

25:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #10
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_is_power_of_two(i32 %0) unnamed_addr #4 {
  tail call void @seahorn.fn.enter() #10
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !38
  %3 = icmp eq i32 %2, 1
  ret i1 %3
}

declare i32 @hash_table_state_required_bytes(i32, i32*) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_hash_table_has_valid_destroy_functions(%struct.aws_hash_table* nocapture readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  %3 = select i1 %2, void (i8*)* null, void (i8*)* @hash_proof_destroy_noop
  %4 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %5 = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4, !tbaa !40
  %6 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 2
  store void (i8*)* %3, void (i8*)** %6, align 4, !tbaa !42
  %7 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  %8 = select i1 %7, void (i8*)* null, void (i8*)* @hash_proof_destroy_noop
  %9 = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4, !tbaa !40
  %10 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %9, i32 0, i32 3
  store void (i8*)* %8, void (i8*)** %10, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @hash_proof_destroy_noop(i8* nocapture readnone %0) #0 {
  tail call void @seahorn.fn.enter() #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_has_an_empty_slot(%struct.aws_hash_table* nocapture readonly %0, i32* nocapture %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %3 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %4 = load %struct.hash_table_state*, %struct.hash_table_state** %3, align 4, !tbaa !40
  %5 = tail call i32 @verifier.nondet.13() #10
  %6 = tail call i32 @verifier.nondet.13() #10
  %7 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 6
  %9 = load i32, i32* %8, align 4, !tbaa !39
  %10 = icmp ne i32 %9, 0
  tail call void @verifier.assume(i1 %10) #10
  %11 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %4, i32 0, i32 5
  %12 = load i32, i32* %11, align 4, !tbaa !39
  %13 = icmp ult i32 %7, %12
  tail call void @verifier.assume(i1 %13) #10
  store i32 %6, i32* %1, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @hash_table_state_has_an_empty_slot(%struct.hash_table_state* nocapture readonly %0, i32* nocapture %1) unnamed_addr #0 {
  %3 = tail call i32 @verifier.nondet.13() #10
  %4 = tail call i32 @verifier.nondet.13() #10
  %5 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %6 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 6
  %7 = load i32, i32* %6, align 4, !tbaa !39
  %8 = icmp ne i32 %7, 0
  tail call void @verifier.assume(i1 %8)
  %9 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %0, i32 0, i32 5
  %10 = load i32, i32* %9, align 4, !tbaa !39
  %11 = icmp ult i32 %5, %10
  tail call void @verifier.assume(i1 %11)
  store i32 %4, i32* %1, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_string_is_allocated_nondet_length() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %1 = tail call i32 @verifier.nondet.13() #10
  %2 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %3 = icmp ult i32 %2, -14
  tail call void @verifier.assume(i1 %3) #10
  tail call void @seahorn.fn.enter() #10
  %4 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %4, label %5, label %nondet_allocate_string_bounded_length.exit

5:                                                ; preds = %0
  %6 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %nondet_allocate_string_bounded_length.exit

nondet_allocate_string_bounded_length.exit:       ; preds = %0, %5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @nondet_allocate_string_bounded_length(i32 %0) unnamed_addr #0 {
  %2 = tail call i32 @verifier.nondet.13() #10
  %3 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %4 = icmp ult i32 %3, %0
  tail call void @verifier.assume(i1 %4)
  tail call void @seahorn.fn.enter() #10
  %5 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %5, label %6, label %ensure_string_is_allocated.exit

6:                                                ; preds = %1
  %7 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %ensure_string_is_allocated.exit

ensure_string_is_allocated.exit:                  ; preds = %1, %6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_string_is_allocated(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #10
  %2 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #10
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call %struct.aws_allocator* @aws_default_allocator() #10
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ensure_c_str_is_allocated(i32 %0) unnamed_addr #0 {
  %2 = tail call i32 @verifier.nondet.13() #10
  %3 = tail call i32 @verifier.nondet.13() #10
  %4 = tail call i32 @verifier.nondet.13() #10
  %5 = tail call i32 @verifier.nondet.13() #10
  tail call void @seahorn.fn.enter() #10
  %6 = icmp ne i32 %5, 0
  %7 = icmp ule i32 %4, %0
  %8 = and i1 %7, %6
  tail call void @verifier.assume(i1 %8)
  tail call void @verifier.assume(i1 true)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_atomic_store_ptr_explicit(%struct.aws_atomic_var* %0, i8* %1, i32 %2) unnamed_addr #4 {
NodeBlock:
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
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

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_atomic_priv_xlate_order(i32 %0) unnamed_addr #4 {
NodeBlock7:
  tail call void @seahorn.fn.enter() #10
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
  tail call void @abort() #12
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
define internal fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %0, i32 %1) unnamed_addr #4 {
NodeBlock:
  tail call void @seahorn.fn.enter() #10
  tail call void @seahorn.fn.enter() #10
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

define i32 @main() local_unnamed_addr {
  tail call void @seahorn.fn.enter()
  %1 = tail call %struct.aws_byte_buf* @verifier.nondet.1()
  %2 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_byte_buf_is_bounded(%struct.aws_byte_buf* %1, i32 %2)
  %3 = tail call %struct.aws_byte_buf* @verifier.nondet.1()
  tail call fastcc void @aws_byte_buf_has_allocator(%struct.aws_byte_buf* %3)
  %4 = tail call %struct.aws_byte_buf* @verifier.nondet.1()
  tail call fastcc void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf* %4)
  %5 = tail call %struct.aws_ring_buffer* @verifier.nondet.3()
  %6 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer* %5, i32 %6)
  %7 = tail call %struct.aws_atomic_var* @verifier.nondet.4()
  %8 = tail call i8* @verifier.nondet.5()
  tail call fastcc void @aws_atomic_store_ptr(%struct.aws_atomic_var* %7, i8* %8)
  %9 = tail call %struct.aws_byte_buf* @verifier.nondet.1()
  %10 = tail call i8* @verifier.nondet.5()
  %11 = tail call i8* @verifier.nondet.5()
  tail call fastcc void @ensure_byte_buf_has_allocated_buffer_member_in_range(%struct.aws_byte_buf* %9, i8* %10, i8* %11)
  %12 = tail call %struct.aws_byte_buf* @verifier.nondet.1()
  %13 = tail call %struct.aws_ring_buffer* @verifier.nondet.3()
  tail call fastcc void @ensure_byte_buf_has_allocated_buffer_member_in_ring_buf(%struct.aws_byte_buf* %12, %struct.aws_ring_buffer* %13)
  %14 = tail call %struct.aws_atomic_var* @verifier.nondet.4()
  %15 = tail call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %14)
  %16 = tail call %struct.aws_byte_cursor* @verifier.nondet.6()
  %17 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_byte_cursor_is_bounded(%struct.aws_byte_cursor* %16, i32 %17)
  %18 = tail call %struct.aws_byte_cursor* @verifier.nondet.6()
  tail call fastcc void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor* %18)
  %19 = tail call %struct.aws_array_list* @verifier.nondet.7()
  %20 = tail call i32 @verifier.nondet.2()
  %21 = tail call i32 @verifier.nondet.2()
  %22 = tail call fastcc i1 @aws_array_list_is_bounded(%struct.aws_array_list* %19, i32 %20, i32 %21)
  %23 = tail call %struct.aws_array_list* @verifier.nondet.7()
  tail call fastcc void @ensure_array_list_has_allocated_data_member(%struct.aws_array_list* %23)
  %24 = tail call %struct.aws_linked_list* @verifier.nondet.8()
  %25 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @ensure_linked_list_is_allocated(%struct.aws_linked_list* %24, i32 %25)
  %26 = tail call %struct.aws_priority_queue* @verifier.nondet.9()
  %27 = tail call i32 @verifier.nondet.2()
  %28 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_priority_queue_is_bounded(%struct.aws_priority_queue* %26, i32 %27, i32 %28)
  %29 = tail call %struct.aws_priority_queue* @verifier.nondet.9()
  tail call fastcc void @ensure_priority_queue_has_allocated_members(%struct.aws_priority_queue* %29)
  %30 = tail call %struct.aws_hash_table* @verifier.nondet.10()
  %31 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @ensure_allocated_hash_table(%struct.aws_hash_table* %30, i32 %31)
  %32 = tail call i32 @verifier.nondet.2()
  %33 = tail call fastcc i1 @aws_is_power_of_two(i32 %32)
  %34 = tail call %struct.aws_hash_table* @verifier.nondet.10()
  tail call fastcc void @ensure_hash_table_has_valid_destroy_functions(%struct.aws_hash_table* %34)
  %35 = tail call i8* @verifier.nondet.5()
  tail call void @hash_proof_destroy_noop(i8* %35)
  %36 = tail call %struct.aws_hash_table* @verifier.nondet.10()
  %37 = tail call i32* @verifier.nondet.11()
  tail call fastcc void @aws_hash_table_has_an_empty_slot(%struct.aws_hash_table* %36, i32* %37)
  %38 = tail call %struct.hash_table_state* @verifier.nondet.12()
  %39 = tail call i32* @verifier.nondet.11()
  tail call fastcc void @hash_table_state_has_an_empty_slot(%struct.hash_table_state* %38, i32* %39)
  tail call fastcc void @ensure_string_is_allocated_nondet_length()
  %40 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @nondet_allocate_string_bounded_length(i32 %40)
  %41 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @ensure_string_is_allocated(i32 %41)
  %42 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @ensure_c_str_is_allocated(i32 %42)
  %43 = tail call %struct.aws_atomic_var* @verifier.nondet.4()
  %44 = tail call i8* @verifier.nondet.5()
  %45 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_atomic_store_ptr_explicit(%struct.aws_atomic_var* %43, i8* %44, i32 %45)
  %46 = tail call i32 @verifier.nondet.2()
  %47 = tail call fastcc i32 @aws_atomic_priv_xlate_order(i32 %46)
  %48 = tail call %struct.aws_atomic_var* @verifier.nondet.4()
  %49 = tail call i32 @verifier.nondet.2()
  %50 = tail call fastcc i8* @aws_atomic_load_ptr_explicit(%struct.aws_atomic_var* %48, i32 %49)
  ret i32 42
}

declare %struct.aws_byte_buf* @verifier.nondet.1() local_unnamed_addr

declare i32 @verifier.nondet.2() local_unnamed_addr

declare %struct.aws_ring_buffer* @verifier.nondet.3() local_unnamed_addr

declare %struct.aws_atomic_var* @verifier.nondet.4() local_unnamed_addr

declare i8* @verifier.nondet.5() local_unnamed_addr

declare %struct.aws_byte_cursor* @verifier.nondet.6() local_unnamed_addr

declare %struct.aws_array_list* @verifier.nondet.7() local_unnamed_addr

declare %struct.aws_linked_list* @verifier.nondet.8() local_unnamed_addr

declare %struct.aws_priority_queue* @verifier.nondet.9() local_unnamed_addr

declare %struct.aws_hash_table* @verifier.nondet.10() local_unnamed_addr

declare i32* @verifier.nondet.11() local_unnamed_addr

declare %struct.hash_table_state* @verifier.nondet.12() local_unnamed_addr

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

declare i32 @verifier.nondet.13() local_unnamed_addr

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inaccessiblememonly nofree norecurse nounwind }
attributes #7 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #8 = { inaccessiblememonly }
attributes #9 = { nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!5 = !{!6, !10, i64 12}
!6 = !{!"aws_byte_buf", !7, i64 0, !10, i64 4, !7, i64 8, !10, i64 12}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 4}
!13 = !{!14, !10, i64 0}
!14 = !{!"aws_ring_buffer", !10, i64 0, !10, i64 4, !15, i64 8, !15, i64 12, !10, i64 16}
!15 = !{!"aws_atomic_var", !10, i64 0}
!16 = !{!14, !10, i64 4}
!17 = !{!14, !10, i64 16}
!18 = !{!19, !7, i64 0}
!19 = !{!"aws_byte_cursor", !7, i64 0, !10, i64 4}
!20 = !{!19, !10, i64 4}
!21 = !{!22, !7, i64 12}
!22 = !{!"aws_array_list", !10, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16}
!23 = !{!22, !7, i64 8}
!24 = !{!22, !7, i64 4}
!25 = !{!22, !10, i64 16}
!26 = !{!22, !10, i64 0}
!27 = !{!28, !10, i64 4}
!28 = !{!"aws_linked_list", !29, i64 0, !29, i64 8}
!29 = !{!"aws_linked_list_node", !10, i64 0, !10, i64 4}
!30 = !{!28, !10, i64 8}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!29, !10, i64 0}
!34 = !{!29, !10, i64 4}
!35 = !{!28, !10, i64 12}
!36 = !{!37, !10, i64 0}
!37 = !{!"aws_priority_queue", !10, i64 0, !22, i64 4, !22, i64 24}
!38 = !{i32 0, i32 33}
!39 = !{!7, !7, i64 0}
!40 = !{!41, !10, i64 0}
!41 = !{!"aws_hash_table", !10, i64 0}
!42 = !{!10, !10, i64 0}
