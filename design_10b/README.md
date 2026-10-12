# design_10b: design 5 at a 9.75 ns clock

## What it changes
Same code and directives as design 5; `clk_period` = 9.75 ns in `run_hls.tcl`. Part of the clock sweep 10a-10e (9.5, 9.75, 10.0, 10.25, 10.5 ns); 10c is design 5 re-run for the sweep.

## Run (ECE-LRC)
```sh
module load xilinx/2022
vitis_hls -f run_hls.tcl       # C-sim, C-synthesis, C/RTL co-sim; RTL is copied to ./verilog
```

## What to compare
- `run.log`: testbench result (51 tests, max absolute / relative error) and the loop pipelining/unrolling messages.
- `hls_dot/solution1/syn/report/dot_q8_0_csynth.rpt`: timing (target, estimated, uncertainty), latency, loop II, utilization.
- `hls_dot/solution1/sim/report/dot_q8_0_cosim.rpt`: measured latency, Pass/Fail.
