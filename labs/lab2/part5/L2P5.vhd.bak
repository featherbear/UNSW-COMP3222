LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY L2P5 IS
	PORT(	SW	:IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDG	:OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			HEX0	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX2	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX3	:OUT STD_LOGIC_VECTOR(0 TO 6));
END L2P5;

ARCHITECTURE structure OF L2P5 IS
	COMPONENT bcd_to_hex IS
		PORT (B	: IN std_logic_vector(3 DOWNTO 0);
				H	: OUT std_logic_vector(0 TO 6));
	END COMPONENT;
	SIGNAL a, b : std_logic_vector(3 DOWNTO 0);
	SIGNAL cin, z : std_logic;
	SIGNAL T0, Z0, S0 : std_logic_vector(4 DOWNTO 0);
	SIGNAL S1, C1 : std_logic_vector(3 DOWNTO 0);
BEGIN
	a <= SW(7 DOWNTO 4);
	b <= SW(3 DOWNTO 0);
	cin <= SW(8);
	LEDG(4 DOWNTO 0) <= T0; -- msb = carry_out
	LEDG(7) <= -- Boolean logic expression set if a or b inputs aren't BCDs

	--addition
	T0 <= ('0' & a) + ('0' & b) + cin;
	
	--muxes
	-- PROCESS that sets Z0 and C1 based on T0 
	
	--outputs
	S0 <= T0 - Z0;
	S1 <= C1;
	
	--7-segment decoders
	h0: -- your bcd_to_hex instantiations
	h1: 
	h2: 
	h3: 
END structure;	

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_to_hex IS
	PORT	(B	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 H	:OUT STD_LOGIC_VECTOR(0 TO 6));
END bcd_to_hex;

ARCHITECTURE logicfunc OF bcd_to_hex IS
BEGIN
	H(0) <= -- your Boolean logic expressions
	H(1) <= 
	H(2) <= 
	H(3) <= 
	H(4) <= 
	H(5) <= 
	H(6) <= 
END logicfunc;