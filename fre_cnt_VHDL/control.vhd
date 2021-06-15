----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:15 10/25/2019 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
port(inputsignal: in std_logic;
	  gate,reset,latch:out std_logic
);
end control;

architecture Behavioral of control is
	SIGNAL Counter:std_logic_vector(3 downto 0); 
begin
process(inputsignal)
	begin
		-- generate 1,10,100Hz gata time
	IF RISING_EDGE(inputsignal) THEN 
		counter<=counter+1;
		if counter<10 then
		gate<='1';
		else 
		gate<='0';
		end if;
		
		if counter=14 then
		reset<='1';
		else reset<='0';
		end if;
		
		if counter=12 then
		latch<='1';
		else latch<='0';
		end if;
	else null;	
	end if;
	
end process;
end Behavioral;

