; ModuleID = '/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9/hls_dot/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define float @apatb_dot_q8_0_ir(i32 %nb, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4864" %xq, half* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="152" %xd, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4864" %yq, half* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="152" %yd) local_unnamed_addr #1 {
entry:
  %malloccall = call i8* @malloc(i64 4864)
  %xq_copy2 = bitcast i8* %malloccall to [152 x i256]*
  %xd_copy = alloca [152 x half], align 512
  %malloccall1 = call i8* @malloc(i64 4864)
  %yq_copy3 = bitcast i8* %malloccall1 to [152 x i256]*
  %yd_copy = alloca [152 x half], align 512
  %0 = bitcast i8* %xq to [4864 x i8]*
  %1 = bitcast half* %xd to [152 x half]*
  %2 = bitcast i8* %yq to [4864 x i8]*
  %3 = bitcast half* %yd to [152 x half]*
  call void @copy_in([4864 x i8]* nonnull %0, [152 x i256]* %xq_copy2, [152 x half]* nonnull %1, [152 x half]* nonnull align 512 %xd_copy, [4864 x i8]* nonnull %2, [152 x i256]* %yq_copy3, [152 x half]* nonnull %3, [152 x half]* nonnull align 512 %yd_copy)
  %4 = getelementptr inbounds [152 x half], [152 x half]* %xd_copy, i32 0, i32 0
  %5 = getelementptr inbounds [152 x half], [152 x half]* %yd_copy, i32 0, i32 0
  call void @llvm.sideeffect() #6 [ "xlx_array_reshape"(i8* %malloccall, i32 998, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #6 [ "xlx_array_reshape"(i8* %malloccall1, i32 998, i32 1, i32 0) ], !dbg !33
  %6 = call float @apatb_dot_q8_0_hw(i32 %nb, [152 x i256]* %xq_copy2, half* %4, [152 x i256]* %yq_copy3, half* %5)
  call void @copy_back([4864 x i8]* %0, [152 x i256]* %xq_copy2, [152 x half]* %1, [152 x half]* %xd_copy, [4864 x i8]* %2, [152 x i256]* %yq_copy3, [152 x half]* %3, [152 x half]* %yd_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
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

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4864i8.3.4([152 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [4864 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [152 x i256]* %0, null
  %3 = icmp eq [4864 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = urem i64 %for.loop.idx1, 32
  %6 = mul i64 8, %5
  %7 = udiv i64 %for.loop.idx1, 32
  %dst.addr1 = getelementptr [152 x i256], [152 x i256]* %0, i64 0, i64 %7
  %src.addr = getelementptr [4864 x i8], [4864 x i8]* %1, i64 0, i64 %for.loop.idx1
  %8 = load i8, i8* %src.addr, align 1
  %9 = load i256, i256* %dst.addr1, align 32
  %10 = zext i64 %6 to i256
  %11 = shl i256 255, %10
  %12 = zext i8 %8 to i256
  %13 = shl i256 %12, %10
  %14 = xor i256 %11, -1
  %15 = and i256 %9, %14
  %16 = or i256 %15, %13
  store i256 %16, i256* %dst.addr1, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4864
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([4864 x i8]* noalias readonly "orig.arg.no"="0", [152 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [152 x half]* noalias readonly "orig.arg.no"="2", [152 x half]* noalias align 512 "orig.arg.no"="3", [4864 x i8]* noalias readonly "orig.arg.no"="4", [152 x i256]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5", [152 x half]* noalias readonly "orig.arg.no"="6", [152 x half]* noalias align 512 "orig.arg.no"="7") #3 {
entry:
  call void @onebyonecpy_hls.p0a4864i8.3.4([152 x i256]* %1, [4864 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* align 512 %3, [152 x half]* %2)
  call void @onebyonecpy_hls.p0a4864i8.3.4([152 x i256]* %5, [4864 x i8]* %4)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* align 512 %7, [152 x half]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4864i8.9.10([4864 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [152 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [4864 x i8]* %0, null
  %3 = icmp eq [152 x i256]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4864 x i8], [4864 x i8]* %0, i64 0, i64 %for.loop.idx1
  %5 = urem i64 %for.loop.idx1, 32
  %6 = mul i64 8, %5
  %7 = udiv i64 %for.loop.idx1, 32
  %src.addr1 = getelementptr [152 x i256], [152 x i256]* %1, i64 0, i64 %7
  %8 = load i256, i256* %src.addr1, align 32
  %9 = zext i64 %6 to i256
  %10 = lshr i256 %8, %9
  %11 = trunc i256 %10 to i8
  store i8 %11, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4864
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([4864 x i8]* noalias "orig.arg.no"="0", [152 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [152 x half]* noalias "orig.arg.no"="2", [152 x half]* noalias readonly align 512 "orig.arg.no"="3", [4864 x i8]* noalias "orig.arg.no"="4", [152 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5", [152 x half]* noalias "orig.arg.no"="6", [152 x half]* noalias readonly align 512 "orig.arg.no"="7") #4 {
entry:
  call void @onebyonecpy_hls.p0a4864i8.9.10([4864 x i8]* %0, [152 x i256]* %1)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* %2, [152 x half]* align 512 %3)
  call void @onebyonecpy_hls.p0a4864i8.9.10([4864 x i8]* %4, [152 x i256]* %5)
  call fastcc void @onebyonecpy_hls.p0a152f16([152 x half]* %6, [152 x half]* align 512 %7)
  ret void
}

declare float @apatb_dot_q8_0_hw(i32, [152 x i256]*, half*, [152 x i256]*, half*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([4864 x i8]* noalias "orig.arg.no"="0", [152 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [152 x half]* noalias "orig.arg.no"="2", [152 x half]* noalias readonly align 512 "orig.arg.no"="3", [4864 x i8]* noalias "orig.arg.no"="4", [152 x i256]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5", [152 x half]* noalias "orig.arg.no"="6", [152 x half]* noalias readonly align 512 "orig.arg.no"="7") #4 {
entry:
  ret void
}

define float @dot_q8_0_hw_stub_wrapper(i32, [152 x i256]*, half*, [152 x i256]*, half*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 4864)
  %5 = bitcast i8* %malloccall to [4864 x i8]*
  %malloccall1 = tail call i8* @malloc(i64 4864)
  %6 = bitcast i8* %malloccall1 to [4864 x i8]*
  %7 = bitcast half* %2 to [152 x half]*
  %8 = bitcast half* %4 to [152 x half]*
  call void @copy_out([4864 x i8]* %5, [152 x i256]* %1, [152 x half]* null, [152 x half]* %7, [4864 x i8]* %6, [152 x i256]* %3, [152 x half]* null, [152 x half]* %8)
  %9 = bitcast [4864 x i8]* %5 to i8*
  %10 = bitcast [152 x half]* %7 to half*
  %11 = bitcast [4864 x i8]* %6 to i8*
  %12 = bitcast [152 x half]* %8 to half*
  %13 = call float @dot_q8_0_hw_stub(i32 %0, i8* %9, half* %10, i8* %11, half* %12)
  call void @copy_in([4864 x i8]* %5, [152 x i256]* %1, [152 x half]* null, [152 x half]* %7, [4864 x i8]* %6, [152 x i256]* %3, [152 x half]* null, [152 x half]* %8)
  ret float %13
}

declare float @dot_q8_0_hw_stub(i32, i8*, half*, i8*, half*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }
attributes #6 = { inaccessiblememonly nounwind "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 2, column: 9, scope: !6)
!6 = !DILexicalBlockFile(scope: !8, file: !7, discriminator: 0)
!7 = !DIFile(filename: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9/directives.tcl", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9")
!8 = distinct !DISubprogram(name: "dot_q8_0", linkageName: "_Z8dot_q8_0iPKaPKDhS0_S2_", scope: !9, file: !9, line: 42, type: !10, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !26, variables: !4)
!9 = !DIFile(filename: "dot_q8_0.cpp", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !14, !21, !14, !21}
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !17, line: 24, baseType: !18)
!17 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !19, line: 36, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9")
!20 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !24, line: 11, baseType: !25)
!24 = !DIFile(filename: "/usr/local/packages/Xilinx_2022.2/Vitis_HLS/2022.2/common/technology/autopilot/hls_half.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9")
!25 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!26 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !27, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28)
!27 = !DIFile(filename: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9/hls_dot/solution1/.autopilot/db/dot_q8_0.pp.0.cpp", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9")
!28 = !{!12, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 26, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_9")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 41, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 3, column: 9, scope: !6)
