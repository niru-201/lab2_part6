# design_6: design 5 + 4 read ports

## What it changes
`array_partition -type cyclic -factor 2` on `xq` and `yq` (two BRAMs per array, 2 ports each). `xd`/`yd` unchanged.

## Run (ECE-LRC)
```sh
module load xilinx/2022
vitis_hls -f run_hls.tcl       # C-sim, C-synthesis, C/RTL co-sim; RTL is copied to ./verilog
```

## What to compare
- `run.log`: testbench result (51 tests, max absolute / relative error) and the loop pipelining/unrolling messages.
- `hls_dot/solution1/syn/report/dot_q8_0_csynth.rpt`: timing (target, estimated, uncertainty), latency, loop II, utilization.
- `hls_dot/solution1/sim/report/dot_q8_0_cosim.rpt`: measured latency, Pass/Fail.
