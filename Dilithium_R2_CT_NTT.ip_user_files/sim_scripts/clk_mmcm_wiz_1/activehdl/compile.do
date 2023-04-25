vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../Dilithium_R2_CT_NTT.gen/sources_1/ip/clk_mmcm_wiz_1/clk_mmcm_wiz_clk_wiz.v" \
"../../../../Dilithium_R2_CT_NTT.gen/sources_1/ip/clk_mmcm_wiz_1/clk_mmcm_wiz.v" \

vlog -work xil_defaultlib \
"glbl.v"

