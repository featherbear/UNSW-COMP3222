LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d_latch IS
	PORT (
		Clk, D	: IN  std_logic;
		Q			: OUT std_logic
	);
END d_latch;

ARCHITECTURE structural OF d_latch IS
	SIGNAL R, R_g, S_g, Qa, Qb : std_logic;
	ATTRIBUTE keep : boolean;
	ATTRIBUTE keep of R, R_g, S_g, Qa, Qb : SIGNAL IS true;
BEGIN
	R <= NOT(D);
	R_g <= R NAND Clk;
	S_g <= D NAND Clk;
	Qa <= S_g NAND Qb;
	Qb <= R_g NAND Qa;
	Q <= Qa;
END structural;
