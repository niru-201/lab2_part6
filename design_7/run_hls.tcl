# vitis_hls -f run_hls.tcl      (results in hls_dot/solution1, RTL copied to ./verilog)
set clk_period 10

open_project -reset hls_dot
set_top dot_q8_0
add_files dot_q8_0.cpp
add_files -tb tb_dot_q8_0.cpp
add_files -tb vec_dot_q8_0.c

open_solution -reset solution1 -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period $clk_period -name default
source ./directives.tcl

csim_design
csynth_design
cosim_design -rtl verilog

file delete -force verilog
file copy -force hls_dot/solution1/syn/verilog verilog
exit
