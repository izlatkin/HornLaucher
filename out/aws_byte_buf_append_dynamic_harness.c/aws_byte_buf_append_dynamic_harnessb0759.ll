; ModuleID = '../out/aws_byte_buf_append_dynamic_harness.c/aws_byte_buf_append_dynamic_harnessb0759.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_byte_cursor = type { i32, i8* }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf*) local_unnamed_addr #1

declare void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor*) local_unnamed_addr #1

declare i32 @aws_byte_buf_append_dynamic(%struct.aws_byte_buf*, %struct.aws_byte_cursor*) local_unnamed_addr #1

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

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_byte_buf, align 8
  %1 = alloca %struct.aws_byte_cursor, align 8
  tail call void @seahorn.fn.enter()
  %2 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %2)
  tail call void @seahorn.fn.enter() #5
  %3 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #5
  call void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf* nonnull %0) #5
  %4 = call zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #5
  call void @verifier.assume(i1 %4) #5
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 8
  %.pmcpy.elt2.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %.pmcpy.unpack3.i = load i8*, i8** %.pmcpy.elt2.i, align 4
  %.pmcpy.elt6.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %.pmcpy.unpack7.i = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt6.i, align 4
  %5 = bitcast %struct.aws_byte_cursor* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  call void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor* nonnull %1) #5
  %6 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %1) #5
  call void @verifier.assume(i1 %6) #5
  %.pmcpy1.elt.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 0
  %.pmcpy1.unpack.i = load i32, i32* %.pmcpy1.elt.i, align 8
  %.pmcpy1.elt15.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %1, i32 0, i32 1
  %.pmcpy1.unpack16.i = load i8*, i8** %.pmcpy1.elt15.i, align 4
  %7 = call i32 @aws_byte_buf_append_dynamic(%struct.aws_byte_buf* nonnull %0, %struct.aws_byte_cursor* nonnull %1) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %entry
  %10 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !5
  %11 = load i32, i32* %.pmcpy1.elt.i, align 8, !tbaa !11
  %12 = add i32 %11, %.pmcpy.unpack.i
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %19, label %verifier.error

14:                                               ; preds = %entry
  %15 = load i8*, i8** %.pmcpy.elt2.i, align 4, !tbaa !13
  %16 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !5
  call void @assert_bytes_match(i8* %.pmcpy.unpack3.i, i8* %15, i32 %16) #5
  %17 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !5
  %18 = icmp eq i32 %.pmcpy.unpack.i, %17
  br i1 %18, label %19, label %verifier.error

19:                                               ; preds = %14, %9
  %20 = call zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #5
  br i1 %20, label %21, label %verifier.error

21:                                               ; preds = %19
  %22 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %1) #5
  %23 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt6.i, align 4
  %24 = icmp eq %struct.aws_allocator* %.pmcpy.unpack7.i, %23
  %or.cond = and i1 %22, %24
  br i1 %or.cond, label %25, label %verifier.error

25:                                               ; preds = %21
  %26 = load i8*, i8** %.pmcpy1.elt15.i, align 4, !tbaa !14
  %27 = load i32, i32* %.pmcpy1.elt.i, align 8, !tbaa !11
  call void @assert_bytes_match(i8* %.pmcpy1.unpack16.i, i8* %26, i32 %27) #5
  %28 = load i32, i32* %.pmcpy1.elt.i, align 8, !tbaa !11
  %29 = icmp eq i32 %.pmcpy1.unpack.i, %28
  call void @verifier.assume.not(i1 %29)
  br label %verifier.error

verifier.error:                                   ; preds = %21, %19, %14, %9, %25
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
!6 = !{!"aws_byte_buf", !7, i64 0, !10, i64 4, !7, i64 8, !10, i64 12}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"aws_byte_cursor", !7, i64 0, !10, i64 4}
!13 = !{!6, !10, i64 4}
!14 = !{!12, !10, i64 4}
