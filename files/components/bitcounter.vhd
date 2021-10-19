LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bitcounter IS
	GENERIC (
		N : INTEGER := 8
	);

	PORT (
		Data		: IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		Enable	: IN	STD_LOGIC;
		Clock		: IN 	STD_LOGIC;
		ResetN	: IN 	STD_LOGIC;
		
		Done		: OUT	STD_LOGIC;
		Count		: OUT	INTEGER RANGE 0 TO N
	);
	
	ALIAS s IS Enable;
END bitcounter;

ARCHITECTURE behaviour OF bitcounter IS 
	TYPE STATE_TYPE IS (S1, S2, S3);
	SIGNAL STATE: STATE_TYPE;
	
	SIGNAL enableOperation	: STD_LOGIC;
	
	-- Shift register signals
	SIGNAL enableShift		: STD_LOGIC;
	SIGNAL enableShiftLoad	: STD_LOGIC;
	SIGNAL valueShift 		: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	
	-- Counter signal
	SIGNAL enableCounter, enableIncrement	: STD_LOGIC;
	SIGNAL enableCounterLoad					: STD_LOGIC;
	SIGNAL bitsRead								: INTEGER RANGE 0 TO N;	-- For performance improvements, code could be changed to store the bitsRemaining.
																						-- But we'll do it this way, so that we can use the upcount component
	SIGNAL valueCount								: INTEGER RANGE 0 TO N;
BEGIN

	shiftRegister: work.shiftrne
		GENERIC MAP (
			N => N
		)
		PORT MAP (
			R 		=> Data,
			L		=> enableShiftLoad,
			E 		=> enableShift,
			w 		=> '0',
			Clock	=> Clock,
			Q 		=> valueShift 
		);

	-- Number of bits read
	bitsCounter: work.upcount
		GENERIC MAP (
			N => N
		)
		PORT MAP (
			Clock 	=> Clock,
			ResetN 	=> ResetN,
			Enable 	=> enableCounter,
			Load 		=> enableCounterLoad,
			Count		=> bitsRead
		);

	-- Count of 1-bits
	readCounter: work.upcount
		GENERIC MAP (
			N => N
		)
		PORT MAP (
			Clock 	=> Clock,
			ResetN 	=> ResetN,
			Enable 	=> enableIncrement,
			Load 		=> enableCounterLoad,
			Count		=> valueCount
		);

	transitions: PROCESS (Clock, ResetN) IS BEGIN
		IF (ResetN = '0') THEN
			STATE <= S1;
		ELSIF (Clock'event AND Clock = '1') THEN
			CASE STATE IS
				WHEN S1 =>
					IF s = '1' THEN
						STATE <= S2;
					ELSE
						STATE <= S1;
					END IF;
				WHEN S2 =>
					IF bitsRead = N-1 THEN
						STATE <= S3;
					ELSE
						STATE <= S2;
					END IF;
				WHEN S3 =>
					IF s = '0' THEN
						STATE <= S1;
					ELSE
						STATE <= S3;
					END IF;
			END CASE;
		END IF;
	END PROCESS;
	
	state_handles: PROCESS (STATE) BEGIN
		enableShift <= '0';
		enableShiftLoad <= '0';
		
		enableIncrement <= '0';
		enableCounter <= '0';
		enableCounterLoad <= '0';	
		
		Done <= '0';
		
		CASE STATE IS
			-- Load
			WHEN S1 =>
				enableShift <= '1';
				enableShiftLoad <= '1';
				enableCounterLoad <= '1'; -- Load occurs even if counter isn't enabled

			-- Count
			WHEN S2 => 
				enableShift <= '1';
				enableCounter <= '1';
				IF valueShift(0) = '1' THEN
					enableIncrement <= '1';
				END IF;

				-- Done
			WHEN S3 =>
				Done <= '1';
				count <= valueCount;
		END CASE;	
	END PROCESS;

END behaviour;