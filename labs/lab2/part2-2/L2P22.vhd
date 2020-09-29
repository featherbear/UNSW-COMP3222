LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P22 IS
	PORT(	SW	:IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			HEX0	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1	:OUT STD_LOGIC_VECTOR(0 TO 6));
END L2P22;

ARCHITECTURE structure OF L2P22 IS
	COMPONENT mux_2to1 IS
		PORT (d0, d1, s	: IN std_logic;
				f				: OUT std_logic);
	END COMPONENT;
	COMPONENT bcd_to_hex IS
		PORT (B	: IN std_logic_vector(3 DOWNTO 0);
				H	: OUT std_logic_vector(0 TO 6));
	END COMPONENT;
	SIGNAL V	: std_logic_vector(3 DOWNTO 0);
	SIGNAL z : std_logic;
	SIGNAL A : std_logic_vector(2 DOWNTO 0);
	SIGNAL M	: std_logic_vector(3 DOWNTO 0);
BEGIN

	V <= SW(3 DOWNTO 0);
	
	--circuit A
	A(0) <= -- your Boolean logic expressions
	A(1) <= 
	A(2) <= 
	
	--comparator
	z <= -- your Boolean logic expression
	
	--circuit B
	HEX1(0) <= -- your Boolean logic expressions
	HEX1(1) <= 
	HEX1(2) <= 
	HEX1(3) <= 
	HEX1(4) <= 
	HEX1(5) <= 
	HEX1(6) <= 
	
	--muxes
	m0: -- your mux_2to1 instantiations
	m1: 
	m2: 
	m3: 
	
	--7-segment decoder
	h0: -- your bcd_to_hex instantiation
	
END structure;	

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_2to1 IS
	PORT	(d0, d1, s	:IN STD_LOGIC;
			 f	:OUT STD_LOGIC);
END mux_2to1;

ARCHITECTURE logicfunc OF mux_2to1 IS
BEGIN
	f <= -- your 2-to-1 mux code
END logicfunc;

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