# No Vitis optimization: automatic loop pipelining off (no pipelining, no unrolling).
# Default memory interface: 2 read ports per array.
config_compile -pipeline_loops 0
