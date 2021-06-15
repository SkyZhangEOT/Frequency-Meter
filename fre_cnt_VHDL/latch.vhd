----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:07 10/25/2019 
-- Design Name: 
-- Module Name:    latch - Behavioral 
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
LIBRARY IEEE;                      
USE IEEE.STD_LOGIC_1164.ALL; --这3个程序包足发应付大部分的VHDL程序设计
USE IEEE.STD_LOGIC_Arith.ALL;
USE IEEE.STD_LOGIC_Unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity latch is
port(latch_in:in std_logic;
	  overin:in std_logic;
	  num1,num2,num3,num4,num5,num6:in std_logic_vector(3 downto 0);
	  num_out1,num_out2,num_out3,num_out4,num_out5,num_out6:out std_logic_vector(3 downto 0);
	  overout:out std_logic
);
end latch;

architecture Behavioral of latch is

begin
process(latch_in) is
begin
	if RISING_EDGE(latch_in)  then
		num_out1<=num1;
		num_out2<=num2;
		num_out3<=num3;
		num_out4<=num4;
		num_out5<=num5;
		num_out6<=num6;
		overout<=overin;
	else null;
	end if;
end process;
end Behavioral;

