LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY morse_delay IS
	PORT (
		clk, enable	: IN STD_LOGIC;
		symbol		: IN STD_LOGIC; -- 0 for DOT, 1 for DASH
		done 			: OUT STD_LOGIC
	);
END morse_delay;

ARCHITECTURE behaviour OF morse_delay IS
	SIGNAL Q   : INTEGER RANGE 0 TO 3;
BEGIN
	PROCESS (clk) BEGIN
		IF (clk'event AND clk = '1') THEN
			done <= '0';

			IF enable = '1' THEN	

				-- Dash --> Count to 3
				IF symbol = '1' THEN
					IF Q = 3 THEN
						done <= '1';
						Q <= 0;
					ELSE
						Q <= Q + 1;
					END IF;

				-- Dot --> Always 1 after count
				ELSE
					done <= '1';
				END IF;
			END IF;
		END IF;
	END PROCESS;
END behaviour;
