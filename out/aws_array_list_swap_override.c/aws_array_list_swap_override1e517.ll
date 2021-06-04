; ModuleID = '../out/aws_array_list_swap_override.c/aws_array_list_swap_override1e517.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/stubs/aws_array_list_swap_override.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_array_list_is_valid(%struct.aws_array_list* noalias readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #4
  %2 = icmp eq %struct.aws_array_list* %0, null
  br i1 %2, label %.thread3, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %7 = load i32, i32* %6, align 4, !tbaa !11
  tail call void @seahorn.fn.enter() #4
  tail call void @seahorn.fn.enter() #4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = icmp uge i32 %10, %8
  %12 = icmp eq i32 %10, 0
  %13 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %14 = load i8*, i8** %13, align 4, !tbaa !13
  br i1 %12, label %15, label %17

15:                                               ; preds = %3
  %16 = icmp eq i8* %14, null
  br i1 %16, label %.thread, label %.thread3

17:                                               ; preds = %3
  %18 = icmp ne i8* %14, null
  br label %.thread

.thread:                                          ; preds = %15, %17
  %19 = phi i1 [ %18, %17 ], [ true, %15 ]
  %or.cond3 = and i1 %11, %19
  %20 = icmp ne i32 %7, 0
  %spec.select = and i1 %20, %or.cond3
  ret i1 %spec.select

.thread3:                                         ; preds = %15, %1
  ret i1 false
}

declare %struct.aws_array_list* @verifier.nondet.1() local_unnamed_addr

declare i32 @verifier.nondet.2() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #1

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #1

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #1

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #2

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #3

declare i32 @verifier.nondet.4() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  tail call void @seahorn.fn.enter()
  %0 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %1 = tail call i32 @verifier.nondet.2()
  %2 = tail call i32 @verifier.nondet.2()
  %3 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %3)
  %4 = tail call i32 @verifier.nondet.4() #4, !noalias !14
  %5 = tail call i32 @verifier.nondet.4() #4, !noalias !14
  %6 = tail call i32 @verifier.nondet.4() #4, !noalias !14
  %7 = tail call i32 @verifier.nondet.4() #4, !noalias !14
  tail call void @seahorn.fn.enter() #4, !noalias !14
  %8 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa !5, !alias.scope !14
  %10 = icmp ugt i32 %9, %1
  %11 = icmp ugt i32 %9, %2
  %or.cond = and i1 %10, %11
  br i1 %or.cond, label %12, label %verifier.error

12:                                               ; preds = %entry
  %13 = tail call fastcc zeroext i1 @aws_array_list_is_valid(%struct.aws_array_list* %0) #4
  tail call void @verifier.assume.not(i1 %13)
  br label %verifier.error

verifier.error:                                   ; preds = %entry, %12
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inaccessiblememonly nofree norecurse nounwind }
attributes #2 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #3 = { inaccessiblememonly }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"aws_array_list", !7, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 12}
!12 = !{!6, !10, i64 4}
!13 = !{!6, !7, i64 16}
!14 = !{!15}
!15 = distinct !{!15, !16, !"aws_array_list_swap: argument 0"}
!16 = distinct !{!16, !"aws_array_list_swap"}
