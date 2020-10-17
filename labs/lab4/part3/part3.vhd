LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part3 IS
	PORT (
		E, Clk, Clearn : IN 		std_logic;
		Q 					: BUFFER std_logic_vector(15 DOWNTO 0)
	);
END part3;

ARCHITECTURE behaviour OF part3 IS
	SIGNAL Clear : STD_LOGIC;
BEGIN
	Clear <= NOT(Clearn);
	
	counter: ENTITY work.cnt PORT MAP (
		clock => Clk,
		cnt_en => E,
		sclr => Clear,
		q => Q
  );
END behaviour;