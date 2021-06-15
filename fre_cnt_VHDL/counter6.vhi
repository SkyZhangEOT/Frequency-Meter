
-- VHDL Instantiation Created from source file counter6.vhd -- 14:52:52 10/26/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter6
	PORT(
		csignal : IN std_logic;
		clear : IN std_logic;
		count_en : IN std_logic;          
		over : OUT std_logic;
		result1 : OUT std_logic_vector(3 downto 0);
		result2 : OUT std_logic_vector(3 downto 0);
		result3 : OUT std_logic_vector(3 downto 0);
		result4 : OUT std_logic_vector(3 downto 0);
		result5 : OUT std_logic_vector(3 downto 0);
		result6 : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_counter6: counter6 PORT MAP(
		csignal => ,
		clear => ,
		count_en => ,
		over => ,
		result1 => ,
		result2 => ,
		result3 => ,
		result4 => ,
		result5 => ,
		result6 => 
	);


