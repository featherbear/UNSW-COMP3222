LIBRARY ieee; 
USE ieee.std_logic_1164.all;

ENTITY L9P1proc IS
	PORT (
		DIN 					 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);			-- Data
		Resetn, Clock, Run : IN STD_LOGIC;									-- Control
		Done 					 : BUFFER STD_LOGIC;								-- DONE state
		BusWires 			 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0)		-- Mux output
	);
END L9P1proc;

ARCHITECTURE Mixed OF L9P1proc IS
	-- :: Signals :: --
	SIGNAL instruction	: STD_LOGIC_VECTOR(2 DOWNTO 0);	-- 3-bit instruction
	
	SIGNAL enableReg		: STD_LOGIC_VECTOR(0 TO 10); -- Enable register writes
	ALIAS enableA	IS enableReg(8);
	ALIAS enableG	IS enableReg(9);
	ALIAS enableIR	IS enableReg(10);
		
	-- :: Outputs :: --
	SIGNAL AddSubOutput: STD_LOGIC_VECTOR(8 DOWNTO 0);
	
	-- Includes register A, G, and IR (in that order)
	TYPE regInputs IS ARRAY (10 DOWNTO 0) OF STD_LOGIC_VECTOR(8 DOWNTO 0); -- https://stackoverflow.com/a/9702456
	SIGNAL R: regInputs;
	
	ALIAS A IS R(8);
	ALIAS G IS R(9);
	ALIAS IR IS R(10);   -- IIIXXXYYY
	
	-- :: Selects :: --
	SIGNAL addSubMode 	: STD_LOGIC;
	SIGNAL regX, regY		: STD_LOGIC_VECTOR(7 DOWNTO 0); -- Register select for multiplexer
	SIGNAL muxSel			: STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	-- :: States :: --
	TYPE State_type IS (T0, T1, T2, T3);
	SIGNAL Tstep_Q, Tstep_D: State_type;
	
	-- DEBUG --
	ATTRIBUTE keep : boolean;
	ATTRIBUTE keep of addSubMode, muxSel, IR, regX, regY, instruction, enableReg, enableA, R, G, A: SIGNAL IS true;
	----------
	
BEGIN
	-- :: Components :: --
	decX: work.dec3to8 PORT MAP (IR(5 DOWNTO 3), '1', regX);
	decY: work.dec3to8 PORT MAP (IR(2 DOWNTO 0), '1', regY);
	
	REGISTERS: 	FOR i in 0 to 7 GENERATE
						BUS_IN_REGS: ENTITY work.regn PORT MAP (
							BusWires, enableReg(i), Clock, R(i)
						);
					END GENERATE;

	-- Separated from generation statement
	REGISTER_A: ENTITY work.regn PORT MAP (
						BusWires, enableA, Clock, A
					);
	REGISTER_G: ENTITY work.regn PORT MAP (
						AddSubOutput, enableG, Clock, G
					);
	REGISTER_IR: ENTITY work.regn PORT MAP (
					   DIN, enableIR, Clock, IR
					 );
												
	ADD_SUB: ENTITY work.addSubUnit PORT MAP (
				  A, BusWires, addSubMode, AddSubOutput
				);

	mux: ENTITY work.mux PORT MAP (
		    R(0), R(1), R(2), R(3), R(4), R(5), R(6), R(7), G, DIN, muxSel, BusWires 
		  );

	instruction <= IR(8 DOWNTO 6);
	
	statetable: PROCESS (Tstep_Q, Run, Done)
		BEGIN
			CASE Tstep_Q IS
				WHEN T0 => -- data is loaded into IR in this time step
					IF (Run = '1') THEN
						Tstep_D <= T1;
					ELSE 
						Tstep_D <= T0;
					END IF; 
				WHEN T1 =>
					IF (Done = '1') THEN
						Tstep_D <= T0;
					ELSE
						Tstep_D <= T2;
					END IF;
				WHEN T2 =>
					Tstep_D <= T3;
				WHEN T3 =>
					IF (Done = '1') THEN
						Tstep_D <= T0;
					ELSE
						Tstep_D <= T3;
					END IF;
			END CASE;
		END PROCESS;

	controlsignals: PROCESS (Tstep_Q, instruction, regX, regY)
		BEGIN
			-- DEFAULTS --
			enableReg <= (OTHERS => '0'); -- Disable writing into r0-r7, A, G, IR
			muxSel <= (OTHERS => '0');
			addSubMode <= '0';
			Done <= '0';

			CASE Tstep_Q IS
				WHEN T0 => -- store DIN in IR as long as Tstep_Q = 0
					enableIR <= '1';
				WHEN T1 => -- define signals in time step T1
					CASE instruction IS
						WHEN "000" => -- mov
							muxSel <= regY & "00";
							enableReg <= regX & "000";
							Done <= '1';
						WHEN "001" => -- mvi
							muxSel <= "0000000001";
							enableReg <= regX & "000";
							Done <= '1';
						WHEN "010" | "011" => -- add / sub ------------------
							muxSel <= regX & "00";
							enableA <= '1';
						WHEN OTHERS =>
					END CASE;
				WHEN T2 => -- define signals in time step T2
					muxSel <= regY & "00";
					enableG <= '1';	
					IF instruction = "011" THEN
						AddSubMode <= '1';
					END IF;
				WHEN T3 => -- define signals in time step T3
					enableReg <= regX & "000";
					muxSel <= "0000000010";
					Done <= '1';
			END CASE;
		END PROCESS;

	fsmflipflops: PROCESS (Clock, Resetn)
		BEGIN
			IF (Resetn = '0') THEN
				Tstep_Q <= T0;
			ELSIF (Clock'event AND Clock = '1') THEN
				Tstep_Q <= Tstep_D;
			END IF;
		END PROCESS;
	
END Mixed;
