# Vitis default + xq/yq reshaped: 16 int8 elements per word (128-bit data bus).
set_directive_array_reshape -type cyclic -factor 16 -dim 1 "dot_q8_0" xq
set_directive_array_reshape -type cyclic -factor 16 -dim 1 "dot_q8_0" yq
