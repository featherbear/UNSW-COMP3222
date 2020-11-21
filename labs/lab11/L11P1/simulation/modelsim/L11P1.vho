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

-- DATE "11/21/2020 09:35:21"

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
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END L11P1;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|STATE.S3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|Selector0~0_combout\ : std_logic;
SIGNAL \counter|STATE.S1~regout\ : std_logic;
SIGNAL \counter|bitsCounter|Count~2_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Count[3]~1_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Count~0_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Add0~0_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Count~4_combout\ : std_logic;
SIGNAL \counter|bitsCounter|Count~3_combout\ : std_logic;
SIGNAL \counter|Selector2~0_combout\ : std_logic;
SIGNAL \counter|Selector1~0_combout\ : std_logic;
SIGNAL \counter|STATE.S2~regout\ : std_logic;
SIGNAL \counter|Selector2~1_combout\ : std_logic;
SIGNAL \counter|STATE.S3~regout\ : std_logic;
SIGNAL \counter|STATE.S3~clkctrl_outclk\ : std_logic;
SIGNAL \counter|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter|bitsCounter|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\counter|STATE.S3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \counter|STATE.S3~regout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

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

-- Location: LCCOMB_X49_Y10_N24
\counter|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector0~0_combout\ = (\SW~combout\(8)) # (\counter|STATE.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(8),
	datad => \counter|STATE.S2~regout\,
	combout => \counter|Selector0~0_combout\);

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

-- Location: LCFF_X49_Y10_N25
\counter|STATE.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \counter|Selector0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|STATE.S1~regout\);

-- Location: LCCOMB_X49_Y10_N10
\counter|bitsCounter|Count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Count~2_combout\ = (\counter|STATE.S1~regout\ & (\counter|bitsCounter|Count\(0) $ (\counter|bitsCounter|Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|bitsCounter|Count\(0),
	datac => \counter|bitsCounter|Count\(1),
	datad => \counter|STATE.S1~regout\,
	combout => \counter|bitsCounter|Count~2_combout\);

-- Location: LCCOMB_X49_Y10_N16
\counter|bitsCounter|Count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Count[3]~1_combout\ = \counter|STATE.S1~regout\ $ (!\counter|STATE.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|STATE.S1~regout\,
	datad => \counter|STATE.S2~regout\,
	combout => \counter|bitsCounter|Count[3]~1_combout\);

-- Location: LCFF_X49_Y10_N11
\counter|bitsCounter|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \counter|bitsCounter|Count~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \counter|bitsCounter|Count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(1));

-- Location: LCCOMB_X49_Y10_N0
\counter|bitsCounter|Count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Count~0_combout\ = (!\counter|bitsCounter|Count\(0) & \counter|STATE.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|bitsCounter|Count\(0),
	datad => \counter|STATE.S1~regout\,
	combout => \counter|bitsCounter|Count~0_combout\);

-- Location: LCFF_X49_Y10_N1
\counter|bitsCounter|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \counter|bitsCounter|Count~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \counter|bitsCounter|Count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(0));

-- Location: LCCOMB_X49_Y10_N28
\counter|bitsCounter|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Add0~0_combout\ = \counter|bitsCounter|Count\(3) $ (((\counter|bitsCounter|Count\(2) & (\counter|bitsCounter|Count\(1) & \counter|bitsCounter|Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|bitsCounter|Count\(2),
	datab => \counter|bitsCounter|Count\(3),
	datac => \counter|bitsCounter|Count\(1),
	datad => \counter|bitsCounter|Count\(0),
	combout => \counter|bitsCounter|Add0~0_combout\);

-- Location: LCCOMB_X49_Y10_N30
\counter|bitsCounter|Count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Count~4_combout\ = (\counter|STATE.S1~regout\ & \counter|bitsCounter|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|STATE.S1~regout\,
	datad => \counter|bitsCounter|Add0~0_combout\,
	combout => \counter|bitsCounter|Count~4_combout\);

-- Location: LCFF_X49_Y10_N31
\counter|bitsCounter|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \counter|bitsCounter|Count~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \counter|bitsCounter|Count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(3));

-- Location: LCCOMB_X49_Y10_N26
\counter|bitsCounter|Count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|bitsCounter|Count~3_combout\ = (\counter|STATE.S1~regout\ & (\counter|bitsCounter|Count\(2) $ (((\counter|bitsCounter|Count\(0) & \counter|bitsCounter|Count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|bitsCounter|Count\(0),
	datab => \counter|bitsCounter|Count\(1),
	datac => \counter|bitsCounter|Count\(2),
	datad => \counter|STATE.S1~regout\,
	combout => \counter|bitsCounter|Count~3_combout\);

-- Location: LCFF_X49_Y10_N27
\counter|bitsCounter|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \counter|bitsCounter|Count~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \counter|bitsCounter|Count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|bitsCounter|Count\(2));

-- Location: LCCOMB_X49_Y10_N22
\counter|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector2~0_combout\ = (!\counter|bitsCounter|Count\(0) & (\counter|bitsCounter|Count\(3) & (!\counter|bitsCounter|Count\(1) & !\counter|bitsCounter|Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|bitsCounter|Count\(0),
	datab => \counter|bitsCounter|Count\(3),
	datac => \counter|bitsCounter|Count\(1),
	datad => \counter|bitsCounter|Count\(2),
	combout => \counter|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y10_N12
\counter|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector1~0_combout\ = (\SW~combout\(8) & (((\counter|STATE.S2~regout\ & !\counter|Selector2~0_combout\)) # (!\counter|STATE.S1~regout\))) # (!\SW~combout\(8) & (((\counter|STATE.S2~regout\ & !\counter|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \counter|STATE.S1~regout\,
	datac => \counter|STATE.S2~regout\,
	datad => \counter|Selector2~0_combout\,
	combout => \counter|Selector1~0_combout\);

-- Location: LCFF_X49_Y10_N13
\counter|STATE.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \counter|Selector1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|STATE.S2~regout\);

-- Location: LCCOMB_X49_Y10_N6
\counter|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Selector2~1_combout\ = (\SW~combout\(8) & ((\counter|STATE.S3~regout\) # ((\counter|STATE.S2~regout\ & \counter|Selector2~0_combout\)))) # (!\SW~combout\(8) & (\counter|STATE.S2~regout\ & ((\counter|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \counter|STATE.S2~regout\,
	datac => \counter|STATE.S3~regout\,
	datad => \counter|Selector2~0_combout\,
	combout => \counter|Selector2~1_combout\);

-- Location: LCFF_X49_Y10_N7
\counter|STATE.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \counter|Selector2~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter|STATE.S3~regout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X49_Y10_N14
\counter|Count[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(0) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|bitsCounter|Count\(0)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Count\(0),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|bitsCounter|Count\(0),
	combout => \counter|Count\(0));

-- Location: LCCOMB_X49_Y10_N20
\counter|Count[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(1) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|bitsCounter|Count\(1)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Count\(1),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|bitsCounter|Count\(1),
	combout => \counter|Count\(1));

-- Location: LCCOMB_X49_Y10_N18
\counter|Count[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(2) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|bitsCounter|Count\(2)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|Count\(2),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|bitsCounter|Count\(2),
	combout => \counter|Count\(2));

-- Location: LCCOMB_X49_Y10_N8
\counter|Count[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter|Count\(3) = (GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & ((\counter|bitsCounter|Count\(3)))) # (!GLOBAL(\counter|STATE.S3~clkctrl_outclk\) & (\counter|Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|Count\(3),
	datac => \counter|STATE.S3~clkctrl_outclk\,
	datad => \counter|bitsCounter|Count\(3),
	combout => \counter|Count\(3));

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
	padio => ww_SW(0));

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
	padio => ww_SW(1));

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
	padio => ww_SW(2));

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
	padio => ww_SW(3));

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
	padio => ww_SW(4));

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
	padio => ww_SW(5));

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
	padio => ww_SW(6));

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
	padio => ww_SW(7));

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
	padio => ww_CLOCK_50);

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


