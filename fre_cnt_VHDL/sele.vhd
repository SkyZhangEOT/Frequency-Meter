----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:02 10/24/2019 
-- Design Name: 
-- Module Name:    sele - Behavioral 
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

entity sele is
	port( 
	--s: in std_logic_vector(2 downto 0);
f1k:IN STD_LOGIC; 
f100:IN STD_LOGIC;   
f10:IN STD_LOGIC; 
fref:OUT STD_LOGIC;
dp:OUT STD_LOGIC_vector(2 downto 0)
);
end sele;

architecture Behavioral of sele is
signal s:std_logic_vector(2 downto 0):="010";
begin
process(s,f1K,f100,f10) is --dp1 is a point,显示的单位是kHz
	begin
		case s is
			when "100" =>
				fref<=f10;
				dp<="011";
			when "010" =>
				fref<=f100;
				dp<="101";
			when "001" =>
				fref<=f1K;
				dp<="110";
			when others =>
				fref<='0';
				dp<="111";
		end case;
		
	end process;
end Behavioral;

