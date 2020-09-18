LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab1 IS
  PORT (
    SW   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
	 LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END lab1;

ARCHITECTURE Behaviour OF lab1 IS
BEGIN
  LEDR <= SW;
END Behaviour;