; ModuleID = '../out/aws_byte_cursor_advance_harness.c/aws_byte_cursor_advance_harness86ca2.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_byte_cursor_advance/aws_byte_cursor_advance_harness.c"
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

declare i64 @aws_byte_cursor_advance(%struct.aws_byte_cursor*, i32) local_unnamed_addr #1

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
  %2 = alloca %struct.aws_byte_cursor, align 8
  tail call void @seahorn.fn.enter()
  %3 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %3)
  %4 = tail call i32 @verifier.nondet.1() #5
  %5 = tail call i32 @verifier.nondet.1() #5
  %6 = tail call i32 @verifier.nondet.1() #5
  %7 = tail call i32 @verifier.nondet.1() #5
  %8 = tail call i32 @verifier.nondet.1() #5
  %9 = tail call i32 @verifier.nondet.1() #5
  tail call void @seahorn.fn.enter() #5
  %10 = bitcast %struct.aws_byte_cursor* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5
  call void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor* nonnull %0) #5
  %11 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #5
  call void @verifier.assume(i1 %11) #5
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 8
  %.pmcpy.elt2.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack3.i = load i8*, i8** %.pmcpy.elt2.i, align 4
  %12 = bitcast %struct.store_byte_from_buffer* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5
  call void @save_byte_from_array(i8* %.pmcpy.unpack3.i, i32 %.pmcpy.unpack.i, %struct.store_byte_from_buffer* nonnull %1) #5
  %13 = bitcast %struct.aws_byte_cursor* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5
  %14 = call i64 @aws_byte_cursor_advance(%struct.aws_byte_cursor* nonnull %0, i32 %9) #5
  %15 = bitcast %struct.aws_byte_cursor* %2 to i64*
  store i64 %14, i64* %15, align 8
  %16 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %2) #5
  br i1 %16, label %17, label %verifier.error

17:                                               ; preds = %entry
  %18 = icmp slt i32 %.pmcpy.unpack.i, 0
  %19 = icmp slt i32 %8, 0
  %or.cond.i = or i1 %19, %18
  %20 = icmp ugt i32 %7, %.pmcpy.unpack.i
  %or.cond14.i = or i1 %20, %or.cond.i
  %21 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 1
  %22 = load i8*, i8** %21, align 4, !tbaa !5
  br i1 %or.cond14.i, label %23, label %29

23:                                               ; preds = %17
  %24 = icmp eq i8* %22, null
  br i1 %24, label %25, label %verifier.error

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 8, !tbaa !11
  %28 = icmp eq i32 %27, 0
  call void @verifier.assume.not(i1 %28)
  br label %verifier.error

29:                                               ; preds = %17
  %30 = icmp eq i8* %22, %.pmcpy.unpack3.i
  br i1 %30, label %31, label %verifier.error

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 8, !tbaa !11
  %34 = icmp eq i32 %33, %6
  br i1 %34, label %35, label %verifier.error

35:                                               ; preds = %31
  %36 = icmp eq i8* %.pmcpy.unpack3.i, null
  %37 = load i8*, i8** %.pmcpy.elt2.i, align 4, !tbaa !5
  br i1 %36, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %.pmcpy.unpack3.i, i32 %5
  %40 = icmp eq i8* %37, %39
  br i1 %40, label %43, label %verifier.error

41:                                               ; preds = %35
  %42 = icmp eq i8* %37, null
  br i1 %42, label %43, label %verifier.error

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !11
  %45 = sub i32 %.pmcpy.unpack.i, %4
  %46 = icmp eq i32 %44, %45
  call void @verifier.assume.not(i1 %46)
  br label %verifier.error

verifier.error:                                   ; preds = %41, %38, %31, %29, %23, %entry, %43, %25
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
