LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg8 IS
	PORT (
		D		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Q		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		RSTn	: IN  STD_LOGIC; -- Active-low
		CLK	: IN  STD_LOGIC
	);
END reg8;

ARCHITECTURE func of reg8 IS
BEGIN
	PROCESS (RSTn, CLK) BEGIN
		IF RSTn = '0' THEN -- When reset is brought to LOW (0)
			Q <= (OTHERS => '0');
		ELSIF CLK'event AND CLK = '1' THEN
			Q <= D;
		END IF;
	END PROCESS;
END func;