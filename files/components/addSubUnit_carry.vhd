LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY addSubUnit IS
	GENERIC (N : INTEGER := 8);
	PORT (
		P1, P2	: IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		AddOrSub	: IN	STD_LOGIC; -- 0 for add, 1 for subtract
		Output 	: OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		Carry		: OUT	STD_LOGIC
	);

END addSubUnit;

ARCHITECTURE behaviour OF addSubUnit IS
	SIGNAL nBit_P1, nBit_P2, result: STD_LOGIC_VECTOR(N DOWNTO 0);
BEGIN
	-- Pad a 0 at the start of P1 and P2 to make them N-1 + 1 = N bits long
	nBit_P1 <= '0' & P1;
	nBit_P2 <= '0' & P2;
	
	PROCESS (AddOrSub, nBit_P1, nBit_P2) BEGIN
			IF AddOrSub = '0' THEN
				result <= nBit_P1 + nBit_P2;
			ELSE
				result <= nBit_P1 - nBit_P2;
			END IF;
	END PROCESS;
	
	-- Extract bits N-1 to 0 from the N-bit result
	Output <= result(N-1 DOWNTO 0);
	Carry  <= result(N);
END behaviour;

