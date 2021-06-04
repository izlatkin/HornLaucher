; ModuleID = '../out/aws_linked_list_prev_harness.c/aws_linked_list_prev_harness101a0.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_linked_list_prev/aws_linked_list_prev_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_linked_list_node = type { %struct.aws_linked_list_node*, %struct.aws_linked_list_node* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc %struct.aws_linked_list_node* @aws_linked_list_prev(%struct.aws_linked_list_node* nocapture readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %2 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 1
  %3 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %2, align 4, !tbaa !5
  ret %struct.aws_linked_list_node* %3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_linked_list_node_prev_is_valid(%struct.aws_linked_list_node* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %2 = icmp eq %struct.aws_linked_list_node* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 1
  %5 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !5
  %6 = icmp eq %struct.aws_linked_list_node* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %5, i32 0, i32 0
  %9 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %8, align 4, !tbaa !10
  %10 = icmp eq %struct.aws_linked_list_node* %9, %0
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i1 [ false, %3 ], [ false, %1 ], [ %10, %7 ]
  ret i1 %12
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_linked_list_node_next_is_valid(%struct.aws_linked_list_node* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %2 = icmp eq %struct.aws_linked_list_node* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 0
  %5 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  %6 = icmp eq %struct.aws_linked_list_node* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %5, i32 0, i32 1
  %9 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %8, align 4, !tbaa !5
  %10 = icmp eq %struct.aws_linked_list_node* %9, %0
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i1 [ false, %3 ], [ false, %1 ], [ %10, %7 ]
  ret i1 %12
}

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #2

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #2

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #2

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #3

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #4

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_linked_list_node, align 4
  %1 = alloca %struct.aws_linked_list_node, align 4
  tail call void @seahorn.fn.enter()
  %2 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %2)
  tail call void @seahorn.fn.enter() #5
  %3 = bitcast %struct.aws_linked_list_node* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = bitcast %struct.aws_linked_list_node* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 1
  store %struct.aws_linked_list_node* %1, %struct.aws_linked_list_node** %5, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %1, i32 0, i32 0
  store %struct.aws_linked_list_node* %0, %struct.aws_linked_list_node** %6, align 4, !tbaa !10
  %7 = call fastcc %struct.aws_linked_list_node* @aws_linked_list_prev(%struct.aws_linked_list_node* nonnull %0) #5
  %8 = call fastcc zeroext i1 @aws_linked_list_node_prev_is_valid(%struct.aws_linked_list_node* nonnull %0) #5
  br i1 %8, label %9, label %verifier.error

9:                                                ; preds = %entry
  %10 = call fastcc zeroext i1 @aws_linked_list_node_next_is_valid(%struct.aws_linked_list_node* %7) #5
  br i1 %10, label %11, label %verifier.error

11:                                               ; preds = %9
  %12 = icmp eq %struct.aws_linked_list_node* %7, %1
  call void @verifier.assume.not(i1 %12)
  br label %verifier.error

verifier.error:                                   ; preds = %9, %entry, %11
  call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inaccessiblememonly nofree norecurse nounwind }
attributes #3 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #4 = { inaccessiblememonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"aws_linked_list_node", !7, i64 0, !7, i64 4}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 0}
