LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY half_sec_timer IS
	PORT ( Clk, Start : IN STD_LOGIC ;
			 Done : OUT STD_LOGIC);
END half_sec_timer;

ARCHITECTURE Behavior OF half_sec_timer IS
	SIGNAL Q : INTEGER RANGE 0 TO 25000000;
BEGIN
	PROCESS (Clk)
	BEGIN
		IF (Clk'event AND Clk = '1') THEN
			IF (Start = '1') THEN					-- initialize timer when Start asserted
				Done <= '0';
				Q <= 0;
			ELSIF (Q = 25000000) THEN				-- assert Done when 0.5 seconds elapsed
				Done <= '1';
				Q <= 0;
			ELSE											-- increment timer each cycle
				Done <= '0';
				Q <= Q + 1;
			END IF;
		END IF;
	END PROCESS;
END Behavior;
