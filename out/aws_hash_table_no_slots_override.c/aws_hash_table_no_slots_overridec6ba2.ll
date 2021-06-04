; ModuleID = '../out/aws_hash_table_no_slots_override.c/aws_hash_table_no_slots_overridec6ba2.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/stubs/aws_hash_table_no_slots_override.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_hash_table = type { %struct.hash_table_state* }
%struct.hash_table_state = type { i64 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*, %struct.aws_allocator*, i32, i32, i32, i32, double, [0 x %struct.hash_table_entry] }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.hash_table_entry = type { %struct.aws_hash_element, i64 }
%struct.aws_hash_element = type { i8*, i8* }
%struct.aws_hash_iter = type { %struct.aws_hash_table*, %struct.aws_hash_element, i32, i32, i32, i32, i8*, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_hash_table_is_valid(%struct.aws_hash_table* readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #6
  %2 = icmp eq %struct.aws_hash_table* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %5 = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4, !tbaa !5
  %6 = icmp ne %struct.hash_table_state* %5, null
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i1 [ false, %1 ], [ %6, %3 ]
  ret i1 %8
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_iter_is_valid(%struct.aws_hash_iter* readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #6
  %2 = icmp eq %struct.aws_hash_iter* %0, null
  br i1 %2, label %NewDefault, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  %5 = load %struct.aws_hash_table*, %struct.aws_hash_table** %4, align 4, !tbaa !10
  %6 = icmp eq %struct.aws_hash_table* %5, null
  br i1 %6, label %NewDefault, label %aws_hash_table_is_valid.exit

aws_hash_table_is_valid.exit:                     ; preds = %3
  tail call void @seahorn.fn.enter() #6
  ret void

NewDefault:                                       ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @make_hash_table_with_no_backing_store(%struct.aws_hash_table* %0, i32 %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #6
  %3 = icmp eq %struct.aws_hash_table* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = tail call dereferenceable_or_null(44) i8* @malloc(i32 44) #7
  %6 = bitcast %struct.aws_hash_table* %0 to i8**
  store i8* %5, i8** %6, align 4, !tbaa !5
  %7 = icmp ne i8* %5, null
  tail call void @verifier.assume(i1 %7)
  tail call void @verifier.assume(i1 true)
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nofree nounwind allocsize(0)
declare noalias i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_clear(%struct.aws_hash_table* nocapture readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #6
  %2 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %3 = load %struct.hash_table_state*, %struct.hash_table_state** %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %3, i32 0, i32 6
  store i32 0, i32* %4, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_put(%struct.aws_hash_table* nocapture readonly %0, i32* %1) unnamed_addr #0 {
  %3 = tail call i32 @verifier.nondet.8() #6
  %4 = tail call i32 @verifier.nondet.8() #6
  %5 = tail call i32 @verifier.nondet.8() #6
  %6 = tail call i32 @verifier.nondet.8() #6
  %7 = tail call i32 @verifier.nondet.8() #6
  tail call void @seahorn.fn.enter() #6
  %8 = icmp eq i32* %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 %7, i32* %1, align 4, !tbaa !16
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %12 = load %struct.hash_table_state*, %struct.hash_table_state** %11, align 4, !tbaa !5
  %13 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4, !tbaa !15
  %15 = icmp ne i32 %14, -1
  %16 = icmp eq i32 %4, 0
  %or.cond = and i1 %16, %15
  br i1 %or.cond, label %17, label %19

17:                                               ; preds = %10
  %18 = add nuw i32 %14, 1
  store i32 %18, i32* %13, align 4, !tbaa !15
  br label %19

19:                                               ; preds = %10, %17
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_table_find(%struct.aws_hash_element** nocapture %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #6
  %2 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #6
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  store %struct.aws_hash_element* null, %struct.aws_hash_element** %0, align 4, !tbaa !17
  br label %7

4:                                                ; preds = %1
  %5 = tail call dereferenceable_or_null(8) i8* @malloc(i32 8) #7
  %6 = bitcast %struct.aws_hash_element** %0 to i8**
  store i8* %5, i8** %6, align 4, !tbaa !17
  br label %7

7:                                                ; preds = %4, %3
  ret void
}

declare zeroext i1 @nondet_bool(...) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_hash_iter_begin(%struct.aws_hash_iter* noalias nocapture align 4 %0, %struct.aws_hash_table* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #6
  %3 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 0
  store %struct.aws_hash_table* %1, %struct.aws_hash_table** %3, align 4, !tbaa !10
  %4 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %1, i32 0, i32 0
  %5 = load %struct.hash_table_state*, %struct.hash_table_state** %4, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4, !tbaa !15
  %8 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 3
  store i32 %7, i32* %8, align 4, !tbaa !18
  %9 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 2
  store i32 0, i32* %9, align 4, !tbaa !19
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %0, i32 0, i32 4
  store i32 %11, i32* %12, align 4, !tbaa !20
  ret void
}

declare %struct.aws_hash_table* @verifier.nondet.1() local_unnamed_addr

declare %struct.aws_hash_iter* @verifier.nondet.2() local_unnamed_addr

declare i32 @verifier.nondet.3() local_unnamed_addr

declare i8* @verifier.nondet.4() local_unnamed_addr

declare i32* @verifier.nondet.5() local_unnamed_addr

declare %struct.aws_hash_element** @verifier.nondet.6() local_unnamed_addr

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

declare i32 @verifier.nondet.8() local_unnamed_addr

define i32 @main() local_unnamed_addr {
entry:
  tail call void @seahorn.fn.enter()
  %0 = tail call %struct.aws_hash_table* @verifier.nondet.1()
  %1 = tail call fastcc i1 @aws_hash_table_is_valid(%struct.aws_hash_table* %0)
  %2 = tail call %struct.aws_hash_iter* @verifier.nondet.2()
  tail call fastcc void @aws_hash_iter_is_valid(%struct.aws_hash_iter* %2)
  %3 = tail call %struct.aws_hash_table* @verifier.nondet.1()
  %4 = tail call i32 @verifier.nondet.3()
  tail call fastcc void @make_hash_table_with_no_backing_store(%struct.aws_hash_table* %3, i32 %4)
  %5 = tail call %struct.aws_hash_table* @verifier.nondet.1()
  tail call fastcc void @aws_hash_table_clear(%struct.aws_hash_table* %5)
  %6 = tail call %struct.aws_hash_table* @verifier.nondet.1()
  %7 = tail call i8* @verifier.nondet.4()
  %8 = tail call i8* @verifier.nondet.4()
  %9 = tail call i32* @verifier.nondet.5()
  tail call fastcc void @aws_hash_table_put(%struct.aws_hash_table* %6, i32* %9)
  %10 = tail call %struct.aws_hash_table* @verifier.nondet.1()
  %11 = tail call i8* @verifier.nondet.4()
  %12 = tail call %struct.aws_hash_element** @verifier.nondet.6()
  tail call fastcc void @aws_hash_table_find(%struct.aws_hash_element** %12)
  %13 = tail call %struct.aws_hash_iter* @verifier.nondet.2()
  %14 = tail call %struct.aws_hash_table* @verifier.nondet.1()
  tail call fastcc void @aws_hash_iter_begin(%struct.aws_hash_iter* noalias %13, %struct.aws_hash_table* %14)
  %15 = tail call %struct.aws_hash_iter* @verifier.nondet.2()
  %16 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %16)
  tail call void @seahorn.fn.enter() #6
  %17 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %15, i32 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !19
  %19 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %15, i32 0, i32 3
  %20 = load i32, i32* %19, align 4, !tbaa !18
  %21 = icmp eq i32 %18, %20
  %22 = getelementptr inbounds %struct.aws_hash_iter, %struct.aws_hash_iter* %15, i32 0, i32 4
  %23 = load i32, i32* %22, align 4, !tbaa !20
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i1 %21, %24
  tail call void @verifier.assume.not(i1 %25)
  tail call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inaccessiblememonly nofree norecurse nounwind }
attributes #4 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #5 = { inaccessiblememonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"aws_hash_table", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"aws_hash_iter", !7, i64 0, !12, i64 4, !13, i64 12, !13, i64 16, !8, i64 20, !14, i64 24, !7, i64 28, !7, i64 32}
!12 = !{!"aws_hash_element", !7, i64 0, !7, i64 4}
!13 = !{!"long", !8, i64 0}
!14 = !{!"int", !8, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!11, !13, i64 16}
!19 = !{!11, !13, i64 12}
!20 = !{!11, !8, i64 20}
