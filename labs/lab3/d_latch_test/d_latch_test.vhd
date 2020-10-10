LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d_latch_test IS
	PORT (
		SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		LEDG : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END d_latch_test;

ARCHITECTURE behaviour OF d_latch_test IS
BEGIN
	latch: work.d_latch PORT MAP (
	  Clk => SW(1),
	  D => SW(0),
	  Q => LEDG(0)
	);
END behaviour;