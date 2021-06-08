; ModuleID = '../out/aws_linked_list_insert_before_harness.c/aws_linked_list_insert_before_harness2e981.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_allocator = type { i8* (%struct.aws_allocator*, i32)*, void (%struct.aws_allocator*, i8*)*, i8* (%struct.aws_allocator*, i8*, i32, i32)*, i8* (%struct.aws_allocator*, i32, i32)*, i8* }
%struct.aws_linked_list_node = type { %struct.aws_linked_list_node*, %struct.aws_linked_list_node* }

@default_allocator = internal unnamed_addr global %struct.aws_allocator { i8* (%struct.aws_allocator*, i32)* @s_default_malloc, void (%struct.aws_allocator*, i8*)* @s_default_free, i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* null }, align 8
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_linked_list_insert_before(%struct.aws_linked_list_node* %0, %struct.aws_linked_list_node* %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #8
  %3 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %1, i32 0, i32 0
  store %struct.aws_linked_list_node* %0, %struct.aws_linked_list_node** %3, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 1
  %5 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  %6 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %1, i32 0, i32 1
  store %struct.aws_linked_list_node* %5, %struct.aws_linked_list_node** %6, align 4, !tbaa !10
  %7 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  %8 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %7, i32 0, i32 0
  store %struct.aws_linked_list_node* %1, %struct.aws_linked_list_node** %8, align 4, !tbaa !5
  store %struct.aws_linked_list_node* %1, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_linked_list_node_prev_is_valid(%struct.aws_linked_list_node* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #8
  %2 = icmp eq %struct.aws_linked_list_node* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 1
  %5 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !10
  %6 = icmp eq %struct.aws_linked_list_node* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %5, i32 0, i32 0
  %9 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %8, align 4, !tbaa !5
  %10 = icmp eq %struct.aws_linked_list_node* %9, %0
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i1 [ false, %3 ], [ false, %1 ], [ %10, %7 ]
  ret i1 %12
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc zeroext i1 @aws_linked_list_node_next_is_valid(%struct.aws_linked_list_node* readonly %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #8
  %2 = icmp eq %struct.aws_linked_list_node* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 0
  %5 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %4, align 4, !tbaa !5
  %6 = icmp eq %struct.aws_linked_list_node* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %5, i32 0, i32 1
  %9 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %8, align 4, !tbaa !10
  %10 = icmp eq %struct.aws_linked_list_node* %9, %0
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i1 [ false, %3 ], [ false, %1 ], [ %10, %7 ]
  ret i1 %12
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_malloc(%struct.aws_allocator* nocapture readnone %0, i32 %1) #2 {
  tail call void @seahorn.fn.enter() #8
  %3 = alloca i8*, align 4
  %4 = icmp ugt i32 %1, 4096
  %5 = select i1 %4, i32 32, i32 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
  store i8* null, i8** %3, align 4, !tbaa !11
  %7 = call i32 @posix_memalign(i8** nonnull %3, i32 %5, i32 %1) #8
  %8 = icmp eq i32 %7, 0
  %9 = load i8*, i8** %3, align 4
  %10 = select i1 %8, i8* %9, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8
  ret i8* %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @s_default_free(%struct.aws_allocator* nocapture readnone %0, i8* nocapture %1) #2 {
  tail call void @seahorn.fn.enter() #8
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_realloc(%struct.aws_allocator* nocapture readnone %0, i8* %1, i32 %2, i32 %3) #2 {
  %5 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #8
  %6 = icmp ne i32 %3, 0
  %7 = icmp ne i8* %1, null
  %or.cond = and i1 %7, %6
  br i1 %or.cond, label %9, label %8

8:                                                ; preds = %4
  tail call void @free(i8* %1)
  br label %21

9:                                                ; preds = %4
  %10 = icmp ugt i32 %3, %2
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  tail call void @seahorn.fn.enter() #8
  %12 = icmp ugt i32 %3, 4096
  %13 = select i1 %12, i32 32, i32 8
  %14 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #8
  store i8* null, i8** %5, align 4, !tbaa !11
  %15 = call i32 @posix_memalign(i8** nonnull %5, i32 %13, i32 %3) #8
  %16 = icmp ne i32 %15, 0
  %17 = load i8*, i8** %5, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #8
  %18 = icmp eq i8* %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %17, i8* nonnull align 1 %1, i32 %2, i1 false) #8
  call void @seahorn.fn.enter() #8
  call void @free(i8* nonnull %1) #8
  br label %21

21:                                               ; preds = %20, %11, %9, %8
  %.0 = phi i8* [ null, %8 ], [ %1, %9 ], [ null, %11 ], [ %17, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @s_default_calloc(%struct.aws_allocator* nocapture readnone %0, i32 %1, i32 %2) #2 {
  %4 = alloca i8*, align 4
  tail call void @seahorn.fn.enter() #8
  %5 = mul i32 %2, %1
  tail call void @seahorn.fn.enter() #8
  %6 = icmp ugt i32 %5, 4096
  %7 = select i1 %6, i32 32, i32 8
  %8 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  store i8* null, i8** %4, align 4, !tbaa !11
  %9 = call i32 @posix_memalign(i8** nonnull %4, i32 %7, i32 %5) #8
  %10 = icmp eq i32 %9, 0
  %11 = load i8*, i8** %4, align 4
  %12 = select i1 %10, i8* %11, i8* null
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %12, i8 0, i32 %5, i1 false) #8
  br label %15

15:                                               ; preds = %14, %3
  ret i8* %12
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree
declare i32 @posix_memalign(i8**, i32, i32) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #5

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #5

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #5

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #6

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #7

define i32 @main() local_unnamed_addr {
entry:
  %0 = alloca %struct.aws_linked_list_node, align 4
  %1 = alloca %struct.aws_linked_list_node, align 4
  %2 = alloca %struct.aws_linked_list_node, align 4
  store i8* (%struct.aws_allocator*, i32)* @s_default_malloc, i8* (%struct.aws_allocator*, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 0), align 8
  store void (%struct.aws_allocator*, i8*)* @s_default_free, void (%struct.aws_allocator*, i8*)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 1), align 4
  store i8* (%struct.aws_allocator*, i8*, i32, i32)* @s_default_realloc, i8* (%struct.aws_allocator*, i8*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 2), align 8
  store i8* (%struct.aws_allocator*, i32, i32)* @s_default_calloc, i8* (%struct.aws_allocator*, i32, i32)** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 3), align 4
  store i8* null, i8** getelementptr inbounds (%struct.aws_allocator, %struct.aws_allocator* @default_allocator, i32 0, i32 4), align 8
  tail call void @seahorn.fn.enter()
  %3 = tail call i1 @nondet.bool()
  tail call void @verifier.assume.not(i1 %3)
  tail call void @seahorn.fn.enter() #8
  %4 = bitcast %struct.aws_linked_list_node* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  %5 = bitcast %struct.aws_linked_list_node* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  %6 = bitcast %struct.aws_linked_list_node* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8
  %7 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %0, i32 0, i32 1
  store %struct.aws_linked_list_node* %1, %struct.aws_linked_list_node** %7, align 4, !tbaa !10
  %8 = getelementptr inbounds %struct.aws_linked_list_node, %struct.aws_linked_list_node* %1, i32 0, i32 0
  store %struct.aws_linked_list_node* %0, %struct.aws_linked_list_node** %8, align 4, !tbaa !5
  call fastcc void @aws_linked_list_insert_before(%struct.aws_linked_list_node* nonnull %0, %struct.aws_linked_list_node* nonnull %2) #8
  %9 = call fastcc zeroext i1 @aws_linked_list_node_prev_is_valid(%struct.aws_linked_list_node* nonnull %0) #8
  br i1 %9, label %10, label %verifier.error

10:                                               ; preds = %entry
  %11 = call fastcc zeroext i1 @aws_linked_list_node_prev_is_valid(%struct.aws_linked_list_node* nonnull %2) #8
  br i1 %11, label %12, label %verifier.error

12:                                               ; preds = %10
  %13 = call fastcc zeroext i1 @aws_linked_list_node_next_is_valid(%struct.aws_linked_list_node* nonnull %2) #8
  br i1 %13, label %14, label %verifier.error

14:                                               ; preds = %12
  %15 = call fastcc zeroext i1 @aws_linked_list_node_next_is_valid(%struct.aws_linked_list_node* nonnull %1) #8
  %16 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %7, align 4
  %17 = icmp eq %struct.aws_linked_list_node* %16, %2
  %or.cond = and i1 %15, %17
  br i1 %or.cond, label %18, label %verifier.error

18:                                               ; preds = %14
  %19 = load %struct.aws_linked_list_node*, %struct.aws_linked_list_node** %8, align 4, !tbaa !5
  %20 = icmp eq %struct.aws_linked_list_node* %19, %2
  call void @verifier.assume.not(i1 %20)
  br label %verifier.error

verifier.error:                                   ; preds = %14, %12, %10, %entry, %18
  call void @seahorn.fail()
  ret i32 42
}

declare i1 @nondet.bool() local_unnamed_addr

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #0

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblememonly nofree norecurse nounwind }
attributes #6 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #7 = { inaccessiblememonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !7, i64 0}
!6 = !{!"aws_linked_list_node", !7, i64 0, !7, i64 4}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!7, !7, i64 0}
