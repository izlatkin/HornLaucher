; ModuleID = '../out2/s_remove_node_override.c/s_remove_node_override5a854.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/stubs/s_remove_node_override.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_priority_queue = type { i32 (i8*, i8*)*, %struct.aws_array_list, %struct.aws_array_list }
%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }

@.str.1 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"/tmp/aws-c-common/include/aws/common/array_list.inl\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @__CPROVER_file_local_priority_queue_c_s_remove_node(%struct.aws_priority_queue* %0, i8* %1, i32 %2) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #8
  %4 = tail call zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue* %0) #8
  tail call void @seahorn.fn.enter() #8, !noalias !5
  tail call void @seahorn.fn.enter() #8, !noalias !8
  %5 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 2
  %6 = load i32, i32* %5, align 4, !tbaa !11, !alias.scope !8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %aws_array_list_length.exit.i, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 4
  %10 = load i8*, i8** %9, align 4, !tbaa !17, !alias.scope !8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %aws_array_list_length.exit.i

12:                                               ; preds = %8
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i32 312) #9, !noalias !8
  unreachable

aws_array_list_length.exit.i:                     ; preds = %8, %3
  %13 = icmp ugt i32 %6, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %aws_array_list_length.exit.i
  tail call void @seahorn.fn.enter() #8, !noalias !5
  tail call void @aws_raise_error_private(i32 10) #8, !noalias !5
  %15 = tail call zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue* nonnull %0) #8
  br label %34

16:                                               ; preds = %aws_array_list_length.exit.i
  %17 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 4
  %18 = load i8*, i8** %17, align 4, !tbaa !17, !alias.scope !5
  %19 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 1, i32 3
  %20 = load i32, i32* %19, align 4, !tbaa !18, !alias.scope !5
  %21 = mul i32 %20, %2
  %22 = getelementptr inbounds i8, i8* %18, i32 %21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 %22, i32 %20, i1 false) #8
  %23 = load i32, i32* %5, align 4, !tbaa !19
  %24 = add i32 %23, -1
  store i32 %24, i32* %5, align 4, !tbaa !19
  %25 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 2, i32 4
  %26 = load i8*, i8** %25, align 4, !tbaa !21
  %27 = icmp eq i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.aws_priority_queue, %struct.aws_priority_queue* %0, i32 0, i32 2, i32 2
  %30 = load i32, i32* %29, align 4, !tbaa !22
  %31 = add i32 %30, -1
  store i32 %31, i32* %29, align 4, !tbaa !22
  br label %32

32:                                               ; preds = %28, %16
  %33 = tail call zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue* nonnull %0) #8
  br label %34

34:                                               ; preds = %32, %14
  ret void
}

declare zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_get_at(%struct.aws_array_list* noalias nocapture readonly %0, i8* %1, i32 %2) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #8
  tail call void @seahorn.fn.enter() #8, !noalias !23
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !11, !alias.scope !23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %aws_array_list_length.exit, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %9 = load i8*, i8** %8, align 4, !tbaa !17, !alias.scope !23
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %aws_array_list_length.exit

11:                                               ; preds = %7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i32 312) #9, !noalias !23
  unreachable

aws_array_list_length.exit:                       ; preds = %3, %7
  %12 = icmp ugt i32 %5, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %aws_array_list_length.exit
  %14 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %15 = load i8*, i8** %14, align 4, !tbaa !17
  %16 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !18
  %18 = mul i32 %17, %2
  %19 = getelementptr inbounds i8, i8* %15, i32 %18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 %19, i32 %17, i1 false) #8
  br label %21

20:                                               ; preds = %aws_array_list_length.exit
  tail call void @seahorn.fn.enter() #8
  tail call void @aws_raise_error_private(i32 10) #8
  br label %21

21:                                               ; preds = %20, %13
  %.0 = phi i32 [ 0, %13 ], [ -1, %20 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_array_list_length(%struct.aws_array_list* noalias nocapture readonly %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #8
  %2 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 4, !tbaa !17
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i32 312) #9
  unreachable

10:                                               ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #8
  tail call void @aws_raise_error_private(i32 %0) #8
  ret void
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #3

declare void @aws_raise_error_private(i32) local_unnamed_addr #1

define i32 @main() local_unnamed_addr {
  tail call void @seahorn.fn.enter()
  %1 = tail call %struct.aws_priority_queue* @verifier.nondet.1()
  %2 = tail call i8* @verifier.nondet.2()
  %3 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @__CPROVER_file_local_priority_queue_c_s_remove_node(%struct.aws_priority_queue* %1, i8* %2, i32 %3)
  %4 = tail call %struct.aws_array_list* @verifier.nondet.4()
  %5 = tail call i8* @verifier.nondet.2()
  %6 = tail call i32 @verifier.nondet.3()
  %7 = tail call fastcc i32 @aws_array_list_get_at(%struct.aws_array_list* %4, i8* %5, i32 %6)
  %8 = tail call %struct.aws_array_list* @verifier.nondet.4()
  %9 = tail call fastcc i32 @aws_array_list_length(%struct.aws_array_list* %8)
  %10 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @aws_raise_error(i32 %10)
  ret i32 42
}

declare %struct.aws_priority_queue* @verifier.nondet.1() local_unnamed_addr

declare i8* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

declare %struct.aws_array_list* @verifier.nondet.4() local_unnamed_addr

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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #7

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nofree norecurse nounwind }
attributes #5 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #6 = { inaccessiblememonly }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"aws_array_list_get_at: argument 0"}
!7 = distinct !{!7, !"aws_array_list_get_at"}
!8 = !{!9, !6}
!9 = distinct !{!9, !10, !"aws_array_list_length: argument 0"}
!10 = distinct !{!10, !"aws_array_list_length"}
!11 = !{!12, !16, i64 8}
!12 = !{!"aws_array_list", !13, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !13, i64 16}
!13 = !{!"any pointer", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"long", !14, i64 0}
!17 = !{!12, !13, i64 16}
!18 = !{!12, !16, i64 12}
!19 = !{!20, !16, i64 12}
!20 = !{!"aws_priority_queue", !13, i64 0, !12, i64 4, !12, i64 24}
!21 = !{!20, !13, i64 40}
!22 = !{!20, !16, i64 32}
!23 = !{!24}
!24 = distinct !{!24, !25, !"aws_array_list_length: argument 0"}
!25 = distinct !{!25, !"aws_array_list_length"}
