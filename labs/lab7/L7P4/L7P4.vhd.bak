LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L7P4 IS
	PORT(	KEY						:IN	std_logic_vector(3 DOWNTO 0);
			SW							:IN	std_logic_vector(9 DOWNTO 0);
			CLOCK_50					:IN	std_logic;
--			LEDR						:OUT 	std_logic_vector(9 DOWNTO 0));	-- UNCOMMENT when targetting DE1
--			LEDG						:OUT 	std_logic_vector(9 DOWNTO 0));	-- UNCOMMENT when targetting DE0
END L7P4;

ARCHITECTURE mixed OF L7P4 IS
	COMPONENT shiftrne IS
		GENERIC ( N : INTEGER := 4 ) ;
		PORT ( R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
				 L, E, w : IN STD_LOGIC ;
				 Clock : IN STD_LOGIC ;
	 			 Q : BUFFER STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
	END COMPONENT;
	COMPONENT half_sec_timer IS
		PORT ( Clk, Start : IN STD_LOGIC ;
				 Done : OUT STD_LOGIC);
	END COMPONENT;
	SIGNAL Clk, nReset, w, z, SEnable, TStart, TDone : std_logic;
	SIGNAL LR, CR, QL, QC : std_logic_vector(3 DOWNTO 0); -- length and code values and shift register contents
	SIGNAL sel : std_logic_vector(2 DOWNTO 0);
	TYPE state_t IS (Init); -- add to state list as needed
	SIGNAL y_Q, Y_D : state_t;
BEGIN
	Clk <= CLOCK_50;
	nReset <= KEY(0);
	w <= NOT KEY(1); -- start signal
	sel <= SW(2 DOWNTO 0);
	
--	LEDR(3 DOWNTO 0) <= QC; -- code register		-- UNCOMMENT when targetting DE1
--	LEDR(7 DOWNTO 4) <= QL; -- length register	-- UNCOMMENT when targetting DE1
--	LEDR(9) <= z; -- Morse output symbol			-- UNCOMMENT when targetting DE1

--	LEDG(3 DOWNTO 0) <= QC; -- code register		-- UNCOMMENT when targetting DE0
--	LEDG(7 DOWNTO 4) <= QL; -- length register	-- UNCOMMENT when targetting DE0
--	LEDG(9) <= z; -- Morse output symbol			-- UNCOMMENT when targetting DE0
	
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
	
	LenReg: shiftrne PORT MAP (LR, w, SEnable, '0', Clk, QL);
	CodeReg: shiftrne PORT MAP (CR, w, SEnable, '0', Clk, QC);
	Timer: half_sec_timer PORT MAP (Clk, TStart, TDone);
	
	FSM_transitions: PROCESS (y_Q, w) 	-- add to sensitivity list as needed
		BEGIN
			CASE y_Q IS
				WHEN Init =>					-- add to state transitions as needed
					IF (w = '0') THEN
						Y_D <= Init;
					ELSE
						Y_D <= ...;
					END IF;
			END CASE;
		END PROCESS;
		
		FSM_state: PROCESS (Clk, nReset)
			BEGIN
				IF (nReset = '0') THEN
					y_Q <= Init;
				ELSIF (Clk'event AND Clk = '1') THEN
					y_Q <= Y_D;
				END IF;
			END PROCESS;
			
		FSM_outputs: PROCESS (y_Q)			-- add to sensitivity list as needed
			BEGIN
				SEnable <= '0'; TStart <= '0'; z <= '0';
				CASE y_Q IS
					WHEN Init =>				-- add to output states as needed
						SEnable <= '1';		-- enable loading of shift registers
				END CASE;
			END PROCESS;

END mixed;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY shiftrne IS
	GENERIC ( N : INTEGER := 4 ) ;
	PORT ( R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
			 L, E, w : IN STD_LOGIC ;
			 Clock : IN STD_LOGIC ;
			 Q : BUFFER STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END shiftrne ;

ARCHITECTURE Behavior OF shiftrne IS
BEGIN
	PROCESS
	BEGIN
		WAIT UNTIL (Clock'EVENT AND Clock = '1');
		IF (E = '1') THEN 								-- only shift or load when enabled
			IF (L = '1') THEN 							-- 	depending upon the load signal
				Q <= R; 										-- 		either load a new word in parallel
			ELSE 												--		or
				Genbits: FOR i IN 0 TO N-2 LOOP 		-- 		shift the word to the right
					Q(i) <= Q(i+1);
				END LOOP;
				Q(N-1) <= w;
			END IF;
		END IF;
	END PROCESS;
END Behavior;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY half_sec_timer IS
	PORT ( Clk, Start : IN STD_LOGIC ;
			 Done : OUT STD_LOGIC);
END half_sec_timer;

ARCHITECTURE Behavior OF half_sec_timer IS
	SIGNAL Q : INTEGER RANGE 0 TO 25000000;
BEGIN
	PROCESS (Clk)
	BEGIN
		IF (Clk'event AND Clk = '1') THEN
			IF (Start = '1') THEN					-- initialize timer when Start asserted
				Done <= '0';
				Q <= 0;
			ELSIF (Q = 25000000) THEN				-- assert Done when 0.5 seconds elapsed
				Done <= '1';
				Q <= 0;
			ELSE											-- increment timer each cycle
				Done <= '0';
				Q <= Q + 1;
			END IF;
		END IF;
	END PROCESS;
END Behavior;
