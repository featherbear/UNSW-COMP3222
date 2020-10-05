LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_2to1 IS
	PORT (
		d0, d1, s	: IN  STD_LOGIC;
		f				: OUT STD_LOGIC
	);
END mux_2to1;

ARCHITECTURE logicfunc OF mux_2to1 IS
BEGIN
	PROCESS (s) BEGIN
		IF s = '0' THEN
			f <= d0;
		ELSE
			f <= d1;
		END IF;
	END PROCESS;
END logicfunc;
