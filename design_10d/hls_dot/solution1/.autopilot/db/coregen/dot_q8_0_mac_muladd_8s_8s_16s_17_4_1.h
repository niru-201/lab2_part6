// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dot_q8_0_mac_muladd_8s_8s_16s_17_4_1__HH__
#define __dot_q8_0_mac_muladd_8s_8s_16s_17_4_1__HH__
#include "dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(dot_q8_0_mac_muladd_8s_8s_16s_17_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0 dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U;

    SC_CTOR(dot_q8_0_mac_muladd_8s_8s_16s_17_4_1):  dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U ("dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U") {
        dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U.clk(clk);
        dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U.rst(reset);
        dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U.ce(ce);
        dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U.in0(din0);
        dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U.in1(din1);
        dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U.in2(din2);
        dot_q8_0_mac_muladd_8s_8s_16s_17_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
