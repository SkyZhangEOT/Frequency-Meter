----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:55 10/25/2019 
-- Design Name: 
-- Module Name:    multi - Behavioral 
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

entity multi is
port(f1k:in std_logic;
	  dpin:in std_logic_vector(2 downto 0);
	  value1,value2,value3,value4,value5,value6:in std_logic_vector(3 downto 0);
	  qover:in std_logic;
	  seg:out std_logic_vector(5 downto 0);   --位选信号，6位数码管
	  dig:out std_logic_vector(6 downto 0);   --段选信号，7段。第八段是小数点
	  qout:out std_logic;
	  dpout:out std_logic  --小数点
);
end multi;

architecture Behavioral of multi is
	signal run :std_logic_vector(2 downto 0);
	signal value :std_logic_vector(3 downto 0);
begin
--状态自加
process(f1k) is  
	begin
	if RISING_EDGE(f1k) then
	if run <"101" then
	run<=run+"001";
	else run<="000";
	end if;
	end if;
end process;
--选择不同位的数码管以及小数点显示
process(run) is
	begin
	case run is
	         when"000"=>value<=value1;seg<="111110";dpout<='1';
				when"001"=>value<=value2;seg<="111101";if dpin="110" then dpout<='0';else dpout<='1'; end if;
				when"010"=>value<=value3;seg<="111011";if dpin="101" then dpout<='0';else dpout<='1'; end if;
				when"011"=>value<=value4;seg<="110111";if dpin="011" then dpout<='0';else dpout<='1'; end if;
				when"100"=>value<=value5;seg<="101111";dpout<='1';
				when"101"=>value<=value6;seg<="011111";dpout<='1';
				when others=>value<="1111";seg<="111111";dpout<='1';
	end case;
end process;

--进行七段译码
process(run) is
begin
case value is
	      when "0000"=>dig<="0000001";  --最左边是A，最右是G,低电平有效
         when "0001"=>dig<="1001111";
         when "0010"=>dig<="0010010";
         when "0011"=>dig<="0000110";
         when "0100"=>dig<="1001100";
         when "0101"=>dig<="0100100";
         when "0110"=>dig<="0100000";
         when "0111"=>dig<="0001111";
         when "1000"=>dig<="0000000";
         when "1001"=>dig<="0000100";
			when others=>dig<="1111111";
		end case;
end process;	
qout<=qover;
end Behavioral;

