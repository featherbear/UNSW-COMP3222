LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY subtractor IS
	GENERIC (N : INTEGER := 8);
	PORT (
		a, b	: IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		output: OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		neg	: OUT	STD_LOGIC
	);

END subtractor;

ARCHITECTURE behaviour OF subtractor IS
	SIGNAL nBit_a, nBit_b, result: STD_LOGIC_VECTOR(N DOWNTO 0);
BEGIN
	-- Pad a 0 at the start of a and b to make them N-1 + 1 = N bits long
	nBit_a <= '0' & a;
	nBit_b <= '0' & b;
	
	PROCESS (nBit_a, nBit_b) BEGIN
		result <= nBit_b - nBit_a;
	END PROCESS;
	
	-- Extract bits N-1 to 0 from the N-bit result
	output	<= result(N-1 DOWNTO 0);
	neg		<= result(N);
END behaviour;
