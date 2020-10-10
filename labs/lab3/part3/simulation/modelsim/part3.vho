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

-- DATE "10/10/2020 16:58:17"

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
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END part3;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \ClkN~combout\ : std_logic;
SIGNAL \master_latch|S_g~combout\ : std_logic;
SIGNAL \master_latch|R~combout\ : std_logic;
SIGNAL \master_latch|R_g~combout\ : std_logic;
SIGNAL \master_latch|Qb~combout\ : std_logic;
SIGNAL \master_latch|Qa~combout\ : std_logic;
SIGNAL \Qm~combout\ : std_logic;
SIGNAL \slave_latch|R~combout\ : std_logic;
SIGNAL \slave_latch|R_g~combout\ : std_logic;
SIGNAL \slave_latch|Qb~combout\ : std_logic;
SIGNAL \slave_latch|S_g~combout\ : std_logic;
SIGNAL \slave_latch|Qa~combout\ : std_logic;
SIGNAL \Qs~combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LCCOMB_X49_Y14_N22
ClkN : cycloneii_lcell_comb
-- Equation(s):
-- \ClkN~combout\ = LCELL(!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(1),
	combout => \ClkN~combout\);

-- Location: LCCOMB_X49_Y14_N18
\master_latch|S_g\ : cycloneii_lcell_comb
-- Equation(s):
-- \master_latch|S_g~combout\ = LCELL((!\ClkN~combout\) # (!\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	datad => \ClkN~combout\,
	combout => \master_latch|S_g~combout\);

-- Location: LCCOMB_X49_Y14_N0
\master_latch|R\ : cycloneii_lcell_comb
-- Equation(s):
-- \master_latch|R~combout\ = LCELL(!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	combout => \master_latch|R~combout\);

-- Location: LCCOMB_X49_Y14_N30
\master_latch|R_g\ : cycloneii_lcell_comb
-- Equation(s):
-- \master_latch|R_g~combout\ = LCELL((!\ClkN~combout\) # (!\master_latch|R~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_latch|R~combout\,
	datad => \ClkN~combout\,
	combout => \master_latch|R_g~combout\);

-- Location: LCCOMB_X49_Y14_N12
\master_latch|Qb\ : cycloneii_lcell_comb
-- Equation(s):
-- \master_latch|Qb~combout\ = LCELL((!\master_latch|R_g~combout\) # (!\master_latch|Qa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_latch|Qa~combout\,
	datad => \master_latch|R_g~combout\,
	combout => \master_latch|Qb~combout\);

-- Location: LCCOMB_X49_Y14_N8
\master_latch|Qa\ : cycloneii_lcell_comb
-- Equation(s):
-- \master_latch|Qa~combout\ = LCELL((!\master_latch|Qb~combout\) # (!\master_latch|S_g~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_latch|S_g~combout\,
	datad => \master_latch|Qb~combout\,
	combout => \master_latch|Qa~combout\);

-- Location: LCCOMB_X49_Y14_N2
Qm : cycloneii_lcell_comb
-- Equation(s):
-- \Qm~combout\ = LCELL(\master_latch|Qa~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_latch|Qa~combout\,
	combout => \Qm~combout\);

-- Location: LCCOMB_X49_Y14_N28
\slave_latch|R\ : cycloneii_lcell_comb
-- Equation(s):
-- \slave_latch|R~combout\ = LCELL(!\Qm~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Qm~combout\,
	combout => \slave_latch|R~combout\);

-- Location: LCCOMB_X49_Y14_N6
\slave_latch|R_g\ : cycloneii_lcell_comb
-- Equation(s):
-- \slave_latch|R_g~combout\ = LCELL((!\SW~combout\(1)) # (!\slave_latch|R~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slave_latch|R~combout\,
	datad => \SW~combout\(1),
	combout => \slave_latch|R_g~combout\);

-- Location: LCCOMB_X49_Y14_N20
\slave_latch|Qb\ : cycloneii_lcell_comb
-- Equation(s):
-- \slave_latch|Qb~combout\ = LCELL((!\slave_latch|R_g~combout\) # (!\slave_latch|Qa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slave_latch|Qa~combout\,
	datad => \slave_latch|R_g~combout\,
	combout => \slave_latch|Qb~combout\);

-- Location: LCCOMB_X49_Y14_N10
\slave_latch|S_g\ : cycloneii_lcell_comb
-- Equation(s):
-- \slave_latch|S_g~combout\ = LCELL((!\SW~combout\(1)) # (!\Qm~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Qm~combout\,
	datad => \SW~combout\(1),
	combout => \slave_latch|S_g~combout\);

-- Location: LCCOMB_X49_Y14_N24
\slave_latch|Qa\ : cycloneii_lcell_comb
-- Equation(s):
-- \slave_latch|Qa~combout\ = LCELL((!\slave_latch|S_g~combout\) # (!\slave_latch|Qb~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slave_latch|Qb~combout\,
	datad => \slave_latch|S_g~combout\,
	combout => \slave_latch|Qa~combout\);

-- Location: LCCOMB_X49_Y14_N16
Qs : cycloneii_lcell_comb
-- Equation(s):
-- \Qs~combout\ = LCELL(\slave_latch|Qa~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slave_latch|Qa~combout\,
	combout => \Qs~combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \Qs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));
END structure;


