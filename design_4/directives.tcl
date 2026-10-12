# Design 1 + ELEM_LOOP unrolled by 32. No pipelining anywhere.
config_compile -pipeline_loops 0
set_directive_unroll -factor 32 "dot_q8_0/ELEM_LOOP"
