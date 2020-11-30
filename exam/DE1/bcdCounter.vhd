LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all;

ENTITY bcdCounter IS
	PORT (
		en   : IN STD_LOGIC;
		rst  : IN STD_LOGIC;
		clk  : IN STD_LOGIC;
		out3 : OUT STD_LOGIC_VECTOR(0 TO 6);
		out2 : OUT STD_LOGIC_VECTOR(0 TO 6);
		out1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		out0 : OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END bcdCounter;

ARCHITECTURE behaviour OF bcdCounter IS
	SIGNAL val3, val2, val1, val0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	
	o3: ENTITY work.bcd_to_hex PORT MAP (
	  B => val3,
	  H => out3
	);

	o2: ENTITY work.bcd_to_hex PORT MAP (
	  B => val2,
	  H => out2
	);

	o1: ENTITY work.bcd_to_hex PORT MAP (
	  B => val1,
	  H => out1
	);

	o0: ENTITY work.bcd_to_hex PORT MAP (
	  B => val0,
	  H => out0
	);	

	PROCESS (rst, clk) BEGIN
		IF rst = '0' THEN
			val3 <= "0000";
			val2 <= "0000";
			val1 <= "0000";
			val0 <= "0000";
		ELSIF clk'event AND clk = '1' AND en = '1' THEN
		   -- Note: Values only change at the end of the process
			val0 <= val0 + 1;
			IF val0 = "1001" THEN
				val0 <= "0000";
				val1 <= val1 + 1;
				IF val1 = "1001" THEN
					val1 <= "0000";
					val2 <= val2 + 1;
					IF val2 = "1001" THEN
						val2 <= "0000";
						val3 <= val3 + 1;
						IF val3 = "1001" THEN
							val3 <= "0000";
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
END behaviour;