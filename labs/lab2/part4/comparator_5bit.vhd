-- Check if a 5-bit value is greater than 10

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparator_5bit IS
	PORT (
	  in5	: IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
	  v	: OUT STD_LOGIC;
	);
END comparator_5bit;

ARCHITECTURE func of comparator_5bit IS
BEGIN
	v <= in5(4) OR (in5(3) AND (in5(2) OR in5(1)));
END func;