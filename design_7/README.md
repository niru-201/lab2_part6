# design_7: design 5 + reshape x8

## What it changes
`array_reshape -type cyclic -factor 8` on `xq` and `yq` (8 int8 elements per 64-bit word). `xd`/`yd` unchanged.

## Run (ECE-LRC)
```sh
module load xilinx/2022
vitis_hls -f run_hls.tcl       # C-sim, C-synthesis, C/RTL co-sim; RTL is copied to ./verilog
```

## What to compare
- `run.log`: testbench result (51 tests, max absolute / relative error) and the loop pipelining/unrolling messages.
- `hls_dot/solution1/syn/report/dot_q8_0_csynth.rpt`: timing (target, estimated, uncertainty), latency, loop II, utilization.
- `hls_dot/solution1/sim/report/dot_q8_0_cosim.rpt`: measured latency, Pass/Fail.
