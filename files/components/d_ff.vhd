LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d_ff IS
	PORT (
		Clk, D : IN	 std_logic;
		Q 		 : OUT std_logic
	);
END d_ff;

ARCHITECTURE behaviour of d_ff IS
BEGIN
	PROCESS BEGIN
		WAIT UNTIL Clk'event AND Clk = '1';
		Q <= D;
	END PROCESS;
END behaviour;