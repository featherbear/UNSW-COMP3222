LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L1P3 IS
	PORT (
	  SW   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
	  LEDG : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
   );
END L1P3;

ARCHITECTURE behaviour OF L1P3 IS
	SIGNAL U, V, W, M, N	: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL t : STD_LOGIC_VECTOR(1 DOWNTO 0); -- Added an extra signal to contain a "SW(9) is HIGH vector"
BEGIN
	LEDG(9 DOWNTO 2) <= "00000000";
	LEDG(1 DOWNTO 0) <= M;
	
	U <= SW(5 DOWNTO 4);
	V <= SW(3 DOWNTO 2);
	W <= SW(1 DOWNTO 0);
	
	-- s <= SW(9 DOWNTO 8);
	s <= SW(8) & SW(8);
	t <= SW(9) & SW(9);
	
	-- expressions involving elements of s, U and V
	N <= (NOT(s) AND U) OR (s AND V);
	-- N(0) <= (NOT(s(0)) AND U(0)) OR (s(0) AND V(0));
   -- N(1) <= (NOT(s(0)) AND U(1)) OR (s(0) AND V(1));

	-- expressions involving elements of s, N and W
	M <= (NOT(t) AND N) OR (t AND W);
	
	
END behaviour;
