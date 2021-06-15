----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:08 10/24/2019 
-- Design Name: 
-- Module Name:    fdiv3 - Behavioral 
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

entity fdiv3 is
	GENERIC(N2:Integer:=50000;N3:Integer:=10;N4:Integer:=10);--进行四次分频;
	Port
	(Clockin:IN STD_LOGIC;	--输入时钟50M
	--ClockOut1:OUT STD_LOGIC;
   ClockOut1k:OUT STD_LOGIC;
	ClockOut100:OUT STD_LOGIC;
	ClockOut10:OUT STD_LOGIC
	);
end fdiv3;

architecture Behavioral of fdiv3 is 
--SIGNAL Counter2:Integer RANGE 0 TO N2/2-1;
SIGNAL Counter2:Integer RANGE 0 TO N2/2-1;   
SIGNAL Counter3:Integer RANGE 0 TO N3/2-1; 
SIGNAL Counter4:Integer RANGE 0 TO N4/2-1; 
SIGNAL clk_10,clk_100,clk_1k:std_logic;
begin
	--第一次分频，1kHz
	PROCESS(Clockin) is
	BEGIN 
	IF RISING_EDGE(Clockin) THEN 
		IF Counter2=N2/2-1 THEN
			counter2<=0;
			clk_1K<=not clk_1K;
		ELSE
			Counter2<=Counter2+1;
		END IF;
	end if;
	end process;
	
	
	--第二次分频，100Hz
	PROCESS(clk_1K) is
	BEGIN 
	IF RISING_EDGE(clk_1K) THEN
	IF Counter3=N3/2-1 THEN
			counter3<=0;
			clk_100<=not clk_100;
		ELSE
			Counter3<=Counter3+1;
		END IF;
	end if;
	end process;
	
	
	--第三次分频，10Hz
	PROCESS(clk_100) is
	BEGIN 
	IF RISING_EDGE(clk_100) THEN
		IF Counter4=N4/2-1 THEN
			counter4<=0;
			clk_10<=not clk_10;
		ELSE
			Counter4<=Counter4+1;
		END IF;
	END IF;
	END PROCESS;
	
	
	ClockOut1k<=clk_1k;
	ClockOut100<=clk_100;
	ClockOut10<=clk_10;
end Behavioral;

