LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY shiftrne IS
	GENERIC ( N : INTEGER := 4 ) ;
	PORT (
		R 		  : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0); -- Word to load
		L, S, w : IN STD_LOGIC ; -- Load, Shift, Write (fill)
		Q		  : BUFFER STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END shiftrne;

ARCHITECTURE behaviour OF shiftrne IS
BEGIN
	PROCESS (L, S)
	BEGIN 
		IF (L = '1') THEN
			Q <= R;
		ELSIF (S'event AND S = '1') THEN
			Genbits: FOR i IN 0 TO N-2 LOOP 		--shift the word to the right
				Q(i) <= Q(i+1);
			END LOOP;
			Q(N-1) <= w;
		END IF;
	END PROCESS;
END behaviour;

