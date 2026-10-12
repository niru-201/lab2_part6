# Part 6 (version 4, final set)

Same Part 4 code and testbench (51 tests) in every design; only `directives.tcl` and the clock period in `run_hls.tcl` differ. No code changes.

| # | Design | Directives |
|---|---|---|
| 1 | no Vitis optimization, 2 read ports | `config_compile -pipeline_loops 0` |
| 2, 3, 4 | design 1 + `ELEM_LOOP` unrolled x8, x16, x32 (no pipelining) | + `set_directive_unroll -factor k` |
| 5 | Vitis default (pipelined `BLOCK_LOOP`, inner loop fully unrolled) | none |
| 6 | design 5 + 4 read ports on `xq`, `yq` | `array_partition -type cyclic -factor 2` |
| 7, 8, 9 | design 5 + reshape x8, x16, x32 on `xq`, `yq` | `array_reshape -type cyclic -factor k` |
| 10a-10e | clock sweep on design 5: 9.5, 9.75, 10.0, 10.25, 10.5 ns | `create_clock -period` (10c = design 5 re-run) |
| 11 | design 1 + unroll x16 + inner loop pipelined (outer loop sequential) | + unroll 16 + `set_directive_pipeline -II 1` on `ELEM_LOOP` |

## Run (ECE-LRC)

```sh
module load xilinx/2022
cd part6_v4
chmod +x run_all.sh collect.sh
nohup ./run_all.sh > run_all.log 2>&1 &     # all 15 designs in parallel, then collect.sh
tail -f run_all.log
```
One design alone: `cd design_5 && vitis_hls -f run_hls.tcl`.

`collect.sh` writes `results.md`: target and estimated clock, slack (target - uncertainty - estimated), latency for n = 896 and n = 4864, loop II, DSP/LUT/FF/BRAM, time at the target clock, LUT x cycles, co-sim status and measured latency, testbench errors. Time at the target clock = cycles x target period.

## Package the results

```sh
tar czf part6_v4_results.tgz results.md run_all.log design_*/run.log design_*/directives.tcl \
    design_*/hls_dot/solution1/syn/report design_*/hls_dot/solution1/sim/report design_*/verilog
```

## Check first
- Design 1-4 and 11 `run.log` must not contain "Pipelining loop 'BLOCK_LOOP' ... automatically"; designs 5-9 and 10a-e must.
- If co-simulation complains about depth (designs 6-9), change `depth` in the INTERFACE pragmas of `xq`/`yq` in `dot_q8_0.cpp`.
