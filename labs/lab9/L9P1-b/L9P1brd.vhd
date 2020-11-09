LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L9P1brd IS
	PORT (
		KEY	: IN	std_logic_vector(1 DOWNTO 0);
		SW		: IN	std_logic_vector(9 DOWNTO 0);
		LEDR	: OUT std_logic_vector(9 DOWNTO 0)
	);
END L9P1brd;

ARCHITECTURE implementation OF L9P1brd IS
	SIGNAL Clk : STD_LOGIC;
BEGIN
	Clk <= NOT(KEY(1));
	
	proc: work.L9P1proc PORT MAP (
			DIN => SW(8 DOWNTO 0),
			Resetn => KEY(0),
			Clock => Clk,
			Run => SW(9),
			Done => LEDR(9),
			BusWires => LEDR(8 DOWNTO 0)
		);
END implementation;