LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use IEEE.STD_LOGIC_1164.ALL; 

use IEEE.STD_LOGIC_ARITH.ALL; 

use IEEE.NUMERIC_STD.ALL; 

use IEEE.STD_LOGIC_UNSIGNED.ALL; 

ENTITY L2P5 IS
	PORT (
		SW		: IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		LEDG	: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		HEX0	: OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1	: OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX2	: OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX3	: OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END L2P5;

ARCHITECTURE structure OF L2P5 IS
	SIGNAL a, b : std_logic_vector(3 DOWNTO 0);
	SIGNAL cin, z : std_logic;
	SIGNAL T0, Z0, S0 : std_logic_vector(4 DOWNTO 0);
	SIGNAL S1, C1 : std_logic_vector(3 DOWNTO 0);
BEGIN
	a <= SW(7 DOWNTO 4);
	b <= SW(3 DOWNTO 0);
	cin <= SW(8);
	LEDG(4 DOWNTO 0) <= T0; -- msb = carry_out

	LEDG(7) <= '1' WHEN a > 9 OR b > 9 ELSE '0'; -- Boolean logic expression set if a or b inputs aren't BCDs
	-- LEDG(7) <= (A(3) AND (A(2) OR A(1))) OR (B(3) AND (B(2) OR B(1)));

	--addition
	T0 <= ('0' & a) + ('0' & b) + cin;
	
	--muxes
	-- PROCESS that sets Z0 and C1 based on T0 
	PROCESS (T0) BEGIN
		IF T0 > 9 THEN
			Z0 <= conv_std_logic_vector(10, Z0'length);
			C1 <= conv_std_logic_vector(1, C1'length);
		ELSE
			Z0 <= conv_std_logic_vector(0, Z0'length);
			C1 <= conv_std_logic_vector(0, C1'length);
		END IF;
	END PROCESS;
	
	--outputs
	S0 <= T0 - Z0;
	S1 <= C1;
	
	--7-segment decoders
	h3: ENTITY work.bcd_to_hex PORT MAP (
		B => a,
		H => HEX3
	);
	h2: ENTITY work.bcd_to_hex PORT MAP (
		B => b,
		H => HEX2
	);
	h1: ENTITY work.bcd_to_hex PORT MAP (
		B => S1,
		H => HEX1
	);
	h0: ENTITY work.bcd_to_hex PORT MAP (
		B => S0(3 DOWNTO 0),
		H => HEX0
	);
	
END structure;	
