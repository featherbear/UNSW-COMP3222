LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY L4P4 IS
	PORT(	CLOCK_50: IN std_logic;
			KEY: IN std_logic_vector(0 TO 2);
			HEX0: OUT std_logic_vector(0 TO 6);
			HEX1: OUT std_logic_vector(0 TO 6);
			HEX2: OUT std_logic_vector(0 TO 6);
			HEX3: OUT std_logic_vector(0 TO 6));
END L4P4;

ARCHITECTURE behavioural OF L4P4 IS
	COMPONENT bcd_counter IS
		PORT(	En, Clk, nClear: IN std_logic;
				Q : BUFFER std_logic_vector(3 DOWNTO 0));
	END COMPONENT;
	COMPONENT seg_7 IS
		PORT(	v :IN	std_logic_vector(3 DOWNTO 0);
				d : OUT std_logic_vector(0 TO 6));
	END COMPONENT;
	-- your signal definitions
BEGIN

	HEX1 <= "1111111"; -- blank higher order HEX displays
	HEX2 <= "1111111";
	HEX3 <= "1111111";

	-- your signal assignments to external pins
	
	-- your one-second timer code
	
	-- your instantiation of a BCD counter
	-- your instantiation of a 7-segment display to display the BCD count value
	
END behavioural;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seg_7 IS
	PORT(	v :IN	std_logic_vector(3 DOWNTO 0);
			d : OUT std_logic_vector(0 TO 6));
END seg_7;

ARCHITECTURE behavioural OF seg_7 IS
BEGIN	
	PROCESS (v)
	BEGIN	
		CASE v IS             --0123456
			WHEN "0000" => d <= "0000001";
			WHEN "0001" => d <= "1001111";
			WHEN "0010" => d <= "0010010";
			WHEN "0011" => d <= "0000110";
			WHEN "0100" => d <= "1001100";
			WHEN "0101" => d <= "0100100";
			WHEN "0110" => d <= "0100000";
			WHEN "0111" => d <= "0001111";
			WHEN "1000" => d <= "0000000";
			WHEN "1001" => d <= "0001100";
			WHEN "1010" => d <= "0001000";
			WHEN "1011" => d <= "1100000";
			WHEN "1100" => d <= "0110001";
			WHEN "1101" => d <= "1000010";
			WHEN "1110" => d <= "0110000";
			WHEN "1111" => d <= "0111000";
			WHEN OTHERS => d <= "-------";
		END CASE;
	END PROCESS;
END behavioural;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bcd_counter IS
	PORT(	En, Clk, nClear: IN std_logic;
			Q : BUFFER std_logic_vector(3 DOWNTO 0));
END bcd_counter;

ARCHITECTURE behavioural OF bcd_counter IS
BEGIN
	
	-- your VHDL code
	
END behavioural;