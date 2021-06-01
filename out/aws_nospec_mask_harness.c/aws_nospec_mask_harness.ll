; ModuleID = '/Users/ilyazlatkin/PycharmProjects/HornLauncher/out/aws_nospec_mask_harness.c/aws_nospec_mask_harnessed8fc.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_nospec_mask/aws_nospec_mask_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

declare i32 @aws_nospec_mask(i32, i32) local_unnamed_addr #0

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

declare i32 @verifier.nondet.1() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  tail call void @seahorn.fn.enter()
  %0 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %0)
  %1 = tail call i32 @verifier.nondet.1() #4
  %2 = tail call i32 @verifier.nondet.1() #4
  %3 = tail call i32 @verifier.nondet.1() #4
  %4 = tail call i32 @verifier.nondet.1() #4
  %5 = tail call i32 @verifier.nondet.1() #4
  %6 = tail call i32 @verifier.nondet.1() #4
  %7 = tail call i32 @verifier.nondet.1() #4
  %8 = tail call i32 @verifier.nondet.1() #4
  %9 = tail call i32 @verifier.nondet.1() #4
  %10 = tail call i32 @verifier.nondet.1() #4
  tail call void @seahorn.fn.enter() #4
  %11 = tail call i32 @aws_nospec_mask(i32 %10, i32 %9) #4
  %Pivot.i = icmp slt i32 %11, 0
  br i1 %Pivot.i, label %LeafBlock.i, label %LeafBlock8.i

LeafBlock8.i:                                     ; preds = %entry
  %SwitchLeaf9.i = icmp eq i32 %11, 0
  br i1 %SwitchLeaf9.i, label %12, label %verifier.error

LeafBlock.i:                                      ; preds = %entry
  %SwitchLeaf.i = icmp eq i32 %11, -1
  br i1 %SwitchLeaf.i, label %16, label %verifier.error

12:                                               ; preds = %LeafBlock8.i
  %13 = icmp uge i32 %8, %7
  %14 = icmp slt i32 %6, 0
  %or.cond.i = or i1 %14, %13
  %15 = icmp slt i32 %5, 0
  %or.cond3.i = or i1 %15, %or.cond.i
  tail call void @verifier.assume.not(i1 %or.cond3.i)
  br label %verifier.error

16:                                               ; preds = %LeafBlock.i
  %17 = icmp uge i32 %4, %3
  %18 = icmp slt i32 %2, 0
  %or.cond5.i = or i1 %18, %17
  %19 = icmp slt i32 %1, 0
  %or.cond7.i = or i1 %19, %or.cond5.i
  tail call void @verifier.assume(i1 %or.cond7.i)
  br label %verifier.error

verifier.error:                                   ; preds = %LeafBlock8.i, %LeafBlock.i, %16, %12
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
