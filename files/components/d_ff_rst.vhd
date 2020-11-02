LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_ff IS
    PORT (
        Clk, D, nReset : IN std_logic;
        Q              : OUT std_logic
    );
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
