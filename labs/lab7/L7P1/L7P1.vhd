LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY L7P1 IS
	PORT(	KEY						:IN	std_logic_vector(3 DOWNTO 0);
			SW							:IN	std_logic_vector(9 DOWNTO 0);
--			LEDR						:OUT 	std_logic_vector(9 DOWNTO 0));	-- UNCOMMENT this line when targetting DE1
--			LEDG						:OUT 	std_logic_vector(9 DOWNTO 0));	-- UNCOMMENT this line when targetting DE0
END L7P1;

ARCHITECTURE mixed OF L7P1 IS
	COMPONENT D_ff IS
		PORT(	Clk, D, nReset :IN	std_logic;
				Q : OUT std_logic);
	END COMPONENT;
	SIGNAL Clk, nReset, w, z : std_logic;
	SIGNAL D, Q : std_logic_vector(8 DOWNTO 0);
BEGIN
	Clk <= KEY(0);
	nReset <= SW(0);
	w <= SW(1);
	
--	LEDR(8 DOWNTO 0) <= Q;	-- UNCOMMENT this line when targetting DE1
--	LEDR(9) <= z;				-- UNCOMMENT this line when targetting DE1

--	LEDG(8 DOWNTO 0) <= Q;	-- UNCOMMENT this line when targetting DE0
--	LEDG(9) <= z;				-- UNCOMMENT this line when targetting DE0
	
-- your expressions for D(1) through D(8)

	Dff0: PROCESS (Clk) -- special case for flip-flop 0: resets to 1
			BEGIN
				IF Clk'event AND Clk = '1' THEN
					IF nReset = '0' THEN
						Q(0) <= '1';
					ELSE
						Q(0) <= '0';
					END IF;
				END IF;
			END PROCESS;
	
	Gen1: FOR i IN 1 TO 8 GENERATE -- FFs 1 through 8 have similar instantiation
				Dffs: D_ff PORT MAP (Clk, D(i), nReset, Q(i));
			END GENERATE;

	-- your expression for output z
	
END mixed;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_ff IS
	PORT(	Clk, D, nReset :IN	std_logic;
				Q : OUT std_logic);
END D_ff;

ARCHITECTURE behavioural OF D_ff IS
BEGIN	
	PROCESS (Clk)
	BEGIN	
		IF Clk'event AND Clk = '1' THEN
			IF nReset = '0' THEN
				Q <= '0';
			ELSE
				Q <= D;
			END IF;
		END IF;
	END PROCESS;
END behavioural;