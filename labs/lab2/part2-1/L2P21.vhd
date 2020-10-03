LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P21 IS
  PORT (
    V : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
    M : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    z : OUT STD_LOGIC
  );
END L2P21;

ARCHITECTURE structure OF L2P21 IS
  COMPONENT mux_2to1 IS
    PORT (
	   d0, d1, s  : IN  std_logic;
      f          : OUT std_logic
	 );
  END COMPONENT;
  
  SIGNAL A : std_logic_vector(2 DOWNTO 0);
  SIGNAL s : std_logic; -- intermediate signal for z
  
  SIGNAL ZERO : STD_LOGIC := '0'; -- Zero value
  
BEGIN  

  --circuit A -- Handles the high shift
  A(2) <= V(2) AND V(1);
  A(1) <= NOT(V(1));
  A(0) <= V(0);
  
  -- comparator
  s <= V(3) AND (V(2) OR V(1)); -- V >= 10 when V == 0b1X1X or V == 0b11XX
  z <= s;
  
  -- muxes
  m3: mux_2to1 PORT MAP (
    d0 => V(3),
    d1 => ZERO,
    s => s,
    f => M(3)
  );
  
  m2: mux_2to1 PORT MAP (
    d0 => V(2),
    d1 => A(2),
    s => s,
    f => M(2)
  );
  
  m1: mux_2to1 PORT MAP (
    d0 => V(1),
    d1 => A(1),
    s => s,
    f => M(1)
  );
  
  m0: mux_2to1 PORT MAP (
    d0 => V(0),
    d1 => A(0),
    s => s,
    f => M(0)
  );

  
END structure;  
