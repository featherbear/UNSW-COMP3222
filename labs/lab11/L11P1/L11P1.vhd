LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY L11P1 IS
	PORT (
		SW			: IN 	STD_LOGIC_VECTOR(8 DOWNTO 0);
		KEY		: IN 	STD_LOGIC_VECTOR(0 DOWNTO 0); -- Change to 1 DOWNTO 0 for manual clock
		CLOCK_50	: IN 	STD_LOGIC;
		LEDR		: OUT	STD_LOGIC_VECTOR(3 DOWNTO 0) -- Using DE1 Board
	);
	
	ALIAS INPUT IS SW(7 DOWNTO 0);
	ALIAS s IS SW(8);
	
	ALIAS RSTn IS KEY(0);
	
	ALIAS Clk IS CLOCK_50;
	-- ALIAS Clk IS KEY(1);
	
END L11P1;

ARCHITECTURE behaviour OF L11P1 IS 
	SIGNAL isDone	: STD_LOGIC;
	SIGNAL count	: INTEGER RANGE 0 TO 8;
BEGIN
	counter: work.bitcounter 
		GENERIC MAP (
			N => 8
		)
		PORT MAP (
			Data		=> INPUT,
			Enable	=>	s,
			Clock		=>	Clk,
			ResetN	=>	RSTn,
			Done		=>	isDone,
			Count		=>	count
		);
	
	LEDR(3 DOWNTO 0) <= STD_LOGIC_VECTOR(to_unsigned(count, 4));
END behaviour;