# Vitis default + xq/yq reshaped: 8 int8 elements per word (64-bit data bus).
set_directive_array_reshape -type cyclic -factor 8 -dim 1 "dot_q8_0" xq
set_directive_array_reshape -type cyclic -factor 8 -dim 1 "dot_q8_0" yq
