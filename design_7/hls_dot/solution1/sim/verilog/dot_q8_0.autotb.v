// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      dot_q8_0
`define AUTOTB_DUT_INST AESL_inst_dot_q8_0
`define AUTOTB_TOP      apatb_dot_q8_0_top
`define AUTOTB_LAT_RESULT_FILE "dot_q8_0.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "dot_q8_0.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_dot_q8_0_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_nb 1
`define AESL_BRAM_xq AESL_autobram_xq
`define AESL_BRAM_INST_xq bram_inst_xq
`define AESL_BRAM_xd AESL_autobram_xd
`define AESL_BRAM_INST_xd bram_inst_xd
`define AESL_BRAM_yq AESL_autobram_yq
`define AESL_BRAM_INST_yq bram_inst_yq
`define AESL_BRAM_yd AESL_autobram_yd
`define AESL_BRAM_INST_yd bram_inst_yd
`define AUTOTB_TVIN_nb  "../tv/cdatafile/c.dot_q8_0.autotvin_nb.dat"
`define AUTOTB_TVIN_xq  "../tv/cdatafile/c.dot_q8_0.autotvin_xq.dat"
`define AUTOTB_TVIN_xd  "../tv/cdatafile/c.dot_q8_0.autotvin_xd.dat"
`define AUTOTB_TVIN_yq  "../tv/cdatafile/c.dot_q8_0.autotvin_yq.dat"
`define AUTOTB_TVIN_yd  "../tv/cdatafile/c.dot_q8_0.autotvin_yd.dat"
`define AUTOTB_TVIN_nb_out_wrapc  "../tv/rtldatafile/rtl.dot_q8_0.autotvin_nb.dat"
`define AUTOTB_TVIN_xq_out_wrapc  "../tv/rtldatafile/rtl.dot_q8_0.autotvin_xq.dat"
`define AUTOTB_TVIN_xd_out_wrapc  "../tv/rtldatafile/rtl.dot_q8_0.autotvin_xd.dat"
`define AUTOTB_TVIN_yq_out_wrapc  "../tv/rtldatafile/rtl.dot_q8_0.autotvin_yq.dat"
`define AUTOTB_TVIN_yd_out_wrapc  "../tv/rtldatafile/rtl.dot_q8_0.autotvin_yd.dat"
`define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.dot_q8_0.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.dot_q8_0.autotvout_ap_return.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 51;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 626;
parameter LENGTH_ap_return = 1;
parameter LENGTH_nb = 1;
parameter LENGTH_xd = 152;
parameter LENGTH_xq = 608;
parameter LENGTH_yd = 152;
parameter LENGTH_yq = 608;

task read_token;
    input integer fp;
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] nb;
wire [31 : 0] xq_ADDR_A;
wire  xq_EN_A;
wire [7 : 0] xq_WEN_A;
wire [63 : 0] xq_DIN_A;
wire [63 : 0] xq_DOUT_A;
wire  xq_CLK_A;
wire  xq_RST_A;
wire [31 : 0] xq_ADDR_B;
wire  xq_EN_B;
wire [7 : 0] xq_WEN_B;
wire [63 : 0] xq_DIN_B;
wire [63 : 0] xq_DOUT_B;
wire  xq_CLK_B;
wire  xq_RST_B;
wire [31 : 0] xd_ADDR_A;
wire  xd_EN_A;
wire [1 : 0] xd_WEN_A;
wire [15 : 0] xd_DIN_A;
wire [15 : 0] xd_DOUT_A;
wire  xd_CLK_A;
wire  xd_RST_A;
wire [31 : 0] yq_ADDR_A;
wire  yq_EN_A;
wire [7 : 0] yq_WEN_A;
wire [63 : 0] yq_DIN_A;
wire [63 : 0] yq_DOUT_A;
wire  yq_CLK_A;
wire  yq_RST_A;
wire [31 : 0] yq_ADDR_B;
wire  yq_EN_B;
wire [7 : 0] yq_WEN_B;
wire [63 : 0] yq_DIN_B;
wire [63 : 0] yq_DOUT_B;
wire  yq_CLK_B;
wire  yq_RST_B;
wire [31 : 0] yd_ADDR_A;
wire  yd_EN_A;
wire [1 : 0] yd_WEN_A;
wire [15 : 0] yd_DIN_A;
wire [15 : 0] yd_DOUT_A;
wire  yd_CLK_A;
wire  yd_RST_A;
wire [31 : 0] ap_return;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .nb(nb),
    .xq_Addr_A(xq_ADDR_A),
    .xq_EN_A(xq_EN_A),
    .xq_WEN_A(xq_WEN_A),
    .xq_Din_A(xq_DIN_A),
    .xq_Dout_A(xq_DOUT_A),
    .xq_Clk_A(xq_CLK_A),
    .xq_Rst_A(xq_RST_A),
    .xq_Addr_B(xq_ADDR_B),
    .xq_EN_B(xq_EN_B),
    .xq_WEN_B(xq_WEN_B),
    .xq_Din_B(xq_DIN_B),
    .xq_Dout_B(xq_DOUT_B),
    .xq_Clk_B(xq_CLK_B),
    .xq_Rst_B(xq_RST_B),
    .xd_Addr_A(xd_ADDR_A),
    .xd_EN_A(xd_EN_A),
    .xd_WEN_A(xd_WEN_A),
    .xd_Din_A(xd_DIN_A),
    .xd_Dout_A(xd_DOUT_A),
    .xd_Clk_A(xd_CLK_A),
    .xd_Rst_A(xd_RST_A),
    .yq_Addr_A(yq_ADDR_A),
    .yq_EN_A(yq_EN_A),
    .yq_WEN_A(yq_WEN_A),
    .yq_Din_A(yq_DIN_A),
    .yq_Dout_A(yq_DOUT_A),
    .yq_Clk_A(yq_CLK_A),
    .yq_Rst_A(yq_RST_A),
    .yq_Addr_B(yq_ADDR_B),
    .yq_EN_B(yq_EN_B),
    .yq_WEN_B(yq_WEN_B),
    .yq_Din_B(yq_DIN_B),
    .yq_Dout_B(yq_DOUT_B),
    .yq_Clk_B(yq_CLK_B),
    .yq_Rst_B(yq_RST_B),
    .yd_Addr_A(yd_ADDR_A),
    .yd_EN_A(yd_EN_A),
    .yd_WEN_A(yd_WEN_A),
    .yd_Din_A(yd_DIN_A),
    .yd_Dout_A(yd_DOUT_A),
    .yd_Clk_A(yd_CLK_A),
    .yd_Rst_A(yd_RST_A),
    .ap_return(ap_return));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// The signal of port nb
reg [31: 0] AESL_REG_nb = 0;
assign nb = AESL_REG_nb;
initial begin : read_file_process_nb
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_nb,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_nb);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_nb);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


//------------------------bramxq Instantiation--------------

// The input and output of bramxq
wire  bramxq_Clk_A, bramxq_Clk_B;
wire  bramxq_EN_A, bramxq_EN_B;
wire  [8 - 1 : 0] bramxq_WEN_A, bramxq_WEN_B;
wire    [31 : 0]    bramxq_Addr_A, bramxq_Addr_B;
wire    [63 : 0]    bramxq_Din_A, bramxq_Din_B;
wire    [63 : 0]    bramxq_Dout_A, bramxq_Dout_B;
wire    bramxq_ready;
wire    bramxq_done;

`AESL_BRAM_xq `AESL_BRAM_INST_xq(
    .Clk_A    (bramxq_Clk_A),
    .Rst_A    (bramxq_Rst_A),
    .EN_A     (bramxq_EN_A),
    .WEN_A    (bramxq_WEN_A),
    .Addr_A   (bramxq_Addr_A),
    .Din_A    (bramxq_Din_A),
    .Dout_A   (bramxq_Dout_A),
    .Clk_B    (bramxq_Clk_B),
    .Rst_B    (bramxq_Rst_B),
    .EN_B     (bramxq_EN_B),
    .WEN_B    (bramxq_WEN_B),
    .Addr_B   (bramxq_Addr_B),
    .Din_B    (bramxq_Din_B),
    .Dout_B   (bramxq_Dout_B),
    .ready    (bramxq_ready),
    .done        (bramxq_done)
);

// Assignment between dut and bramxq
assign bramxq_Clk_A = xq_CLK_A;
assign bramxq_Rst_A = xq_RST_A;
assign bramxq_Addr_A = xq_ADDR_A;
assign bramxq_EN_A = xq_EN_A;
assign xq_DOUT_A = bramxq_Dout_A;
assign bramxq_WEN_A = 0;
assign bramxq_Din_A = 0;
assign bramxq_Clk_B = xq_CLK_B;
assign bramxq_Rst_B = xq_RST_B;
assign bramxq_Addr_B = xq_ADDR_B;
assign bramxq_EN_B = xq_EN_B;
assign xq_DOUT_B = bramxq_Dout_B;
assign bramxq_WEN_B = 0;
assign bramxq_Din_B = 0;
assign bramxq_ready=    ready;
assign bramxq_done = 0;


//------------------------bramxd Instantiation--------------

// The input and output of bramxd
wire  bramxd_Clk_A, bramxd_Clk_B;
wire  bramxd_EN_A, bramxd_EN_B;
wire  [2 - 1 : 0] bramxd_WEN_A, bramxd_WEN_B;
wire    [31 : 0]    bramxd_Addr_A, bramxd_Addr_B;
wire    [15 : 0]    bramxd_Din_A, bramxd_Din_B;
wire    [15 : 0]    bramxd_Dout_A, bramxd_Dout_B;
wire    bramxd_ready;
wire    bramxd_done;

`AESL_BRAM_xd `AESL_BRAM_INST_xd(
    .Clk_A    (bramxd_Clk_A),
    .Rst_A    (bramxd_Rst_A),
    .EN_A     (bramxd_EN_A),
    .WEN_A    (bramxd_WEN_A),
    .Addr_A   (bramxd_Addr_A),
    .Din_A    (bramxd_Din_A),
    .Dout_A   (bramxd_Dout_A),
    .Clk_B    (bramxd_Clk_B),
    .Rst_B    (bramxd_Rst_B),
    .EN_B     (bramxd_EN_B),
    .WEN_B    (bramxd_WEN_B),
    .Addr_B   (bramxd_Addr_B),
    .Din_B    (bramxd_Din_B),
    .Dout_B   (bramxd_Dout_B),
    .ready    (bramxd_ready),
    .done        (bramxd_done)
);

// Assignment between dut and bramxd
assign bramxd_Clk_A = xd_CLK_A;
assign bramxd_Rst_A = xd_RST_A;
assign bramxd_Addr_A = xd_ADDR_A;
assign bramxd_EN_A = xd_EN_A;
assign xd_DOUT_A = bramxd_Dout_A;
assign bramxd_WEN_A = 0;
assign bramxd_Din_A = 0;
assign bramxd_WEN_B = 0;
assign bramxd_Din_B = 0;
assign bramxd_ready=    ready;
assign bramxd_done = 0;


//------------------------bramyq Instantiation--------------

// The input and output of bramyq
wire  bramyq_Clk_A, bramyq_Clk_B;
wire  bramyq_EN_A, bramyq_EN_B;
wire  [8 - 1 : 0] bramyq_WEN_A, bramyq_WEN_B;
wire    [31 : 0]    bramyq_Addr_A, bramyq_Addr_B;
wire    [63 : 0]    bramyq_Din_A, bramyq_Din_B;
wire    [63 : 0]    bramyq_Dout_A, bramyq_Dout_B;
wire    bramyq_ready;
wire    bramyq_done;

`AESL_BRAM_yq `AESL_BRAM_INST_yq(
    .Clk_A    (bramyq_Clk_A),
    .Rst_A    (bramyq_Rst_A),
    .EN_A     (bramyq_EN_A),
    .WEN_A    (bramyq_WEN_A),
    .Addr_A   (bramyq_Addr_A),
    .Din_A    (bramyq_Din_A),
    .Dout_A   (bramyq_Dout_A),
    .Clk_B    (bramyq_Clk_B),
    .Rst_B    (bramyq_Rst_B),
    .EN_B     (bramyq_EN_B),
    .WEN_B    (bramyq_WEN_B),
    .Addr_B   (bramyq_Addr_B),
    .Din_B    (bramyq_Din_B),
    .Dout_B   (bramyq_Dout_B),
    .ready    (bramyq_ready),
    .done        (bramyq_done)
);

// Assignment between dut and bramyq
assign bramyq_Clk_A = yq_CLK_A;
assign bramyq_Rst_A = yq_RST_A;
assign bramyq_Addr_A = yq_ADDR_A;
assign bramyq_EN_A = yq_EN_A;
assign yq_DOUT_A = bramyq_Dout_A;
assign bramyq_WEN_A = 0;
assign bramyq_Din_A = 0;
assign bramyq_Clk_B = yq_CLK_B;
assign bramyq_Rst_B = yq_RST_B;
assign bramyq_Addr_B = yq_ADDR_B;
assign bramyq_EN_B = yq_EN_B;
assign yq_DOUT_B = bramyq_Dout_B;
assign bramyq_WEN_B = 0;
assign bramyq_Din_B = 0;
assign bramyq_ready=    ready;
assign bramyq_done = 0;


//------------------------bramyd Instantiation--------------

// The input and output of bramyd
wire  bramyd_Clk_A, bramyd_Clk_B;
wire  bramyd_EN_A, bramyd_EN_B;
wire  [2 - 1 : 0] bramyd_WEN_A, bramyd_WEN_B;
wire    [31 : 0]    bramyd_Addr_A, bramyd_Addr_B;
wire    [15 : 0]    bramyd_Din_A, bramyd_Din_B;
wire    [15 : 0]    bramyd_Dout_A, bramyd_Dout_B;
wire    bramyd_ready;
wire    bramyd_done;

`AESL_BRAM_yd `AESL_BRAM_INST_yd(
    .Clk_A    (bramyd_Clk_A),
    .Rst_A    (bramyd_Rst_A),
    .EN_A     (bramyd_EN_A),
    .WEN_A    (bramyd_WEN_A),
    .Addr_A   (bramyd_Addr_A),
    .Din_A    (bramyd_Din_A),
    .Dout_A   (bramyd_Dout_A),
    .Clk_B    (bramyd_Clk_B),
    .Rst_B    (bramyd_Rst_B),
    .EN_B     (bramyd_EN_B),
    .WEN_B    (bramyd_WEN_B),
    .Addr_B   (bramyd_Addr_B),
    .Din_B    (bramyd_Din_B),
    .Dout_B   (bramyd_Dout_B),
    .ready    (bramyd_ready),
    .done        (bramyd_done)
);

// Assignment between dut and bramyd
assign bramyd_Clk_A = yd_CLK_A;
assign bramyd_Rst_A = yd_RST_A;
assign bramyd_Addr_A = yd_ADDR_A;
assign bramyd_EN_A = yd_EN_A;
assign yd_DOUT_A = bramyd_Dout_A;
assign bramyd_WEN_A = 0;
assign bramyd_Din_A = 0;
assign bramyd_WEN_B = 0;
assign bramyd_Din_B = 0;
assign bramyd_ready=    ready;
assign bramyd_done = 0;


initial begin : write_file_process_ap_return
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer ap_return_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
          $fdisplay(fp,"0x%x", ap_return);
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_nb;
reg [31:0] size_nb;
reg [31:0] size_nb_backup;
reg end_xq;
reg [31:0] size_xq;
reg [31:0] size_xq_backup;
reg end_xd;
reg [31:0] size_xd;
reg [31:0] size_xd_backup;
reg end_yq;
reg [31:0] size_yq;
reg [31:0] size_yq_backup;
reg end_yd;
reg [31:0] size_yd;
reg [31:0] size_yd_backup;
reg end_ap_return;
reg [31:0] size_ap_return;
reg [31:0] size_ap_return_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    start = 0;
    ce = 1;
    wait(AESL_reset === 0);
    @ (posedge AESL_clock);
    while (1) begin
        if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
        #0 start = 1;
        end
        @ (posedge AESL_clock);
        while (AESL_ready !== 1) begin
            @ (posedge AESL_clock);
        end
        if (AESL_done !== 1) begin
            #0 start = 0;
            while (AESL_done !== 1) begin
                @ (posedge AESL_clock);
            end
            @ (posedge AESL_clock);
        end
        #0 start = 0;
        @ (negedge AESL_clock);
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = (ready_initial | AESL_done_delay);
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready_wire = (ready_initial | AESL_done_delay);
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
