LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_to_hex IS
  PORT (
    B : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
    H : OUT STD_LOGIC_VECTOR(0 TO 6)
  );
END bcd_to_hex;

ARCHITECTURE logicfunc OF bcd_to_hex IS
BEGIN
  -- 4-bit assignments for the numbers 0-9
  -- Values past 0b1001 are considered unhandled
  H(0) <= (NOT(B(3)) AND NOT(B(1))) AND ((B(2) AND NOT(B(0))) OR (NOT(B(2)) AND B(0)));
  H(1) <= (NOT(B(3)) AND B(2)) AND ((NOT(B(1)) AND B(0)) OR (B(1) AND NOT(B(0))));
  H(2) <= NOT(B(3)) AND NOT(B(2)) AND B(1) AND NOT(B(0));
  H(3) <= (NOT(B(1)) AND B(0) AND (B(3) OR NOT(B(2)))) OR (NOT(B(3)) AND B(2) AND ((NOT(B(1)) AND NOT(B(0))) OR (B(1) AND B(0))));
  H(4) <= B(0) OR (NOT(B(3)) AND B(2) AND (NOT(B(1)) OR B(0)));
  H(5) <= (B(1) AND B(0)) OR (NOT(B(3)) AND NOT(B(2)) AND (B(1) OR B(0)));
  H(6) <= (NOT(B(3)) AND NOT(B(2)) AND NOT(B(1))) OR (NOT(B(3)) AND B(2) AND B(1) AND B(0));
END logicfunc;