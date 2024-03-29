--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:02:08 01/23/2023
-- Design Name:   
-- Module Name:   C:/Users/mahdi/Desktop/ISE/SPI/spi_tb.vhd
-- Project Name:  SPI
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SPI_top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY spi_tb IS
END spi_tb;
 
ARCHITECTURE behavior OF spi_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_top
    PORT(
         SCK : IN  std_logic;
         DATA_IN : IN  std_logic;
         CS_IN : IN  std_logic;
         CS_OUT : OUT  std_logic;
         DATA_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SCK : std_logic := '0';
   signal DATA_IN : std_logic := '0';
   signal CS_IN : std_logic := '0';

 	--Outputs
   signal CS_OUT : std_logic;
   signal DATA_OUT : std_logic;

   -- Clock period definitions
   constant SPICLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_top PORT MAP (
          SCK => SCK,
          DATA_IN => DATA_IN,
          CS_IN => CS_IN,
          CS_OUT => CS_OUT,
          DATA_OUT => DATA_OUT
        );

   -- Clock process definitions
   SPICLK_process :process 
   begin
		wait for SPICLK_period/2;
		wait for SPICLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for SPICLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
