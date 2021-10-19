LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY t_ff IS
	PORT (
		T, Clk, Clearn	: IN	std_logic;
		Q : BUFFER std_logic
	);
END t_ff;

ARCHITECTURE behavioural OF t_ff IS
BEGIN
	PROCESS (Clk, Clearn) BEGIN
		IF Clearn = '0' THEN
			Q <= '0';
		ELSIF Clk'event AND Clk = '1' THEN
			Q <= T XOR Q;
			--Q <= NOT(Q);
		END IF;
	END PROCESS;
END behavioural;