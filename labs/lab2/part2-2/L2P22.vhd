LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L2P22 IS
  PORT (
    SW   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
    HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
    HEX1  :OUT STD_LOGIC_VECTOR(0 TO 6)
  );
END L2P22;

ARCHITECTURE structure OF L2P22 IS
  COMPONENT mux_2to1 IS
    PORT (
     d0, d1, s : IN  std_logic;
     f         : OUT std_logic
   );
  END COMPONENT;

  COMPONENT bcd_to_hex IS
    PORT (
	   B: IN  std_logic_vector(3 DOWNTO 0);
      H: OUT std_logic_vector(0 TO 6)
    );
  END COMPONENT;

  SIGNAL V : std_logic_vector(3 DOWNTO 0);
  SIGNAL z : std_logic;
  SIGNAL A : std_logic_vector(2 DOWNTO 0);
  SIGNAL M : std_logic_vector(3 DOWNTO 0);
  
  SIGNAL ZERO : STD_LOGIC := '0'; -- Zero value

BEGIN

  V <= SW(3 DOWNTO 0);
  
   --circuit A -- Handles the high shift
  A(2) <= V(2) AND V(1);
  A(1) <= NOT(V(1));
  A(0) <= V(0);
    
  --comparator
  z <= V(3) AND (V(2) OR V(1)); -- V >= 10 when V == 0b1X1X or V == 0b11XX
  
  --circuit B
  -- HEX1 shows 0 when z is 0
  -- HEX1 shows 1 when z is 1
  HEX1(0) <= z;
  HEX1(1) <= '0';
  HEX1(2) <= '0';
  HEX1(3) <= z;
  HEX1(4) <= z;
  HEX1(5) <= z;
  HEX1(6) <= '1'; -- Always off
  
  m3: mux_2to1 PORT MAP (
    d0 => V(3),
    d1 => ZERO,
    s => z,
    f => M(3)
  );
  
  m2: mux_2to1 PORT MAP (
    d0 => V(2),
    d1 => A(2),
    s => z,
    f => M(2)
  );
  
  m1: mux_2to1 PORT MAP (
    d0 => V(1),
    d1 => A(1),
    s => z,
    f => M(1)
  );
  
  m0: mux_2to1 PORT MAP (
    d0 => V(0),
    d1 => A(0),
    s => z,
    f => M(0)
  );
  
  
  h: bcd_to_hex PORT MAP (
    B => M,
    H => HEX0
  );

END structure;  
