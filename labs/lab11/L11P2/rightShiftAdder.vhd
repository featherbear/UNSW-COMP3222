LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY rightShiftAdder IS
	GENERIC ( N : INTEGER := 4	);
	PORT (
		A			: IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		B			: IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		Output	: OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END rightShiftAdder;

ARCHITECTURE behaviour OF rightShiftAdder IS
	SIGNAL adder_output	: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL adder_carry	: STD_LOGIC;
BEGIN
	adder: work.addSubUnit PORT MAP (
		P1			=> A,
		P2			=> B,
		AddOrSub	=> '0',
		Output	=> adder_output,
		Carry		=> adder_carry
	);
	
	-- Fake right shift
	Output <= adder_carry & adder_output(N-1 DOWNTO 1);
END behaviour;