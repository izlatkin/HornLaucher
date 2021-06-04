; ModuleID = '../out/aws_hash_iter_overrides.c/aws_hash_iter_overrides7213f.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/stubs/aws_hash_iter_overrides.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_hash_iter = type { %struct.aws_hash_table*, %struct.aws_hash_element, i32, i32, i32, i32, i8*, i8* }
%struct.aws_hash_element = type { i8*, i8* }
%struct.aws_hash_table = type { %struct.hash_table_state* }
%struct.hash_table_state = type { i64 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*, %struct.aws_allocator*, i32, i32, i32, i32, double, [0 x %struct.hash_table_entry] }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.hash_table_entry = type { %struct.aws_hash_element, i64 }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_iter_begin(%struct.aws_hash_iter* noalias nocapture align 4 %0, %struct.aws_hash_table* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #4
  %3 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  store %struct.aws_hash_table* %1, %struct.aws_hash_table** %3, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %1, i32 0, i32 0
  %5 = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4, !tbaa !13
  %6 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4, !tbaa !15
  %8 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  store i32 %7, i32* %8, align 4, !tbaa !16
  %9 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  %10 = load i32, i32* %9, align 4, !tbaa !17
  %11 = icmp ule i32 %10, %7
  tail call void @verifier.assume(i1 %11)
  %12 = icmp eq i32 %10, %7
  %13 = select i1 %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 %13, i32* %14, align 4, !tbaa !18
  ret void
}

declare %struct.aws_hash_iter* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_hash_table* @verifier.nondet.2() local_unnamed_addr

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

define i32 @main() local_unnamed_addr {
entry:
  tail call void @seahorn.fn.enter()
  %0 = tail call %struct.aws_hash_iter* @verifier.nondet.1()
  %1 = tail call %struct.aws_hash_table* @verifier.nondet.2()
  tail call fastcc void @aws_hash_iter_begin(%struct.aws_hash_iter* noalias %0, %struct.aws_hash_table* %1)
  %2 = tail call %struct.aws_hash_iter* @verifier.nondet.1()
  %3 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %3)
  tail call void @seahorn.fn.enter() #4
  %4 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %2, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !17
  %6 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %2, i32 0, i32 3
  %7 = load i32, i32* %6, align 4, !tbaa !16
  %8 = icmp eq i32 %5, %7
  %9 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %2, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !18
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i1 %8, %11
  tail call void @verifier.assume.not(i1 %12)
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !7, i64 0}
!6 = !{!"aws_hash_iter", !7, i64 0, !10, i64 4, !11, i64 12, !11, i64 16, !8, i64 20, !12, i64 24, !7, i64 28, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"aws_hash_element", !7, i64 0, !7, i64 4}
!11 = !{!"long", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"aws_hash_table", !7, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!6, !11, i64 16}
!17 = !{!6, !11, i64 12}
!18 = !{!6, !8, i64 20}
