LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY L4P2 IS
	PORT(	E, Clk, Clearn: IN std_logic;
			Q : BUFFER std_logic_vector(15 DOWNTO 0));
END L4P2;

ARCHITECTURE behavioural OF L4P2 IS
BEGIN

	-- your VHDL code
	
END behavioural;