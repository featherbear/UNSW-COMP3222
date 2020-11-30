LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY regn IS
	GENERIC ( N : INTEGER := 8 ) ;
	PORT (
		input : IN 	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		en		: IN 	STD_LOGIC;
		rst	: IN	STD_LOGIC;
		clk 	: IN 	STD_LOGIC;
		output: OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END regn;

ARCHITECTURE behaviour OF regn IS
BEGIN
	PROCESS (rst, clk) BEGIN
		IF rst = '0' THEN
			output <= (OTHERS => '0');
		ELSIF clk'event AND clk = '1' AND en = '1' THEN
			output <= input;
		END IF;
	END PROCESS;
END behaviour;