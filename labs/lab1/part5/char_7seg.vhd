LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY char_7seg IS
  PORT (
    C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    Display : OUT STD_LOGIC_VECTOR(0 TO 6)
  );
END char_7seg;

ARCHITECTURE behaviour OF char_7seg IS
BEGIN
  Display(0) <= NOT(C(0)) OR C(1);
  Display(1) <= C(0);
  Display(2) <= C(0);
  Display(3) <= C(1);
  Display(4) <= C(1);
  Display(5) <= NOT(C(0)) OR C(1);
  Display(6) <= C(1);
END behaviour;