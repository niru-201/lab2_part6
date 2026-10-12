set moduleName dot_q8_0_Pipeline_ELEM_LOOP
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dot_q8_0_Pipeline_ELEM_LOOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmp int 13 regular  }
	{ xq int 8 regular {bram 4864 { 1 1 } 1 1 }  }
	{ yq int 8 regular {bram 4864 { 1 1 } 1 1 }  }
	{ ib int 8 regular  }
	{ sumi_out int 21 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "xq", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "yq", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ib", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sumi_out", "interface" : "wire", "bitwidth" : 21, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp sc_in sc_lv 13 signal 0 } 
	{ xq_Addr_A sc_out sc_lv 32 signal 1 } 
	{ xq_EN_A sc_out sc_logic 1 signal 1 } 
	{ xq_WEN_A sc_out sc_lv 1 signal 1 } 
	{ xq_Din_A sc_out sc_lv 8 signal 1 } 
	{ xq_Dout_A sc_in sc_lv 8 signal 1 } 
	{ xq_Addr_B sc_out sc_lv 32 signal 1 } 
	{ xq_EN_B sc_out sc_logic 1 signal 1 } 
	{ xq_WEN_B sc_out sc_lv 1 signal 1 } 
	{ xq_Din_B sc_out sc_lv 8 signal 1 } 
	{ xq_Dout_B sc_in sc_lv 8 signal 1 } 
	{ yq_Addr_A sc_out sc_lv 32 signal 2 } 
	{ yq_EN_A sc_out sc_logic 1 signal 2 } 
	{ yq_WEN_A sc_out sc_lv 1 signal 2 } 
	{ yq_Din_A sc_out sc_lv 8 signal 2 } 
	{ yq_Dout_A sc_in sc_lv 8 signal 2 } 
	{ yq_Addr_B sc_out sc_lv 32 signal 2 } 
	{ yq_EN_B sc_out sc_logic 1 signal 2 } 
	{ yq_WEN_B sc_out sc_lv 1 signal 2 } 
	{ yq_Din_B sc_out sc_lv 8 signal 2 } 
	{ yq_Dout_B sc_in sc_lv 8 signal 2 } 
	{ ib sc_in sc_lv 8 signal 3 } 
	{ sumi_out sc_out sc_lv 21 signal 4 } 
	{ sumi_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "tmp", "role": "default" }} , 
 	{ "name": "xq_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq", "role": "Addr_A" }} , 
 	{ "name": "xq_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "EN_A" }} , 
 	{ "name": "xq_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "WEN_A" }} , 
 	{ "name": "xq_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Din_A" }} , 
 	{ "name": "xq_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Dout_A" }} , 
 	{ "name": "xq_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq", "role": "Addr_B" }} , 
 	{ "name": "xq_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "EN_B" }} , 
 	{ "name": "xq_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq", "role": "WEN_B" }} , 
 	{ "name": "xq_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Din_B" }} , 
 	{ "name": "xq_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq", "role": "Dout_B" }} , 
 	{ "name": "yq_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq", "role": "Addr_A" }} , 
 	{ "name": "yq_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "EN_A" }} , 
 	{ "name": "yq_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "WEN_A" }} , 
 	{ "name": "yq_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Din_A" }} , 
 	{ "name": "yq_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Dout_A" }} , 
 	{ "name": "yq_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq", "role": "Addr_B" }} , 
 	{ "name": "yq_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "EN_B" }} , 
 	{ "name": "yq_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq", "role": "WEN_B" }} , 
 	{ "name": "yq_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Din_B" }} , 
 	{ "name": "yq_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq", "role": "Dout_B" }} , 
 	{ "name": "ib", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ib", "role": "default" }} , 
 	{ "name": "sumi_out", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "sumi_out", "role": "default" }} , 
 	{ "name": "sumi_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sumi_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dot_q8_0_Pipeline_ELEM_LOOP {
		tmp {Type I LastRead 0 FirstWrite -1}
		xq {Type I LastRead 8 FirstWrite -1}
		yq {Type I LastRead 8 FirstWrite -1}
		ib {Type I LastRead 0 FirstWrite -1}
		sumi_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp { ap_none {  { tmp in_data 0 13 } } }
	xq { bram {  { xq_Addr_A MemPortADDR2 1 32 }  { xq_EN_A MemPortCE2 1 1 }  { xq_WEN_A MemPortWE2 1 1 }  { xq_Din_A MemPortDIN2 1 8 }  { xq_Dout_A MemPortDOUT2 0 8 }  { xq_Addr_B MemPortADDR2 1 32 }  { xq_EN_B MemPortCE2 1 1 }  { xq_WEN_B MemPortWE2 1 1 }  { xq_Din_B MemPortDIN2 1 8 }  { xq_Dout_B in_data 0 8 } } }
	yq { bram {  { yq_Addr_A MemPortADDR2 1 32 }  { yq_EN_A MemPortCE2 1 1 }  { yq_WEN_A MemPortWE2 1 1 }  { yq_Din_A MemPortDIN2 1 8 }  { yq_Dout_A MemPortDOUT2 0 8 }  { yq_Addr_B MemPortADDR2 1 32 }  { yq_EN_B MemPortCE2 1 1 }  { yq_WEN_B MemPortWE2 1 1 }  { yq_Din_B MemPortDIN2 1 8 }  { yq_Dout_B in_data 0 8 } } }
	ib { ap_none {  { ib in_data 0 8 } } }
	sumi_out { ap_vld {  { sumi_out out_data 1 21 }  { sumi_out_ap_vld out_vld 1 1 } } }
}
