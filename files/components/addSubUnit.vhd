LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY addSubUnit IS
	GENERIC (n : INTEGER := 9);
	PORT (
		P1, P2		: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		AddOrSub		: IN  STD_LOGIC; -- 0 for add, 1 for subtract
		--Clock  		: IN  STD_LOGIC;
		O 				: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
	);

END addSubUnit;

ARCHITECTURE behaviour OF addSubUnit IS
BEGIN
	PROCESS (AddOrSub, P1, P2) BEGIN
			IF AddOrSub = '0' THEN
				O <= P1 + P2;
			ELSE
				O <= P1 - P2;
			END IF;
	END PROCESS;

END behaviour;

