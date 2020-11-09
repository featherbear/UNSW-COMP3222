LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY L9P1sim IS
	PORT (
		DIN 					 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);			-- Data
		Resetn, Clock, Run	 : IN STD_LOGIC;									-- Control
		Done 					 : BUFFER STD_LOGIC;								-- DONE state
		BusWires 			 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0)		-- Mux output
	);
END L9P1sim;

ARCHITECTURE Mixed OF part1 IS
	-- :: Signals :: --
	--SIGNAL IR				: STD_LOGIC_VECTOR(8 DOWNTO 0);	-- Instruction register; IIIXXXYYY
	SIGNAL instruction	: STD_LOGIC_VECTOR(2 DOWNTO 0);	-- 3-bit instruction
	SIGNAL enableDecode	: STD_LOGIC; -- Enable 3-to-8 bit decoder
	
	SIGNAL enableReg		: STD_LOGIC_VECTOR(0 TO 11); -- Enable register writes
	ALIAS enableA	IS enableReg(9);
	ALIAS enableG	IS enableReg(10);
	ALIAS enableIR	IS enableReg(11);
	
	SIGNAL BusWires: STD_LOGIC_VECTOR(8 DOWNTO 0);
	
	-- :: Outputs :: --
	SIGNAL AddSubOutput IS STD_LOGIC_VECTOR(8 DOWNTO 0);
	
	SIGNAL R: ARRAY (0 TO 11) OF STD_LOGIC_VECTOR(8 DOWNTO 0); -- https://stackoverflow.com/a/9702456
	ALIAS A IS R(9);
	ALIAS G IS R(10);
	ALIAS IR IS R(11);
	
	-- :: Selects :: --
	SIGNAL addSubMode 	: STD_LOGIC;
	SIGNAL useG, useDIN	: STD_LOGIC;
	SIGNAL regX, regY		: STD_LOGIC_VECTOR(7 DOWNTO 0); -- Register select for multiplexer
	
	-- :: States :: --
	TYPE State_type IS (T0, T1, T2, T3);
	SIGNAL Tstep_Q, Tstep_D: State_type;
BEGIN
	-- :: Components :: --
	decX: work.dec3to8 PORT MAP (IR(5 DOWNTO 3), Hi, regX);
	decY: work.dec3to8 PORT MAP (IR(2 DOWNTO 0), Hi, regY);
	
	REGISTERS: 	FOR i in 0 to 9 GENERATE
						-- Include Register A
						BUS_IN_REGS: ENTITY work.regn PORT MAP (
							BusWires, enableReg(i), Clock, R(i)
						);
					END GENERATE;
	REGISTER_G: ENTITY work.regn PORT MAP (
						AddSubOutput, enableG, Clock, R(10)
					);
	REGISTER_IR: ENTITY work.regn PORT MAP (
					   DIN, enableIR, Clock, R(11)
					 );
												
	ADD_SUB: ENTITY work.addSubUnit PORT MAP (
				  A, BusWires, addSubMode, Clock, AddSubOutput
				);

	enableDecode <= '1';
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
				WHEN T2 =>
				WHEN T3 =>
			END CASE;
		END PROCESS;

	controlsignals: PROCESS (Tstep_Q, instruction, regX, regY)
		BEGIN
			-- specify initial values
			CASE Tstep_Q IS
				WHEN T0 => -- store DIN in IR as long as Tstep_Q = 0
					IRin <= '1';
				WHEN T1 => -- define signals in time step T1
					CASE instruction IS
					---
					END CASE;
				WHEN T2 => -- define signals in time step T2
					CASE instruction IS
					---
					END CASE;
				WHEN T3 => -- define signals in time step T3
					CASE instruction IS
					---
					END CASE;
			END CASE;
		END PROCESS;

	fsmflipflops: PROCESS (Clock, Resetn)
		BEGIN
			IF (Resetn = '1') THEN
				Tstep_Q <= T0;
			ELSIF (Clock'event AND Clock = '1') THEN
				Tstep_Q <= Tstep_D;
			END IF;
		END PROCESS;
	
END Mixed;
