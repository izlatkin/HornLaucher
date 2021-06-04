; ModuleID = '../out/aws_byte_cursor_read_harness.c/aws_byte_cursor_read_harness77d72.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_byte_cursor_read/aws_byte_cursor_read_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_byte_cursor = type { i32, i8* }
%struct.store_byte_from_buffer = type { i32, i8 }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor*) local_unnamed_addr #1

declare void @save_byte_from_array(i8*, i32, %struct.store_byte_from_buffer*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_cursor_read(%struct.aws_byte_cursor*, i8*, i32) local_unnamed_addr #1

declare void @assert_bytes_match(i8*, i8*, i32) local_unnamed_addr #1

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
  %1 = alloca %struct.store_byte_from_buffer, align 4
  tail call void @seahorn.fn.enter()
  %2 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %2)
  %3 = tail call i32 @verifier.nondet.1() #5
  %4 = tail call i32 @verifier.nondet.1() #5
  %5 = tail call i32 @verifier.nondet.1() #5
  %6 = tail call i32 @verifier.nondet.1() #5
  %7 = tail call i32 @verifier.nondet.1() #5
  %8 = tail call i32 @verifier.nondet.1() #5
  %9 = tail call i32 @verifier.nondet.1() #5
  %10 = tail call i32 @verifier.nondet.1() #5
  tail call void @seahorn.fn.enter() #5
  %11 = bitcast %struct.aws_byte_cursor* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5
  %malloc = alloca i8, i32 %10, align 1
  call void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor* nonnull %0) #5
  %12 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #5
  call void @verifier.assume(i1 %12) #5
  call void @verifier.assume(i1 true) #5
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 8
  %.pmcpy.elt2.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack3.i = load i8*, i8** %.pmcpy.elt2.i, align 4
  %13 = bitcast %struct.store_byte_from_buffer* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5
  call void @save_byte_from_array(i8* %.pmcpy.unpack3.i, i32 %.pmcpy.unpack.i, %struct.store_byte_from_buffer* nonnull %1) #5
  %14 = call zeroext i1 @aws_byte_cursor_read(%struct.aws_byte_cursor* nonnull %0, i8* nonnull %malloc, i32 %8) #5
  br i1 %14, label %15, label %16

15:                                               ; preds = %entry
  call void @assert_bytes_match(i8* %.pmcpy.unpack3.i, i8* nonnull %malloc, i32 %7) #5
  br label %16

16:                                               ; preds = %15, %entry
  %17 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #5
  br i1 %17, label %18, label %verifier.error

18:                                               ; preds = %16
  %19 = icmp slt i32 %.pmcpy.unpack.i, 0
  %20 = icmp slt i32 %6, 0
  %or.cond.i = or i1 %20, %19
  %21 = icmp ugt i32 %5, %.pmcpy.unpack.i
  %or.cond14.i = or i1 %21, %or.cond.i
  call void @verifier.assume.not(i1 %or.cond14.i)
  %22 = icmp eq i8* %.pmcpy.unpack3.i, null
  %23 = load i8*, i8** %.pmcpy.elt2.i, align 4, !tbaa !5
  br i1 %22, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds i8, i8* %.pmcpy.unpack3.i, i32 %4
  %26 = icmp eq i8* %23, %25
  br i1 %26, label %29, label %verifier.error

27:                                               ; preds = %18
  %28 = icmp eq i8* %23, null
  br i1 %28, label %29, label %verifier.error

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !11
  %31 = sub i32 %.pmcpy.unpack.i, %3
  %32 = icmp eq i32 %30, %31
  call void @verifier.assume.not(i1 %32)
  br label %verifier.error

verifier.error:                                   ; preds = %27, %24, %16, %29
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
!5 = !{!6, !10, i64 4}
!6 = !{!"aws_byte_cursor", !7, i64 0, !10, i64 4}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
