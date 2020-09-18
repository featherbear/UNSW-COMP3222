LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part2 IS
  PORT (
	 SW    : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    LEDG  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
  
  SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
  -- ALIAS s IS SW(9);
  
  ALIAS M IS LEDG(3 DOWNTO 0);
  ALIAS X IS SW(3 DOWNTO 0);
  ALIAS Y IS SW(7 DOWNTO 4);
  -- ALIAS Y : STD_LOGIC_VECTOR(3 DOWNTO 0) IS SW(7 DOWNTO 4);
    
END part2;


ARCHITECTURE Behaviour OF part2 IS
BEGIN
  s <= SW(9) & SW(9) & SW(9) & SW(9);
  M <= (NOT(s) AND X) OR (s AND Y);

  -- PROCESS (s) BEGIN
  --   IF s = '0' THEN
  --     M <= X;
  --   ELSE
  --     M <= Y;
  --   END IF;
  -- END PROCESS;

  -- M(0) <= (NOT(s) AND X(0)) OR (s AND Y(0));
  -- M(1) <= (NOT(s) AND X(1)) OR (s AND Y(1));
  -- M(2) <= (NOT(s) AND X(2)) OR (s AND Y(2));
  -- M(3) <= (NOT(s) AND X(3)) OR (s AND Y(3));
END Behaviour;