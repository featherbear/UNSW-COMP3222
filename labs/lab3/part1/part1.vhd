-- A gated RS latch described the hard way

-- Output toggles whenever R (0) -> (1) or S (0) -> (1)

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part1 IS 
	PORT (
		Clk, R, S : 	IN STD_LOGIC;
		Q: 				OUT STD_LOGIC
	);
END PART1;

ARCHITECTURE Structural OF part1 IS 
	SIGNAL R_g, S_g, Qa, Qb : STD_LOGIC;
	ATTRIBUTE keep : boolean;
	ATTRIBUTE keep of R_g, S_g, Qa, Qb : SIGNAL IS true;
BEGIN 
	R_g <= R AND Clk;
	S_g <= S AND Clk;
	Qa <= NOT (R_g OR Qb);
	Qb <= NOT (S_g OR Qa);
	Q <= Qa;
END Structural;