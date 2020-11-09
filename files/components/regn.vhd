-- Register of default width `n=9`
-- Loads when `Clock` is high, and `Rin` is asserted

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regn IS
	GENERIC (n : INTEGER := 9);
	PORT (
		R 				: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Rin, Clock  : IN  STD_LOGIC;
		Q 				: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
	);
END regn;

ARCHITECTURE Behavior OF regn IS
BEGIN
	PROCESS (Clock)
	BEGIN
		IF (rising_edge(Clock)) THEN
			IF (Rin = '1') THEN
				Q <= R;
			END IF;
		END IF;
	END PROCESS;
END Behavior;