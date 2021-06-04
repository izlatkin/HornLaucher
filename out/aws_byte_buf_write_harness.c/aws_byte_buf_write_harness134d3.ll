; ModuleID = '../out/aws_byte_buf_write_harness.c/aws_byte_buf_write_harness134d3.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_byte_buf_write/aws_byte_buf_write_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_byte_buf = type { i32, i8*, i32, %struct.aws_allocator* }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.store_byte_from_buffer = type { i32, i8 }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf*) local_unnamed_addr #1

declare void @save_byte_from_array(i8*, i32, %struct.store_byte_from_buffer*) local_unnamed_addr #1

declare zeroext i1 @aws_byte_buf_write(%struct.aws_byte_buf*, i8*, i32) local_unnamed_addr #1

declare void @assert_bytes_match(i8*, i8*, i32) local_unnamed_addr #1

declare void @assert_byte_buf_equivalence(%struct.aws_byte_buf*, %struct.aws_byte_buf*, %struct.store_byte_from_buffer*) local_unnamed_addr #1

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
  %0 = alloca %struct.aws_byte_buf, align 8
  %1 = alloca %struct.aws_byte_buf, align 8
  %2 = alloca %struct.store_byte_from_buffer, align 4
  tail call void @seahorn.fn.enter()
  %3 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %3)
  %4 = tail call i32 @verifier.nondet.1() #5
  %5 = tail call i32 @verifier.nondet.1() #5
  %6 = tail call i32 @verifier.nondet.1() #5
  %7 = tail call i32 @verifier.nondet.1() #5
  %8 = tail call i32 @verifier.nondet.1() #5
  tail call void @seahorn.fn.enter() #5
  %9 = bitcast %struct.aws_byte_buf* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5
  %malloc = alloca i8, i32 %8, align 1
  tail call void @verifier.assume(i1 true) #5
  call void @ensure_byte_buf_has_allocated_buffer_member(%struct.aws_byte_buf* nonnull %0) #5
  %10 = call zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #5
  call void @verifier.assume(i1 %10) #5
  %11 = bitcast %struct.aws_byte_buf* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #5
  %.pmcpy.elt.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 0
  %.pmcpy.unpack.i = load i32, i32* %.pmcpy.elt.i, align 8
  %.pmcpy.elt1.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 1
  %.pmcpy.unpack2.i = load i8*, i8** %.pmcpy.elt1.i, align 4
  %.pmcpy.elt3.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 2
  %.pmcpy.unpack4.i = load i32, i32* %.pmcpy.elt3.i, align 8
  %.pmcpy.elt5.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %0, i32 0, i32 3
  %.pmcpy.unpack6.i = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt5.i, align 4
  %.repack.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 0
  store i32 %.pmcpy.unpack.i, i32* %.repack.i, align 8
  %.repack8.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 1
  store i8* %.pmcpy.unpack2.i, i8** %.repack8.i, align 4
  %.repack10.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 2
  store i32 %.pmcpy.unpack4.i, i32* %.repack10.i, align 8
  %.repack12.i = getelementptr inbounds %struct.aws_byte_buf, %struct.aws_byte_buf* %1, i32 0, i32 3
  store %struct.aws_allocator* %.pmcpy.unpack6.i, %struct.aws_allocator** %.repack12.i, align 4
  %12 = bitcast %struct.store_byte_from_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5
  call void @save_byte_from_array(i8* %.pmcpy.unpack2.i, i32 %.pmcpy.unpack.i, %struct.store_byte_from_buffer* nonnull %2) #5
  %13 = call zeroext i1 @aws_byte_buf_write(%struct.aws_byte_buf* nonnull %0, i8* nonnull %malloc, i32 %7) #5
  br i1 %13, label %14, label %28

14:                                               ; preds = %entry
  %15 = load i32, i32* %.pmcpy.elt.i, align 8, !tbaa !5
  %16 = add i32 %.pmcpy.unpack.i, %6
  %17 = icmp eq i32 %15, %16
  %18 = load i32, i32* %.pmcpy.elt3.i, align 8
  %19 = icmp eq i32 %.pmcpy.unpack4.i, %18
  %or.cond2 = and i1 %17, %19
  %20 = load %struct.aws_allocator*, %struct.aws_allocator** %.pmcpy.elt5.i, align 4
  %21 = icmp eq %struct.aws_allocator* %.pmcpy.unpack6.i, %20
  %or.cond4 = and i1 %or.cond2, %21
  br i1 %or.cond4, label %22, label %verifier.error

22:                                               ; preds = %14
  %23 = icmp eq i32 %5, 0
  %24 = icmp eq i32 %15, 0
  %or.cond = or i1 %23, %24
  br i1 %or.cond, label %29, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %.pmcpy.elt1.i, align 4, !tbaa !11
  %27 = getelementptr inbounds i8, i8* %26, i32 %.pmcpy.unpack.i
  call void @assert_bytes_match(i8* %27, i8* nonnull %malloc, i32 %4) #5
  br label %29

28:                                               ; preds = %entry
  call void @assert_byte_buf_equivalence(%struct.aws_byte_buf* nonnull %0, %struct.aws_byte_buf* nonnull %1, %struct.store_byte_from_buffer* nonnull %2) #5
  br label %29

29:                                               ; preds = %28, %25, %22
  %30 = call zeroext i1 @aws_byte_buf_is_valid(%struct.aws_byte_buf* nonnull %0) #5
  call void @verifier.assume.not(i1 %30)
  br label %verifier.error

verifier.error:                                   ; preds = %14, %29
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
!11 = !{!6, !10, i64 4}
