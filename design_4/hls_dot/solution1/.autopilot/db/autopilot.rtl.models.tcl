set SynModuleInfo {
  {SRCNAME dot_q8_0 MODELNAME dot_q8_0 RTLNAME dot_q8_0 IS_TOP 1
    SUBMODULES {
      {MODELNAME dot_q8_0_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME dot_q8_0_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dot_q8_0_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME dot_q8_0_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dot_q8_0_sitofp_32s_32_4_no_dsp_1 RTLNAME dot_q8_0_sitofp_32s_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dot_q8_0_mul_8s_8s_16_1_1 RTLNAME dot_q8_0_mul_8s_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dot_q8_0_mac_muladd_8s_8s_16s_17_4_1 RTLNAME dot_q8_0_mac_muladd_8s_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
}
