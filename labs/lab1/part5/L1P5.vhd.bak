LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L1P5 IS
	PORT(	SW	:IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			HEX0	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1	:OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX2	:OUT STD_LOGIC_VECTOR(0 TO 6));
END L1P5;

ARCHITECTURE structure OF L1P5 IS
	COMPONENT mux_2bit_3to1
		PORT( S, U, V, W	:IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				M	:OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
	END COMPONENT;
	COMPONENT char_7seg
		PORT	(C	:IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				Display	:OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	SIGNAL M	:STD_LOGIC_VECTOR(1 DOWNTO 0); -- will need to be updated
BEGIN
	M0: mux_2bit_3to1 PORT MAP (SW(9 DOWNTO 8), SW(1 DOWNTO 0), SW(5 DOWNTO 4), SW(3 DOWNTO 2), M(1 DOWNTO 0));
	H0: char_7seg PORT MAP(M(1 DOWNTO 0), HEX0);
	M1: -- your code
	H1: -- ""
	M2: -- ""
	H2: -- ""
END structure;	

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_2bit_3to1 IS
	PORT	(S, U, V, W	:IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			M	:OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END mux_2bit_3to1;

ARCHITECTURE behaviour OF mux_2bit_3to1 IS
	SIGNAL N	:STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	-- your code
END behaviour;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY char_7seg IS
	PORT	(C	:IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Display	:OUT STD_LOGIC_VECTOR(0 TO 6));
END char_7seg;

ARCHITECTURE behaviour OF char_7seg IS
BEGIN
	-- your code
END behaviour;
