LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d_ff_neg IS
	PORT (
		Clk, D :IN	std_logic;
		Q : OUT std_logic
	);
END d_ff_neg;

ARCHITECTURE behaviour of d_ff_neg IS
BEGIN
	PROCESS BEGIN
		WAIT UNTIL Clk'event AND Clk = '0';
		Q <= D;
	END PROCESS;
END behaviour;