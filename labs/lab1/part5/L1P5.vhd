LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY L1P5 IS
  PORT (
    SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
    HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
    HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);

    -- Turn off HEX3
    HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6)
  );
END L1P5;

ARCHITECTURE structure OF L1P5 IS
  COMPONENT mux_2bit_3to1
    PORT (
      S, U, V, W : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT char_7seg
    PORT (
      C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      Display : OUT STD_LOGIC_VECTOR(0 TO 6)
    );
  END COMPONENT;

  -- Inter-component wires
  SIGNAL MM0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL MM1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL MM2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN

  HEX3 <= "1111111";

  M2 : mux_2bit_3to1 PORT MAP(
    SW(9 DOWNTO 8),
    SW(5 DOWNTO 4), -- W
    SW(3 DOWNTO 2), -- V
    SW(1 DOWNTO 0), -- U
    MM2(1 DOWNTO 0)
  );
  H2 : char_7seg PORT MAP(MM2(1 DOWNTO 0), HEX2);

  M1 : mux_2bit_3to1 PORT MAP(
    SW(9 DOWNTO 8),
    SW(3 DOWNTO 2), -- V
    SW(1 DOWNTO 0), -- U
    SW(5 DOWNTO 4), -- W
    MM1(1 DOWNTO 0)
  );
  H1 : char_7seg PORT MAP(MM1(1 DOWNTO 0), HEX1);
  
  M0 : mux_2bit_3to1 PORT MAP(
    SW(9 DOWNTO 8),
    SW(1 DOWNTO 0), -- U
    SW(5 DOWNTO 4), -- W
    SW(3 DOWNTO 2), -- V
    MM0(1 DOWNTO 0)
  );
  H0 : char_7seg PORT MAP(MM0(1 DOWNTO 0), HEX0);
END structure;