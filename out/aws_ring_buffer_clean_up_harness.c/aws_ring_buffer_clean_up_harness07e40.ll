; ModuleID = '../out/aws_ring_buffer_clean_up_harness.c/aws_ring_buffer_clean_up_harness07e40.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_ring_buffer = type { %struct.aws_allocator*, i8*, %struct.aws_atomic_var, %struct.aws_atomic_var, i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_atomic_var = type { i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #6
  %2 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  tail call void @verifier.assume(i1 true) #6
  %3 = bitcast %struct.aws_atomic_var* %2 to i32*
  %4 = load atomic volatile i32, i32* %3 seq_cst, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  tail call void @verifier.assume(i1 true) #6
  %7 = bitcast %struct.aws_atomic_var* %6 to i32*
  %8 = load atomic volatile i32, i32* %7 seq_cst, align 4
  %9 = inttoptr i32 %8 to i8*
  tail call void @seahorn.fn.enter() #6
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
  tail call void @seahorn.fn.enter() #6
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

declare void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  tail call void @verifier.assume(i1 true) #6
  %2 = bitcast %struct.aws_atomic_var* %0 to i32*
  %3 = load atomic volatile i32, i32* %2 seq_cst, align 4
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #3

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #3

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #3

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #4

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #5

declare i32 @verifier.nondet.5() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_ring_buffer, align 4
  tail call void @seahorn.fn.enter()
  %1 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %1)
  %2 = tail call i32 @verifier.nondet.5() #6
  tail call void @seahorn.fn.enter() #6
  %3 = bitcast %struct.aws_ring_buffer* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #6
  call void @ensure_ring_buffer_has_allocated_members(%struct.aws_ring_buffer* nonnull %0, i32 %2) #6
  %4 = call fastcc zeroext i1 @aws_ring_buffer_is_valid(%struct.aws_ring_buffer* nonnull %0) #6
  call void @verifier.assume(i1 %4) #6
  call void @aws_ring_buffer_clean_up(%struct.aws_ring_buffer* nonnull %0) #6
  %5 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 0
  %6 = load %struct.aws_allocator*, %struct.aws_allocator** %5, align 4, !tbaa !12
  %7 = icmp eq %struct.aws_allocator* %6, null
  br i1 %7, label %8, label %verifier.error

8:                                                ; preds = %entry
  %9 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 1
  %10 = load i8*, i8** %9, align 4, !tbaa !5
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %verifier.error

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 2
  %14 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %13) #6
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %verifier.error

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 3
  %18 = call fastcc i8* @aws_atomic_load_ptr(%struct.aws_atomic_var* nonnull %17) #6
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %verifier.error

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.aws_ring_buffer, %struct.aws_ring_buffer* %0, i32 0, i32 4
  %22 = load i8*, i8** %21, align 4, !tbaa !11
  %23 = icmp eq i8* %22, null
  call void @verifier.assume.not(i1 %23)
  br label %verifier.error

verifier.error:                                   ; preds = %16, %12, %8, %entry, %20
  call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inaccessiblememonly nofree norecurse nounwind }
attributes #4 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #5 = { inaccessiblememonly }
attributes #6 = { nounwind }

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
