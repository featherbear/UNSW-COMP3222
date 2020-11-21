LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L11P1 IS
	PORT (
		SW			: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		KEY		: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		CLOCK_50	: IN STD_LOGIC;
		LEDR		: IN STD_LOGIC_VECTOR(3 DOWNTO 0) -- Using DE1 Board
	);
	
	ALIAS INPUT IS SW(7 DOWNTO 0);
	ALIAS s IS SW(8);
	
	ALIAS RSTn IS KEY(0);
	
	-- ALIAS Clk IS CLOCK_50;
	ALIAS Clk IS KEY(1);
	
END L11P1;

ARCHITECTURE behaviour OF L11P1 IS 
	SIGNAL isDone: STD_LOGIC;
BEGIN
	counter: work.bitcounter PORT MAP (
		Data		=> INPUT,
		Enable	=>	s,
		Clock		=>	Clk,
		ResetN	=>	RSTn,
		Done		=>	isDone
		Count		=>	LEDR(3 DOWNTO 0),
	);
END behaviour;