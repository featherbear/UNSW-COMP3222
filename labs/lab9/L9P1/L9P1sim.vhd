LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY L9P1sim IS
	PORT (
		DIN 					 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		Resetn, Clock, Run	 : IN STD_LOGIC;
		Done 					 : BUFFER STD_LOGIC;
		BusWires 			 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0));
END L9P1sim;

ARCHITECTURE Mixed OF part1 IS
	-- declare components
	-- declare signals
	TYPE State_type IS (T0, T1, T2, T3);
	SIGNAL Tstep_Q, Tstep_D: State_type;
	--
BEGIN
	Hi <= '1';
	I <= IR(8 DOWNTO 6);
	decX: work.dec3to8 PORT MAP (IR(5 DOWNTO 3), Hi, Xreg);
	decY: work.dec3to8 PORT MAP (IR(2 DOWNTO 0), Hi, Yreg);

	statetable: PROCESS (Tstep_Q, Run, Done)
	BEGIN
		CASE Tstep_Q IS
			WHEN T0 => -- data is loaded into IR in this time step
				IF (Run = '0') THEN
					Tstep_D <= T0;
				ELSE 
					Tstep_D <= T1;
				END IF; 
			-- other states
		END CASE;
	END PROCESS;

	controlsignals: PROCESS (Tstep_Q, I, Xreg, Yreg)
	BEGIN
		-- specify initial values
		CASE Tstep_Q IS
			WHEN T0 => -- store DIN in IR as long as Tstep_Q = 0
				IRin <= '1';
			WHEN T1 => -- define signals in time step T1
				CASE I IS
				---
				END CASE;
			WHEN T2 => -- define signals in time step T2
				CASE I IS
				---
				END CASE;
			WHEN T3 => -- define signals in time step T3
				CASE I IS
				---
				END CASE;
		END CASE;
	END PROCESS;

	fsmflipflops: PROCESS (Clock, Resetn)
	BEGIN
		---
	END PROCESS;
	
	reg_0: work.regn PORT MAP (BusWires, Rin(0), Clock, R0);
	-- instantiate registers and the adder/subtracter unit
	-- define the bus

END Mixed;
