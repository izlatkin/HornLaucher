; ModuleID = '../out/aws_mul_size_checked_harness.c/aws_mul_size_checked_harnessa3062.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_mul_size_checked/aws_mul_size_checked_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

declare zeroext i1 @nondet_bool(...) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @nondet_int(...) local_unnamed_addr #0

declare i64 @nondet_uint64_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u64_checked(i64 %0, i64 %1, i64* nocapture %2) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #6
  %4 = mul i64 %1, %0
  store i64 %4, i64* %2, align 4, !tbaa !5
  ret void
}

declare i32 @nondet_uint32_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #6
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !9
  ret void
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

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca i64, align 8
  %1 = alloca i32, align 4
  tail call void @seahorn.fn.enter()
  %2 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %2)
  tail call void @seahorn.fn.enter() #6
  %3 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #6
  br i1 %3, label %4, label %14

4:                                                ; preds = %entry
  %5 = tail call i32 bitcast (i32 (...)* @nondet_int to i32 ()*)() #6
  %6 = icmp eq i32 %5, 0
  %7 = sext i1 %6 to i64
  %8 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #6
  %9 = bitcast i64* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6
  %10 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #6
  store i64 %10, i64* %0, align 8, !tbaa !5
  call fastcc void @aws_mul_u64_checked(i64 %7, i64 %8, i64* nonnull %0) #6
  %11 = load i64, i64* %0, align 8, !tbaa !5
  %12 = mul i64 %8, %7
  %13 = icmp eq i64 %11, %12
  tail call void @verifier.assume.not(i1 %13)
  br label %verifier.error

14:                                               ; preds = %entry
  %15 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #6
  %not..i = xor i1 %15, true
  %16 = sext i1 %not..i to i32
  %17 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #6
  %18 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #6
  %19 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #6
  store i32 %19, i32* %1, align 4, !tbaa !9
  call fastcc void @aws_mul_u32_checked(i32 %16, i32 %17, i32* nonnull %1) #6
  %20 = load i32, i32* %1, align 4, !tbaa !9
  %21 = mul i32 %17, %16
  %22 = icmp eq i32 %20, %21
  tail call void @verifier.assume.not(i1 %22)
  br label %verifier.error

verifier.error:                                   ; preds = %14, %4
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
