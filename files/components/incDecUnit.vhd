LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY incDecUnit IS
	GENERIC (n : INTEGER := 8);
	PORT (
		IncOrDec	: IN  STD_LOGIC; -- 0 for add, 1 for subtract
		Input		: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Output	: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Carry		: OUT STD_LOGIC
	);

END incDecUnit;

ARCHITECTURE behaviour OF incDecUnit IS
	SIGNAL result : STD_LOGIC_VECTOR(n DOWNTO 0);
BEGIN
	PROCESS (IncOrDec, Input) BEGIN
			IF IncOrDec = '0' THEN
				result <= ('0' & Input) + 1;
			ELSE
				result <= ('0' & Input) - 1;
			END IF;
	END PROCESS;
	
	Output <= result(n-1 DOWNTO 0);
	Carry  <= result(n);
END behaviour;

