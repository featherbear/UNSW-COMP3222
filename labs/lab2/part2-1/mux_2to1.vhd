LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_2to1 IS
  PORT (
    d0, d1, s :IN  STD_LOGIC;
    f         :OUT STD_LOGIC
  );
END mux_2to1;

ARCHITECTURE logicfunc OF mux_2to1 IS
BEGIN
  f <= (NOT(s) AND d0) OR (s AND d1);
END logicfunc;