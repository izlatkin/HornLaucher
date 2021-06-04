; ModuleID = '../out/aws_mul_size_saturating_harness.c/aws_mul_size_saturating_harness0c78f.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_mul_size_saturating/aws_mul_size_saturating_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

declare zeroext i1 @nondet_bool(...) local_unnamed_addr #0

declare i32 @nondet_int(...) local_unnamed_addr #0

declare i64 @nondet_uint64_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i64 @aws_mul_u64_saturating(i64 %0, i64 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %3 = mul i64 %1, %0
  ret i64 %3
}

declare i32 @nondet_uint32_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_mul_u32_saturating(i32 %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %3 = mul i32 %1, %0
  ret i32 %3
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
  tail call void @seahorn.fn.enter()
  %0 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %0)
  tail call void @seahorn.fn.enter() #5
  %1 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #5
  br i1 %1, label %2, label %10

2:                                                ; preds = %entry
  %3 = tail call i32 bitcast (i32 (...)* @nondet_int to i32 ()*)() #5
  %4 = icmp eq i32 %3, 0
  %5 = sext i1 %4 to i64
  %6 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #5
  %7 = tail call fastcc i64 @aws_mul_u64_saturating(i64 %5, i64 %6) #5
  %8 = mul i64 %6, %5
  %9 = icmp eq i64 %7, %8
  tail call void @verifier.assume.not(i1 %9)
  br label %verifier.error

10:                                               ; preds = %entry
  %11 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #5
  %not..i = xor i1 %11, true
  %12 = sext i1 %not..i to i32
  %13 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #5
  %14 = tail call fastcc i32 @aws_mul_u32_saturating(i32 %12, i32 %13) #5
  %15 = mul i32 %13, %12
  %16 = icmp eq i32 %14, %15
  tail call void @verifier.assume.not(i1 %16)
  br label %verifier.error

verifier.error:                                   ; preds = %10, %2
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
