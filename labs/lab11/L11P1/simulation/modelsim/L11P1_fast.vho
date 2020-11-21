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

-- DATE "11/21/2020 09:55:42"

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

ENTITY 	L11P1 IS
    PORT (
	SW : IN std_logic_vector(8 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END L11P1;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF L11P1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|STATE.S3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|shiftRegister|Q~2_combout\ : std_logic;
SIGNAL \counter|shiftRegister|Q~3_combout\ : std_logic;
SIGNAL \counter|shiftRegister|Q~4_combout\ : std_logic;
SIGNAL \counter|shiftRegister|Q~5_combout\ : std_logic;
SIGNAL \counter|shiftRegister|Q~6_combout\ : std_logic;
SIGNAL \counter|shiftRegister|Q~7_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \counter|Selector1~0_combout\ : std_logic;
SIGNAL \counter|STATE.S2~regout\ : std_logic;
SIGNAL \counter|Selector0~0_combout\ : std_logic;
SIGNAL \counter|STATE.S1~regout\ : std_logic;
SIGNAL \counter|bitsCounter|Count~1_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Count[3]~0_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Add0~0_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Add0~2_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Add0~1_combout\ : std_logic;
SIGNAL \counter|Selector2~0_combout\ : std_logic;
SIGNAL \counter|Selector2~1_combout\ : std_logic;
SIGNAL \counter|STATE.S3~regout\ : std_logic;
SIGNAL \counter|STATE.S3~clkctrl_outclk\ : std_logic;
SIGNAL \counter|readCounter|Count~0_combout\ : std_logic;
SIGNAL \counter|shiftRegister|Q~1_combout\ : std_logic;
SIGNAL \counter|shiftRegister|Q~0_combout\ : std_logic;
SIGNAL \counter|readCounter|Count[0]~1_combout\ : std_logic;
SIGNAL \counter|readCounter|Add0~0_combout\ : std_logic;
SIGNAL \counter|readCounter|Add0~1_combout\ : std_logic;
SIGNAL \counter|readCounter|Add0~2_combout\ : std_logic;
SIGNAL \counter|readCounter|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|shiftRegister|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|bitsCounter|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \counter|ALT_INV_STATE.S1~regout\ : std_logic;
SIGNAL \counter|ALT_INV_STATE.S3~regout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\counter|STATE.S3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \counter|STATE.S3~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\counter|ALT_INV_STATE.S1~regout\ <= NOT \counter|STATE.S1~regout\;
\counter|ALT_INV_STATE.S3~regout\ <= NOT \counter|STATE.S3~regout\;

-- Location: LCFF_X49_Y8_N17
\counter|shiftRegister|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|shiftRegister|Q~2_combout\,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(2));

-- Location: LCFF_X49_Y8_N23
\counter|shiftRegister|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|shiftRegister|Q~3_combout\,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(3));

-- Location: LCCOMB_X49_Y8_N16
\counter|shiftRegister|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~2_combout\ = (\counter|STATE.S1~regout\ & ((\counter|shiftRegister|Q\(3)))) # (!\counter|STATE.S1~regout\ & (\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(2),
	datac => \counter|STATE.S1~regout\,
	datad => \counter|shiftRegister|Q\(3),
	combout => \counter|shiftRegister|Q~2_combout\);

-- Location: LCFF_X49_Y8_N27
\counter|shiftRegister|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|shiftRegister|Q~4_combout\,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(4));

-- Location: LCCOMB_X49_Y8_N22
\counter|shiftRegister|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~3_combout\ = (\counter|STATE.S1~regout\ & ((\counter|shiftRegister|Q\(4)))) # (!\counter|STATE.S1~regout\ & (\SW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|STATE.S1~regout\,
	datac => \SW~combout\(3),
	datad => \counter|shiftRegister|Q\(4),
	combout => \counter|shiftRegister|Q~3_combout\);

-- Location: LCFF_X49_Y8_N5
\counter|shiftRegister|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|shiftRegister|Q~5_combout\,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(5));

-- Location: LCCOMB_X49_Y8_N26
\counter|shiftRegister|Q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~4_combout\ = (\counter|STATE.S1~regout\ & (\counter|shiftRegister|Q\(5))) # (!\counter|STATE.S1~regout\ & ((\SW~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|shiftRegister|Q\(5),
	datac => \counter|STATE.S1~regout\,
	datad => \SW~combout\(4),
	combout => \counter|shiftRegister|Q~4_combout\);

-- Location: LCFF_X49_Y8_N13
\counter|shiftRegister|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|shiftRegister|Q~6_combout\,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(6));

-- Location: LCCOMB_X49_Y8_N4
\counter|shiftRegister|Q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~5_combout\ = (\counter|STATE.S1~regout\ & ((\counter|shiftRegister|Q\(6)))) # (!\counter|STATE.S1~regout\ & (\SW~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|STATE.S1~regout\,
	datac => \SW~combout\(5),
	datad => \counter|shiftRegister|Q\(6),
	combout => \counter|shiftRegister|Q~5_combout\);

-- Location: LCFF_X49_Y8_N7
\counter|shiftRegister|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|shiftRegister|Q~7_combout\,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(7));

-- Location: LCCOMB_X49_Y8_N12
\counter|shiftRegister|Q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~6_combout\ = (\counter|STATE.S1~regout\ & ((\counter|shiftRegister|Q\(7)))) # (!\counter|STATE.S1~regout\ & (\SW~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datac => \counter|STATE.S1~regout\,
	datad => \counter|shiftRegister|Q\(7),
	combout => \counter|shiftRegister|Q~6_combout\);

-- Location: LCCOMB_X49_Y8_N6
\counter|shiftRegister|Q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~7_combout\ = (\SW~combout\(7) & !\counter|STATE.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(7),
	datad => \counter|STATE.S1~regout\,
	combout => \counter|shiftRegister|Q~7_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCCOMB_X49_Y8_N30
\counter|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector1~0_combout\ = (\counter|STATE.S1~regout\ & (((\counter|STATE.S2~regout\ & !\counter|Selector2~0_combout\)))) # (!\counter|STATE.S1~regout\ & ((\SW~combout\(8)) # ((\counter|STATE.S2~regout\ & !\counter|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|STATE.S1~regout\,
	datab => \SW~combout\(8),
	datac => \counter|STATE.S2~regout\,
	datad => \counter|Selector2~0_combout\,
	combout => \counter|Selector1~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X49_Y8_N31
\counter|STATE.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|Selector1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|STATE.S2~regout\);

-- Location: LCCOMB_X49_Y8_N14
\counter|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector0~0_combout\ = (\counter|STATE.S2~regout\) # (\SW~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|STATE.S2~regout\,
	datad => \SW~combout\(8),
	combout => \counter|Selector0~0_combout\);

-- Location: LCFF_X49_Y8_N15
\counter|STATE.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|Selector0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|STATE.S1~regout\);

-- Location: LCCOMB_X48_Y8_N6
\counter|bitsCounter|Count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Count~1_combout\ = (!\counter|bitsCounter|Count\(0) & \counter|STATE.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|bitsCounter|Count\(0),
	datad => \counter|STATE.S1~regout\,
	combout => \counter|bitsCounter|Count~1_combout\);

-- Location: LCCOMB_X48_Y8_N10
\counter|bitsCounter|Count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Count[3]~0_combout\ = \counter|STATE.S1~regout\ $ (!\counter|STATE.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|STATE.S1~regout\,
	datad => \counter|STATE.S2~regout\,
	combout => \counter|bitsCounter|Count[3]~0_combout\);

-- Location: LCFF_X48_Y8_N7
\counter|bitsCounter|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|bitsCounter|Count~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \counter|bitsCounter|Count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(0));

-- Location: LCCOMB_X48_Y8_N26
\counter|bitsCounter|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Add0~0_combout\ = \counter|bitsCounter|Count\(2) $ (((\counter|bitsCounter|Count\(1) & \counter|bitsCounter|Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|bitsCounter|Count\(1),
	datac => \counter|bitsCounter|Count\(2),
	datad => \counter|bitsCounter|Count\(0),
	combout => \counter|bitsCounter|Add0~0_combout\);

-- Location: LCFF_X48_Y8_N27
\counter|bitsCounter|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|bitsCounter|Add0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \counter|ALT_INV_STATE.S1~regout\,
	ena => \counter|bitsCounter|Count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(2));

-- Location: LCCOMB_X48_Y8_N14
\counter|bitsCounter|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Add0~2_combout\ = \counter|bitsCounter|Count\(3) $ (((\counter|bitsCounter|Count\(1) & (\counter|bitsCounter|Count\(2) & \counter|bitsCounter|Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|bitsCounter|Count\(1),
	datab => \counter|bitsCounter|Count\(2),
	datac => \counter|bitsCounter|Count\(3),
	datad => \counter|bitsCounter|Count\(0),
	combout => \counter|bitsCounter|Add0~2_combout\);

-- Location: LCFF_X48_Y8_N15
\counter|bitsCounter|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|bitsCounter|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \counter|ALT_INV_STATE.S1~regout\,
	ena => \counter|bitsCounter|Count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(3));

-- Location: LCCOMB_X48_Y8_N20
\counter|bitsCounter|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Add0~1_combout\ = \counter|bitsCounter|Count\(1) $ (\counter|bitsCounter|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|bitsCounter|Count\(1),
	datad => \counter|bitsCounter|Count\(0),
	combout => \counter|bitsCounter|Add0~1_combout\);

-- Location: LCFF_X48_Y8_N21
\counter|bitsCounter|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|bitsCounter|Add0~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \counter|ALT_INV_STATE.S1~regout\,
	ena => \counter|bitsCounter|Count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(1));

-- Location: LCCOMB_X48_Y8_N16
\counter|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector2~0_combout\ = (\counter|bitsCounter|Count\(0) & (!\counter|bitsCounter|Count\(3) & (\counter|bitsCounter|Count\(1) & \counter|bitsCounter|Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|bitsCounter|Count\(0),
	datab => \counter|bitsCounter|Count\(3),
	datac => \counter|bitsCounter|Count\(1),
	datad => \counter|bitsCounter|Count\(2),
	combout => \counter|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y8_N10
\counter|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector2~1_combout\ = (\counter|STATE.S2~regout\ & ((\counter|Selector2~0_combout\) # ((\SW~combout\(8) & \counter|STATE.S3~regout\)))) # (!\counter|STATE.S2~regout\ & (\SW~combout\(8) & (\counter|STATE.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|STATE.S2~regout\,
	datab => \SW~combout\(8),
	datac => \counter|STATE.S3~regout\,
	datad => \counter|Selector2~0_combout\,
	combout => \counter|Selector2~1_combout\);

-- Location: LCFF_X49_Y8_N11
\counter|STATE.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|Selector2~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|STATE.S3~regout\);

-- Location: CLKCTRL_G6
\counter|STATE.S3~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter|STATE.S3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter|STATE.S3~clkctrl_outclk\);

-- Location: LCCOMB_X48_Y8_N12
\counter|readCounter|Count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|readCounter|Count~0_combout\ = (!\counter|readCounter|Count\(0) & \counter|STATE.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|readCounter|Count\(0),
	datad => \counter|STATE.S1~regout\,
	combout => \counter|readCounter|Count~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X49_Y8_N28
\counter|shiftRegister|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~1_combout\ = (\counter|STATE.S1~regout\ & (\counter|shiftRegister|Q\(2))) # (!\counter|STATE.S1~regout\ & ((\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|shiftRegister|Q\(2),
	datab => \counter|STATE.S1~regout\,
	datac => \SW~combout\(1),
	combout => \counter|shiftRegister|Q~1_combout\);

-- Location: LCFF_X49_Y8_N29
\counter|shiftRegister|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|shiftRegister|Q~1_combout\,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(1));

-- Location: LCCOMB_X49_Y8_N8
\counter|shiftRegister|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|shiftRegister|Q~0_combout\ = (\counter|STATE.S1~regout\ & ((\counter|shiftRegister|Q\(1)))) # (!\counter|STATE.S1~regout\ & (\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \counter|STATE.S1~regout\,
	datad => \counter|shiftRegister|Q\(1),
	combout => \counter|shiftRegister|Q~0_combout\);

-- Location: LCFF_X49_Y8_N25
\counter|shiftRegister|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \counter|shiftRegister|Q~0_combout\,
	sload => VCC,
	ena => \counter|ALT_INV_STATE.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|shiftRegister|Q\(0));

-- Location: LCCOMB_X49_Y8_N24
\counter|readCounter|Count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|readCounter|Count[0]~1_combout\ = \counter|STATE.S1~regout\ $ (((!\counter|STATE.S2~regout\) # (!\counter|shiftRegister|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|STATE.S1~regout\,
	datac => \counter|shiftRegister|Q\(0),
	datad => \counter|STATE.S2~regout\,
	combout => \counter|readCounter|Count[0]~1_combout\);

-- Location: LCFF_X48_Y8_N13
\counter|readCounter|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|readCounter|Count~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \counter|readCounter|Count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|readCounter|Count\(0));

-- Location: LCCOMB_X48_Y8_N24
\counter|Count[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(0) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|readCounter|Count\(0)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Count\(0),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|readCounter|Count\(0),
	combout => \counter|Count\(0));

-- Location: LCCOMB_X48_Y8_N28
\counter|readCounter|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|readCounter|Add0~0_combout\ = \counter|readCounter|Count\(0) $ (\counter|readCounter|Count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|readCounter|Count\(0),
	datac => \counter|readCounter|Count\(1),
	combout => \counter|readCounter|Add0~0_combout\);

-- Location: LCFF_X48_Y8_N29
\counter|readCounter|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|readCounter|Add0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \counter|ALT_INV_STATE.S1~regout\,
	ena => \counter|readCounter|Count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|readCounter|Count\(1));

-- Location: LCCOMB_X48_Y8_N18
\counter|Count[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(1) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|readCounter|Count\(1)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|Count\(1),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|readCounter|Count\(1),
	combout => \counter|Count\(1));

-- Location: LCCOMB_X48_Y8_N2
\counter|readCounter|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|readCounter|Add0~1_combout\ = \counter|readCounter|Count\(2) $ (((\counter|readCounter|Count\(1) & \counter|readCounter|Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|readCounter|Count\(1),
	datab => \counter|readCounter|Count\(0),
	datac => \counter|readCounter|Count\(2),
	combout => \counter|readCounter|Add0~1_combout\);

-- Location: LCFF_X48_Y8_N3
\counter|readCounter|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|readCounter|Add0~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \counter|ALT_INV_STATE.S1~regout\,
	ena => \counter|readCounter|Count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|readCounter|Count\(2));

-- Location: LCCOMB_X48_Y8_N8
\counter|Count[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(2) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|readCounter|Count\(2)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|Count\(2),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|readCounter|Count\(2),
	combout => \counter|Count\(2));

-- Location: LCCOMB_X48_Y8_N0
\counter|readCounter|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|readCounter|Add0~2_combout\ = \counter|readCounter|Count\(3) $ (((\counter|readCounter|Count\(1) & (\counter|readCounter|Count\(0) & \counter|readCounter|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|readCounter|Count\(1),
	datab => \counter|readCounter|Count\(0),
	datac => \counter|readCounter|Count\(3),
	datad => \counter|readCounter|Count\(2),
	combout => \counter|readCounter|Add0~2_combout\);

-- Location: LCFF_X48_Y8_N1
\counter|readCounter|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter|readCounter|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sclr => \counter|ALT_INV_STATE.S1~regout\,
	ena => \counter|readCounter|Count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|readCounter|Count\(3));

-- Location: LCCOMB_X48_Y8_N22
\counter|Count[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(3) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|readCounter|Count\(3)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|Count\(3),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|readCounter|Count\(3),
	combout => \counter|Count\(3));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \counter|Count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \counter|Count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \counter|Count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \counter|Count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));
END structure;


