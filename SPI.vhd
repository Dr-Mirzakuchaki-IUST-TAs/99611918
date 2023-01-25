----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:06:33 03/05/2013 
-- Design Name: 
-- Module Name:    SPI_rx3_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_top is
    Port ( SCK      : in   STD_LOGIC;    -- SPI input clock
           DATA_IN  : in   STD_LOGIC;    -- SPI serial data input
			  CS_IN    : in   STD_LOGIC;
           CS_OUT   : out  STD_LOGIC;    -- chip select input (active low)
           DATA_OUT : out  STD_LOGIC );
end SPI_top;

architecture Behavioral of SPI_top is
begin

    process (SCK) 
    begin
        if (SCK'event and SCK = '1') then  -- rising edge of SCK
            if (CS_IN = '0') then             -- SPI CS must be selected
             CS_OUT <='0';
				 DATA_OUT <= DATA_IN;
				 else 
				 CS_OUT <= '1';
				 DATA_OUT <= '0';
            end if;
        end if;

    end process;
end Behavioral;

