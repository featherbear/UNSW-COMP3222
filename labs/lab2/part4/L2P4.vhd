LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P4 IS
	PORT(	
			SW		: IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDG	: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			
			HEX0	: OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1	: OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX2	: OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX3	: OUT STD_LOGIC_VECTOR(0 TO 6)
		);
END L2P4;

ARCHITECTURE structure OF L2P4 IS
	COMPONENT adder_4bit IS
		PORT(	
			a 		: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			b 		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s		: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			cin	: IN STD_LOGIC
		);
	END COMPONENT;

	COMPONENT bcd_to_hex IS
		PORT (
			B	: IN std_logic_vector(3 DOWNTO 0);
			H	: OUT std_logic_vector(0 TO 6)
		);
	END COMPONENT;

	COMPONENT comparator_5bit IS
		PORT (
		  in5	: IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		  v	: OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT one_toggle IS
		PORT (
		  v: IN STD_LOGIC;
		  H: OUT STD_LOGIC_VECTOR(0 TO 6)
		);
	END COMPONENT;
	
	COMPONENT digit_switch IS
		PORT (
			s:			IN STD_LOGIC; -- Switch
			input:	IN	 STD_LOGIC_VECTOR(4 DOWNTO 0); -- 5-bit input
			output:	OUT STD_LOGIC_VECTOR(3 DOWNTO 0) -- 4-bit output
		);
	END COMPONENT;
	
	SIGNAL a, b : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Input values
	SIGNAL cin : STD_LOGIC;
	
	SIGNAL s : STD_LOGIC_VECTOR(4 DOWNTO 0); -- adder sum
	SIGNAL z : STD_LOGIC; -- intermediate 10s overflow bit
	
	SIGNAL digit0 : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Signal from digit switch to 7-bit decoder
	
BEGIN
	
	a <= SW(7 DOWNTO 4);
	b <= SW(3 DOWNTO 0);	
	cin <= SW(8);
	
	-- Show 5-bit sum of A + B
	LEDG(4 DOWNTO 0) <= s;
	
	-- Show LEDG(7) if A or B is > 9
	-- >9; >= 10; 0b1X1X || 0b11XX
	LEDG(7) <= (A(3) AND (A(2) OR A(1))) OR (B(3) AND (B(2) OR B(1)));
	
	--adder
	adder: adder_4bit PORT MAP (
		a => a,
		b => b,
		s => s,
		cin => cin
	);
	
	--switch
	digit: digit_switch PORT MAP (
		input => s,

	s => z,
		output => digit0
	);
	
	tens: comparator_5bit PORT MAP (
		in5 => s,
		v => z
	);
	
	--7-segment decoders
	h3: bcd_to_hex PORT MAP (
		B => A,
		H => HEX3
	);
	
	h2: bcd_to_hex PORT MAP (
		B => B,
		H => HEX2
	);
	
	o1: one_toggle PORT MAP (
		v => z,
		H => HEX1
	);
	
	h0: bcd_to_hex PORT MAP (
		B => digit0,
		H => HEX0
	);
	
END structure;	


