; ModuleID = '../out2/s_swap_override_no_op.c/s_swap_override_no_opfdf09.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/stubs/s_swap_override_no_op.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_priority_queue = type { i32 (i8*, i8*)*, %struct.aws_array_list, %struct.aws_array_list }
%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @__CPROVER_file_local_priority_queue_c_s_swap(%struct.aws_priority_queue* %0, i32 %1, i32 %2) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #5
  %4 = tail call zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue* %0) #5
  %5 = tail call zeroext i1 @aws_priority_queue_backpointer_index_valid(%struct.aws_priority_queue* %0, i32 %1) #5
  %6 = tail call zeroext i1 @aws_priority_queue_backpointer_index_valid(%struct.aws_priority_queue* %0, i32 %2) #5
  ret void
}

declare zeroext i1 @aws_priority_queue_is_valid(%struct.aws_priority_queue*) local_unnamed_addr #1

declare zeroext i1 @aws_priority_queue_backpointer_index_valid(%struct.aws_priority_queue*, i32) local_unnamed_addr #1

define i32 @main() local_unnamed_addr {
  tail call void @seahorn.fn.enter()
  %1 = tail call %struct.aws_priority_queue* @verifier.nondet.1()
  %2 = tail call i32 @verifier.nondet.2()
  %3 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @__CPROVER_file_local_priority_queue_c_s_swap(%struct.aws_priority_queue* %1, i32 %2, i32 %3)
  ret i32 42
}

declare %struct.aws_priority_queue* @verifier.nondet.1() local_unnamed_addr

declare i32 @verifier.nondet.2() local_unnamed_addr

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

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
