LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L4P11 IS
	PORT (
		E, Clk, Clearn: IN std_logic;
		Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END L4P11;

ARCHITECTURE structural OF L4P11 IS
	SIGNAL T: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	PROCESS (Clk, E, Q, T) BEGIN
		G1: FOR i IN 0 TO 3 LOOP
		  IF i = 0 THEN
			 T(i) <= E;
		  ELSE
			 T(i) <= T(i-1) AND Q(i-1);
		  END IF;
		END LOOP;
	END PROCESS;

	G2: FOR i IN 0 TO 3 GENERATE
		ctr: ENTITY work.t_ff PORT MAP (
			  Clk => Clk,
			  Clearn => Clearn,
			  T => T(i),
			  Q => Q(i)
			);
	END GENERATE;

END structural;
