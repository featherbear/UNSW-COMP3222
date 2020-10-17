-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/17/2020 05:25:31"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part3 IS
    PORT (
	E : IN std_logic;
	Clk : IN std_logic;
	Clearn : IN std_logic;
	Q : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END part3;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[4]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[5]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[6]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[7]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[8]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[9]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[10]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[11]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[12]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[13]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[14]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[15]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clearn	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Clearn : std_logic;
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Clearn~combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \counter|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Clearn~combout\ : std_logic;

BEGIN

ww_E <= E;
ww_Clk <= Clk;
ww_Clearn <= Clearn;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);
\ALT_INV_Clearn~combout\ <= NOT \Clearn~combout\;

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: CLKCTRL_G3
\Clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y7_N0
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \counter|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\counter|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X2_Y7_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clearn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clearn,
	combout => \Clearn~combout\);

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: LCCOMB_X1_Y8_N16
\counter|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\E~combout\) # (!\Clearn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E~combout\,
	datad => \Clearn~combout\,
	combout => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X1_Y7_N1
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X1_Y7_N2
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X1_Y7_N3
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X1_Y7_N4
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\counter|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X1_Y7_N5
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X1_Y7_N6
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X1_Y7_N7
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X1_Y7_N8
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\counter|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X1_Y7_N9
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X1_Y7_N10
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X1_Y7_N11
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X1_Y7_N12
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\counter|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X1_Y7_N13
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X1_Y7_N14
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X1_Y7_N15
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X1_Y7_N16
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\counter|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X1_Y7_N17
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X1_Y7_N18
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X1_Y7_N19
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X1_Y7_N20
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\counter|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X1_Y7_N21
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X1_Y7_N22
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X1_Y7_N23
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X1_Y7_N24
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\counter|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X1_Y7_N25
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X1_Y7_N26
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X1_Y7_N27
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X1_Y7_N28
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\counter|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\counter|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\counter|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X1_Y7_N29
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X1_Y7_N30
\counter|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ $ (\counter|LPM_COUNTER_component|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counter|LPM_COUNTER_component|auto_generated|safe_q\(15),
	cin => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\);

-- Location: LCFF_X1_Y7_N31
\counter|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \counter|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \ALT_INV_Clearn~combout\,
	ena => \counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(7));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(8));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(9));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(10));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(11));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(12));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(13));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(14));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter|LPM_COUNTER_component|auto_generated|safe_q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(15));
END structure;


