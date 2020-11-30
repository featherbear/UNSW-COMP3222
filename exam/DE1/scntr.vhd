LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity scntr is
    Port (	clk 			: in  STD_LOGIC;     						-- use manual clock
				resetn 		: in  STD_LOGIC;								-- active low
				t_s_val		: in  STD_LOGIC_VECTOR(7 downto 0); 	-- threshold/sample value
				load			: in  STD_LOGIC;
				stored_t		: out STD_LOGIC_VECTOR(7 downto 0);		-- stored threshold
				disp_count0, disp_count1, disp_count2, disp_count3		: out STD_LOGIC_VECTOR(0 to 6));	-- 7-seg display output of BCD count
end scntr;

architecture behavioural of scntr is

	type STATE_TYPE is (state_Load, state_Input, state_Compare);
	signal y, y_next: STATE_TYPE;
	
	SIGNAL enableThreshold, enableSample, enableCounter : STD_LOGIC;
	SIGNAL thresholdOut, sampleOut, subtractorOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL underflowOccured : STD_LOGIC;
	
	SIGNAL loadTriggered : STD_LOGIC;
	
	ATTRIBUTE keep : boolean;
	ATTRIBUTE KEEP OF y_next  : SIGNAL IS true;

	
begin

	stored_t <= thresholdOut;

	-- Transitions
	PROCESS (load, resetn) BEGIN
		IF resetn = '0' THEN
			loadTriggered <= '0';
		END IF;
		CASE y IS
			WHEN state_Load =>
				IF load = '1' THEN
					y_next <= state_Load;
					loadTriggered <= '1';
				ELSIF loadTriggered = '1' THEN
					y_next <= state_Input;
					loadTriggered <= '1';
				ELSE
					y_next <= state_Load;
					loadTriggered <= '0';
				END IF;
			WHEN state_Input =>
				IF load = '1' THEN
					y_next <= state_Input;
				ELSE
					y_next <= state_Compare;
				END IF;
			WHEN state_Compare =>
				y_next <= state_Input;
		END CASE;
	END PROCESS;
	
	-- State
	PROCESS (clk, resetn) BEGIN
		IF resetn = '0' THEN
			y <= state_Load;
		ELSIF clk'event AND clk = '1' THEN
			y <= y_next;
		END IF;
	END PROCESS;

	-- Output
	PROCESS (y) BEGIN
		enableCounter <= '0';
		enableSample <= '0';
		enableThreshold <= '0';
		
		CASE y IS
			WHEN state_Load =>
				enableThreshold <= load; -- '1';
			WHEN state_Input =>
				enableSample <= '1';
			WHEN state_Compare =>
				IF unsigned(subtractorOut) > 0 AND underflowOccured = '0' THEN
					enableCounter <= '1';
				ELSE
					enableCounter <= '0';
				END IF;
		END CASE;
	END PROCESS;

	regThreshold: ENTITY work.regn PORT MAP (
		input => t_s_val,
		en => enableThreshold,
		rst => resetn,
		clk => clk,
		output => thresholdOut
	);


	regSample: ENTITY work.regn PORT MAP (
		input => t_s_val,
		en => enableSample,
		rst => resetn,
		clk => clk,
		output => sampleOut
	);
	
	subtractor: ENTITY work.subtractor PORT MAP (
		a => thresholdOut,
		b => sampleOut,
		output => subtractorOut,
		neg => underflowOccured
	);
	
	counter: ENTITY work.bcdCounter PORT MAP (
		en => enableCounter,
		rst => resetn,
		clk => clk,
		out3 => disp_count3,
		out2 => disp_count2,
		out1 => disp_count1,
		out0 => disp_count0
	);
end behavioural;

