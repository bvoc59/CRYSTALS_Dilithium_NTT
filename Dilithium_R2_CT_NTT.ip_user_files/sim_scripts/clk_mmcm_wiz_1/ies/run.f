-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Dilithium_R2_CT_NTT.gen/sources_1/ip/clk_mmcm_wiz_1/clk_mmcm_wiz_clk_wiz.v" \
  "../../../../Dilithium_R2_CT_NTT.gen/sources_1/ip/clk_mmcm_wiz_1/clk_mmcm_wiz.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

