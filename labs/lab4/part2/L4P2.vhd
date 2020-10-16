LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY L4P2 IS
	PORT (
		E, Clk, Clearn : IN 		std_logic;
		Q 					: BUFFER std_logic_vector(15 DOWNTO 0) -- or 7 DOWNTO 0 for 8-bit
	);
END L4P2;

ARCHITECTURE behavioural OF L4P2 IS
BEGIN
	PROCESS (Clk, Clearn) BEGIN
		IF Clearn = '0' THEN
			Q <= (OTHERS => '0');
		ELSIF Clk'event AND Clk = '1' AND E = '1' THEN
			Q <= Q + 1;
		END IF;
	END PROCESS;
	
END behavioural;