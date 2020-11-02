LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY L7P2 IS
	PORT(	KEY						:IN	std_logic_vector(3 DOWNTO 0);
			SW							:IN	std_logic_vector(9 DOWNTO 0);
			LEDR						:OUT 	std_logic_vector(9 DOWNTO 0));	-- UNCOMMENT when targetting DE1
--			LEDG						:OUT 	std_logic_vector(9 DOWNTO 0));	-- UNCOMMENT when targetting DE0
END L7P2;

ARCHITECTURE behavioural OF L7P2 IS
	SIGNAL Clk, nReset, w, z : std_logic;
	TYPE state_type IS (A, B, C, D, E, F, G, H, I);
	attribute syn_encoding : string;
	attribute syn_encoding of state_type : type is "0000 0001 0010 0011 0100 0101 0110 0111 1000";
	SIGNAL y_Q, Y_D : state_type;
BEGIN
	Clk <= KEY(0);
	nReset <= SW(0);
	w <= SW(1);
	
	LEDR(3 DOWNTO 0) <= std_logic_vector(to_unsigned(state_type'POS(y_Q), 4));	-- UNCOMMENT when targetting DE1
	LEDR(9) <= z;																					-- UNCOMMENT when targetting DE1

--	LEDG(3 DOWNTO 0) <= std_logic_vector(to_unsigned(state_type'POS(y_Q), 4));	-- UNCOMMENT when targetting DE0
--	LEDG(9) <= z;																					-- UNCOMMENT when targetting DE0
	
-- Combinational PROCESS describing your FSM transitions
	PROCESS (w, y_Q) BEGIN
		CASE y_Q IS
			WHEN A     => IF w = '0' THEN y_D <= B; ELSE y_D <= F; END IF;

			WHEN B     => IF w = '0' THEN y_D <= C; ELSE y_D <= F; END IF;
			WHEN C     => IF w = '0' THEN y_D <= D; ELSE y_D <= F; END IF;
			WHEN D | E => IF w = '0' THEN y_D <= E; ELSE y_D <= F; END IF;
			
			WHEN F     => IF w = '1' THEN y_D <= G; ELSE y_D <= B; END IF;
			WHEN G     => IF w = '1' THEN y_D <= H; ELSE y_D <= B; END IF;
			WHEN H | I => IF w = '1' THEN y_D <= I; ELSE y_D <= B; END IF;
		END CASE;
	END PROCESS;
	
-- Sequential PROCESS describing state flip-flops
	PROCESS (Clk) BEGIN
		IF Clk'event AND Clk = '0' THEN
			IF (nReset = '0') THEN
				y_Q <= A;
			ELSE
				y_Q <= Y_D;
			END IF;
		END IF;
	END PROCESS;
	
	-- Output logic
	PROCESS (y_Q) BEGIN
		CASE y_Q IS
		  WHEN E | I => z <= '1';
		  WHEN OTHERS => z <= '0';
		END CASE;
	END PROCESS;
	
END behavioural;