LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P3 IS
	PORT (
		SW		:	IN 	STD_LOGIC_VECTOR(9 DOWNTO 0);
		LEDG	:	OUT 	STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END L2P3;

ARCHITECTURE structure OF L2P3 IS
	COMPONENT full_add IS
		PORT (
			a, b, ci	: IN std_logic;
			co, s	: OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL a, b, s : std_logic_vector(3 DOWNTO 0);
	SIGNAL cin, cout : std_logic;
	SIGNAL c	: std_logic_vector(1 TO 3);
	
BEGIN
	a <= SW(7 DOWNTO 4);
	b <= SW(3 DOWNTO 0);
	cin <= SW(8);
	LEDG(4 DOWNTO 0) <= cout & s;

	--ripple-carry adder
	fa0: full_add PORT MAP (
		a => a(0),
		b => b(0),
		ci => cin,
		co => c(1),
		s => s(0)
	);
	fa1: full_add PORT MAP (
		a => a(1),
		b => b(1),
		ci => c(1),
		co => c(2),
		s => s(1)
	);
	fa2: full_add PORT MAP (
		a => a(2),
		b => b(2),
		ci => c(2),
		co => c(3),
		s => s(2)
	);
	fa3: full_add PORT MAP (
		a => a(3),
		b => b(3),
		ci => c(3),
		co => cout,
		s => s(3)
	);

END structure;	
