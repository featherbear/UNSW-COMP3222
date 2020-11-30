LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_to_hex IS										-- BCD digit to 7-segment display output
	PORT	(B	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);	-- BSD digit
			 H	:OUT STD_LOGIC_VECTOR(0 TO 6));		-- 7-segment display output
END bcd_to_hex;

ARCHITECTURE behaviour OF bcd_to_hex IS
BEGIN
	H(0) <= (B(2) AND NOT B(0)) OR (NOT B(3) AND NOT B(2) AND NOT B(1) AND B(0));
	H(1) <= (B(2) AND NOT B(1) AND B(0)) OR (B(2) AND B(1) AND NOT B(0));
	H(2) <= NOT B(2) AND B(1) AND NOT B(0);
	H(3) <= (B(2) AND NOT B(1) AND NOT B(0)) OR (NOT B(2) AND NOT B(1) AND B(0)) OR (B(2) AND B(1) AND B(0));
	H(4) <= B(0) OR (B(2) AND NOT B(1));
	H(5) <= (B(1) AND B(0)) OR (NOT B(3) AND NOT B(2) AND (B(1) OR B(0)));
	H(6) <= (NOT B(3) AND NOT B(2) AND NOT B(1)) OR (B(2) AND B(1) AND B(0));
END behaviour;