-- Handle input as a 4-bit number (passthrough) when s is 0
-- Handle input as the 4-bit LSB decimal of a 5-bit number when s is 1

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY digit_switch IS
	PORT (
		s:			IN STD_LOGIC; -- Switch
		input:	IN	 STD_LOGIC_VECTOR(4 TO 0); -- 4-bit input
		output:	OUT STD_LOGIC_VECTOR(3 TO 0); -- 4-bit output
	);
END digit_switch;

ARCHITECTURE logicfunc OF digit_switch IS
	COMPONENT mux_2to1 IS
		PORT (
			d0, d1, s	: IN std_logic;
			f				: OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL shifts : STD_LOGIC_VECTOR(3 DOWNTO 0); -- High shift values
BEGIN

	-- High shifting logic
	-- Get the unit decimal number (4-bit) from a 5-bit number
	shifts(3) <= input(4) AND NOT(input(3)) AND NOT(input(2)) AND input(1);
	shifts(2) <= (NOT(input(4)) AND input(3) AND input(2) AND input(1)) OR (input(4) AND NOT(input(3)) AND NOT(input(2)) AND NOT(input(1)));
	shifts(1) <= NOT(input(1));
	shifts(0) <= input(0);

	--muxes
	m3: mux_2to1 PORT MAP (
		d0 => input(3),
		d1 => shifts(3),
		s	=> s,
		f	=> output(3)
	);
	
	m2: mux_2to1 PORT MAP (
		d0 => input(2),
		d1 => shifts(2),
		s	=> s,
		f	=> output(2)
	);
	
	m1: mux_2to1 PORT MAP (
		d0 => input(1),
		d1 => shifts(1),
		s	=> s,
		f	=> output(1)
	);
	
	m0: mux_2to1 PORT MAP (
		d0 => input(0),
		d1 => shifts(0),
		s	=> s,
		f	=> output(0)
	);
	
END logicfunc;
