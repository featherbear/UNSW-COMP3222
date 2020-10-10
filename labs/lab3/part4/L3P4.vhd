LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L3P4 IS
	PORT(	Clock, D :IN	std_logic;
			Qa, Qb, Qc : OUT std_logic);
END L3P4;

ARCHITECTURE structural OF L3P4 IS
	COMPONENT D_latch IS
		PORT(	Clk, D :IN	std_logic;
				Q : OUT std_logic);
	END COMPONENT;
	COMPONENT D_ff IS
		PORT(	Clk, D :IN	std_logic;
				Q : OUT std_logic);
	END COMPONENT;
	COMPONENT neg_Dff IS
		PORT(	Clk, D :IN	std_logic;
				Q : OUT std_logic);
	END COMPONENT;
BEGIN
	
	latch: D_latch PORT MAP (Clock, D, Qa);
	posDff: D_ff PORT MAP (Clock, D, Qb);
	negDff: neg_Dff PORT MAP (Clock, D, Qc);

END structural;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_latch IS
	PORT(	Clk, D :IN	std_logic;
				Q : OUT std_logic);
END D_latch;

ARCHITECTURE behavioural OF D_latch IS
BEGIN	
	PROCESS (D, Clk)
	BEGIN	
		IF Clk = '1' THEN
			Q <= D;
		END IF;
	END PROCESS;
END behavioural;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_ff IS
	PORT(	Clk, D :IN	std_logic;
				Q : OUT std_logic);
END D_ff;

ARCHITECTURE behavioural OF D_ff IS
BEGIN	

	-- your code for a +ve edge-triggered DFF

END behavioural;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY neg_Dff IS
	PORT(	Clk, D :IN	std_logic;
				Q : OUT std_logic);
END neg_Dff;

ARCHITECTURE behavioural OF neg_Dff IS
BEGIN	

	-- your code for a -ve edge-triggered DFF
	
END behavioural;