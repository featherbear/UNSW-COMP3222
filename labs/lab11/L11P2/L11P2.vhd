LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY L11P2 IS
	PORT	(
		Clock, ResetN	: IN	STD_LOGIC;
		s					: IN	STD_LOGIC;
		Data 				: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
		Addr 				: OUT	STD_LOGIC_VECTOR(4 DOWNTO 0);
		Found				: OUT	STD_LOGIC;
		Done 				: OUT	STD_LOGIC
	);
END L11P2;

ARCHITECTURE Behaviour OF L11P2 IS
	-- any other components
	
	--TODO:
	--TYPE State_type IS ( ); -- your states
	--SIGNAL y, y_next : State_type ;
	
	SIGNAL muxIncDecUse : STD_LOGIC;
	
	SIGNAL regLoInput, regHiInput	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL regLo, regMid, regHi	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL regData : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	SIGNAL regLoWrite, regMidWrite, regHiWrite, regDataWrite : STD_LOGIC;
	
	SIGNAL rightAdderOut, incrementorOut, decrementorOut	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL memOut 														: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	SIGNAL ABORTER_DUMMY : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL abortSignal 	: STD_LOGIC;
	SIGNAL negComp 		: STD_LOGIC;
	SIGNAL compOut			: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
BEGIN
	dev_regLO	:	work.regne GENERIC MAP (N => 4) PORT MAP (regLoInput, regLoWrite, '1', Clock, regLo);
	dev_regMID	:	work.regne GENERIC MAP (N => 4) PORT MAP (rightAdderOut, regMidWrite, '1', Clock, regMid);
	dev_regHI	:	work.regne GENERIC MAP (N => 4) PORT MAP (regHiInput, regHiWrite, '1', Clock, regHi);
	dev_regDATA	:	work.regne GENERIC MAP (N => 8) PORT MAP (Data, regDataWrite, '1', Clock, regData);
	
	dev_muxLO	:	work.twoPortNMux GENERIC MAP (N => 4) PORT MAP (STD_LOGIC_VECTOR(to_unsigned(0, 4)), incrementorOut, muxIncDecUse, regLoInput);
	dev_muxHI	:	work.twoPortNMux GENERIC MAP (N => 4) PORT MAP (STD_LOGIC_VECTOR(to_unsigned(31, 4)), decrementorOut, muxIncDecUse, regHiInput);
	
	dev_inc		:	work.incDecUnit GENERIC MAP (N => 4) PORT MAP ('0', regMid, incrementorOut);
	dev_dec		:	work.incDecUnit GENERIC MAP (N => 4) PORT MAP ('1', regMid, decrementorOut);
	
	dev_rsa		:	work.rightShiftAdder GENERIC MAP (N => 4) PORT MAP (regLo, regHi, rightAdderOut);	
	dev_aborter	:	work.addSubUnit GENERIC MAP (N => 4) PORT MAP (regHi, regLo, '1', ABORTER_DUMMY, abortSignal);
	
	dev_comp		:	work.addSubUnit GENERIC MAP (N => 8) PORT MAP (regData, memOut, '1', compOut, negComp);
	
	--	model used latches address and data internally, hence 2-cycle delay
	mem_blk: work.memory_block PORT MAP (
		address	=> '0' & regMid,
		clock 	=> Clock, 
		data 		=> "00000000", -- not writing
		wren 		=> '0', 			-- not writing
		q 			=> memOut
	);

END Behaviour;
