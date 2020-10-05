-- Display 1 on a HEX display if v is 1
-- Otherwise, display 0 on the HEX display

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY one_toggle IS
	PORT (
	  v: IN STD_LOGIC;
	  H: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END one_toggle;

ARCHITECTURE func of one_toggle IS
BEGIN
  H(0) <= v;
  H(1) <= '0'; -- Always on
  H(2) <= '0'; -- Always on
  H(3) <= v;
  H(4) <= v;
  H(5) <= v;
  H(6) <= '1'; -- Always off
 END func;