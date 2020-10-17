LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY L4P4 IS
	PORT (
		CLOCK_50	: IN  std_logic;
		KEY		: IN  std_logic_vector(0 TO 0);
		HEX0		: OUT std_logic_vector(0 TO 6);
		HEX1		: OUT std_logic_vector(0 TO 6);
		HEX2		: OUT std_logic_vector(0 TO 6);
		HEX3		: OUT std_logic_vector(0 TO 6)
	);
END L4P4;

ARCHITECTURE behavioural OF L4P4 IS
	SIGNAL secondElapse 	: STD_LOGIC;
	SIGNAL aclr_n			: STD_LOGIC;
	SIGNAL bcdValue		: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	aclr_n <= NOT(KEY(0));

	-- blank higher order HEX displays
	HEX1 <= "1111111"; 
	HEX2 <= "1111111";
	HEX3 <= "1111111";
	
	-- Define a 26-bit counter with a modulo of 50000000 ( 50 * 10^6 )
	timer50mhz: ENTITY work.timer PORT MAP (
		clock => CLOCK_50,
		aclr => aclr_n,
		cout => secondElapse -- Triggered when overflow occurs
	);
	
	-- Every overflow, increment the 4-bit counter
	cnt: ENTITY work.bcd_counter PORT MAP (
		clock => CLOCK_50,
		aclr => aclr_n,
		cnt_en => secondElapse,
		q => bcdValue
	);
	
	-- Reflect the 4-bit counter value onto HEX0
	dsp: ENTITY work.bcd_hex PORT MAP (
		BCD => bcdValue,
		HEX => HEX0
	);
	
END behavioural;
