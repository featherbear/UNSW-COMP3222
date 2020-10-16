LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L4P13 IS
	PORT (
		KEY: 	IN  std_logic_vector(2 DOWNTO 0);
		SW: 	IN  std_logic_vector(9 DOWNTO 0);
		HEX0: OUT std_logic_vector(0 TO 6);
		HEX1: OUT std_logic_vector(0 TO 6);
		HEX2: OUT std_logic_vector(0 TO 6);
		HEX3: OUT std_logic_vector(0 TO 6)
	);
END L4P13;

ARCHITECTURE structural OF L4P13 IS
	ALIAS Clk 		: STD_LOGIC IS KEY(0);
	ALIAS E 			: STD_LOGIC IS SW(1);
	ALIAS Clearn	: STD_LOGIC IS SW(0);

	SIGNAL T: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL Q: STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
	-- blank higher order HEX displays
	HEX2 <= "1111111";
	HEX3 <= "1111111";
	
	-- Set up AND gates
	PROCESS (Clk, E, Q, T) BEGIN
		G1: FOR i IN 0 TO 7 LOOP
		  IF i = 0 THEN
			 T(i) <= E;
		  ELSE
			 T(i) <= T(i-1) AND Q(i-1);
		  END IF;
		END LOOP;
	END PROCESS;

	-- Instantiate T Flip-flops
	G2: FOR i IN 0 TO 7 GENERATE
		ctr: ENTITY work.t_ff PORT MAP (
			  Clk => Clk,
			  Clearn => Clearn,
			  T => T(i),
			  Q => Q(i)
			);
	END GENERATE;
	
	-- BCD to HEX
	dsp1: ENTITY work.bcd_hex PORT MAP (
		BCD => Q(7 DOWNTO 4),
		HEX => HEX1
	);
	
	dsp0: ENTITY work.bcd_hex PORT MAP (
		BCD => Q(3 DOWNTO 0),
		HEX => HEX0
	);
	

END structural;
