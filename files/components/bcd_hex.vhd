LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_hex IS
	PORT (
		BCD	: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX	: OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END bcd_hex;

ARCHITECTURE func of bcd_hex IS
BEGIN
	PROCESS (bcd) BEGIN
		CASE bcd IS
			WHEN "0000" => HEX <= "0000001"; -- "0"     
			WHEN "0001" => HEX <= "1001111"; -- "1" 
			WHEN "0010" => HEX <= "0010010"; -- "2" 
			WHEN "0011" => HEX <= "0000110"; -- "3" 
			WHEN "0100" => HEX <= "1001100"; -- "4" 
			WHEN "0101" => HEX <= "0100100"; -- "5" 
			WHEN "0110" => HEX <= "0100000"; -- "6" 
			WHEN "0111" => HEX <= "0001111"; -- "7" 
			WHEN "1000" => HEX <= "0000000"; -- "8"     
			WHEN "1001" => HEX <= "0000100"; -- "9" 
			WHEN "1010" => HEX <= "0000010"; -- a
			WHEN "1011" => HEX <= "1100000"; -- b
			WHEN "1100" => HEX <= "0110001"; -- C
			WHEN "1101" => HEX <= "1000010"; -- d
			WHEN "1110" => HEX <= "0110000"; -- E
			WHEN "1111" => HEX <= "0111000"; -- F
		END CASE;
	END PROCESS;
END func;
	 
