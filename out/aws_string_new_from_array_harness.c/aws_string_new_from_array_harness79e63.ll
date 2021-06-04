; ModuleID = '../out/aws_string_new_from_array_harness.c/aws_string_new_from_array_harness79e63.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_string_new_from_array/aws_string_new_from_array_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_string = type { %struct.aws_allocator*, i32, [1 x i8] }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

declare %struct.aws_allocator* @aws_default_allocator() local_unnamed_addr #0

declare %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator*, i8*, i32) local_unnamed_addr #0

declare void @assert_bytes_match(i8*, i8*, i32) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_string_is_valid(%struct.aws_string* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %2 = icmp eq %struct.aws_string* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %0, i32 0, i32 2, i32 %5
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %8 = icmp eq i8 %7, 0
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i1 [ false, %1 ], [ %8, %3 ]
  ret i1 %10
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

declare i32 @verifier.nondet.2() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  tail call void @seahorn.fn.enter()
  %0 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %0)
  %1 = tail call i32 @verifier.nondet.2() #5
  %2 = tail call i32 @verifier.nondet.2() #5
  %3 = tail call i32 @verifier.nondet.2() #5
  %4 = tail call i32 @verifier.nondet.2() #5
  %5 = tail call i32 @verifier.nondet.2() #5
  tail call void @seahorn.fn.enter() #5
  %malloc = alloca i8, i32 %5, align 1
  tail call void @verifier.assume(i1 true) #5
  %6 = tail call %struct.aws_allocator* @aws_default_allocator() #5
  %7 = icmp ule i32 %4, %3
  tail call void @verifier.assume(i1 %7) #5
  %8 = call %struct.aws_string* @aws_string_new_from_array(%struct.aws_allocator* %6, i8* nonnull %malloc, i32 %2) #5
  %9 = icmp eq %struct.aws_string* %8, null
  call void @verifier.assume.not(i1 %9)
  %10 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %8, i32 0, i32 1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %verifier.error

13:                                               ; preds = %entry
  %14 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %8, i32 0, i32 2, i32 %1
  %15 = load i8, i8* %14, align 1, !tbaa !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %verifier.error

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.aws_string, %struct.aws_string* %8, i32 0, i32 2, i32 0
  call void @assert_bytes_match(i8* nonnull %18, i8* nonnull %malloc, i32 %1) #5
  %19 = call fastcc zeroext i1 @aws_string_is_valid(%struct.aws_string* nonnull %8) #5
  call void @verifier.assume.not(i1 %19)
  br label %verifier.error

verifier.error:                                   ; preds = %13, %entry, %17
  call void @seahorn.fail()
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
!5 = !{!6, !10, i64 4}
!6 = !{!"aws_string", !7, i64 0, !10, i64 4, !8, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!8, !8, i64 0}
