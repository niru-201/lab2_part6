# design_2: design 1 + unroll x8

## What it changes
`ELEM_LOOP` unrolled by 8, nothing pipelined (`config_compile -pipeline_loops 0`). 2 read ports per array.

## Run (ECE-LRC)
```sh
module load xilinx/2022
vitis_hls -f run_hls.tcl       # C-sim, C-synthesis, C/RTL co-sim; RTL is copied to ./verilog
```

## What to compare
- `run.log`: testbench result (51 tests, max absolute / relative error) and the loop pipelining/unrolling messages.
- `hls_dot/solution1/syn/report/dot_q8_0_csynth.rpt`: timing (target, estimated, uncertainty), latency, loop II, utilization.
- `hls_dot/solution1/sim/report/dot_q8_0_cosim.rpt`: measured latency, Pass/Fail.
