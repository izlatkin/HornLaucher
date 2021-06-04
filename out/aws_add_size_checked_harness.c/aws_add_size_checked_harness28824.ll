; ModuleID = '../out/aws_add_size_checked_harness.c/aws_add_size_checked_harness28824.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_add_size_checked/aws_add_size_checked_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

declare zeroext i1 @nondet_bool(...) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @nondet_uint64_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u64_checked(i64 %0, i64 %1, i64* nocapture %2) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #6
  %4 = icmp ne i64 %1, 0
  %5 = sub nuw nsw i64 -1, %1
  %6 = icmp ult i64 %5, %0
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %7, label %8

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #6
  tail call void @aws_raise_error_private(i32 5) #6
  br label %10

8:                                                ; preds = %3
  %9 = add i64 %1, %0
  store i64 %9, i64* %2, align 4, !tbaa !5
  br label %10

10:                                               ; preds = %8, %7
  %.0 = phi i32 [ -1, %7 ], [ 0, %8 ]
  ret i32 %.0
}

declare i32 @nondet_uint32_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #2 {
  tail call void @seahorn.fn.enter() #6
  %4 = icmp ne i32 %1, 0
  %5 = sub nuw nsw i32 -1, %1
  %6 = icmp ult i32 %5, %0
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %7, label %8

7:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #6
  tail call void @aws_raise_error_private(i32 5) #6
  br label %10

8:                                                ; preds = %3
  %9 = add i32 %1, %0
  store i32 %9, i32* %2, align 4, !tbaa !9
  br label %10

10:                                               ; preds = %8, %7
  %.0 = phi i32 [ -1, %7 ], [ 0, %8 ]
  ret i32 %.0
}

declare void @aws_raise_error_private(i32) local_unnamed_addr #0

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
  br i1 %3, label %4, label %19

4:                                                ; preds = %entry
  %5 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #6
  %6 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #6
  %7 = bitcast i64* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  %8 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #6
  store i64 %8, i64* %0, align 8, !tbaa !5
  %9 = call fastcc i32 @aws_add_u64_checked(i64 %5, i64 %6, i64* nonnull %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i64, i64* %0, align 8, !tbaa !5
  %13 = add i64 %6, %5
  %14 = icmp eq i64 %12, %13
  tail call void @verifier.assume.not(i1 %14)
  br label %verifier.error

15:                                               ; preds = %4
  %16 = icmp ne i64 %6, 0
  %17 = sub nuw nsw i64 -1, %6
  %18 = icmp ugt i64 %5, %17
  %or.cond.i = and i1 %16, %18
  tail call void @verifier.assume.not(i1 %or.cond.i)
  br label %verifier.error

19:                                               ; preds = %entry
  %20 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #6
  %21 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #6
  %22 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #6
  %23 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #6
  store i32 %23, i32* %1, align 4, !tbaa !9
  %24 = call fastcc i32 @aws_add_u32_checked(i32 %20, i32 %21, i32* nonnull %1) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %1, align 4, !tbaa !9
  %28 = add i32 %21, %20
  %29 = icmp eq i32 %27, %28
  tail call void @verifier.assume.not(i1 %29)
  br label %verifier.error

30:                                               ; preds = %19
  %31 = icmp ne i32 %21, 0
  %32 = sub nuw nsw i32 -1, %21
  %33 = icmp ugt i32 %20, %32
  %or.cond3.i = and i1 %31, %33
  tail call void @verifier.assume.not(i1 %or.cond3.i)
  br label %verifier.error

verifier.error:                                   ; preds = %30, %26, %15, %11
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
