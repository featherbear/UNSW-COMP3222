ENTITY mux_2bit_3to1 IS
  PORT (
    S, U, V, W : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END mux_2bit_3to1;

ARCHITECTURE behaviour OF mux_2bit_3to1 IS
  SIGNAL N : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
  -- your code
END behaviour;

LIBRARY ieee;