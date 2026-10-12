; ModuleID = '/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_5/hls_dot/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define float @apatb_dot_q8_0_ir(i32 %nb, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4864" %xq, half* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="152" %xd, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4864" %yq, half* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="152" %yd) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4864)
  %xq_copy = bitcast i8* %malloccall to [4864 x i8]*
  %xd_copy = alloca [152 x half], align 512
  %malloccall1 = tail call i8* @malloc(i64 4864)
  %yq_copy = bitcast i8* %malloccall1 to [4864 x i8]*
  %yd_copy = alloca [152 x half], align 512
  %0 = bitcast i8* %xq to [4864 x i8]*
  %1 = bitcast half* %xd to [152 x half]*
  %2 = bitcast i8* %yq to [4864 x i8]*
  %3 = bitcast half* %yd to [152 x half]*
  call fastcc void @copy_in([4864 x i8]* nonnull %0, [4864 x i8]* %xq_copy, [152 x half]* nonnull %1, [152 x half]* nonnull align 512 %xd_copy, [4864 x i8]* nonnull %2, [4864 x i8]* %yq_copy, [152 x half]* nonnull %3, [152 x half]* nonnull align 512 %yd_copy)
  %4 = getelementptr inbounds [152 x half], [152 x half]* %xd_copy, i32 0, i32 0
  %5 = getelementptr inbounds [152 x half], [152 x half]* %yd_copy, i32 0, i32 0
  %6 = call float @apatb_dot_q8_0_hw(i32 %nb, i8* %malloccall, half* %4, i8* %malloccall1, half* %5)
  call void @copy_back([4864 x i8]* %0, [4864 x i8]* %xq_copy, [152 x half]* %1, [152 x half]* %xd_copy, [4864 x i8]* %2, [4864 x i8]* %yq_copy, [152 x half]* %3, [152 x half]* %yd_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret float %6
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([4864 x i8]* noalias readonly, [4864 x i8]* noalias, [152 x half]* noalias readonly, [152 x half]* noalias align 512, [4864 x i8]* noalias readonly, [4864 x i8]* noalias, [152 x half]* noalias readonly, [152 x half]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4864i8([4864 x i8]* %1, [4864 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* align 512 %3, [152 x half]* %2)
  call fastcc void @onebyonecpy_hls.p0a4864i8([4864 x i8]* %5, [4864 x i8]* %4)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* align 512 %7, [152 x half]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4864i8([4864 x i8]* noalias, [4864 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4864 x i8]* %0, null
  %3 = icmp eq [4864 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4864 x i8], [4864 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4864 x i8], [4864 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4864
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

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

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([4864 x i8]* noalias, [4864 x i8]* noalias readonly, [152 x half]* noalias, [152 x half]* noalias readonly align 512, [4864 x i8]* noalias, [4864 x i8]* noalias readonly, [152 x half]* noalias, [152 x half]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4864i8([4864 x i8]* %0, [4864 x i8]* %1)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* %2, [152 x half]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a4864i8([4864 x i8]* %4, [4864 x i8]* %5)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* %6, [152 x half]* align 512 %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare float @apatb_dot_q8_0_hw(i32, i8*, half*, i8*, half*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([4864 x i8]* noalias, [4864 x i8]* noalias readonly, [152 x half]* noalias, [152 x half]* noalias readonly align 512, [4864 x i8]* noalias, [4864 x i8]* noalias readonly, [152 x half]* noalias, [152 x half]* noalias readonly align 512) unnamed_addr #3 {
entry:
  ret void
}

define float @dot_q8_0_hw_stub_wrapper(i32, i8*, half*, i8*, half*) #4 {
entry:
  %5 = bitcast i8* %1 to [4864 x i8]*
  %6 = bitcast half* %2 to [152 x half]*
  %7 = bitcast i8* %3 to [4864 x i8]*
  %8 = bitcast half* %4 to [152 x half]*
  call void @copy_out([4864 x i8]* null, [4864 x i8]* %5, [152 x half]* null, [152 x half]* %6, [4864 x i8]* null, [4864 x i8]* %7, [152 x half]* null, [152 x half]* %8)
  %9 = bitcast [4864 x i8]* %5 to i8*
  %10 = bitcast [152 x half]* %6 to half*
  %11 = bitcast [4864 x i8]* %7 to i8*
  %12 = bitcast [152 x half]* %8 to half*
  %13 = call float @dot_q8_0_hw_stub(i32 %0, i8* %9, half* %10, i8* %11, half* %12)
  call void @copy_in([4864 x i8]* null, [4864 x i8]* %5, [152 x half]* null, [152 x half]* %6, [4864 x i8]* null, [4864 x i8]* %7, [152 x half]* null, [152 x half]* %8)
  ret float %13
}

declare float @dot_q8_0_hw_stub(i32, i8*, half*, i8*, half*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
