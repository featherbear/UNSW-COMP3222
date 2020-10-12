LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L3P4 IS
	PORT (
		Clock, D 	: IN	std_logic;
		Qa, Qb, Qc 	: OUT std_logic
	);
END L3P4;

ARCHITECTURE structural OF L3P4 IS
BEGIN

	latch: work.d_latch PORT MAP (
		Clk => Clock,
		D => D,
		Q => Qa
	);

	posDff: work.d_ff PORT MAP (
		Clk => Clock,
		D => D,
		Q => Qb
	);
	negDff: work.d_ff_neg PORT MAP (
		Clk => Clock,
		D => D,
		Q => Qc
	);

END structural;
