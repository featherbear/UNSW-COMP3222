LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P4 IS
	PORT(	SW	:IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDG	:OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			HEX0	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX2	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX3	:OUT STD_LOGIC_VECTOR(0 TO 6));
END L2P4;

ARCHITECTURE structure OF L2P4 IS
	COMPONENT full_add IS
		PORT (a, b, ci	: IN std_logic;
				co, s	: OUT std_logic);
	END COMPONENT;
	COMPONENT bcd_to_hex IS
		PORT (B	: IN std_logic_vector(3 DOWNTO 0);
				H	: OUT std_logic_vector(0 TO 6));
	END COMPONENT;
	COMPONENT mux_2to1 IS
		PORT (d0, d1, s	: IN std_logic;
				f				: OUT std_logic);
	END COMPONENT;
	SIGNAL a, b, s : std_logic_vector(3 DOWNTO 0);	-- adder inputs and outputs
	SIGNAL CA : std_logic_vector(3 DOWNTO 0);			-- circuit A outputs
	SIGNAL M : std_logic_vector(3 DOWNTO 0);			-- mux outputs
	SIGNAL N : std_logic_vector(3 DOWNTO 0);			-- circuit B outputs
	SIGNAL cin, cout, z : std_logic;
	SIGNAL c	: std_logic_vector(1 TO 3);				-- carries
BEGIN
	a <= SW(7 DOWNTO 4);
	b <= SW(3 DOWNTO 0);
	cin <= SW(8);
	LEDG(4 DOWNTO 0) <= cout & s;
	LEDG(7) <= -- your Boolean logic expression

	--ripple-carry adder
	fa0: -- your full_add instantiations
	fa1: 
	fa2: 
	fa3: 
	
	--circuit A
	CA(0) <= -- your Boolean logic expressions
	CA(1) <= 
	CA(2) <= 
	CA(3) <= 
	
	--comparator
	z <= -- your Boolean logic expression
	
	--circuit B
	N <= "0000" WHEN z = '0' ELSE "0001";

	--muxes
	m0: -- your mux_2to1 instantiations
	m1: 
	m2: 
	m3: 
	
	--7-segment decoders
	h0: -- your bcd_to_hex instantiations
	h1: 
	h2: 
	h3: 
END structure;	

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_2to1 IS
	PORT	(d0, d1, s	:IN STD_LOGIC;
			 f	:OUT STD_LOGIC);
END mux_2to1;

ARCHITECTURE logicfunc OF mux_2to1 IS
BEGIN
	-- your 2-to-1 mux code
END logicfunc;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_add IS
	PORT	(a, b, ci	:IN STD_LOGIC;
			 co, s	:OUT STD_LOGIC);
END full_add;

ARCHITECTURE structure OF full_add IS
	COMPONENT mux_2to1 IS
		PORT (d0, d1, s	: IN std_logic;
				f				: OUT std_logic);
	END COMPONENT;
	SIGNAL ms : std_logic;
BEGIN
	-- your full adder code
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