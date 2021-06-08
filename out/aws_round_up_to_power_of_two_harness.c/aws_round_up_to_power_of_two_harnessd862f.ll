; ModuleID = '../out/aws_round_up_to_power_of_two_harness.c/aws_round_up_to_power_of_two_harnessd862f.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_round_up_to_power_of_two(i32 %0, i32* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #7
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  store i32 1, i32* %1, align 4, !tbaa !5
  br label %21

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, -2147483648
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @seahorn.fn.enter() #7
  tail call void @aws_raise_error_private(i32 5) #7
  br label %21

8:                                                ; preds = %5
  %9 = add i32 %0, -1
  %10 = lshr i32 %9, 1
  %11 = or i32 %10, %9
  %12 = lshr i32 %11, 2
  %13 = or i32 %12, %11
  %14 = lshr i32 %13, 4
  %15 = or i32 %14, %13
  %16 = lshr i32 %15, 8
  %17 = or i32 %16, %15
  %18 = lshr i32 %17, 16
  %19 = or i32 %18, %17
  %20 = add i32 %19, 1
  store i32 %20, i32* %1, align 4, !tbaa !5
  br label %21

21:                                               ; preds = %8, %7, %4
  %.0 = phi i32 [ 0, %4 ], [ -1, %7 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

declare void @aws_raise_error_private(i32) local_unnamed_addr #3

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

declare i32 @verifier.nondet.3() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca i32, align 4
  tail call void @seahorn.fn.enter()
  %1 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %1)
  %2 = tail call i32 @verifier.nondet.3() #7
  %3 = tail call i32 @verifier.nondet.3() #7
  %4 = tail call i32 @verifier.nondet.3() #7
  %5 = tail call i32 @verifier.nondet.3() #7
  tail call void @seahorn.fn.enter() #7
  %6 = bitcast i32* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7
  %7 = call fastcc i32 @aws_round_up_to_power_of_two(i32 %5, i32* nonnull %0) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %entry
  %10 = load i32, i32* %0, align 4, !tbaa !5
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #7, !range !9
  %12 = icmp ne i32 %11, 1
  %13 = icmp ugt i32 %4, %10
  %or.cond = or i1 %13, %12
  br i1 %or.cond, label %verifier.error, label %14

14:                                               ; preds = %9
  %15 = lshr i32 %10, 1
  %16 = icmp ult i32 %3, %15
  tail call void @verifier.assume(i1 %16)
  br label %verifier.error

17:                                               ; preds = %entry
  %18 = icmp ugt i32 %2, -2147483648
  tail call void @verifier.assume.not(i1 %18)
  br label %verifier.error

verifier.error:                                   ; preds = %9, %17, %14
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nofree norecurse nounwind }
attributes #5 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #6 = { inaccessiblememonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i32 0, i32 33}
