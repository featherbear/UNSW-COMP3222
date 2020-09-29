LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P21 IS
	PORT(	V	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			M	:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			z	:OUT STD_LOGIC);
END L2P21;

ARCHITECTURE structure OF L2P21 IS
	COMPONENT mux_2to1 IS
		PORT (d0, d1, s	: IN std_logic;
				f				: OUT std_logic);
	END COMPONENT;
	SIGNAL A : std_logic_vector(2 DOWNTO 0);
	SIGNAL s : std_logic; -- intermediate signal for z
BEGIN	

	--circuit A
	A(0) <= -- your Boolean logic expressions
	A(1) <= 
	A(2) <=
	
	--comparator
	s <= -- your Boolean logic expression
	z <= s;
	
	--muxes
	m0: -- your mux_2to1 instantiations
	m1: 
	m2: 
	m3: 
	
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