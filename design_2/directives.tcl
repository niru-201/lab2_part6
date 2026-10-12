# Design 1 + ELEM_LOOP unrolled by 8. No pipelining anywhere.
config_compile -pipeline_loops 0
set_directive_unroll -factor 8 "dot_q8_0/ELEM_LOOP"
