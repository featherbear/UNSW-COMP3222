LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part3 IS
	PORT (
		SW		: IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		LEDG 	: OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END part3;

ARCHITECTURE struct of part3 IS
  SIGNAL Qm, Qs : STD_LOGIC;
  SIGNAL ClkN: STD_LOGIC;
  
  ATTRIBUTE keep : boolean;
  ATTRIBUTE keep of Qm, Qs, ClkN : SIGNAL IS true;
BEGIN
	ClkN <= NOT(SW(1));
	
	master_latch: work.d_latch PORT MAP (
		Clk => ClkN,
		D => SW(0),
		Q => Qm
	);

	slave_latch: work.d_latch PORT MAP (
		Clk => SW(1),
		D => Qm,
		Q => Qs
	);

	LEDG(0) <= Qs;
	
END struct;