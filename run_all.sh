#!/bin/bash
# Runs every design in parallel (each in its own folder), then collects the results.
#   module load xilinx/2022
#   nohup ./run_all.sh > run_all.log 2>&1 &
cd "$(dirname "$0")"

for d in design_*; do
    ( cd "$d" && vitis_hls -f run_hls.tcl > run.log 2>&1 ) &
done
wait

./collect.sh
