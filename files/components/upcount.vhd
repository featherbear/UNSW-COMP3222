LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- n-bit counter

ENTITY upcount IS
	GENERIC (
		N : INTEGER := 8
	);
	
	PORT (
		Clock		: IN 		STD_LOGIC;
		ResetN	: IN 		STD_LOGIC;
		Enable	: IN		STD_LOGIC;
		Load		: IN		STD_LOGIC;
		Count		: BUFFER INTEGER RANGE 0 TO N
	);
END upcount;

ARCHITECTURE behaviour OF upcount IS BEGIN
	PROCESS (ResetN, Clock) BEGIN
		IF ResetN = '0' THEN
			Count <= 0;
		ELSIF (Clock'event AND Clock = '1') THEN
			IF Load = '1' THEN
				Count <= 0;
			ELSIF Enable = '1' THEN
				Count <= Count + 1;
			END IF;
			-- ELSE Imply previous value of Count
		END IF;
	END PROCESS;
END behaviour;
