; ModuleID = '../out/aws_add_size_saturating_harness.c/aws_add_size_saturating_harness023c1.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_log_subject_info_list = type { %struct.aws_log_subject_info*, i32 }
%struct.aws_log_subject_info = type { i32, i8*, i8* }

@s_common_log_subject_list = internal unnamed_addr global %struct.aws_log_subject_info_list { %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), i32 5 }, align 8
@s_common_log_subject_infos = internal global [5 x %struct.aws_log_subject_info] [%struct.aws_log_subject_info { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.175, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.177, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.179, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i32 0, i32 0) }, %struct.aws_log_subject_info { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.183, i32 0, i32 0) }], align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"aws-c-common\00", align 1
@.str.175 = private unnamed_addr constant [80 x i8] c"Subject for aws-c-common logging that doesn't belong to any particular category\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"task-scheduler\00", align 1
@.str.177 = private unnamed_addr constant [53 x i8] c"Subject for task scheduler or task specific logging.\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.179 = private unnamed_addr constant [46 x i8] c"Subject for logging thread related functions.\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"memtrace\00", align 1
@.str.181 = private unnamed_addr constant [44 x i8] c"Output from the aws_mem_trace_dump function\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"xml-parser\00", align 1
@.str.183 = private unnamed_addr constant [41 x i8] c"Subject for xml parser specific logging.\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

declare zeroext i1 @nondet_bool(...) local_unnamed_addr #0

declare i64 @nondet_uint64_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i64 @aws_add_u64_saturating(i64 %0, i64 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %3 = icmp ne i64 %1, 0
  %4 = sub nuw nsw i64 -1, %1
  %5 = icmp ult i64 %4, %0
  %or.cond = and i1 %3, %5
  %6 = add i64 %1, %0
  %.0 = select i1 %or.cond, i64 -1, i64 %6
  ret i64 %.0
}

declare i32 @nondet_uint32_t(...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc i32 @aws_add_u32_saturating(i32 %0, i32 %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #5
  %3 = icmp ne i32 %1, 0
  %4 = sub nuw nsw i32 -1, %1
  %5 = icmp ult i32 %4, %0
  %or.cond = and i1 %3, %5
  %6 = add i32 %1, %0
  %.0 = select i1 %or.cond, i32 -1, i32 %6
  ret i32 %.0
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
  store %struct.aws_log_subject_info* getelementptr inbounds ([5 x %struct.aws_log_subject_info], [5 x %struct.aws_log_subject_info]* @s_common_log_subject_infos, i32 0, i32 0), %struct.aws_log_subject_info** getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 0), align 8
  store i32 5, i32* getelementptr inbounds (%struct.aws_log_subject_info_list, %struct.aws_log_subject_info_list* @s_common_log_subject_list, i32 0, i32 1), align 4
  tail call void @seahorn.fn.enter()
  %0 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %0)
  tail call void @seahorn.fn.enter() #5
  %1 = tail call zeroext i1 bitcast (i1 (...)* @nondet_bool to i1 ()*)() #5
  br i1 %1, label %2, label %14

2:                                                ; preds = %entry
  %3 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #5
  %4 = tail call i64 bitcast (i64 (...)* @nondet_uint64_t to i64 ()*)() #5
  %5 = tail call fastcc i64 @aws_add_u64_saturating(i64 %3, i64 %4) #5
  %6 = icmp ne i64 %4, 0
  %7 = sub nuw nsw i64 -1, %4
  %8 = icmp ugt i64 %3, %7
  %or.cond.i = and i1 %6, %8
  br i1 %or.cond.i, label %9, label %11

9:                                                ; preds = %2
  %10 = icmp eq i64 %5, -1
  tail call void @verifier.assume.not(i1 %10)
  br label %verifier.error

11:                                               ; preds = %2
  %12 = add i64 %4, %3
  %13 = icmp eq i64 %5, %12
  tail call void @verifier.assume.not(i1 %13)
  br label %verifier.error

14:                                               ; preds = %entry
  %15 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #5
  %16 = tail call i32 bitcast (i32 (...)* @nondet_uint32_t to i32 ()*)() #5
  %17 = tail call fastcc i32 @aws_add_u32_saturating(i32 %15, i32 %16) #5
  %18 = icmp ne i32 %16, 0
  %19 = sub nuw nsw i32 -1, %16
  %20 = icmp ugt i32 %15, %19
  %or.cond3.i = and i1 %18, %20
  br i1 %or.cond3.i, label %21, label %23

21:                                               ; preds = %14
  %22 = icmp eq i32 %17, -1
  tail call void @verifier.assume.not(i1 %22)
  br label %verifier.error

23:                                               ; preds = %14
  %24 = add i32 %16, %15
  %25 = icmp eq i32 %17, %24
  tail call void @verifier.assume.not(i1 %25)
  br label %verifier.error

verifier.error:                                   ; preds = %23, %21, %11, %9
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

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
