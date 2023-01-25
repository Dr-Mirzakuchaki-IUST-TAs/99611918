--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SPI_top_synthesis.vhd
-- /___/   /\     Timestamp: Mon Jan 23 21:38:56 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SPI_top -w -dir netgen/synthesis -ofmt vhdl -sim SPI_top.ngc SPI_top_synthesis.vhd 
-- Device	: xc6slx9-2-tqg144
-- Input file	: SPI_top.ngc
-- Output file	: C:\Users\mahdi\Desktop\ISE\SPI\netgen\synthesis\SPI_top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SPI_top
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity SPI_top is
  port (
    SCK : in STD_LOGIC := 'X'; 
    DATA_IN : in STD_LOGIC := 'X'; 
    CS_IN : in STD_LOGIC := 'X'; 
    SPICLK : out STD_LOGIC; 
    CS_OUT : out STD_LOGIC; 
    DATA_OUT : out STD_LOGIC 
  );
end SPI_top;

architecture Structure of SPI_top is
  signal SCK_BUFGP_0 : STD_LOGIC; 
  signal DATA_IN_IBUF_1 : STD_LOGIC; 
  signal CS_IN_IBUF_2 : STD_LOGIC; 
  signal CS_OUT_OBUF_3 : STD_LOGIC; 
  signal DATA_OUT_OBUF_4 : STD_LOGIC; 
  signal CS_IN_inv : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => CS_OUT_OBUF_3
    );
  DATA_OUT_2 : FDE
    port map (
      C => SCK_BUFGP_0,
      CE => CS_IN_inv,
      D => DATA_IN_IBUF_1,
      Q => DATA_OUT_OBUF_4
    );
  DATA_IN_IBUF : IBUF
    port map (
      I => DATA_IN,
      O => DATA_IN_IBUF_1
    );
  CS_IN_IBUF : IBUF
    port map (
      I => CS_IN,
      O => CS_IN_IBUF_2
    );
  CS_OUT_OBUF : OBUF
    port map (
      I => CS_OUT_OBUF_3,
      O => CS_OUT
    );
  DATA_OUT_OBUF : OBUF
    port map (
      I => DATA_OUT_OBUF_4,
      O => DATA_OUT
    );
  SCK_BUFGP : BUFGP
    port map (
      I => SCK,
      O => SCK_BUFGP_0
    );
  CS_IN_inv1_INV_0 : INV
    port map (
      I => CS_IN_IBUF_2,
      O => CS_IN_inv
    );

end Structure;

