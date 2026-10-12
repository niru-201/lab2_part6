# Vitis default + xq/yq reshaped: 32 int8 elements per word (256-bit data bus).
set_directive_array_reshape -type cyclic -factor 32 -dim 1 "dot_q8_0" xq
set_directive_array_reshape -type cyclic -factor 32 -dim 1 "dot_q8_0" yq
