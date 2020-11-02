LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d_latch IS
	PORT (
		Clk, D : IN  std_logic;
		Q	   : OUT std_logic
	);
END d_latch;

ARCHITECTURE structural OF d_latch IS
BEGIN
	PROCESS (D, Clk) BEGIN
		IF Clk'event AND Clk = '1' THEN
			Q <= D;
		END IF;
	END PROCESS;
END structural;
