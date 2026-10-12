create_project prj -part xczu3eg-sbva484-1-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_8/hls_dot/solution1/syn/verilog/dot_q8_0_fadd_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_8/hls_dot/solution1/syn/verilog/dot_q8_0_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "/misc/scratch/nkg557/SoC/Lab2/Part6/part6_v4/design_8/hls_dot/solution1/syn/verilog/dot_q8_0_sitofp_32s_32_4_no_dsp_1_ip.tcl"
