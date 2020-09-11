LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY L2P1 IS
  PORT ( 
    KEY0, SW0, SW1 : IN STD_LOGIC ;
    LEDG0, LEDR0: OUT STD_LOGIC 
  );
END L2P1;

ARCHITECTURE LogicFunction OF L2P1 IS 
  BEGIN LEDR0 <= (SW0 AND NOT SW1) OR (NOT SW0 AND SW1);
        LEDG0 <= NOT KEY0;
  
END LogicFunction ;
