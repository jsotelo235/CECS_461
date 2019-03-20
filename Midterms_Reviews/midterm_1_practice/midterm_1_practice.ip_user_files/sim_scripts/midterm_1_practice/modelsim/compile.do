vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/processing_system7_vip_v1_0_6
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 modelsim_lib/msim/processing_system7_vip_v1_0_6
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/ec67/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/70cf/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ip/midterm_1_practice_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/ec67/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/70cf/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ip/midterm_1_practice_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/ec67/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/70cf/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ip/midterm_1_practice_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/ec67/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ipshared/70cf/hdl" "+incdir+../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ip/midterm_1_practice_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/ip/midterm_1_practice_processing_system7_0_0/sim/midterm_1_practice_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../midterm_1_practice.srcs/sources_1/bd/midterm_1_practice/sim/midterm_1_practice.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

