LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_2bit_3to1 IS
  PORT (
    S : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- 2-bit switch
    U, V, W : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- 2-bit inputs
    M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) -- 2-bit output
  );
END mux_2bit_3to1;

ARCHITECTURE behaviour OF mux_2bit_3to1 IS
  SIGNAL stage1_vec : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL stage2_vec : STD_LOGIC_VECTOR(1 DOWNTO 0);
  -- SIGNAL temp_vec : STD_LOGIC_VECTOR(1 DOWNTO 0)
BEGIN
  stage1_vec <= S(0) & S(0);
  stage2_vec <= S(1) & S(1);

  M <= (NOT(stage2_vec) AND ((NOT(stage1_vec) AND U) OR (stage1_vec AND V))) OR (stage2_vec AND W);
  -- temp_vec <= (NOT(stage1_vec) AND U) OR (stage1_vec AND V);
  -- M <= (NOT(stage2_vec) AND temp_vec) OR (stage2_vec AND W);

END behaviour;