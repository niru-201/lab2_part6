# Design 1 + ELEM_LOOP unrolled by 16 and pipelined at II=1; BLOCK_LOOP stays sequential.
config_compile -pipeline_loops 0
set_directive_unroll -factor 16 "dot_q8_0/ELEM_LOOP"
set_directive_pipeline -II 1 "dot_q8_0/ELEM_LOOP"
