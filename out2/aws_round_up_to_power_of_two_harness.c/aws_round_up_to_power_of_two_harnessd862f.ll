; ModuleID = '../out2/aws_round_up_to_power_of_two_harness.c/aws_round_up_to_power_of_two_harnessd862f.bc.txt'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx11.0.0"

%struct.aws_error_info_list = type { %struct.aws_error_info*, i16 }
%struct.aws_error_info = type { i32, i8*, i8*, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@tl_thread_handler_context = internal thread_local unnamed_addr global i8* null, align 4
@ERROR_SLOTS = internal global [16 x %struct.aws_error_info_list*] zeroinitializer, align 4
@tl_thread_handler = internal thread_local unnamed_addr global void (i32, i8*)* null, align 4
@s_global_handler = internal unnamed_addr global void (i32, i8*)* null, align 4
@s_global_error_context = internal unnamed_addr global i8* null, align 4
@.str.1.4 = private unnamed_addr constant [11 x i8] c"error_info\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"/tmp/aws-c-common/source/error.c\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error_info->error_list\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"error_info->count\00", align 1
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Bad error slot index %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @seahorn.fail to i8*), i8* bitcast (void (i1)* @verifier.assume to i8*), i8* bitcast (void (i1)* @verifier.assume.not to i8*), i8* bitcast (void ()* @verifier.error to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_round_up_to_power_of_two_harness() unnamed_addr #0 {
  %1 = tail call i32 @verifier.nondet.6() #7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = icmp ugt i32 %1, -2147483648
  br i1 %2, label %3, label %aws_round_up_to_power_of_two.exit

3:                                                ; preds = %0
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %4 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %5 = icmp eq void (i32, i8*)* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %4(i32 5, i8* %7) #7
  br label %aws_round_up_to_power_of_two.exit

8:                                                ; preds = %3
  %9 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %10 = icmp eq void (i32, i8*)* %9, null
  br i1 %10, label %aws_round_up_to_power_of_two.exit, label %11

11:                                               ; preds = %8
  %12 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %9(i32 5, i8* %12) #7
  br label %aws_round_up_to_power_of_two.exit

aws_round_up_to_power_of_two.exit:                ; preds = %0, %6, %8, %11
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_round_up_to_power_of_two(i32 %0, i32* nocapture %1) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #7
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  store i32 1, i32* %1, align 4, !tbaa !9
  br label %aws_raise_error.exit

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, -2147483648
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %8 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %9 = icmp eq void (i32, i8*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %8(i32 5, i8* %11) #7
  br label %aws_raise_error.exit

12:                                               ; preds = %7
  %13 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %14 = icmp eq void (i32, i8*)* %13, null
  br i1 %14, label %aws_raise_error.exit, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %13(i32 5, i8* %16) #7
  br label %aws_raise_error.exit

17:                                               ; preds = %5
  %18 = add i32 %0, -1
  %19 = lshr i32 %18, 1
  %20 = or i32 %19, %18
  %21 = lshr i32 %20, 2
  %22 = or i32 %21, %20
  %23 = lshr i32 %22, 4
  %24 = or i32 %23, %22
  %25 = lshr i32 %24, 8
  %26 = or i32 %25, %24
  %27 = lshr i32 %26, 16
  %28 = or i32 %27, %26
  %29 = add i32 %28, 1
  store i32 %29, i32* %1, align 4, !tbaa !9
  br label %aws_raise_error.exit

aws_raise_error.exit:                             ; preds = %15, %12, %10, %17, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %2(i32 %0, i8* %5) #7
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %7(i32 %0, i8* %10) #7
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_last_error() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_str(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc %struct.aws_error_info* @get_error_by_code(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = and i32 %0, 1023
  %6 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %7 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %6, align 4, !tbaa !5
  %8 = icmp eq %struct.aws_error_info_list* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !11
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %5, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %7, i32 0, i32 0
  %16 = load %struct.aws_error_info*, %struct.aws_error_info** %15, align 4, !tbaa !14
  %17 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %16, i32 %5
  br label %18

18:                                               ; preds = %14, %9, %3, %1
  %.1 = phi %struct.aws_error_info* [ null, %1 ], [ %17, %14 ], [ null, %9 ], [ null, %3 ]
  ret %struct.aws_error_info* %.1
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_name(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_lib_name(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_error_debug_str(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = icmp ugt i32 %0, 16383
  br i1 %2, label %get_error_by_code.exit, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 10
  %5 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %4
  %6 = load volatile %struct.aws_error_info_list*, %struct.aws_error_info_list** %5, align 4, !tbaa !5
  ret void

get_error_by_code.exit:                           ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_raise_error_private(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %2(i32 %0, i8* %5) #7
  br label %11

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %7(i32 %0, i8* %10) #7
  br label %11

11:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_reset_error() unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_restore_error(i32 %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  store void (i32, i8*)* %0, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  store i8* %1, i8** @s_global_error_context, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %0, i8* %1) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  store void (i32, i8*)* %0, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  store i8* %1, i8** @tl_thread_handler_context, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_register_error_info(%struct.aws_error_info_list* %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 133) #8
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !14
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 134) #8
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !11
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 135) #8
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !15
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !5
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %17) #7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 144) #8
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* %0, %struct.aws_error_info_list** %23, align 4, !tbaa !5
  ret void
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* readonly %0) unnamed_addr #0 {
  tail call void @seahorn.fn.enter() #7
  %2 = icmp eq %struct.aws_error_info_list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 167) #8
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 0
  %6 = load %struct.aws_error_info*, %struct.aws_error_info** %5, align 4, !tbaa !14
  %7 = icmp eq %struct.aws_error_info* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 168) #8
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.aws_error_info_list, %struct.aws_error_info_list* %0, i32 0, i32 1
  %11 = load i16, i16* %10, align 4, !tbaa !11
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 169) #8
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aws_error_info, %struct.aws_error_info* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !15
  %17 = ashr i32 %16, 10
  %18 = icmp ugt i32 %16, 16383
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 4, !tbaa !5
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %17) #7
  tail call void @aws_fatal_assert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 178) #8
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds [16 x %struct.aws_error_info_list*], [16 x %struct.aws_error_info_list*]* @ERROR_SLOTS, i32 0, i32 %17
  store volatile %struct.aws_error_info_list* null, %struct.aws_error_info_list** %23, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @aws_translate_and_raise_io_error(i32 %0) unnamed_addr #0 {
NodeBlock25:
  tail call void @seahorn.fn.enter() #7
  %Pivot26 = icmp slt i32 %0, 22
  br i1 %Pivot26, label %NodeBlock9, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %Pivot24 = icmp slt i32 %0, 28
  br i1 %Pivot24, label %NodeBlock13, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %Pivot22 = icmp eq i32 %0, 28
  br i1 %Pivot22, label %61, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %Pivot20 = icmp slt i32 %0, 63
  br i1 %Pivot20, label %LeafBlock15, label %LeafBlock17

LeafBlock17:                                      ; preds = %NodeBlock19
  %SwitchLeaf18 = icmp eq i32 %0, 63
  br i1 %SwitchLeaf18, label %31, label %NewDefault

LeafBlock15:                                      ; preds = %NodeBlock19
  %SwitchLeaf16 = icmp eq i32 %0, 29
  br i1 %SwitchLeaf16, label %11, label %NewDefault

NodeBlock13:                                      ; preds = %NodeBlock23
  %Pivot14 = icmp slt i32 %0, 23
  br i1 %Pivot14, label %1, label %LeafBlock11

LeafBlock11:                                      ; preds = %NodeBlock13
  %SwitchLeaf12 = icmp eq i32 %0, 23
  br i1 %SwitchLeaf12, label %41, label %NewDefault

NodeBlock9:                                       ; preds = %NodeBlock25
  %Pivot10 = icmp slt i32 %0, 12
  br i1 %Pivot10, label %NodeBlock, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %Pivot8 = icmp eq i32 %0, 12
  br i1 %Pivot8, label %51, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %Pivot6 = icmp slt i32 %0, 21
  br i1 %Pivot6, label %LeafBlock3, label %31

LeafBlock3:                                       ; preds = %NodeBlock5
  %SwitchLeaf4 = icmp eq i32 %0, 13
  br i1 %SwitchLeaf4, label %21, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock9
  %Pivot = icmp slt i32 %0, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock1

LeafBlock1:                                       ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 2
  br i1 %SwitchLeaf2, label %31, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 1
  br i1 %SwitchLeaf, label %21, label %NewDefault

1:                                                ; preds = %NodeBlock13
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %2(i32 34, i8* %5) #7
  br label %aws_raise_error.5.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error.5.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %7(i32 34, i8* %10) #7
  br label %aws_raise_error.5.exit

11:                                               ; preds = %LeafBlock15
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %12 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %13 = icmp eq void (i32, i8*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %12(i32 42, i8* %15) #7
  br label %aws_raise_error.5.exit

16:                                               ; preds = %11
  %17 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %18 = icmp eq void (i32, i8*)* %17, null
  br i1 %18, label %aws_raise_error.5.exit, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %17(i32 42, i8* %20) #7
  br label %aws_raise_error.5.exit

21:                                               ; preds = %LeafBlock, %LeafBlock3
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %22 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %23 = icmp eq void (i32, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %22(i32 43, i8* %25) #7
  br label %aws_raise_error.5.exit

26:                                               ; preds = %21
  %27 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %28 = icmp eq void (i32, i8*)* %27, null
  br i1 %28, label %aws_raise_error.5.exit, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %27(i32 43, i8* %30) #7
  br label %aws_raise_error.5.exit

31:                                               ; preds = %LeafBlock1, %NodeBlock5, %LeafBlock17
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %32 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %33 = icmp eq void (i32, i8*)* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %32(i32 44, i8* %35) #7
  br label %aws_raise_error.5.exit

36:                                               ; preds = %31
  %37 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %38 = icmp eq void (i32, i8*)* %37, null
  br i1 %38, label %aws_raise_error.5.exit, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %37(i32 44, i8* %40) #7
  br label %aws_raise_error.5.exit

41:                                               ; preds = %LeafBlock11
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %42 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %43 = icmp eq void (i32, i8*)* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %42(i32 45, i8* %45) #7
  br label %aws_raise_error.5.exit

46:                                               ; preds = %41
  %47 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %48 = icmp eq void (i32, i8*)* %47, null
  br i1 %48, label %aws_raise_error.5.exit, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %47(i32 45, i8* %50) #7
  br label %aws_raise_error.5.exit

51:                                               ; preds = %NodeBlock7
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %52 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %53 = icmp eq void (i32, i8*)* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %52(i32 1, i8* %55) #7
  br label %aws_raise_error.5.exit

56:                                               ; preds = %51
  %57 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %58 = icmp eq void (i32, i8*)* %57, null
  br i1 %58, label %aws_raise_error.5.exit, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %57(i32 1, i8* %60) #7
  br label %aws_raise_error.5.exit

61:                                               ; preds = %NodeBlock21
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %62 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %63 = icmp eq void (i32, i8*)* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %62(i32 2, i8* %65) #7
  br label %aws_raise_error.5.exit

66:                                               ; preds = %61
  %67 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %68 = icmp eq void (i32, i8*)* %67, null
  br i1 %68, label %aws_raise_error.5.exit, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %67(i32 2, i8* %70) #7
  br label %aws_raise_error.5.exit

NewDefault:                                       ; preds = %LeafBlock, %LeafBlock1, %LeafBlock3, %LeafBlock11, %LeafBlock15, %LeafBlock17
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %71 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %72 = icmp eq void (i32, i8*)* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %NewDefault
  %74 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %71(i32 46, i8* %74) #7
  br label %aws_raise_error.5.exit

75:                                               ; preds = %NewDefault
  %76 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %77 = icmp eq void (i32, i8*)* %76, null
  br i1 %77, label %aws_raise_error.5.exit, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %76(i32 46, i8* %79) #7
  br label %aws_raise_error.5.exit

aws_raise_error.5.exit:                           ; preds = %78, %75, %73, %69, %66, %64, %59, %56, %54, %49, %46, %44, %39, %36, %34, %29, %26, %24, %19, %16, %14, %9, %6, %4
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aws_raise_error.5(i32 %0) unnamed_addr #1 {
  tail call void @seahorn.fn.enter() #7
  tail call void @seahorn.fn.enter() #7
  %2 = load void (i32, i8*)*, void (i32, i8*)** @tl_thread_handler, align 4, !tbaa !5
  %3 = icmp eq void (i32, i8*)* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @tl_thread_handler_context, align 4, !tbaa !5
  tail call void %2(i32 %0, i8* %5) #7
  br label %aws_raise_error_private.exit

6:                                                ; preds = %1
  %7 = load void (i32, i8*)*, void (i32, i8*)** @s_global_handler, align 4, !tbaa !5
  %8 = icmp eq void (i32, i8*)* %7, null
  br i1 %8, label %aws_raise_error_private.exit, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** @s_global_error_context, align 4, !tbaa !5
  tail call void %7(i32 %0, i8* %10) #7
  br label %aws_raise_error_private.exit

aws_raise_error_private.exit:                     ; preds = %4, %6, %9
  ret void
}

define i32 @main() local_unnamed_addr {
  store i8* null, i8** @tl_thread_handler_context, align 4
  store void (i32, i8*)* null, void (i32, i8*)** @tl_thread_handler, align 4
  store void (i32, i8*)* null, void (i32, i8*)** @s_global_handler, align 4
  store i8* null, i8** @s_global_error_context, align 4
  tail call void @seahorn.fn.enter()
  tail call fastcc void @aws_round_up_to_power_of_two_harness()
  %1 = tail call i32 @verifier.nondet.1()
  %2 = tail call i32* @verifier.nondet.2()
  tail call fastcc void @aws_round_up_to_power_of_two(i32 %1, i32* %2)
  %3 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_raise_error(i32 %3)
  tail call fastcc void @aws_last_error()
  %4 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_error_str(i32 %4)
  %5 = tail call i32 @verifier.nondet.1()
  %6 = tail call fastcc %struct.aws_error_info* @get_error_by_code(i32 %5)
  %7 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_error_name(i32 %7)
  %8 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_error_lib_name(i32 %8)
  %9 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_error_debug_str(i32 %9)
  %10 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_raise_error_private(i32 %10)
  tail call fastcc void @aws_reset_error()
  %11 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_restore_error(i32 %11)
  %12 = tail call void (i32, i8*)* @verifier.nondet.3()
  %13 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_global_error_handler_fn(void (i32, i8*)* %12, i8* %13)
  %14 = tail call void (i32, i8*)* @verifier.nondet.3()
  %15 = tail call i8* @verifier.nondet.4()
  tail call fastcc void @aws_set_thread_local_error_handler_fn(void (i32, i8*)* %14, i8* %15)
  %16 = tail call %struct.aws_error_info_list* @verifier.nondet.5()
  tail call fastcc void @aws_register_error_info(%struct.aws_error_info_list* %16)
  %17 = tail call %struct.aws_error_info_list* @verifier.nondet.5()
  tail call fastcc void @aws_unregister_error_info(%struct.aws_error_info_list* %17)
  %18 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_translate_and_raise_io_error(i32 %18)
  %19 = tail call i32 @verifier.nondet.1()
  tail call fastcc void @aws_raise_error.5(i32 %19)
  ret i32 42
}

declare i32 @verifier.nondet.1() local_unnamed_addr

declare i32* @verifier.nondet.2() local_unnamed_addr

declare void (i32, i8*)* @verifier.nondet.3() local_unnamed_addr

declare i8* @verifier.nondet.4() local_unnamed_addr

declare %struct.aws_error_info_list* @verifier.nondet.5() local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume(i1) #4

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @verifier.assume.not(i1) #4

; Function Attrs: inaccessiblememonly nofree norecurse nounwind
declare void @seahorn.fail() #4

; Function Attrs: inaccessiblememonly nofree norecurse noreturn nounwind
declare void @verifier.error() #5

; Function Attrs: inaccessiblememonly
declare void @seahorn.fn.enter() local_unnamed_addr #6

declare i32 @verifier.nondet.6() local_unnamed_addr

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nofree norecurse nounwind }
attributes #5 = { inaccessiblememonly nofree norecurse noreturn nounwind }
attributes #6 = { inaccessiblememonly }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple clang version 12.0.5 (clang-1205.0.22.9)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 3]}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !13, i64 4}
!12 = !{!"aws_error_info_list", !6, i64 0, !13, i64 4}
!13 = !{!"short", !7, i64 0}
!14 = !{!12, !6, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"aws_error_info", !17, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!17 = !{!"int", !7, i64 0}
