; ModuleID = '../out/aws_byte_cursor_from_array_harness.c/aws_byte_cursor_from_array_harness044d4.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_byte_cursor_from_array/aws_byte_cursor_from_array_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_byte_cursor = type { i32, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare i64 @aws_byte_cursor_from_array(i8*, i32) local_unnamed_addr #1

declare zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor*) local_unnamed_addr #1

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

declare i32 @verifier.nondet.1() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_byte_cursor, align 8
  tail call void @seahorn.fn.enter()
  %1 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %1)
  %2 = tail call i32 @verifier.nondet.1() #5
  %3 = tail call i32 @verifier.nondet.1() #5
  %4 = tail call i32 @verifier.nondet.1() #5
  tail call void @seahorn.fn.enter() #5
  %malloc = alloca i8, i32 %4, align 1
  tail call void @verifier.assume(i1 true) #5
  %5 = bitcast %struct.aws_byte_cursor* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %6 = call i64 @aws_byte_cursor_from_array(i8* nonnull %malloc, i32 %3) #5
  %7 = bitcast %struct.aws_byte_cursor* %0 to i64*
  store i64 %6, i64* %7, align 8
  %8 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #5
  br i1 %8, label %9, label %verifier.error

9:                                                ; preds = %entry
  %10 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, %2
  call void @verifier.assume.not(i1 %12)
  br label %verifier.error

verifier.error:                                   ; preds = %entry, %9
  call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !7, i64 0}
!6 = !{!"aws_byte_cursor", !7, i64 0, !10, i64 4}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}