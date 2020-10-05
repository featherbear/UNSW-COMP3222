-- 4-bit adder, 5-bit output, with carry in

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY adder_4bit IS
	PORT(	
			a 		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			b 		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			
			s		: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			
			cin	: IN STD_LOGIC
		);
END adder_4bit;

ARCHITECTURE func OF adder_4bit IS
	COMPONENT full_add IS
		PORT (
			a, b, ci	: IN std_logic;
			co, s	: OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL c	: std_logic_vector(1 TO 4); -- Carries
BEGIN

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
		co => c(4),
		s => s(3)
	);

	s(4) <= c(4);

END func;