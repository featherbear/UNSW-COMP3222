LIBRARY ieee; 
USE ieee.std_logic_1164.all;

ENTITY mux IS
	PORT (
		P0, P1, P2, P3, P4,
		P5, P6, P7, P8, P9 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		
		SEL : IN STD_LOGIC_VECTOR(0 TO 9);
		
		Q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END mux;

ARCHITECTURE behaviour OF mux IS
BEGIN
	WITH SEL SELECT Q <=
		P0 WHEN "1000000000", 
		P1 WHEN "0100000000", 
		P2 WHEN "0010000000", 
		P3 WHEN "0001000000", 
		P4 WHEN "0000100000", 
		P5 WHEN "0000010000", 
		P6 WHEN "0000001000", 
		P7 WHEN "0000000100", 
		P8 WHEN "0000000010", 
		P9 WHEN "0000000001",
		"000000000" WHEN OTHERS; -- Won't happen
END behaviour;