LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P1 IS
  PORT (
    SW   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
	 HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
	 HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);

	 -- For clearing the display
	 HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	 HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END L2P1;

ARCHITECTURE structure OF L2P1 IS
  COMPONENT bcd_to_hex IS
    PORT (
	   B : IN  std_logic_vector(3 DOWNTO 0);
	   H : OUT std_logic_vector(0 TO 6)
	 );
  END COMPONENT;
BEGIN
  -- Turn off HEX3 and HEX2
  HEX2 <= "1111111";
  HEX3 <= "1111111";

  -- Assign ports to HEX1
  h1: bcd_to_hex PORT MAP (
    B => SW(7 DOWNTO 4),
    H => HEX1
  );
  
  -- Assign ports to HEX0
  h0: bcd_to_hex PORT MAP (
    B => SW(3 DOWNTO 0),
    H => HEX0
  );
  
END structure;  
