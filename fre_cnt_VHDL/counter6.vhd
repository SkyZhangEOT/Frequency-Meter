----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:26 10/25/2019 
-- Design Name: 
-- Module Name:    counter6 - Behavioral 
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
LIBRARY IEEE;                      
USE IEEE.STD_LOGIC_1164.ALL; --这3个程序包足发应付大部分的VHDL程序设计
USE IEEE.STD_LOGIC_Arith.ALL;
USE IEEE.STD_LOGIC_Unsigned.ALL;-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter6 is
port(
	  clockin: in std_logic;	
	  csignal: in std_logic;	--be measured signal
	  clear:in std_logic;
	  count_en:in std_logic;
	  over :out std_logic;
	  result1: out std_logic_vector(3 downto 0);
	  result2: out std_logic_vector(3 downto 0);
	  result3: out std_logic_vector(3 downto 0);
	  result4: out std_logic_vector(3 downto 0);
	  result5: out std_logic_vector(3 downto 0);
	  result6: out std_logic_vector(3 downto 0)
);
end counter6;

architecture Behavioral of counter6 is
signal co1: std_logic_vector(3 downto 0):="0000";
signal co2: std_logic_vector(3 downto 0):="0000";
signal co3: std_logic_vector(3 downto 0):="0000";
signal co4: std_logic_vector(3 downto 0):="0000";
signal co5: std_logic_vector(3 downto 0):="0000";
signal co6: std_logic_vector(3 downto 0):="0000";
signal clk:  std_logic;
begin
process(clockin) is
begin
if RISING_EDGE(clockin) then
if csignal='1'
then clk<='1';
else clk<='0';
end if;
end if;
end process;


process(clear,clk,count_en) is
begin
	if clear='1' then
	co1<="0000";
	co2<="0000";
	co3<="0000";
	co4<="0000";
	co5<="0000";
	co6<="0000";
	elsif count_en='1' then   --counter_en输入是闸门时间，相当于和信号相“与”
		if RISING_EDGE(clk) then
			if co1<"1001" then
				co1<=co1+1;
			else 
				co1<="0000";
					if co2<"1001" then
						co2<=co2+1;
					else 
						co2<="0000";
						if co3<"1001" then
							co3<=co3+1;
						else 
							co3<="0000";
							if co4<"1001" then
								co4<=co4+1;
							else 
								co4<="0000";
								if co5<"1001" then
									co5<=co5+1;
								else 
									co5<="0000";
									if co6<"1001" then
										co6<=co6+1;
									else 
										co6<="0000";
										over<='0';
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;

end process;
result1  <=  co1;
result2  <=  co2;
result3  <=	co3;
result4  <=	co4;
result5  <=	co5;
result6  <=	co6;
end Behavioral;

