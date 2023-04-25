-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Apr 18 18:29:05 2023
-- Host        : LAPTOP-EEKFOE1E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/bvoc5/CRYSTALS_NTT/Dilithium_R2_CT_NTT/Dilithium_R2_CT_NTT.gen/sources_1/ip/mult_gen_49_bit/mult_gen_49_bit_stub.vhdl
-- Design      : mult_gen_49_bit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_gen_49_bit is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 48 downto 0 );
    P : out STD_LOGIC_VECTOR ( 72 downto 0 )
  );

end mult_gen_49_bit;

architecture stub of mult_gen_49_bit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[48:0],P[72:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_17,Vivado 2021.1";
begin
end;
