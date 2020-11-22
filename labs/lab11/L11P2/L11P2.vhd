LIBRARY ieee;
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
	TYPE State_type IS (S1, S2, S2_2, S3, S4);
	SIGNAL y, y_next : State_type;
	
	SIGNAL muxIncDecUse : STD_LOGIC;
	
	SIGNAL regLoInput, regHiInput	: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL regLo, regHi	: STD_LOGIC_VECTOR(4 DOWNTO 0);
	
	SIGNAL regLoWrite, regHiWrite, regDataWrite : STD_LOGIC;
	
	SIGNAL rightAdderOut, incrementorOut, decrementorOut	: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL memOut 														: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	SIGNAL ABORTER_DUMMY : STD_LOGIC_VECTOR(4 DOWNTO 0);
	
	SIGNAL abortSignals 	: STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL negComp 		: STD_LOGIC;
	SIGNAL compOut			: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	ATTRIBUTE keep : boolean;
	ATTRIBUTE keep of compOut, abortSignals, regHi, regLo, rightAdderOut, incrementorOut, decrementorOut, memOut : SIGNAL IS true;
	
BEGIN
	dev_regLO	:	work.regne GENERIC MAP (N => 5) PORT MAP (regLoInput, regLoWrite, ResetN, Clock, regLo);
	dev_regHI	:	work.regne GENERIC MAP (N => 5) PORT MAP (regHiInput, regHiWrite, ResetN, Clock, regHi);
	
	dev_muxLO	:	work.twoPortNMux GENERIC MAP (N => 5) PORT MAP (STD_LOGIC_VECTOR(to_unsigned(0, 5)), incrementorOut, muxIncDecUse, regLoInput);
	dev_muxHI	:	work.twoPortNMux GENERIC MAP (N => 5) PORT MAP ("11111", decrementorOut, muxIncDecUse, regHiInput);
	
	dev_inc		:	work.incDecUnit GENERIC MAP (N => 5) PORT MAP ('0', rightAdderOut, incrementorOut, abortSignals(1));
	dev_dec		:	work.incDecUnit GENERIC MAP (N => 5) PORT MAP ('1', rightAdderOut, decrementorOut, abortSignals(2));
	
	dev_rsa		:	work.rightShiftAdder GENERIC MAP (N => 5) PORT MAP (regLo, regHi, rightAdderOut);	
	dev_aborter	:	work.addSubUnit GENERIC MAP (N => 5) PORT MAP (regHi, regLo, '1', ABORTER_DUMMY, abortSignals(0));
	
	dev_comp		:	work.addSubUnit GENERIC MAP (N => 8) PORT MAP (Data, memOut, '1', compOut, negComp);
	
	--	model used latches address and data internally, hence 2-cycle delay
	mem_blk: work.memory_block PORT MAP (
		address	=> rightAdderOut,
		clock 	=> Clock, 
		data 		=> "00000000", -- not writing
		wren 		=> '0', 			-- not writing
		q 			=> memOut
	);

	---------------------------------------------------------------------------------------------------
	
	FSM_TRANSITION: PROCESS (s, abortSignals, compOut) BEGIN
		CASE y IS
			WHEN S1 =>
				IF s = '1' THEN
					y_next <= S2;
				ELSE
					y_next <= S1;
				END IF;
			WHEN S2 =>
				y_next <= S2_2;
			WHEN S2_2 =>
				y_next <= S3;
			WHEN S3 =>
				IF unsigned(abortSignals) > 0 THEN
					y_next <= S4;
				ELSIF unsigned(compOut) = 0 THEN
					y_next <= S4;
				ELSE
					y_next <= S2;
				END IF;
				
			WHEN S4 =>
				IF s = '0' THEN
					y_next <= S1;
				ELSE
					y_next <= S4;
				END IF;
		END CASE;
	END PROCESS;
	
	FSM_STATE: PROCESS (ResetN, Clock) BEGIN
		IF ResetN = '0' THEN
			y <= S1;
		ELSIF Clock'event AND Clock = '1' THEN
			y <= y_next;
		END IF;
	END PROCESS;
	
	FSM_OUTPUT: PROCESS (y, compOut) BEGIN
		regLoWrite <= '0';
		regHiWrite <= '0';
		muxIncDecUse <= '0';
		Done <= '0';		

		CASE y IS
			WHEN S1 =>
				regLoWrite <= '1';
				regHiWrite <= '1';
				Found <= '0';
			WHEN S2 =>
				Found <= '0';
			WHEN S2_2 =>
				Found <= '0';
			WHEN S3 =>
				Found <= '0';
				muxIncDecUse <= '1';
				IF unsigned(compOut) = 0 THEN
					Found <= '1';
					Addr <= rightAdderOut;
				ELSIF negComp = '0' THEN
					regLoWrite <= '1';
				ELSE
					regHiWrite <= '1';
				END IF;
			WHEN S4 =>
				Done <= '1';
		END CASE;
	END PROCESS;
	
END Behaviour;
