; ModuleID = '../out/aws_hash_table_get_entry_count_harness.c/aws_hash_table_get_entry_count_harness5b33b.bc.txt'
source_filename = "/tmp/aws-c-common/verification/cbmc/proofs/aws_hash_table_get_entry_count/aws_hash_table_get_entry_count_harness.c"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_hash_table = type { %struct.hash_table_state* }
%struct.hash_table_state = type { i64 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*, %struct.aws_allocator*, i32, i32, i32, i32, double, [0 x %struct.hash_table_entry] }
%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.hash_table_entry = type { %struct.aws_hash_element, i64 }
%struct.aws_hash_element = type { i8*, i8* }
%struct.store_byte_from_buffer = type { i32, i8 }

@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

declare void @ensure_allocated_hash_table(%struct.aws_hash_table*, i32) local_unnamed_addr #1

declare zeroext i1 @aws_hash_table_is_valid(%struct.aws_hash_table*) local_unnamed_addr #1

declare void @save_byte_from_hash_table(%struct.aws_hash_table*, %struct.store_byte_from_buffer*) local_unnamed_addr #1

declare i32 @aws_hash_table_get_entry_count(%struct.aws_hash_table*) local_unnamed_addr #1

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
  %0 = alloca %struct.aws_hash_table, align 4
  %1 = alloca %struct.store_byte_from_buffer, align 4
  tail call void @seahorn.fn.enter()
  %2 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %2)
  tail call void @seahorn.fn.enter() #5
  %3 = bitcast %struct.aws_hash_table* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  call void @ensure_allocated_hash_table(%struct.aws_hash_table* nonnull %0, i32 -1) #5
  %4 = call zeroext i1 @aws_hash_table_is_valid(%struct.aws_hash_table* nonnull %0) #5
  call void @verifier.assume(i1 %4) #5
  %5 = getelementptr inbounds %struct.aws_hash_table, %struct.aws_hash_table* %0, i32 0, i32 0
  %6 = load %struct.hash_table_state*, %struct.hash_table_state** %5, align 4, !tbaa !5
  %7 = bitcast %struct.store_byte_from_buffer* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5
  call void @save_byte_from_hash_table(%struct.aws_hash_table* nonnull %0, %struct.store_byte_from_buffer* nonnull %1) #5
  %8 = getelementptr inbounds %struct.hash_table_state, %struct.hash_table_state* %6, i32 0, i32 6
  %9 = load i32, i32* %8, align 4, !tbaa !10
  %10 = call i32 @aws_hash_table_get_entry_count(%struct.aws_hash_table* nonnull %0) #5
  %11 = icmp eq i32 %10, %9
  br i1 %11, label %12, label %verifier.error

12:                                               ; preds = %entry
  %13 = call zeroext i1 @aws_hash_table_is_valid(%struct.aws_hash_table* nonnull %0) #5
  call void @verifier.assume.not(i1 %13)
  br label %verifier.error

verifier.error:                                   ; preds = %entry, %12
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
!6 = !{!"aws_hash_table", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}