set moduleName dot_q8_0
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dot_q8_0}
set C_modelType { float 32 }
set C_modelArgList {
	{ nb int 32 regular  }
	{ xq int 8 regular {bram 4864 { 1 1 } 1 1 }  }
	{ xd int 16 regular {bram 152 { 1 3 } 1 1 }  }
	{ yq int 8 regular {bram 4864 { 1 1 } 1 1 }  }
	{ yd int 16 regular {bram 152 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xq", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xd", "interface" : "bram", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "yq", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "yd", "interface" : "bram", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nb sc_in sc_lv 32 signal 0 } 
	{ xq_Addr_A sc_out sc_lv 32 signal 1 } 
	{ xq_EN_A sc_out sc_logic 1 signal 1 } 
	{ xq_WEN_A sc_out sc_lv 1 signal 1 } 
	{ xq_Din_A sc_out sc_lv 8 signal 1 } 
	{ xq_Dout_A sc_in sc_lv 8 signal 1 } 
	{ xq_Clk_A sc_out sc_logic 1 signal 1 } 
	{ xq_Rst_A sc_out sc_logic 1 signal 1 } 
	{ xq_Addr_B sc_out sc_lv 32 signal 1 } 
	{ xq_EN_B sc_out sc_logic 1 signal 1 } 
	{ xq_WEN_B sc_out sc_lv 1 signal 1 } 
	{ xq_Din_B sc_out sc_lv 8 signal 1 } 
	{ xq_Dout_B sc_in sc_lv 8 signal 1 } 
	{ xq_Clk_B sc_out sc_logic 1 signal 1 } 
	{ xq_Rst_B sc_out sc_logic 1 signal 1 } 
	{ xd_Addr_A sc_out sc_lv 32 signal 2 } 
	{ xd_EN_A sc_out sc_logic 1 signal 2 } 
	{ xd_WEN_A sc_out sc_lv 2 signal 2 } 
	{ xd_Din_A sc_out sc_lv 16 signal 2 } 
	{ xd_Dout_A sc_in sc_lv 16 signal 2 } 
	{ xd_Clk_A sc_out sc_logic 1 signal 2 } 
	{ xd_Rst_A sc_out sc_logic 1 signal 2 } 
	{ yq_Addr_A sc_out sc_lv 32 signal 3 } 
	{ yq_EN_A sc_out sc_logic 1 signal 3 } 
	{ yq_WEN_A sc_out sc_lv 1 signal 3 } 
	{ yq_Din_A sc_out sc_lv 8 signal 3 } 
	{ yq_Dout_A sc_in sc_lv 8 signal 3 } 
	{ yq_Clk_A sc_out sc_logic 1 signal 3 } 
	{ yq_Rst_A sc_out sc_logic 1 signal 3 } 
	{ yq_Addr_B sc_out sc_lv 32 signal 3 } 
	{ yq_EN_B sc_out sc_logic 1 signal 3 } 
	{ yq_WEN_B sc_out sc_lv 1 signal 3 } 
	{ yq_Din_B sc_out sc_lv 8 signal 3 } 
	{ yq_Dout_B sc_in sc_lv 8 signal 3 } 
	{ yq_Clk_B sc_out sc_logic 1 signal 3 } 
	{ yq_Rst_B sc_out sc_logic 1 signal 3 } 
	{ yd_Addr_A sc_out sc_lv 32 signal 4 } 
	{ yd_EN_A sc_out sc_logic 1 signal 4 } 
	{ yd_WEN_A sc_out sc_lv 2 signal 4 } 
	{ yd_Din_A sc_out sc_lv 16 signal 4 } 
	{ yd_Dout_A sc_in sc_lv 16 signal 4 } 
	{ yd_Clk_A sc_out sc_logic 1 signal 4 } 
	{ yd_Rst_A sc_out sc_logic 1 signal 4 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nb", "role": "default" }} , 
 	{ "name": "xq_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq", "role": "Addr_A" }} , 
 	{ "name": "xq_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "EN_A" }} , 
 	{ "name": "xq_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "WEN_A" }} , 
 	{ "name": "xq_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Din_A" }} , 
 	{ "name": "xq_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Dout_A" }} , 
 	{ "name": "xq_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "Clk_A" }} , 
 	{ "name": "xq_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "Rst_A" }} , 
 	{ "name": "xq_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq", "role": "Addr_B" }} , 
 	{ "name": "xq_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "EN_B" }} , 
 	{ "name": "xq_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "WEN_B" }} , 
 	{ "name": "xq_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Din_B" }} , 
 	{ "name": "xq_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Dout_B" }} , 
 	{ "name": "xq_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "Clk_B" }} , 
 	{ "name": "xq_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "Rst_B" }} , 
 	{ "name": "xd_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xd", "role": "Addr_A" }} , 
 	{ "name": "xd_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xd", "role": "EN_A" }} , 
 	{ "name": "xd_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "xd", "role": "WEN_A" }} , 
 	{ "name": "xd_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xd", "role": "Din_A" }} , 
 	{ "name": "xd_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xd", "role": "Dout_A" }} , 
 	{ "name": "xd_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xd", "role": "Clk_A" }} , 
 	{ "name": "xd_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xd", "role": "Rst_A" }} , 
 	{ "name": "yq_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq", "role": "Addr_A" }} , 
 	{ "name": "yq_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "EN_A" }} , 
 	{ "name": "yq_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "WEN_A" }} , 
 	{ "name": "yq_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Din_A" }} , 
 	{ "name": "yq_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Dout_A" }} , 
 	{ "name": "yq_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "Clk_A" }} , 
 	{ "name": "yq_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "Rst_A" }} , 
 	{ "name": "yq_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq", "role": "Addr_B" }} , 
 	{ "name": "yq_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "EN_B" }} , 
 	{ "name": "yq_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "WEN_B" }} , 
 	{ "name": "yq_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Din_B" }} , 
 	{ "name": "yq_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Dout_B" }} , 
 	{ "name": "yq_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "Clk_B" }} , 
 	{ "name": "yq_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "Rst_B" }} , 
 	{ "name": "yd_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yd", "role": "Addr_A" }} , 
 	{ "name": "yd_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yd", "role": "EN_A" }} , 
 	{ "name": "yd_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "yd", "role": "WEN_A" }} , 
 	{ "name": "yd_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "yd", "role": "Din_A" }} , 
 	{ "name": "yd_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "yd", "role": "Dout_A" }} , 
 	{ "name": "yd_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yd", "role": "Clk_A" }} , 
 	{ "name": "yd_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yd", "role": "Rst_A" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "19", "20", "21"],
		"CDFG" : "dot_q8_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1065", "EstimateLatencyMax" : "5777",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "xq", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198", "Port" : "xq", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "xd", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "yq", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198", "Port" : "yq", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "yd", "Type" : "Bram", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "BLOCK_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "dot_q8_0_Pipeline_ELEM_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "xq", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "yq", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "ib", "Type" : "None", "Direction" : "I"},
			{"Name" : "sumi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ELEM_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mul_8s_8s_16_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.mac_muladd_8s_8s_16s_17_4_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dot_q8_0_Pipeline_ELEM_LOOP_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U22", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U23", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U24", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dot_q8_0 {
		nb {Type I LastRead 0 FirstWrite -1}
		xq {Type I LastRead 8 FirstWrite -1}
		xd {Type I LastRead 1 FirstWrite -1}
		yq {Type I LastRead 8 FirstWrite -1}
		yd {Type I LastRead 1 FirstWrite -1}}
	dot_q8_0_Pipeline_ELEM_LOOP {
		tmp {Type I LastRead 0 FirstWrite -1}
		xq {Type I LastRead 8 FirstWrite -1}
		yq {Type I LastRead 8 FirstWrite -1}
		ib {Type I LastRead 0 FirstWrite -1}
		sumi_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1065", "Max" : "5777"}
	, {"Name" : "Interval", "Min" : "1066", "Max" : "5778"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nb { ap_none {  { nb in_data 0 32 } } }
	xq { bram {  { xq_Addr_A MemPortADDR2 1 32 }  { xq_EN_A MemPortCE2 1 1 }  { xq_WEN_A MemPortWE2 1 1 }  { xq_Din_A MemPortDIN2 1 8 }  { xq_Dout_A MemPortDOUT2 0 8 }  { xq_Clk_A mem_clk 1 1 }  { xq_Rst_A mem_rst 1 1 }  { xq_Addr_B MemPortADDR2 1 32 }  { xq_EN_B MemPortCE2 1 1 }  { xq_WEN_B MemPortWE2 1 1 }  { xq_Din_B MemPortDIN2 1 8 }  { xq_Dout_B MemPortDOUT2 0 8 }  { xq_Clk_B mem_clk 1 1 }  { xq_Rst_B mem_rst 1 1 } } }
	xd { bram {  { xd_Addr_A MemPortADDR2 1 32 }  { xd_EN_A MemPortCE2 1 1 }  { xd_WEN_A MemPortWE2 1 2 }  { xd_Din_A MemPortDIN2 1 16 }  { xd_Dout_A in_data 0 16 }  { xd_Clk_A mem_clk 1 1 }  { xd_Rst_A mem_rst 1 1 } } }
	yq { bram {  { yq_Addr_A MemPortADDR2 1 32 }  { yq_EN_A MemPortCE2 1 1 }  { yq_WEN_A MemPortWE2 1 1 }  { yq_Din_A MemPortDIN2 1 8 }  { yq_Dout_A MemPortDOUT2 0 8 }  { yq_Clk_A mem_clk 1 1 }  { yq_Rst_A mem_rst 1 1 }  { yq_Addr_B MemPortADDR2 1 32 }  { yq_EN_B MemPortCE2 1 1 }  { yq_WEN_B MemPortWE2 1 1 }  { yq_Din_B MemPortDIN2 1 8 }  { yq_Dout_B MemPortDOUT2 0 8 }  { yq_Clk_B mem_clk 1 1 }  { yq_Rst_B mem_rst 1 1 } } }
	yd { bram {  { yd_Addr_A MemPortADDR2 1 32 }  { yd_EN_A MemPortCE2 1 1 }  { yd_WEN_A MemPortWE2 1 2 }  { yd_Din_A MemPortDIN2 1 16 }  { yd_Dout_A in_data 0 16 }  { yd_Clk_A mem_clk 1 1 }  { yd_Rst_A mem_rst 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
