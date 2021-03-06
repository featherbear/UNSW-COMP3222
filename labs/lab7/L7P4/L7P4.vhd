LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L7P4 IS
	PORT (
		KEY						:IN	std_logic_vector(3 DOWNTO 0);
		SW							:IN	std_logic_vector(9 DOWNTO 0);
		CLOCK_50					:IN	std_logic;
		LEDR						:OUT 	std_logic_vector(9 DOWNTO 0);  -- UNCOMMENT when targetting DE1
	-- LEDG						:OUT 	std_logic_vector(9 DOWNTO 0)	-- UNCOMMENT when targetting DE0
	);
END L7P4;

ARCHITECTURE mixed OF L7P4 IS
	
	SIGNAL Clk, nReset, w, z, TStart, ClkSec : std_logic;
	SIGNAL ClkHalfSec, delayDone: STD_LOGIC;
	
	SIGNAL LR, CR, QL, QC : std_logic_vector(3 DOWNTO 0); -- length and code values and shift register contents
	SIGNAL sel : std_logic_vector(2 DOWNTO 0); -- switch combination
	
	TYPE state_t IS (INIT, SHOW, PAUSE, DONE);
	SIGNAL y_Q, Y_D : state_t;
	
	SIGNAL nextSymbol: STD_LOGIC;
	SIGNAL currSymbol: STD_LOGIC; -- QC(0)
	SIGNAL hasMore: STD_LOGIC;  -- QL(0)
	
	SIGNAL load: STD_LOGIC; -- signal to load
	SIGNAL shift: STD_LOGIC; -- rising edge signal to shift
	
BEGIN
	Clk <= CLOCK_50;
	nReset <= KEY(0);
	w <= NOT KEY(1); -- start signal
	sel <= SW(2 DOWNTO 0);
	
	currSymbol <= QC(0);
	hasMore <= QL(0);
	
	LEDR(3 DOWNTO 0) <= QC; -- code register		-- UNCOMMENT when targetting DE1
	LEDR(7 DOWNTO 4) <= QL; -- length register	-- UNCOMMENT when targetting DE1
	LEDR(9) <= z; -- Morse output symbol			-- UNCOMMENT when targetting DE1
	
--	LEDG(3 DOWNTO 0) <= QC; -- code register		-- UNCOMMENT when targetting DE0
--	LEDG(7 DOWNTO 4) <= QL; -- length register	-- UNCOMMENT when targetting DE0
--	LEDG(9) <= z; -- Morse output symbol			-- UNCOMMENT when targetting DE0
	
   -- Remaining symbols of current letter
	WITH sel SELECT	
		LR <= "0011" WHEN "000", -- length register in unary from lsb on right
				"1111" WHEN "001",
				"1111" WHEN "010",
				"0111" WHEN "011",
				"0001" WHEN "100",
				"1111" WHEN "101",
				"0111" WHEN "110",
				"1111" WHEN "111",
				"0000" WHEN OTHERS;
	
	-- Selects which letter to display
	WITH sel SELECT
		CR <= "0010" WHEN "000", -- code register 0=dot, 1=dash, listed from lsb on right to msb on left
				"0001" WHEN "001",
				"0101" WHEN "010",
				"0001" WHEN "011",
				"0000" WHEN "100",
				"0100" WHEN "101",
				"0011" WHEN "110",
				"0000" WHEN "111",
				"0000" WHEN OTHERS;

	LenReg:  work.shiftrne PORT MAP (LR, load, shift, '0', QL);
	CodeReg: work.shiftrne PORT MAP (CR, load, shift, '0', QC);
	
	Timer:   work.half_sec_timer PORT MAP (Clk, TStart, ClkHalfSec);
	Delay:   work.morse_delay PORT MAP (Clk, ClkHalfSec, TStart, nextSymbol, delayDone); -- 0.5/1.5s delay

	-- Triggers to change state
	FSM_transitions: PROCESS (y_Q, w, delayDone, hasMore) 	-- add to sensitivity list as needed
		BEGIN
			CASE y_Q IS
				WHEN INIT =>
					-- Change to state:SHOW when START pressed
					IF w = '1' THEN
						Y_D <= SHOW;
					ELSE
						Y_D <= INIT;
					END IF;

				WHEN SHOW =>
					-- Change to state:PAUSE when the 0.5/1.5s delay elapses
					IF delayDone = '1' THEN
						Y_D <= PAUSE;
					ELSE
						Y_D <= SHOW;
					END IF;

				WHEN PAUSE =>
					-- Change to state:DONE when there are no more items symbols left
					-- Change to state:SHOW when when the 0.5/1.5s delay elapses
					IF hasMore = '0' THEN 
						Y_D <= DONE;
				   ELSIF delayDone = '1' THEN
						Y_D <= SHOW;
					ELSE
						Y_D <= PAUSE;
					END IF;

					WHEN DONE => 
					Y_D <= DONE;
			END CASE;
		END PROCESS;
	
	-- Change the state on clock cycle
	FSM_state: PROCESS (Clk, nReset)
		BEGIN
			IF (nReset = '0') THEN
				y_Q <= INIT;
			ELSIF (Clk'event AND Clk = '1') THEN
				y_Q <= Y_D;
			END IF;
		END PROCESS;
		
	-- When a state is entered
	FSM_outputs: PROCESS (y_Q)
		BEGIN
			LEDG(0) <= '0';
			
			TStart <= '0';		-- Default: Run half second timer
			z <= '0';     		-- Default: LED off
			load <= '0';  		-- Default: Don't load from CL and CR
			shift <= '0'; 		-- Default: Don't trigger right-shift
			
			CASE y_Q IS
				WHEN INIT =>
					TStart <= '1'; -- Reset and keep timer on 0 ticks
					load <= '1';   -- Load from CL and CR into QL and QR

				WHEN SHOW =>
					nextSymbol <= currSymbol; 	-- Dot (0) = 0.5s; Dash (1) = 1.5s
					z <= '1';            		-- Enable LED
					
				WHEN PAUSE =>
					nextSymbol <= '0';   -- Dot (0) = 0.5s; Dash (1) = 1.5s
					shift <= '1'; 			-- Do a shift for the next thing
					
				WHEN DONE => NULL;
			END CASE;
		END PROCESS;
END mixed;
