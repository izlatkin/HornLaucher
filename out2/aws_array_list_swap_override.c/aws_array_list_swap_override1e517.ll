; ModuleID = '../out2/aws_array_list_swap_override.c/aws_array_list_swap_override1e517.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/stubs/aws_array_list_swap_override.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_array_list = type { %struct.aws_allocator*, i32, i32, i32, i8* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_array_list_swap(%struct.aws_array_list* noalias readonly %0, i32 %1, i32 %2) unnamed_addr #0 {
  %4 = tail call i32 @verifier.nondet.4() #6
  %5 = tail call i32 @verifier.nondet.4() #6
  %6 = tail call i32 @verifier.nondet.4() #6
  %7 = tail call i32 @verifier.nondet.4() #6
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6, !noalias !5
  %8 = icmp eq %struct.aws_array_list* %0, null
  br i1 %8, label %aws_array_list_is_valid.exit, label %9

9:                                                ; preds = %3
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  br label %aws_array_list_is_valid.exit

aws_array_list_is_valid.exit:                     ; preds = %3, %9
  %10 = icmp eq i32 %1, %2
  br i1 %10, label %29, label %11

11:                                               ; preds = %aws_array_list_is_valid.exit
  %12 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = icmp ult i32 %7, %13
  tail call void @verifier.assume(i1 %16)
  %17 = tail call zeroext i8 bitcast (i8 (...)* @nondet_uint8_t to i8 ()*)() #6
  %18 = getelementptr inbounds %struct.aws_array_list, %struct.aws_array_list* %0, i32 0, i32 4
  %19 = load i8*, i8** %18, align 4, !tbaa !14
  %20 = mul i32 %13, %1
  %21 = add i32 %20, %6
  %22 = getelementptr inbounds i8, i8* %19, i32 %21
  store i8 %17, i8* %22, align 1, !tbaa !15
  %23 = icmp ult i32 %5, %13
  tail call void @verifier.assume(i1 %23)
  %24 = tail call zeroext i8 bitcast (i8 (...)* @nondet_uint8_t to i8 ()*)() #6
  %25 = load i8*, i8** %18, align 4, !tbaa !14
  %26 = mul i32 %13, %2
  %27 = add i32 %26, %4
  %28 = getelementptr inbounds i8, i8* %25, i32 %27
  store i8 %24, i8* %28, align 1, !tbaa !15
  br label %29

29:                                               ; preds = %15, %11, %aws_array_list_is_valid.exit
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_array_list_is_valid(%struct.aws_array_list* noalias readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #6
  %2 = icmp eq %struct.aws_array_list* %0, null
  br i1 %2, label %.thread, label %3

3:                                                ; preds = %1
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  ret void

.thread:                                          ; preds = %1
  ret void
}

declare zeroext i8 @nondet_uint8_t(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_size_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #6
  tail call void @seahorn.fn.enter() #6
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !16
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_mul_u32_checked(i32 %0, i32 %1, i32* nocapture %2) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #6
  %4 = mul i32 %1, %0
  store i32 %4, i32* %2, align 4, !tbaa !16
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #6
  tail call void @aws_raise_error_private(i32 %0) #6
  ret void
}

declare void @aws_raise_error_private(i32) local_unnamed_addr #2

define i32 @main() local_unnamed_addr {
  tail call void @seahorn.fn.enter()
  %1 = tail call %struct.aws_array_list* @verifier.nondet.1()
  %2 = tail call i32 @verifier.nondet.2()
  %3 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_array_list_swap(%struct.aws_array_list* %1, i32 %2, i32 %3)
  %4 = tail call %struct.aws_array_list* @verifier.nondet.1()
  tail call fastcc void @aws_array_list_is_valid(%struct.aws_array_list* %4)
  %5 = tail call i32 @verifier.nondet.2()
  %6 = tail call i32 @verifier.nondet.2()
  %7 = tail call i32* @verifier.nondet.3()
  tail call fastcc void @aws_mul_size_checked(i32 %5, i32 %6, i32* %7)
  %8 = tail call i32 @verifier.nondet.2()
  %9 = tail call i32 @verifier.nondet.2()
  %10 = tail call i32* @verifier.nondet.3()
  tail call fastcc void @aws_mul_u32_checked(i32 %8, i32 %9, i32* %10)
  %11 = tail call i32 @verifier.nondet.2()
  tail call fastcc void @aws_raise_error(i32 %11)
  ret i32 42
}

declare %struct.aws_array_list* @verifier.nondet.1() local_unnamed_addr

declare i32 @verifier.nondet.2() local_unnamed_addr

declare i32* @verifier.nondet.3() local_unnamed_addr

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

declare i32 @verifier.nondet.4() local_unnamed_addr

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6}
!6 = distinct !{!6, !7, !"aws_array_list_is_valid: argument 0"}
!7 = distinct !{!7, !"aws_array_list_is_valid"}
!8 = !{!9, !13, i64 12}
!9 = !{!"aws_array_list", !10, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !10, i64 16}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"long", !11, i64 0}
!14 = !{!9, !10, i64 16}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !11, i64 0}
