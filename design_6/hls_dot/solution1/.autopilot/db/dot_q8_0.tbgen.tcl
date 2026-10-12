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
	{ xq_0 int 8 regular {bram 2432 { 1 1 } 1 1 }  }
	{ xq_1 int 8 regular {bram 2432 { 1 1 } 1 1 }  }
	{ xd int 16 regular {bram 152 { 1 3 } 1 1 }  }
	{ yq_0 int 8 regular {bram 2432 { 1 1 } 1 1 }  }
	{ yq_1 int 8 regular {bram 2432 { 1 1 } 1 1 }  }
	{ yd int 16 regular {bram 152 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xq_0", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xq_1", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xd", "interface" : "bram", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "yq_0", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "yq_1", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "yd", "interface" : "bram", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nb sc_in sc_lv 32 signal 0 } 
	{ xq_0_Addr_A sc_out sc_lv 32 signal 1 } 
	{ xq_0_EN_A sc_out sc_logic 1 signal 1 } 
	{ xq_0_WEN_A sc_out sc_lv 1 signal 1 } 
	{ xq_0_Din_A sc_out sc_lv 8 signal 1 } 
	{ xq_0_Dout_A sc_in sc_lv 8 signal 1 } 
	{ xq_0_Clk_A sc_out sc_logic 1 signal 1 } 
	{ xq_0_Rst_A sc_out sc_logic 1 signal 1 } 
	{ xq_0_Addr_B sc_out sc_lv 32 signal 1 } 
	{ xq_0_EN_B sc_out sc_logic 1 signal 1 } 
	{ xq_0_WEN_B sc_out sc_lv 1 signal 1 } 
	{ xq_0_Din_B sc_out sc_lv 8 signal 1 } 
	{ xq_0_Dout_B sc_in sc_lv 8 signal 1 } 
	{ xq_0_Clk_B sc_out sc_logic 1 signal 1 } 
	{ xq_0_Rst_B sc_out sc_logic 1 signal 1 } 
	{ xq_1_Addr_A sc_out sc_lv 32 signal 2 } 
	{ xq_1_EN_A sc_out sc_logic 1 signal 2 } 
	{ xq_1_WEN_A sc_out sc_lv 1 signal 2 } 
	{ xq_1_Din_A sc_out sc_lv 8 signal 2 } 
	{ xq_1_Dout_A sc_in sc_lv 8 signal 2 } 
	{ xq_1_Clk_A sc_out sc_logic 1 signal 2 } 
	{ xq_1_Rst_A sc_out sc_logic 1 signal 2 } 
	{ xq_1_Addr_B sc_out sc_lv 32 signal 2 } 
	{ xq_1_EN_B sc_out sc_logic 1 signal 2 } 
	{ xq_1_WEN_B sc_out sc_lv 1 signal 2 } 
	{ xq_1_Din_B sc_out sc_lv 8 signal 2 } 
	{ xq_1_Dout_B sc_in sc_lv 8 signal 2 } 
	{ xq_1_Clk_B sc_out sc_logic 1 signal 2 } 
	{ xq_1_Rst_B sc_out sc_logic 1 signal 2 } 
	{ xd_Addr_A sc_out sc_lv 32 signal 3 } 
	{ xd_EN_A sc_out sc_logic 1 signal 3 } 
	{ xd_WEN_A sc_out sc_lv 2 signal 3 } 
	{ xd_Din_A sc_out sc_lv 16 signal 3 } 
	{ xd_Dout_A sc_in sc_lv 16 signal 3 } 
	{ xd_Clk_A sc_out sc_logic 1 signal 3 } 
	{ xd_Rst_A sc_out sc_logic 1 signal 3 } 
	{ yq_0_Addr_A sc_out sc_lv 32 signal 4 } 
	{ yq_0_EN_A sc_out sc_logic 1 signal 4 } 
	{ yq_0_WEN_A sc_out sc_lv 1 signal 4 } 
	{ yq_0_Din_A sc_out sc_lv 8 signal 4 } 
	{ yq_0_Dout_A sc_in sc_lv 8 signal 4 } 
	{ yq_0_Clk_A sc_out sc_logic 1 signal 4 } 
	{ yq_0_Rst_A sc_out sc_logic 1 signal 4 } 
	{ yq_0_Addr_B sc_out sc_lv 32 signal 4 } 
	{ yq_0_EN_B sc_out sc_logic 1 signal 4 } 
	{ yq_0_WEN_B sc_out sc_lv 1 signal 4 } 
	{ yq_0_Din_B sc_out sc_lv 8 signal 4 } 
	{ yq_0_Dout_B sc_in sc_lv 8 signal 4 } 
	{ yq_0_Clk_B sc_out sc_logic 1 signal 4 } 
	{ yq_0_Rst_B sc_out sc_logic 1 signal 4 } 
	{ yq_1_Addr_A sc_out sc_lv 32 signal 5 } 
	{ yq_1_EN_A sc_out sc_logic 1 signal 5 } 
	{ yq_1_WEN_A sc_out sc_lv 1 signal 5 } 
	{ yq_1_Din_A sc_out sc_lv 8 signal 5 } 
	{ yq_1_Dout_A sc_in sc_lv 8 signal 5 } 
	{ yq_1_Clk_A sc_out sc_logic 1 signal 5 } 
	{ yq_1_Rst_A sc_out sc_logic 1 signal 5 } 
	{ yq_1_Addr_B sc_out sc_lv 32 signal 5 } 
	{ yq_1_EN_B sc_out sc_logic 1 signal 5 } 
	{ yq_1_WEN_B sc_out sc_lv 1 signal 5 } 
	{ yq_1_Din_B sc_out sc_lv 8 signal 5 } 
	{ yq_1_Dout_B sc_in sc_lv 8 signal 5 } 
	{ yq_1_Clk_B sc_out sc_logic 1 signal 5 } 
	{ yq_1_Rst_B sc_out sc_logic 1 signal 5 } 
	{ yd_Addr_A sc_out sc_lv 32 signal 6 } 
	{ yd_EN_A sc_out sc_logic 1 signal 6 } 
	{ yd_WEN_A sc_out sc_lv 2 signal 6 } 
	{ yd_Din_A sc_out sc_lv 16 signal 6 } 
	{ yd_Dout_A sc_in sc_lv 16 signal 6 } 
	{ yd_Clk_A sc_out sc_logic 1 signal 6 } 
	{ yd_Rst_A sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "xq_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq_0", "role": "Addr_A" }} , 
 	{ "name": "xq_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "EN_A" }} , 
 	{ "name": "xq_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "WEN_A" }} , 
 	{ "name": "xq_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_0", "role": "Din_A" }} , 
 	{ "name": "xq_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_0", "role": "Dout_A" }} , 
 	{ "name": "xq_0_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "Clk_A" }} , 
 	{ "name": "xq_0_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "Rst_A" }} , 
 	{ "name": "xq_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq_0", "role": "Addr_B" }} , 
 	{ "name": "xq_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "EN_B" }} , 
 	{ "name": "xq_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "WEN_B" }} , 
 	{ "name": "xq_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_0", "role": "Din_B" }} , 
 	{ "name": "xq_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_0", "role": "Dout_B" }} , 
 	{ "name": "xq_0_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "Clk_B" }} , 
 	{ "name": "xq_0_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_0", "role": "Rst_B" }} , 
 	{ "name": "xq_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq_1", "role": "Addr_A" }} , 
 	{ "name": "xq_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "EN_A" }} , 
 	{ "name": "xq_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "WEN_A" }} , 
 	{ "name": "xq_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_1", "role": "Din_A" }} , 
 	{ "name": "xq_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_1", "role": "Dout_A" }} , 
 	{ "name": "xq_1_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "Clk_A" }} , 
 	{ "name": "xq_1_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "Rst_A" }} , 
 	{ "name": "xq_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xq_1", "role": "Addr_B" }} , 
 	{ "name": "xq_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "EN_B" }} , 
 	{ "name": "xq_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "WEN_B" }} , 
 	{ "name": "xq_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_1", "role": "Din_B" }} , 
 	{ "name": "xq_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xq_1", "role": "Dout_B" }} , 
 	{ "name": "xq_1_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "Clk_B" }} , 
 	{ "name": "xq_1_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xq_1", "role": "Rst_B" }} , 
 	{ "name": "xd_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xd", "role": "Addr_A" }} , 
 	{ "name": "xd_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xd", "role": "EN_A" }} , 
 	{ "name": "xd_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "xd", "role": "WEN_A" }} , 
 	{ "name": "xd_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xd", "role": "Din_A" }} , 
 	{ "name": "xd_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xd", "role": "Dout_A" }} , 
 	{ "name": "xd_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xd", "role": "Clk_A" }} , 
 	{ "name": "xd_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xd", "role": "Rst_A" }} , 
 	{ "name": "yq_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq_0", "role": "Addr_A" }} , 
 	{ "name": "yq_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "EN_A" }} , 
 	{ "name": "yq_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "WEN_A" }} , 
 	{ "name": "yq_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_0", "role": "Din_A" }} , 
 	{ "name": "yq_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_0", "role": "Dout_A" }} , 
 	{ "name": "yq_0_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "Clk_A" }} , 
 	{ "name": "yq_0_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "Rst_A" }} , 
 	{ "name": "yq_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq_0", "role": "Addr_B" }} , 
 	{ "name": "yq_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "EN_B" }} , 
 	{ "name": "yq_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "WEN_B" }} , 
 	{ "name": "yq_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_0", "role": "Din_B" }} , 
 	{ "name": "yq_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_0", "role": "Dout_B" }} , 
 	{ "name": "yq_0_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "Clk_B" }} , 
 	{ "name": "yq_0_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_0", "role": "Rst_B" }} , 
 	{ "name": "yq_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq_1", "role": "Addr_A" }} , 
 	{ "name": "yq_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "EN_A" }} , 
 	{ "name": "yq_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "WEN_A" }} , 
 	{ "name": "yq_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_1", "role": "Din_A" }} , 
 	{ "name": "yq_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_1", "role": "Dout_A" }} , 
 	{ "name": "yq_1_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "Clk_A" }} , 
 	{ "name": "yq_1_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "Rst_A" }} , 
 	{ "name": "yq_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yq_1", "role": "Addr_B" }} , 
 	{ "name": "yq_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "EN_B" }} , 
 	{ "name": "yq_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "WEN_B" }} , 
 	{ "name": "yq_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_1", "role": "Din_B" }} , 
 	{ "name": "yq_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yq_1", "role": "Dout_B" }} , 
 	{ "name": "yq_1_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "Clk_B" }} , 
 	{ "name": "yq_1_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yq_1", "role": "Rst_B" }} , 
 	{ "name": "yd_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yd", "role": "Addr_A" }} , 
 	{ "name": "yd_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yd", "role": "EN_A" }} , 
 	{ "name": "yd_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "yd", "role": "WEN_A" }} , 
 	{ "name": "yd_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "yd", "role": "Din_A" }} , 
 	{ "name": "yd_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "yd", "role": "Dout_A" }} , 
 	{ "name": "yd_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yd", "role": "Clk_A" }} , 
 	{ "name": "yd_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yd", "role": "Rst_A" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "dot_q8_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242", "EstimateLatencyMax" : "1234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "xq_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "xq_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "xd", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "yq_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "yq_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "yd", "Type" : "Bram", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "BLOCK_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dot_q8_0 {
		nb {Type I LastRead 0 FirstWrite -1}
		xq_0 {Type I LastRead 8 FirstWrite -1}
		xq_1 {Type I LastRead 8 FirstWrite -1}
		xd {Type I LastRead 0 FirstWrite -1}
		yq_0 {Type I LastRead 8 FirstWrite -1}
		yq_1 {Type I LastRead 8 FirstWrite -1}
		yd {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "242", "Max" : "1234"}
	, {"Name" : "Interval", "Min" : "243", "Max" : "1235"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nb { ap_none {  { nb in_data 0 32 } } }
	xq_0 { bram {  { xq_0_Addr_A MemPortADDR2 1 32 }  { xq_0_EN_A MemPortCE2 1 1 }  { xq_0_WEN_A MemPortWE2 1 1 }  { xq_0_Din_A MemPortDIN2 1 8 }  { xq_0_Dout_A in_data 0 8 }  { xq_0_Clk_A mem_clk 1 1 }  { xq_0_Rst_A mem_rst 1 1 }  { xq_0_Addr_B MemPortADDR2 1 32 }  { xq_0_EN_B MemPortCE2 1 1 }  { xq_0_WEN_B MemPortWE2 1 1 }  { xq_0_Din_B MemPortDIN2 1 8 }  { xq_0_Dout_B in_data 0 8 }  { xq_0_Clk_B mem_clk 1 1 }  { xq_0_Rst_B mem_rst 1 1 } } }
	xq_1 { bram {  { xq_1_Addr_A MemPortADDR2 1 32 }  { xq_1_EN_A MemPortCE2 1 1 }  { xq_1_WEN_A MemPortWE2 1 1 }  { xq_1_Din_A MemPortDIN2 1 8 }  { xq_1_Dout_A in_data 0 8 }  { xq_1_Clk_A mem_clk 1 1 }  { xq_1_Rst_A mem_rst 1 1 }  { xq_1_Addr_B MemPortADDR2 1 32 }  { xq_1_EN_B MemPortCE2 1 1 }  { xq_1_WEN_B MemPortWE2 1 1 }  { xq_1_Din_B MemPortDIN2 1 8 }  { xq_1_Dout_B in_data 0 8 }  { xq_1_Clk_B mem_clk 1 1 }  { xq_1_Rst_B mem_rst 1 1 } } }
	xd { bram {  { xd_Addr_A MemPortADDR2 1 32 }  { xd_EN_A MemPortCE2 1 1 }  { xd_WEN_A MemPortWE2 1 2 }  { xd_Din_A MemPortDIN2 1 16 }  { xd_Dout_A in_data 0 16 }  { xd_Clk_A mem_clk 1 1 }  { xd_Rst_A mem_rst 1 1 } } }
	yq_0 { bram {  { yq_0_Addr_A MemPortADDR2 1 32 }  { yq_0_EN_A MemPortCE2 1 1 }  { yq_0_WEN_A MemPortWE2 1 1 }  { yq_0_Din_A MemPortDIN2 1 8 }  { yq_0_Dout_A in_data 0 8 }  { yq_0_Clk_A mem_clk 1 1 }  { yq_0_Rst_A mem_rst 1 1 }  { yq_0_Addr_B MemPortADDR2 1 32 }  { yq_0_EN_B MemPortCE2 1 1 }  { yq_0_WEN_B MemPortWE2 1 1 }  { yq_0_Din_B MemPortDIN2 1 8 }  { yq_0_Dout_B in_data 0 8 }  { yq_0_Clk_B mem_clk 1 1 }  { yq_0_Rst_B mem_rst 1 1 } } }
	yq_1 { bram {  { yq_1_Addr_A MemPortADDR2 1 32 }  { yq_1_EN_A MemPortCE2 1 1 }  { yq_1_WEN_A MemPortWE2 1 1 }  { yq_1_Din_A MemPortDIN2 1 8 }  { yq_1_Dout_A in_data 0 8 }  { yq_1_Clk_A mem_clk 1 1 }  { yq_1_Rst_A mem_rst 1 1 }  { yq_1_Addr_B MemPortADDR2 1 32 }  { yq_1_EN_B MemPortCE2 1 1 }  { yq_1_WEN_B MemPortWE2 1 1 }  { yq_1_Din_B MemPortDIN2 1 8 }  { yq_1_Dout_B in_data 0 8 }  { yq_1_Clk_B mem_clk 1 1 }  { yq_1_Rst_B mem_rst 1 1 } } }
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
