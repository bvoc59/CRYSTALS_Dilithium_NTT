-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Apr 18 23:36:11 2023
-- Host        : LAPTOP-EEKFOE1E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/bvoc5/CRYSTALS_NTT/Dilithium_R2_CT_NTT/Dilithium_R2_CT_NTT.gen/sources_1/ip/c_sub_51_bit_1/c_sub_51_bit_stub.vhdl
-- Design      : c_sub_51_bit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity c_sub_51_bit is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 48 downto 0 );
    B : in STD_LOGIC_VECTOR ( 50 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 50 downto 0 )
  );

end c_sub_51_bit;

architecture stub of c_sub_51_bit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[48:0],B[50:0],CLK,CE,S[50:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_14,Vivado 2021.1";
begin
end;
