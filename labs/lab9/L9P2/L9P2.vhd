LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY L9P2 IS
	PORT (
		SW		: IN  STD_LOGIC_VECTOR(9 DOWNTO 9);
		KEY	: IN 	STD_LOGIC_VECTOR(2 DOWNTO 0);
		LEDR	: OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END L9P2;

ARCHITECTURE behaviour OF L9P2 IS
	SIGNAL PClk: STD_LOGIC;
	SIGNAL MClk: STD_LOGIC;
	SIGNAL RSTn: STD_LOGIC;
	SIGNAL DATA: STD_LOGIC_VECTOR(8 DOWNTO 0);
	
	SIGNAL ADDR: STD_LOGIC_VECTOR(4 DOWNTO 0); -- 5-bit
	
	
	-- DEBUG --
	ATTRIBUTE keep : boolean;
	ATTRIBUTE keep of DATA, ADDR: SIGNAL IS true;
BEGIN
	PClk <= NOT(KEY(2));
	MClk <= NOT(KEY(1));
	RSTn <= KEY(0);
	
	-- Memory and Counter
	rom: ENTITY work.rom PORT MAP (
		address 	=> ADDR,
		clock 	=>	MClk,
		q 			=> DATA
	);

   PROCESS (MClk, RSTn) IS BEGIN
		IF RSTn = '0' THEN
			ADDR <= "00000";
		ELSIF MClk'event AND MClk = '1' THEN
			ADDR <= ADDR + 1;
		END IF;
	END PROCESS;

	-- Processor --
	proc: work.L9P1proc PORT MAP (
			DIN => DATA,
			Resetn => RSTn,
			Clock => PClk,
			Run => SW(9),
			Done => LEDR(9),
			BusWires => LEDR(8 DOWNTO 0)
		);
END behaviour;