LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part5 IS
	PORT (
		SW		: IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		KEY	: IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		HEX3	: OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX2	: OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1	: OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX0	: OUT STD_LOGIC_VECTOR(0 TO 6)
	);
	
	ALIAS D 		: STD_LOGIC_VECTOR(7 DOWNTO 0) IS SW(7 DOWNTO 0);
	ALIAS MODE 	: STD_LOGIC IS SW(9);
	ALIAS CLK 	: STD_LOGIC IS KEY(1);	
	ALIAS RESET	: STD_LOGIC IS KEY(0);

END part5;

ARCHITECTURE func OF part5 IS
	SIGNAL MX_A, MX_B	: STD_LOGIC_VECTOR(7 DOWNTO 0); 	-- Mux Outputs
	SIGNAL FF_A, FF_B	: STD_LOGIC_VECTOR(7 DOWNTO 0); 	-- Flip-Flop outputs
	SIGNAL CLKn 		: STD_LOGIC; 						   -- Inverted clock signal
	
	ATTRIBUTE KEEP: boolean;
	ATTRIBUTE KEEP of FF_A, FF_B : SIGNAL IS true;
BEGIN
	CLKn <= NOT(CLK); -- Inverted clock signal

	-- Create muxes for state switching
	muxA: ENTITY work.mux8 PORT MAP (FF_A, D, MX_A, MODE);
	muxb: ENTITY work.mux8 PORT MAP (D, FF_B, MX_B, MODE);
	
	-- Flip-flops: Takes in the mux outputs
	flipperA: ENTITY work.reg8 PORT MAP (MX_A, FF_A, RESET, CLK);
	flipperB: ENTITY work.reg8 PORT MAP (MX_B, FF_B, RESET, CLK);

	-- Decode 4-bit values as 7-segment HEX active-low signals
	HEX3BCD: ENTITY work.BCD_HEX PORT MAP (FF_A(7 DOWNTO 4), HEX3);
	HEX2BCD: ENTITY work.BCD_HEX PORT MAP (FF_A(3 DOWNTO 0), HEX2);
	HEX1BCD: ENTITY work.BCD_HEX PORT MAP (FF_B(7 DOWNTO 4), HEX1);
	HEX0BCD: ENTITY work.BCD_HEX PORT MAP (FF_B(3 DOWNTO 0), HEX0);
	
END func;