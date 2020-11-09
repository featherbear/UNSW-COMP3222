LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L9P1 IS
	PORT (
		KEY						:IN	std_logic_vector(1 DOWNTO 0);
		SW							:IN	std_logic_vector(9 DOWNTO 0);
		LEDR						:OUT 	std_logic_vector(9 DOWNTO 0)
	);
END L9P1;

ARCHITECTURE implementation OF L9P1 IS
	ALIAS CLK IS SW(1);
	ALIAS RSTn IS SW(0);
	
	ALIAS RUN IS KEY(9);
	ALIAS DIN IS KEY(8 DOWNTO 0);

	
	ALIAS DONE IS LEDR(9);
	ALIAS BUSS IS LEDR(8 DOWNTO 0);
	
BEGIN
	proc: work.L9P1proc PORT MAP (
		DIN => DIN,
		Resetn => RSTn,
		Clock => CLK,
		Run => RUN,
		Done => DONE,
		BusWires => BUSS
	);
END implementation;