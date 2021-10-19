LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d_latch IS
    PORT (
        Clk, D, nReset : IN std_logic;
        Q              : OUT std_logic
    );
END d_latch;

ARCHITECTURE behavioural OF d_latch IS
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
