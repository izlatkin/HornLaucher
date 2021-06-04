; ModuleID = '../out/s_remove_node_override.c/s_remove_node_override5a854.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/stubs/s_remove_node_override.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_priority_queue = type { i32 (i8*, i8*)*, %struct.aws_array_list, %struct.aws_array_list }
%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

declare zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue*) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_get_at(%struct.aws_array_list* noalias nocapture readonly %0, i8* %1, i32 %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6, !noalias !5
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !8, !alias.scope !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %aws_array_list_length.exit, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %9 = load i8*, i8** %8, align 4, !tbaa !14, !alias.scope !5
  %10 = icmp eq i8* %9, null
  tail call void @verifier.assume.not(i1 %10) #6, !noalias !5
  br label %aws_array_list_length.exit

aws_array_list_length.exit:                       ; preds = %3, %7
  %11 = icmp ugt i32 %5, %2
  br i1 %11, label %12, label %19

12:                                               ; preds = %aws_array_list_length.exit
  %13 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %14 = load i8*, i8** %13, align 4, !tbaa !14
  %15 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !15
  %17 = mul i32 %16, %2
  %18 = getelementptr inbounds i8, i8* %14, i32 %17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 %18, i32 %16, i1 false) #6
  br label %20

19:                                               ; preds = %aws_array_list_length.exit
  tail call void @seahorn.fn.enter() #6
  tail call void @aws_raise_error_private(i32 10) #6
  br label %20

20:                                               ; preds = %19, %12
  %.0 = phi i32 [ 0, %12 ], [ -1, %19 ]
  ret i32 %.0
}

declare void @aws_raise_error_private(i32) local_unnamed_addr #0

declare %struct.aws_priority_queue* @verifier.nondet.1() local_unnamed_addr

declare i8* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

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
  tail call void @seahorn.fn.enter()
  %0 = tail call %struct.aws_priority_queue* @verifier.nondet.1()
  %1 = tail call i8* @verifier.nondet.2()
  %2 = tail call i32 @verifier.nondet.3()
  %3 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %3)
  tail call void @seahorn.fn.enter() #6
  %4 = tail call zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue* %0) #6
  %.not = xor i1 %4, true
  %5 = icmp eq i8* %1, null
  %or.cond = or i1 %5, %.not
  br i1 %or.cond, label %verifier.error, label %6

6:                                                ; preds = %entry
  %7 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1
  %8 = tail call fastcc i32 @aws_array_list_get_at(%struct.aws_array_list* nonnull %7, i8* nonnull %1, i32 %2) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue* %0) #6
  tail call void @verifier.assume.not(i1 %11)
  br label %verifier.error

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !16
  %15 = add i32 %14, -1
  store i32 %15, i32* %13, align 4, !tbaa !16
  %16 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 2, i32 4
  %17 = load i8*, i8** %16, align 4, !tbaa !18
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 2, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !19
  %22 = add i32 %21, -1
  store i32 %22, i32* %20, align 4, !tbaa !19
  br label %23

23:                                               ; preds = %19, %12
  %24 = tail call zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue* nonnull %0) #6
  tail call void @verifier.assume.not(i1 %24)
  br label %verifier.error

verifier.error:                                   ; preds = %entry, %23, %10
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inaccessiblememonly nofree norecurse nounwind }
attributes #3 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #4 = { inaccessiblememonly }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"aws_array_list_length: argument 0"}
!7 = distinct !{!7, !"aws_array_list_length"}
!8 = !{!9, !13, i64 8}
!9 = !{!"aws_array_list", !10, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !10, i64 16}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"long", !11, i64 0}
!14 = !{!9, !10, i64 16}
!15 = !{!9, !13, i64 12}
!16 = !{!17, !13, i64 12}
!17 = !{!"aws_priority_queue", !10, i64 0, !9, i64 4, !9, i64 24}
!18 = !{!17, !10, i64 40}
!19 = !{!17, !13, i64 32}
