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
