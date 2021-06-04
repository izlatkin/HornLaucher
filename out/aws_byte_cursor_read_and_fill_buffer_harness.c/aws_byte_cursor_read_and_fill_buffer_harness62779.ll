; ModuleID = '../out/aws_byte_cursor_read_and_fill_buffer_harness.c/aws_byte_cursor_read_and_fill_buffer_harness62779.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_byte_cursor = type { i32, i8* }
%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.store_byte_from_buffer = type { i32, i8 }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor*) local_unnamed_addr #1

declare void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf*) local_unnamed_addr #1

declare void @save_byte_from_array(i8*, i32, %struct.store_byte_from_buffer*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_cursor_read_and_fill_buffer(%struct.aws_byte_cursor*, %struct.aws_byte_buf*) local_unnamed_addr #1

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
  %0 = alloca %struct.aws_byte_cursor, align 8
  %1 = alloca %struct.aws_byte_buf, align 8
  %2 = alloca %struct.store_byte_from_buffer, align 4
  %3 = alloca %struct.store_byte_from_buffer, align 4
  tail call void @seahorn.fn.enter()
  %4 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %4)
  tail call void @seahorn.fn.enter() #5
  %5 = bitcast %struct.aws_byte_cursor* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %6 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5
  call void @ensure_byte_cursor_has_allocated_buffer_member(%struct.aws_byte_cursor* nonnull %0) #5
  %7 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #5
  call void @verifier.assume(i1 %7) #5
  call void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf* nonnull %1) #5
  %8 = call zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %1) #5
  call void @verifier.assume(i1 %8) #5
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 8
  %.pmcpy.elt2.i = getelementptr inbounds %struct.aws_byte_cursor, %struct.aws_byte_cursor* %0, i32 0, i32 1
  %.pmcpy.unpack3.i = load i8*, i8** %.pmcpy.elt2.i, align 4
  %9 = bitcast %struct.store_byte_from_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5
  call void @save_byte_from_array(i8* %.pmcpy.unpack3.i, i32 %.pmcpy.unpack.i, %struct.store_byte_from_buffer* nonnull %2) #5
  %.pmcpy1.elt9.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  %.pmcpy1.unpack10.i = load i32, i32* %.pmcpy1.elt9.i, align 8
  %.pmcpy1.elt11.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 3
  %.pmcpy1.unpack12.i = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy1.elt11.i, align 4
  %10 = bitcast %struct.store_byte_from_buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5
  %11 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  %12 = load i8*, i8** %11, align 4, !tbaa !5
  %13 = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !11
  call void @save_byte_from_array(i8* %12, i32 %14, %struct.store_byte_from_buffer* nonnull %3) #5
  %15 = call zeroext i1 @aws_byte_cursor_read_and_fill_buffer(%struct.aws_byte_cursor* nonnull %0, %struct.aws_byte_buf* nonnull %1) #5
  br i1 %15, label %16, label %22

16:                                               ; preds = %entry
  %17 = load i32, i32* %13, align 8, !tbaa !11
  %18 = load i32, i32* %.pmcpy1.elt9.i, align 8, !tbaa !12
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %verifier.error

20:                                               ; preds = %16
  %21 = load i8*, i8** %11, align 4, !tbaa !5
  call void @assert_bytes_match(i8* %.pmcpy.unpack3.i, i8* %21, i32 %17) #5
  br label %22

22:                                               ; preds = %20, %entry
  %23 = call zeroext i1 @aws_byte_cursor_is_valid(%struct.aws_byte_cursor* nonnull %0) #5
  br i1 %23, label %24, label %verifier.error

24:                                               ; preds = %22
  %25 = call zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %1) #5
  %26 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy1.elt11.i, align 4
  %27 = icmp eq %struct.aws_allocator* %.pmcpy1.unpack12.i, %26
  %or.cond = and i1 %25, %27
  br i1 %or.cond, label %28, label %verifier.error

28:                                               ; preds = %24
  %29 = icmp slt i32 %.pmcpy.unpack.i, 0
  %30 = icmp slt i32 %.pmcpy1.unpack10.i, 0
  %or.cond.i = or i1 %29, %30
  %31 = icmp ult i32 %.pmcpy.unpack.i, %.pmcpy1.unpack10.i
  %or.cond36.i = or i1 %31, %or.cond.i
  call void @verifier.assume.not(i1 %or.cond36.i)
  %32 = icmp eq i8* %.pmcpy.unpack3.i, null
  %33 = load i8*, i8** %.pmcpy.elt2.i, align 4, !tbaa !13
  br i1 %32, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, i8* %.pmcpy.unpack3.i, i32 %.pmcpy1.unpack10.i
  %36 = icmp eq i8* %33, %35
  br i1 %36, label %39, label %verifier.error

37:                                               ; preds = %28
  %38 = icmp eq i8* %33, null
  br i1 %38, label %39, label %verifier.error

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !15
  %41 = sub i32 %.pmcpy.unpack.i, %.pmcpy1.unpack10.i
  %42 = icmp eq i32 %40, %41
  call void @verifier.assume.not(i1 %42)
  br label %verifier.error

verifier.error:                                   ; preds = %37, %34, %24, %22, %16, %39
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
!6 = !{!"aws_byte_buf", !7, i64 0, !10, i64 4, !7, i64 8, !10, i64 12}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !7, i64 8}
!13 = !{!14, !10, i64 4}
!14 = !{!"aws_byte_cursor", !7, i64 0, !10, i64 4}
!15 = !{!14, !7, i64 0}
