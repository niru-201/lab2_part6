# Vitis default + 4 read ports on xq and yq: each array split into 2 BRAMs
# (even/odd elements), each with 2 ports. Interface: xq_0/xq_1, yq_0/yq_1.
set_directive_array_partition -type cyclic -factor 2 -dim 1 "dot_q8_0" xq
set_directive_array_partition -type cyclic -factor 2 -dim 1 "dot_q8_0" yq
