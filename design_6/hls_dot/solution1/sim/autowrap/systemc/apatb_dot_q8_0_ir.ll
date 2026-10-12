; ModuleID = '/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6/hls_dot/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define float @apatb_dot_q8_0_ir(i32 %nb, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4864" %xq, half* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="152" %xd, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4864" %yq, half* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="152" %yd) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 2432)
  %malloccall_1 = call i8* @malloc(i64 2432)
  %xq_copy_0 = bitcast i8* %malloccall_0 to [2432 x i8]*
  %xq_copy_1 = bitcast i8* %malloccall_1 to [2432 x i8]*
  %xd_copy = alloca [152 x half], align 512
  %malloccall1_0 = call i8* @malloc(i64 2432)
  %malloccall1_1 = call i8* @malloc(i64 2432)
  %yq_copy_0 = bitcast i8* %malloccall1_0 to [2432 x i8]*
  %yq_copy_1 = bitcast i8* %malloccall1_1 to [2432 x i8]*
  %yd_copy = alloca [152 x half], align 512
  %0 = bitcast i8* %xq to [4864 x i8]*
  %1 = bitcast half* %xd to [152 x half]*
  %2 = bitcast i8* %yq to [4864 x i8]*
  %3 = bitcast half* %yd to [152 x half]*
  call void @copy_in([4864 x i8]* nonnull %0, [2432 x i8]* %xq_copy_0, [2432 x i8]* %xq_copy_1, [152 x half]* nonnull %1, [152 x half]* nonnull align 512 %xd_copy, [4864 x i8]* nonnull %2, [2432 x i8]* %yq_copy_0, [2432 x i8]* %yq_copy_1, [152 x half]* nonnull %3, [152 x half]* nonnull align 512 %yd_copy)
  %4 = getelementptr inbounds [152 x half], [152 x half]* %xd_copy, i32 0, i32 0
  %5 = getelementptr inbounds [152 x half], [152 x half]* %yd_copy, i32 0, i32 0
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"(i8* %malloccall_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !19
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"(i8* %malloccall_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !19
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"(i8* %malloccall1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"(i8* %malloccall1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  %6 = call float @apatb_dot_q8_0_hw(i32 %nb, [2432 x i8]* %xq_copy_0, [2432 x i8]* %xq_copy_1, half* %4, [2432 x i8]* %yq_copy_0, [2432 x i8]* %yq_copy_1, half* %5)
  call void @copy_back([4864 x i8]* %0, [2432 x i8]* %xq_copy_0, [2432 x i8]* %xq_copy_1, [152 x half]* %1, [152 x half]* %xd_copy, [4864 x i8]* %2, [2432 x i8]* %yq_copy_0, [2432 x i8]* %yq_copy_1, [152 x half]* %3, [152 x half]* %yd_copy)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  ret float %6
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* noalias align 512, [152 x half]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [152 x half]* %0, null
  %3 = icmp eq [152 x half]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [152 x half], [152 x half]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [152 x half], [152 x half]* %1, i64 0, i64 %for.loop.idx1
  %5 = load half, half* %src.addr, align 2
  store half %5, half* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 152
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4864i8.3.4([2432 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, [2432 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, [4864 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [2432 x i8]* %_0, null
  %2 = icmp eq [4864 x i8]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 2
  %5 = udiv i64 %for.loop.idx1, 2
  %dst.addr_0 = getelementptr [2432 x i8], [2432 x i8]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [2432 x i8], [2432 x i8]* %_1, i64 0, i64 %5
  %src.addr = getelementptr [4864 x i8], [4864 x i8]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i8, i8* %src.addr, align 1
  %7 = trunc i64 %4 to i1
  %cond = icmp eq i1 %7, false
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store i8 %6, i8* %dst.addr_0, align 1
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %7)
  store i8 %6, i8* %dst.addr_1, align 1
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4864
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([4864 x i8]* noalias readonly "orig.arg.no"="0", [2432 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [2432 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [152 x half]* noalias readonly "orig.arg.no"="2", [152 x half]* noalias align 512 "orig.arg.no"="3", [4864 x i8]* noalias readonly "orig.arg.no"="4", [2432 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, [2432 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, [152 x half]* noalias readonly "orig.arg.no"="6", [152 x half]* noalias align 512 "orig.arg.no"="7") #4 {
entry:
  call void @onebyonecpy_hls.p0a4864i8.3.4([2432 x i8]* %_0, [2432 x i8]* %_1, [4864 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* align 512 %2, [152 x half]* %1)
  call void @onebyonecpy_hls.p0a4864i8.3.4([2432 x i8]* %_01, [2432 x i8]* %_12, [4864 x i8]* %3)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* align 512 %5, [152 x half]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4864i8.9.10([4864 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1) #2 {
entry:
  %1 = icmp eq [4864 x i8]* %0, null
  %2 = icmp eq [2432 x i8]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [4864 x i8], [4864 x i8]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 2
  %5 = udiv i64 %for.loop.idx1, 2
  %src.addr_0 = getelementptr [2432 x i8], [2432 x i8]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [2432 x i8], [2432 x i8]* %_1, i64 0, i64 %5
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i8, i8* %src.addr_0, align 1
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %6)
  %_12 = load i8, i8* %src.addr_1, align 1
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %7 = phi i8 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ]
  store i8 %7, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4864
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([4864 x i8]* noalias "orig.arg.no"="0", [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [152 x half]* noalias "orig.arg.no"="2", [152 x half]* noalias readonly align 512 "orig.arg.no"="3", [4864 x i8]* noalias "orig.arg.no"="4", [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, [152 x half]* noalias "orig.arg.no"="6", [152 x half]* noalias readonly align 512 "orig.arg.no"="7") #5 {
entry:
  call void @onebyonecpy_hls.p0a4864i8.9.10([4864 x i8]* %0, [2432 x i8]* %_0, [2432 x i8]* %_1)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* %1, [152 x half]* align 512 %2)
  call void @onebyonecpy_hls.p0a4864i8.9.10([4864 x i8]* %3, [2432 x i8]* %_01, [2432 x i8]* %_12)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* %4, [152 x half]* align 512 %5)
  ret void
}

declare float @apatb_dot_q8_0_hw(i32, [2432 x i8]*, [2432 x i8]*, half*, [2432 x i8]*, [2432 x i8]*, half*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([4864 x i8]* noalias "orig.arg.no"="0", [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [152 x half]* noalias "orig.arg.no"="2", [152 x half]* noalias readonly align 512 "orig.arg.no"="3", [4864 x i8]* noalias "orig.arg.no"="4", [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, [2432 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, [152 x half]* noalias "orig.arg.no"="6", [152 x half]* noalias readonly align 512 "orig.arg.no"="7") #5 {
entry:
  ret void
}

define float @dot_q8_0_hw_stub_wrapper(i32, [2432 x i8]*, [2432 x i8]*, half*, [2432 x i8]*, [2432 x i8]*, half*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 4864)
  %7 = bitcast i8* %malloccall to [4864 x i8]*
  %malloccall1 = tail call i8* @malloc(i64 4864)
  %8 = bitcast i8* %malloccall1 to [4864 x i8]*
  %9 = bitcast half* %3 to [152 x half]*
  %10 = bitcast half* %6 to [152 x half]*
  call void @copy_out([4864 x i8]* %7, [2432 x i8]* %1, [2432 x i8]* %2, [152 x half]* null, [152 x half]* %9, [4864 x i8]* %8, [2432 x i8]* %4, [2432 x i8]* %5, [152 x half]* null, [152 x half]* %10)
  %11 = bitcast [4864 x i8]* %7 to i8*
  %12 = bitcast [152 x half]* %9 to half*
  %13 = bitcast [4864 x i8]* %8 to i8*
  %14 = bitcast [152 x half]* %10 to half*
  %15 = call float @dot_q8_0_hw_stub(i32 %0, i8* %11, half* %12, i8* %13, half* %14)
  call void @copy_in([4864 x i8]* %7, [2432 x i8]* %1, [2432 x i8]* %2, [152 x half]* null, [152 x half]* %9, [4864 x i8]* %8, [2432 x i8]* %4, [2432 x i8]* %5, [152 x half]* null, [152 x half]* %10)
  ret float %15
}

declare float @dot_q8_0_hw_stub(i32, i8*, half*, i8*, half*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !13}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"1", [4864 x i8]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Cyclic", !"dim=1", !"factor=2"}
!10 = !{!11, !12}
!11 = !{!"1.0", [2432 x i8]* null}
!12 = !{!"1.1", [2432 x i8]* null}
!13 = !{!14, !8, !16}
!14 = !{!15}
!15 = !{!"3", [4864 x i8]* null}
!16 = !{!17, !18}
!17 = !{!"3.0", [2432 x i8]* null}
!18 = !{!"3.1", [2432 x i8]* null}
!19 = !DILocation(line: 3, column: 9, scope: !20)
!20 = !DILexicalBlockFile(scope: !22, file: !21, discriminator: 0)
!21 = !DIFile(filename: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6/directives.tcl", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6")
!22 = distinct !DISubprogram(name: "dot_q8_0", linkageName: "_Z8dot_q8_0iPKaPKDhS0_S2_", scope: !23, file: !23, line: 42, type: !24, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !40, variables: !4)
!23 = !DIFile(filename: "dot_q8_0.cpp", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !28, !35, !28, !35}
!26 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !31, line: 24, baseType: !32)
!31 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !33, line: 36, baseType: !34)
!33 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6")
!34 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !38, line: 11, baseType: !39)
!38 = !DIFile(filename: "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/common/technology/autopilot/hls_half.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6")
!39 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!40 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !41, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42)
!41 = !DIFile(filename: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6/hls_dot/solution1/.autopilot/db/dot_q8_0.pp.0.cpp", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6")
!42 = !{!26, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 26, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_6")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 41, baseType: !46)
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !DILocation(line: 4, column: 9, scope: !20)
