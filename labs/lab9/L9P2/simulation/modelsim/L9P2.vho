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

-- DATE "11/09/2020 12:02:10"

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

ENTITY 	L9P2 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 9);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END L9P2;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF L9P2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 9);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \KEY[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|REGISTER_G|Q[1]~13_combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[2]~15_combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[3]~17_combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[4]~19_combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[5]~21_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal3~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~1_combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~5_combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~7_combout\ : std_logic;
SIGNAL \proc|R[6][0]~combout\ : std_logic;
SIGNAL \proc|R[4][0]~combout\ : std_logic;
SIGNAL \proc|R[2][0]~combout\ : std_logic;
SIGNAL \proc|R[1][0]~combout\ : std_logic;
SIGNAL \proc|R[0][0]~combout\ : std_logic;
SIGNAL \proc|R[6][1]~combout\ : std_logic;
SIGNAL \proc|R[4][1]~combout\ : std_logic;
SIGNAL \proc|R[2][1]~combout\ : std_logic;
SIGNAL \proc|R[3][1]~combout\ : std_logic;
SIGNAL \proc|R[9][1]~combout\ : std_logic;
SIGNAL \proc|R[7][1]~combout\ : std_logic;
SIGNAL \proc|R[2][2]~combout\ : std_logic;
SIGNAL \proc|R[1][2]~combout\ : std_logic;
SIGNAL \proc|R[9][2]~combout\ : std_logic;
SIGNAL \proc|R[0][2]~combout\ : std_logic;
SIGNAL \proc|R[6][3]~combout\ : std_logic;
SIGNAL \proc|R[5][3]~combout\ : std_logic;
SIGNAL \proc|R[4][3]~combout\ : std_logic;
SIGNAL \proc|R[9][3]~combout\ : std_logic;
SIGNAL \proc|R[1][3]~combout\ : std_logic;
SIGNAL \proc|R[6][4]~combout\ : std_logic;
SIGNAL \proc|R[5][4]~combout\ : std_logic;
SIGNAL \proc|R[3][4]~combout\ : std_logic;
SIGNAL \proc|R[9][4]~combout\ : std_logic;
SIGNAL \proc|R[7][4]~combout\ : std_logic;
SIGNAL \proc|R[6][5]~combout\ : std_logic;
SIGNAL \proc|R[5][5]~combout\ : std_logic;
SIGNAL \proc|R[2][5]~combout\ : std_logic;
SIGNAL \proc|R[3][5]~combout\ : std_logic;
SIGNAL \proc|R[9][5]~combout\ : std_logic;
SIGNAL \proc|R[4][6]~combout\ : std_logic;
SIGNAL \proc|R[2][6]~combout\ : std_logic;
SIGNAL \proc|R[5][7]~combout\ : std_logic;
SIGNAL \proc|R[2][7]~combout\ : std_logic;
SIGNAL \proc|R[1][7]~combout\ : std_logic;
SIGNAL \proc|R[3][7]~combout\ : std_logic;
SIGNAL \proc|R[6][8]~combout\ : std_logic;
SIGNAL \proc|R[4][8]~combout\ : std_logic;
SIGNAL \proc|R[5][8]~combout\ : std_logic;
SIGNAL \proc|R[2][8]~combout\ : std_logic;
SIGNAL \proc|R[3][8]~combout\ : std_logic;
SIGNAL \proc|R[8][0]~combout\ : std_logic;
SIGNAL \proc|R[8][1]~combout\ : std_logic;
SIGNAL \proc|R[8][2]~combout\ : std_logic;
SIGNAL \proc|R[8][3]~combout\ : std_logic;
SIGNAL \proc|R[8][4]~combout\ : std_logic;
SIGNAL \proc|R[8][6]~combout\ : std_logic;
SIGNAL \proc|R[8][8]~combout\ : std_logic;
SIGNAL \KEY[2]~clkctrl_outclk\ : std_logic;
SIGNAL \proc|REGISTER_A|Q[0]~feeder_combout\ : std_logic;
SIGNAL \proc|REGISTERS:0:BUS_IN_REGS|Q[2]~feeder_combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~0_combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[0]~10_cout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[0]~11_combout\ : std_logic;
SIGNAL \KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \ADDR[0]~5_combout\ : std_logic;
SIGNAL \ADDR[0]~6\ : std_logic;
SIGNAL \ADDR[1]~7_combout\ : std_logic;
SIGNAL \ADDR[1]~8\ : std_logic;
SIGNAL \ADDR[2]~9_combout\ : std_logic;
SIGNAL \ADDR[2]~10\ : std_logic;
SIGNAL \ADDR[3]~11_combout\ : std_logic;
SIGNAL \ADDR[3]~12\ : std_logic;
SIGNAL \ADDR[4]~13_combout\ : std_logic;
SIGNAL \proc|R[10][8]~combout\ : std_logic;
SIGNAL \proc|R[10][7]~combout\ : std_logic;
SIGNAL \KEY[0]~clkctrl_outclk\ : std_logic;
SIGNAL \proc|Tstep_Q.T3~regout\ : std_logic;
SIGNAL \proc|Selector18~0_combout\ : std_logic;
SIGNAL \proc|Selector0~0_combout\ : std_logic;
SIGNAL \proc|Tstep_Q.T0~regout\ : std_logic;
SIGNAL \proc|Tstep_D.T1~0_combout\ : std_logic;
SIGNAL \proc|Tstep_Q.T1~regout\ : std_logic;
SIGNAL \proc|Tstep_D.T2~0_combout\ : std_logic;
SIGNAL \proc|Tstep_Q.T2~regout\ : std_logic;
SIGNAL \proc|R[9][0]~combout\ : std_logic;
SIGNAL \proc|R[10][1]~combout\ : std_logic;
SIGNAL \proc|R[10][2]~combout\ : std_logic;
SIGNAL \proc|R[10][0]~combout\ : std_logic;
SIGNAL \proc|R[10][3]~combout\ : std_logic;
SIGNAL \proc|R[10][4]~combout\ : std_logic;
SIGNAL \proc|R[10][5]~combout\ : std_logic;
SIGNAL \proc|R[10][6]~combout\ : std_logic;
SIGNAL \proc|Selector10~0_combout\ : std_logic;
SIGNAL \proc|Selector11~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal8~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal1~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal8~1_combout\ : std_logic;
SIGNAL \proc|R[3][0]~combout\ : std_logic;
SIGNAL \proc|mux|Equal5~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal0~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal3~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal1~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal1~3_combout\ : std_logic;
SIGNAL \proc|mux|Equal1~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~4_combout\ : std_logic;
SIGNAL \proc|R[5][0]~combout\ : std_logic;
SIGNAL \proc|mux|Equal6~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal1~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal5~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal4~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal4~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal9~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal9~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal6~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal6~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~0_combout\ : std_logic;
SIGNAL \proc|R[7][0]~combout\ : std_logic;
SIGNAL \proc|mux|Equal0~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal0~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal6~3_combout\ : std_logic;
SIGNAL \proc|mux|Equal7~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~6_combout\ : std_logic;
SIGNAL \proc|mux|Equal2~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~2_combout\ : std_logic;
SIGNAL \proc|R[1][1]~combout\ : std_logic;
SIGNAL \proc|mux|Selector7~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~4_combout\ : std_logic;
SIGNAL \proc|R[0][1]~combout\ : std_logic;
SIGNAL \proc|mux|Selector7~5_combout\ : std_logic;
SIGNAL \proc|R[5][1]~combout\ : std_logic;
SIGNAL \proc|mux|Selector7~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~6_combout\ : std_logic;
SIGNAL \proc|R[7][2]~combout\ : std_logic;
SIGNAL \proc|mux|Selector6~5_combout\ : std_logic;
SIGNAL \proc|R[5][2]~combout\ : std_logic;
SIGNAL \proc|R[4][2]~combout\ : std_logic;
SIGNAL \proc|mux|Selector6~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~2_combout\ : std_logic;
SIGNAL \proc|R[3][2]~combout\ : std_logic;
SIGNAL \proc|mux|Selector6~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~4_combout\ : std_logic;
SIGNAL \proc|R[6][2]~combout\ : std_logic;
SIGNAL \proc|mux|Selector6~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~6_combout\ : std_logic;
SIGNAL \proc|REGISTERS:3:BUS_IN_REGS|Q[3]~feeder_combout\ : std_logic;
SIGNAL \proc|R[3][3]~combout\ : std_logic;
SIGNAL \proc|mux|Selector5~4_combout\ : std_logic;
SIGNAL \proc|R[2][3]~combout\ : std_logic;
SIGNAL \proc|mux|Equal2~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~3_combout\ : std_logic;
SIGNAL \proc|R[7][3]~combout\ : std_logic;
SIGNAL \proc|R[0][3]~combout\ : std_logic;
SIGNAL \proc|mux|Selector5~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~6_combout\ : std_logic;
SIGNAL \proc|R[0][4]~combout\ : std_logic;
SIGNAL \proc|mux|Selector4~5_combout\ : std_logic;
SIGNAL \proc|R[4][4]~combout\ : std_logic;
SIGNAL \proc|mux|Selector4~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~0_combout\ : std_logic;
SIGNAL \proc|R[2][4]~combout\ : std_logic;
SIGNAL \proc|mux|Selector4~2_combout\ : std_logic;
SIGNAL \proc|R[1][4]~combout\ : std_logic;
SIGNAL \proc|mux|Selector4~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~6_combout\ : std_logic;
SIGNAL \proc|R[7][5]~combout\ : std_logic;
SIGNAL \proc|R[0][5]~combout\ : std_logic;
SIGNAL \proc|mux|Selector3~5_combout\ : std_logic;
SIGNAL \proc|R[4][5]~combout\ : std_logic;
SIGNAL \proc|mux|Selector3~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~2_combout\ : std_logic;
SIGNAL \proc|R[1][5]~combout\ : std_logic;
SIGNAL \proc|mux|Selector3~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~6_combout\ : std_logic;
SIGNAL \proc|addSubMode~combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~6_combout\ : std_logic;
SIGNAL \proc|R[8][5]~combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~4_combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~3_combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~2_combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~1_combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[0]~12\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[1]~14\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[2]~16\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[3]~18\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[4]~20\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[5]~22\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[6]~23_combout\ : std_logic;
SIGNAL \proc|R[9][6]~combout\ : std_logic;
SIGNAL \proc|mux|Selector2~3_combout\ : std_logic;
SIGNAL \proc|REGISTERS:1:BUS_IN_REGS|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc|R[1][6]~combout\ : std_logic;
SIGNAL \proc|REGISTERS:3:BUS_IN_REGS|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc|R[3][6]~combout\ : std_logic;
SIGNAL \proc|mux|Selector2~4_combout\ : std_logic;
SIGNAL \proc|R[7][6]~combout\ : std_logic;
SIGNAL \proc|R[0][6]~combout\ : std_logic;
SIGNAL \proc|mux|Selector2~5_combout\ : std_logic;
SIGNAL \proc|R[5][6]~combout\ : std_logic;
SIGNAL \proc|mux|Selector2~1_combout\ : std_logic;
SIGNAL \proc|R[6][6]~combout\ : std_logic;
SIGNAL \proc|mux|Selector2~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~6_combout\ : std_logic;
SIGNAL \proc|R[0][7]~combout\ : std_logic;
SIGNAL \proc|mux|Selector1~5_combout\ : std_logic;
SIGNAL \proc|R[7][7]~combout\ : std_logic;
SIGNAL \proc|R[8][7]~combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[6]~24\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[7]~25_combout\ : std_logic;
SIGNAL \proc|R[9][7]~combout\ : std_logic;
SIGNAL \proc|mux|Selector1~2_combout\ : std_logic;
SIGNAL \proc|R[4][7]~combout\ : std_logic;
SIGNAL \proc|mux|Selector1~1_combout\ : std_logic;
SIGNAL \proc|R[6][7]~combout\ : std_logic;
SIGNAL \proc|mux|Selector1~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~6_combout\ : std_logic;
SIGNAL \proc|R[0][8]~combout\ : std_logic;
SIGNAL \proc|mux|Selector0~5_combout\ : std_logic;
SIGNAL \proc|R[7][8]~combout\ : std_logic;
SIGNAL \proc|R[1][8]~combout\ : std_logic;
SIGNAL \proc|mux|Selector0~3_combout\ : std_logic;
SIGNAL \proc|ADD_SUB|Add0~8_combout\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[7]~26\ : std_logic;
SIGNAL \proc|REGISTER_G|Q[8]~27_combout\ : std_logic;
SIGNAL \proc|R[9][8]~combout\ : std_logic;
SIGNAL \proc|mux|Selector0~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~6_combout\ : std_logic;
SIGNAL \proc|REGISTERS:1:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTERS:2:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTERS:3:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTERS:4:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTERS:5:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTERS:6:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTERS:7:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTER_A|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTER_G|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|REGISTER_IR|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL ADDR : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \KEY~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \proc|muxSel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \proc|regY\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \proc|regX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \proc|REGISTERS:0:BUS_IN_REGS|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|enableReg\ : std_logic_vector(0 TO 10);
SIGNAL \proc|instruction\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~clkctrl_outclk\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (ADDR(4) & ADDR(3) & ADDR(2) & ADDR(1) & ADDR(0));

\rom|altsyncram_component|auto_generated|q_a\(0) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\rom|altsyncram_component|auto_generated|q_a\(1) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\rom|altsyncram_component|auto_generated|q_a\(2) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\rom|altsyncram_component|auto_generated|q_a\(3) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\rom|altsyncram_component|auto_generated|q_a\(4) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\rom|altsyncram_component|auto_generated|q_a\(5) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\rom|altsyncram_component|auto_generated|q_a\(6) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\rom|altsyncram_component|auto_generated|q_a\(7) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\rom|altsyncram_component|auto_generated|q_a\(8) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\KEY[2]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY~combout\(2));

\KEY[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY~combout\(1));

\KEY[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY~combout\(0));
\ALT_INV_KEY[0]~clkctrl_outclk\ <= NOT \KEY[0]~clkctrl_outclk\;
\ALT_INV_KEY[1]~clkctrl_outclk\ <= NOT \KEY[1]~clkctrl_outclk\;
\ALT_INV_KEY[2]~clkctrl_outclk\ <= NOT \KEY[2]~clkctrl_outclk\;

-- Location: LCFF_X37_Y25_N5
\proc|REGISTER_G|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[1]~13_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(1));

-- Location: LCFF_X37_Y25_N7
\proc|REGISTER_G|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[2]~15_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(2));

-- Location: LCFF_X37_Y25_N9
\proc|REGISTER_G|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[3]~17_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(3));

-- Location: LCFF_X37_Y25_N11
\proc|REGISTER_G|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[4]~19_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(4));

-- Location: LCFF_X37_Y25_N13
\proc|REGISTER_G|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[5]~21_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(5));

-- Location: LCCOMB_X37_Y25_N4
\proc|REGISTER_G|Q[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[1]~13_combout\ = ((\proc|R[8][1]~combout\ $ (\proc|ADD_SUB|Add0~1_combout\ $ (!\proc|REGISTER_G|Q[0]~12\)))) # (GND)
-- \proc|REGISTER_G|Q[1]~14\ = CARRY((\proc|R[8][1]~combout\ & ((\proc|ADD_SUB|Add0~1_combout\) # (!\proc|REGISTER_G|Q[0]~12\))) # (!\proc|R[8][1]~combout\ & (\proc|ADD_SUB|Add0~1_combout\ & !\proc|REGISTER_G|Q[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[8][1]~combout\,
	datab => \proc|ADD_SUB|Add0~1_combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[0]~12\,
	combout => \proc|REGISTER_G|Q[1]~13_combout\,
	cout => \proc|REGISTER_G|Q[1]~14\);

-- Location: LCCOMB_X37_Y25_N6
\proc|REGISTER_G|Q[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[2]~15_combout\ = (\proc|R[8][2]~combout\ & ((\proc|ADD_SUB|Add0~2_combout\ & (\proc|REGISTER_G|Q[1]~14\ & VCC)) # (!\proc|ADD_SUB|Add0~2_combout\ & (!\proc|REGISTER_G|Q[1]~14\)))) # (!\proc|R[8][2]~combout\ & 
-- ((\proc|ADD_SUB|Add0~2_combout\ & (!\proc|REGISTER_G|Q[1]~14\)) # (!\proc|ADD_SUB|Add0~2_combout\ & ((\proc|REGISTER_G|Q[1]~14\) # (GND)))))
-- \proc|REGISTER_G|Q[2]~16\ = CARRY((\proc|R[8][2]~combout\ & (!\proc|ADD_SUB|Add0~2_combout\ & !\proc|REGISTER_G|Q[1]~14\)) # (!\proc|R[8][2]~combout\ & ((!\proc|REGISTER_G|Q[1]~14\) # (!\proc|ADD_SUB|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[8][2]~combout\,
	datab => \proc|ADD_SUB|Add0~2_combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[1]~14\,
	combout => \proc|REGISTER_G|Q[2]~15_combout\,
	cout => \proc|REGISTER_G|Q[2]~16\);

-- Location: LCCOMB_X37_Y25_N8
\proc|REGISTER_G|Q[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[3]~17_combout\ = ((\proc|R[8][3]~combout\ $ (\proc|ADD_SUB|Add0~3_combout\ $ (!\proc|REGISTER_G|Q[2]~16\)))) # (GND)
-- \proc|REGISTER_G|Q[3]~18\ = CARRY((\proc|R[8][3]~combout\ & ((\proc|ADD_SUB|Add0~3_combout\) # (!\proc|REGISTER_G|Q[2]~16\))) # (!\proc|R[8][3]~combout\ & (\proc|ADD_SUB|Add0~3_combout\ & !\proc|REGISTER_G|Q[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[8][3]~combout\,
	datab => \proc|ADD_SUB|Add0~3_combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[2]~16\,
	combout => \proc|REGISTER_G|Q[3]~17_combout\,
	cout => \proc|REGISTER_G|Q[3]~18\);

-- Location: LCCOMB_X37_Y25_N10
\proc|REGISTER_G|Q[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[4]~19_combout\ = (\proc|R[8][4]~combout\ & ((\proc|ADD_SUB|Add0~4_combout\ & (\proc|REGISTER_G|Q[3]~18\ & VCC)) # (!\proc|ADD_SUB|Add0~4_combout\ & (!\proc|REGISTER_G|Q[3]~18\)))) # (!\proc|R[8][4]~combout\ & 
-- ((\proc|ADD_SUB|Add0~4_combout\ & (!\proc|REGISTER_G|Q[3]~18\)) # (!\proc|ADD_SUB|Add0~4_combout\ & ((\proc|REGISTER_G|Q[3]~18\) # (GND)))))
-- \proc|REGISTER_G|Q[4]~20\ = CARRY((\proc|R[8][4]~combout\ & (!\proc|ADD_SUB|Add0~4_combout\ & !\proc|REGISTER_G|Q[3]~18\)) # (!\proc|R[8][4]~combout\ & ((!\proc|REGISTER_G|Q[3]~18\) # (!\proc|ADD_SUB|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[8][4]~combout\,
	datab => \proc|ADD_SUB|Add0~4_combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[3]~18\,
	combout => \proc|REGISTER_G|Q[4]~19_combout\,
	cout => \proc|REGISTER_G|Q[4]~20\);

-- Location: LCCOMB_X37_Y25_N12
\proc|REGISTER_G|Q[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[5]~21_combout\ = ((\proc|ADD_SUB|Add0~5_combout\ $ (\proc|R[8][5]~combout\ $ (!\proc|REGISTER_G|Q[4]~20\)))) # (GND)
-- \proc|REGISTER_G|Q[5]~22\ = CARRY((\proc|ADD_SUB|Add0~5_combout\ & ((\proc|R[8][5]~combout\) # (!\proc|REGISTER_G|Q[4]~20\))) # (!\proc|ADD_SUB|Add0~5_combout\ & (\proc|R[8][5]~combout\ & !\proc|REGISTER_G|Q[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|ADD_SUB|Add0~5_combout\,
	datab => \proc|R[8][5]~combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[4]~20\,
	combout => \proc|REGISTER_G|Q[5]~21_combout\,
	cout => \proc|REGISTER_G|Q[5]~22\);

-- Location: LCCOMB_X37_Y23_N22
\proc|mux|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~2_combout\ = (\proc|R[2][0]~combout\ & (\proc|mux|Equal0~0_combout\ & (\proc|mux|Equal5~0_combout\ & \proc|mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[2][0]~combout\,
	datab => \proc|mux|Equal0~0_combout\,
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux|Equal2~0_combout\,
	combout => \proc|mux|Selector8~2_combout\);

-- Location: LCCOMB_X36_Y23_N30
\proc|mux|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal3~0_combout\ = (!\proc|muxSel\(9) & \proc|muxSel\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|muxSel\(9),
	datad => \proc|muxSel\(6),
	combout => \proc|mux|Equal3~0_combout\);

-- Location: LCCOMB_X38_Y24_N14
\proc|mux|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~3_combout\ = (\proc|mux|Equal1~4_combout\ & ((\proc|R[1][7]~combout\) # ((\proc|R[3][7]~combout\ & \proc|mux|Equal3~1_combout\)))) # (!\proc|mux|Equal1~4_combout\ & (((\proc|R[3][7]~combout\ & \proc|mux|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal1~4_combout\,
	datab => \proc|R[1][7]~combout\,
	datac => \proc|R[3][7]~combout\,
	datad => \proc|mux|Equal3~1_combout\,
	combout => \proc|mux|Selector1~3_combout\);

-- Location: LCCOMB_X36_Y25_N28
\proc|mux|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~1_combout\ = (\proc|R[4][8]~combout\ & ((\proc|mux|Equal4~1_combout\) # ((\proc|R[5][8]~combout\ & \proc|mux|Equal5~1_combout\)))) # (!\proc|R[4][8]~combout\ & (\proc|R[5][8]~combout\ & ((\proc|mux|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[4][8]~combout\,
	datab => \proc|R[5][8]~combout\,
	datac => \proc|mux|Equal4~1_combout\,
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector0~1_combout\);

-- Location: LCFF_X38_Y25_N11
\proc|REGISTERS:6:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector8~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(0));

-- Location: LCFF_X38_Y25_N3
\proc|REGISTERS:4:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector8~6_combout\,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(0));

-- Location: LCFF_X38_Y23_N9
\proc|REGISTERS:2:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector8~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(0));

-- Location: LCFF_X38_Y23_N11
\proc|REGISTERS:1:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector8~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(0));

-- Location: LCFF_X39_Y25_N29
\proc|REGISTERS:0:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector8~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(0));

-- Location: LCFF_X37_Y23_N3
\proc|REGISTERS:6:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector7~6_combout\,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(1));

-- Location: LCFF_X36_Y25_N23
\proc|REGISTERS:4:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(1));

-- Location: LCFF_X38_Y23_N25
\proc|REGISTERS:2:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(1));

-- Location: LCFF_X37_Y26_N29
\proc|REGISTERS:3:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(1));

-- Location: LCFF_X36_Y23_N25
\proc|REGISTERS:7:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(1));

-- Location: LCFF_X35_Y24_N21
\proc|REGISTERS:2:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector6~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(2));

-- Location: LCFF_X35_Y24_N19
\proc|REGISTERS:1:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector6~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(2));

-- Location: LCFF_X34_Y24_N15
\proc|REGISTERS:0:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTERS:0:BUS_IN_REGS|Q[2]~feeder_combout\,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(2));

-- Location: LCFF_X37_Y24_N15
\proc|REGISTERS:6:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector5~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(3));

-- Location: LCFF_X39_Y24_N19
\proc|REGISTERS:5:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector5~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(3));

-- Location: LCFF_X37_Y24_N7
\proc|REGISTERS:4:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector5~6_combout\,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(3));

-- Location: LCFF_X35_Y24_N25
\proc|REGISTERS:1:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector5~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(3));

-- Location: LCFF_X36_Y24_N1
\proc|REGISTERS:6:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector4~6_combout\,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(4));

-- Location: LCFF_X36_Y26_N17
\proc|REGISTERS:5:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(4));

-- Location: LCFF_X34_Y24_N23
\proc|REGISTERS:3:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(4));

-- Location: LCFF_X35_Y25_N27
\proc|REGISTERS:7:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(4));

-- Location: LCFF_X37_Y24_N3
\proc|REGISTERS:6:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector3~6_combout\,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(5));

-- Location: LCFF_X39_Y24_N31
\proc|REGISTERS:5:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(5));

-- Location: LCFF_X38_Y23_N5
\proc|REGISTERS:2:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(5));

-- Location: LCFF_X37_Y26_N13
\proc|REGISTERS:3:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(5));

-- Location: LCFF_X38_Y24_N25
\proc|REGISTERS:4:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector2~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(6));

-- Location: LCFF_X39_Y24_N3
\proc|REGISTERS:2:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector2~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(6));

-- Location: LCFF_X39_Y24_N1
\proc|REGISTERS:5:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(7));

-- Location: LCFF_X39_Y24_N7
\proc|REGISTERS:2:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(7));

-- Location: LCFF_X35_Y24_N9
\proc|REGISTERS:1:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(7));

-- Location: LCFF_X34_Y24_N19
\proc|REGISTERS:3:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(7));

-- Location: LCFF_X38_Y25_N13
\proc|REGISTERS:6:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector0~6_combout\,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(8));

-- Location: LCFF_X38_Y25_N25
\proc|REGISTERS:4:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(8));

-- Location: LCFF_X39_Y24_N5
\proc|REGISTERS:5:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(8));

-- Location: LCFF_X39_Y24_N27
\proc|REGISTERS:2:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(8));

-- Location: LCFF_X37_Y26_N3
\proc|REGISTERS:3:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(8));

-- Location: LCCOMB_X33_Y23_N2
\proc|regY[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(4) = LCELL((\proc|R[10][1]~combout\ & (!\proc|R[10][2]~combout\ & \proc|R[10][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][1]~combout\,
	datac => \proc|R[10][2]~combout\,
	datad => \proc|R[10][0]~combout\,
	combout => \proc|regY\(4));

-- Location: LCCOMB_X34_Y23_N8
\proc|regY[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(6) = LCELL((!\proc|R[10][1]~combout\ & (!\proc|R[10][2]~combout\ & \proc|R[10][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][1]~combout\,
	datac => \proc|R[10][2]~combout\,
	datad => \proc|R[10][0]~combout\,
	combout => \proc|regY\(6));

-- Location: LCCOMB_X34_Y23_N4
\proc|regX[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(1) = LCELL((!\proc|R[10][3]~combout\ & (\proc|R[10][4]~combout\ & \proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(1));

-- Location: LCCOMB_X35_Y23_N24
\proc|regX[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(2) = LCELL((\proc|R[10][3]~combout\ & (!\proc|R[10][4]~combout\ & \proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(2));

-- Location: LCCOMB_X36_Y25_N14
\proc|ADD_SUB|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~5_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector3~6_combout\,
	combout => \proc|ADD_SUB|Add0~5_combout\);

-- Location: LCCOMB_X37_Y25_N24
\proc|ADD_SUB|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~7_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector1~6_combout\,
	combout => \proc|ADD_SUB|Add0~7_combout\);

-- Location: LCFF_X39_Y25_N31
\proc|REGISTER_A|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_A|Q[0]~feeder_combout\,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(0));

-- Location: LCFF_X36_Y25_N21
\proc|REGISTER_A|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(1));

-- Location: LCFF_X35_Y25_N15
\proc|REGISTER_A|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector6~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(2));

-- Location: LCFF_X36_Y25_N11
\proc|REGISTER_A|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector5~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(3));

-- Location: LCFF_X36_Y25_N13
\proc|REGISTER_A|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(4));

-- Location: LCFF_X39_Y25_N21
\proc|REGISTER_A|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector2~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(6));

-- Location: LCFF_X39_Y25_N9
\proc|REGISTER_A|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(8));

-- Location: LCCOMB_X38_Y25_N10
\proc|R[6][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][0]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:6:BUS_IN_REGS|Q\(0),
	combout => \proc|R[6][0]~combout\);

-- Location: LCCOMB_X39_Y25_N6
\proc|R[4][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][0]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:4:BUS_IN_REGS|Q\(0),
	combout => \proc|R[4][0]~combout\);

-- Location: LCCOMB_X38_Y23_N8
\proc|R[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][0]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(0),
	combout => \proc|R[2][0]~combout\);

-- Location: LCCOMB_X38_Y23_N10
\proc|R[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][0]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(0),
	combout => \proc|R[1][0]~combout\);

-- Location: LCCOMB_X39_Y25_N28
\proc|R[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][0]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(0),
	combout => \proc|R[0][0]~combout\);

-- Location: LCCOMB_X38_Y23_N14
\proc|R[6][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][1]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:6:BUS_IN_REGS|Q\(1),
	combout => \proc|R[6][1]~combout\);

-- Location: LCCOMB_X35_Y25_N8
\proc|R[4][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][1]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:4:BUS_IN_REGS|Q\(1),
	combout => \proc|R[4][1]~combout\);

-- Location: LCCOMB_X38_Y23_N24
\proc|R[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][1]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(1),
	combout => \proc|R[2][1]~combout\);

-- Location: LCCOMB_X37_Y26_N28
\proc|R[3][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][1]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:3:BUS_IN_REGS|Q\(1),
	combout => \proc|R[3][1]~combout\);

-- Location: LCCOMB_X37_Y23_N10
\proc|R[9][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][1]~combout\ = LCELL(\proc|REGISTER_G|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_G|Q\(1),
	combout => \proc|R[9][1]~combout\);

-- Location: LCCOMB_X36_Y23_N24
\proc|R[7][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][1]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:7:BUS_IN_REGS|Q\(1),
	combout => \proc|R[7][1]~combout\);

-- Location: LCCOMB_X35_Y24_N20
\proc|R[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][2]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(2),
	combout => \proc|R[2][2]~combout\);

-- Location: LCCOMB_X35_Y24_N18
\proc|R[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][2]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(2),
	combout => \proc|R[1][2]~combout\);

-- Location: LCCOMB_X36_Y24_N16
\proc|R[9][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][2]~combout\ = LCELL(\proc|REGISTER_G|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_G|Q\(2),
	combout => \proc|R[9][2]~combout\);

-- Location: LCCOMB_X35_Y24_N4
\proc|R[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][2]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:0:BUS_IN_REGS|Q\(2),
	combout => \proc|R[0][2]~combout\);

-- Location: LCCOMB_X37_Y24_N14
\proc|R[6][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][3]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:6:BUS_IN_REGS|Q\(3),
	combout => \proc|R[6][3]~combout\);

-- Location: LCCOMB_X39_Y24_N18
\proc|R[5][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][3]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(3),
	combout => \proc|R[5][3]~combout\);

-- Location: LCCOMB_X37_Y24_N18
\proc|R[4][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][3]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:4:BUS_IN_REGS|Q\(3),
	combout => \proc|R[4][3]~combout\);

-- Location: LCCOMB_X38_Y23_N20
\proc|R[9][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][3]~combout\ = LCELL(\proc|REGISTER_G|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_G|Q\(3),
	combout => \proc|R[9][3]~combout\);

-- Location: LCCOMB_X35_Y24_N24
\proc|R[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][3]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(3),
	combout => \proc|R[1][3]~combout\);

-- Location: LCCOMB_X36_Y24_N20
\proc|R[6][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][4]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:6:BUS_IN_REGS|Q\(4),
	combout => \proc|R[6][4]~combout\);

-- Location: LCCOMB_X36_Y26_N16
\proc|R[5][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][4]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(4),
	combout => \proc|R[5][4]~combout\);

-- Location: LCCOMB_X34_Y24_N22
\proc|R[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][4]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:3:BUS_IN_REGS|Q\(4),
	combout => \proc|R[3][4]~combout\);

-- Location: LCCOMB_X36_Y25_N18
\proc|R[9][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][4]~combout\ = LCELL(\proc|REGISTER_G|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_G|Q\(4),
	combout => \proc|R[9][4]~combout\);

-- Location: LCCOMB_X35_Y25_N26
\proc|R[7][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][4]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:7:BUS_IN_REGS|Q\(4),
	combout => \proc|R[7][4]~combout\);

-- Location: LCCOMB_X38_Y24_N4
\proc|R[6][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][5]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:6:BUS_IN_REGS|Q\(5),
	combout => \proc|R[6][5]~combout\);

-- Location: LCCOMB_X39_Y24_N30
\proc|R[5][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][5]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(5),
	combout => \proc|R[5][5]~combout\);

-- Location: LCCOMB_X38_Y23_N4
\proc|R[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][5]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(5),
	combout => \proc|R[2][5]~combout\);

-- Location: LCCOMB_X37_Y26_N12
\proc|R[3][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][5]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:3:BUS_IN_REGS|Q\(5),
	combout => \proc|R[3][5]~combout\);

-- Location: LCCOMB_X37_Y26_N4
\proc|R[9][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][5]~combout\ = LCELL(\proc|REGISTER_G|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_G|Q\(5),
	combout => \proc|R[9][5]~combout\);

-- Location: LCCOMB_X38_Y24_N24
\proc|R[4][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][6]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:4:BUS_IN_REGS|Q\(6),
	combout => \proc|R[4][6]~combout\);

-- Location: LCCOMB_X39_Y24_N2
\proc|R[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][6]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(6),
	combout => \proc|R[2][6]~combout\);

-- Location: LCCOMB_X39_Y24_N0
\proc|R[5][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][7]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(7),
	combout => \proc|R[5][7]~combout\);

-- Location: LCCOMB_X39_Y24_N6
\proc|R[2][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][7]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(7),
	combout => \proc|R[2][7]~combout\);

-- Location: LCCOMB_X35_Y24_N8
\proc|R[1][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][7]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(7),
	combout => \proc|R[1][7]~combout\);

-- Location: LCCOMB_X34_Y24_N18
\proc|R[3][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][7]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:3:BUS_IN_REGS|Q\(7),
	combout => \proc|R[3][7]~combout\);

-- Location: LCCOMB_X39_Y25_N2
\proc|R[6][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][8]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:6:BUS_IN_REGS|Q\(8),
	combout => \proc|R[6][8]~combout\);

-- Location: LCCOMB_X35_Y25_N30
\proc|R[4][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][8]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:4:BUS_IN_REGS|Q\(8),
	combout => \proc|R[4][8]~combout\);

-- Location: LCCOMB_X39_Y24_N4
\proc|R[5][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][8]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(8),
	combout => \proc|R[5][8]~combout\);

-- Location: LCCOMB_X39_Y24_N26
\proc|R[2][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][8]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(8),
	combout => \proc|R[2][8]~combout\);

-- Location: LCCOMB_X37_Y26_N2
\proc|R[3][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][8]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:3:BUS_IN_REGS|Q\(8),
	combout => \proc|R[3][8]~combout\);

-- Location: LCCOMB_X38_Y25_N26
\proc|R[8][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][0]~combout\ = LCELL(\proc|REGISTER_A|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_A|Q\(0),
	combout => \proc|R[8][0]~combout\);

-- Location: LCCOMB_X36_Y25_N10
\proc|R[8][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][1]~combout\ = LCELL(\proc|REGISTER_A|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|REGISTER_A|Q\(1),
	combout => \proc|R[8][1]~combout\);

-- Location: LCCOMB_X35_Y25_N14
\proc|R[8][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][2]~combout\ = LCELL(\proc|REGISTER_A|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_A|Q\(2),
	combout => \proc|R[8][2]~combout\);

-- Location: LCCOMB_X36_Y25_N20
\proc|R[8][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][3]~combout\ = LCELL(\proc|REGISTER_A|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_A|Q\(3),
	combout => \proc|R[8][3]~combout\);

-- Location: LCCOMB_X36_Y25_N12
\proc|R[8][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][4]~combout\ = LCELL(\proc|REGISTER_A|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_A|Q\(4),
	combout => \proc|R[8][4]~combout\);

-- Location: LCCOMB_X39_Y25_N20
\proc|R[8][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][6]~combout\ = LCELL(\proc|REGISTER_A|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_A|Q\(6),
	combout => \proc|R[8][6]~combout\);

-- Location: LCCOMB_X39_Y25_N8
\proc|R[8][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][8]~combout\ = LCELL(\proc|REGISTER_A|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_A|Q\(8),
	combout => \proc|R[8][8]~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: CLKCTRL_G3
\KEY[2]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[2]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y25_N30
\proc|REGISTER_A|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_A|Q[0]~feeder_combout\ = \proc|mux|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector8~6_combout\,
	combout => \proc|REGISTER_A|Q[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y24_N14
\proc|REGISTERS:0:BUS_IN_REGS|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTERS:0:BUS_IN_REGS|Q[2]~feeder_combout\ = \proc|mux|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector6~6_combout\,
	combout => \proc|REGISTERS:0:BUS_IN_REGS|Q[2]~feeder_combout\);

-- Location: LCCOMB_X38_Y25_N30
\proc|ADD_SUB|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~0_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector8~6_combout\,
	combout => \proc|ADD_SUB|Add0~0_combout\);

-- Location: LCCOMB_X37_Y25_N0
\proc|REGISTER_G|Q[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[0]~10_cout\ = CARRY(\proc|addSubMode~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|addSubMode~combout\,
	datad => VCC,
	cout => \proc|REGISTER_G|Q[0]~10_cout\);

-- Location: LCCOMB_X37_Y25_N2
\proc|REGISTER_G|Q[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[0]~11_combout\ = (\proc|R[8][0]~combout\ & ((\proc|ADD_SUB|Add0~0_combout\ & (\proc|REGISTER_G|Q[0]~10_cout\ & VCC)) # (!\proc|ADD_SUB|Add0~0_combout\ & (!\proc|REGISTER_G|Q[0]~10_cout\)))) # (!\proc|R[8][0]~combout\ & 
-- ((\proc|ADD_SUB|Add0~0_combout\ & (!\proc|REGISTER_G|Q[0]~10_cout\)) # (!\proc|ADD_SUB|Add0~0_combout\ & ((\proc|REGISTER_G|Q[0]~10_cout\) # (GND)))))
-- \proc|REGISTER_G|Q[0]~12\ = CARRY((\proc|R[8][0]~combout\ & (!\proc|ADD_SUB|Add0~0_combout\ & !\proc|REGISTER_G|Q[0]~10_cout\)) # (!\proc|R[8][0]~combout\ & ((!\proc|REGISTER_G|Q[0]~10_cout\) # (!\proc|ADD_SUB|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[8][0]~combout\,
	datab => \proc|ADD_SUB|Add0~0_combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[0]~10_cout\,
	combout => \proc|REGISTER_G|Q[0]~11_combout\,
	cout => \proc|REGISTER_G|Q[0]~12\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\KEY[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y24_N6
\ADDR[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDR[0]~5_combout\ = ADDR(0) $ (VCC)
-- \ADDR[0]~6\ = CARRY(ADDR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADDR(0),
	datad => VCC,
	combout => \ADDR[0]~5_combout\,
	cout => \ADDR[0]~6\);

-- Location: LCFF_X42_Y24_N7
\ADDR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[1]~clkctrl_outclk\,
	datain => \ADDR[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ADDR(0));

-- Location: LCCOMB_X42_Y24_N8
\ADDR[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDR[1]~7_combout\ = (ADDR(1) & (!\ADDR[0]~6\)) # (!ADDR(1) & ((\ADDR[0]~6\) # (GND)))
-- \ADDR[1]~8\ = CARRY((!\ADDR[0]~6\) # (!ADDR(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADDR(1),
	datad => VCC,
	cin => \ADDR[0]~6\,
	combout => \ADDR[1]~7_combout\,
	cout => \ADDR[1]~8\);

-- Location: LCFF_X42_Y24_N9
\ADDR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[1]~clkctrl_outclk\,
	datain => \ADDR[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ADDR(1));

-- Location: LCCOMB_X42_Y24_N10
\ADDR[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDR[2]~9_combout\ = (ADDR(2) & (\ADDR[1]~8\ $ (GND))) # (!ADDR(2) & (!\ADDR[1]~8\ & VCC))
-- \ADDR[2]~10\ = CARRY((ADDR(2) & !\ADDR[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADDR(2),
	datad => VCC,
	cin => \ADDR[1]~8\,
	combout => \ADDR[2]~9_combout\,
	cout => \ADDR[2]~10\);

-- Location: LCFF_X42_Y24_N11
\ADDR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[1]~clkctrl_outclk\,
	datain => \ADDR[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ADDR(2));

-- Location: LCCOMB_X42_Y24_N12
\ADDR[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDR[3]~11_combout\ = (ADDR(3) & (!\ADDR[2]~10\)) # (!ADDR(3) & ((\ADDR[2]~10\) # (GND)))
-- \ADDR[3]~12\ = CARRY((!\ADDR[2]~10\) # (!ADDR(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADDR(3),
	datad => VCC,
	cin => \ADDR[2]~10\,
	combout => \ADDR[3]~11_combout\,
	cout => \ADDR[3]~12\);

-- Location: LCFF_X42_Y24_N13
\ADDR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[1]~clkctrl_outclk\,
	datain => \ADDR[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ADDR(3));

-- Location: LCCOMB_X42_Y24_N14
\ADDR[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDR[4]~13_combout\ = \ADDR[3]~12\ $ (!ADDR(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ADDR(4),
	cin => \ADDR[3]~12\,
	combout => \ADDR[4]~13_combout\);

-- Location: LCFF_X42_Y24_N15
\ADDR[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[1]~clkctrl_outclk\,
	datain => \ADDR[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ADDR(4));

-- Location: M4K_X41_Y24
\rom|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"1789C000000000000000000000000000000000000000002BB156EA50863D65097120A640",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom:rom|altsyncram:altsyncram_component|altsyncram_ve71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 9,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \ALT_INV_KEY[1]~clkctrl_outclk\,
	portaaddr => \rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N20
\proc|enableReg[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(10) = LCELL(!\proc|Tstep_Q.T0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|Tstep_Q.T0~regout\,
	combout => \proc|enableReg\(10));

-- Location: LCFF_X34_Y23_N7
\proc|REGISTER_IR|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(8));

-- Location: LCCOMB_X34_Y23_N6
\proc|R[10][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][8]~combout\ = LCELL(\proc|REGISTER_IR|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(8),
	combout => \proc|R[10][8]~combout\);

-- Location: LCCOMB_X34_Y23_N2
\proc|instruction[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|instruction\(2) = LCELL(\proc|R[10][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|R[10][8]~combout\,
	combout => \proc|instruction\(2));

-- Location: LCFF_X34_Y23_N29
\proc|REGISTER_IR|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(7));

-- Location: LCCOMB_X34_Y23_N28
\proc|R[10][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][7]~combout\ = LCELL(\proc|REGISTER_IR|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(7),
	combout => \proc|R[10][7]~combout\);

-- Location: LCCOMB_X34_Y23_N20
\proc|instruction[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|instruction\(1) = LCELL(\proc|R[10][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|R[10][7]~combout\,
	combout => \proc|instruction\(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
\KEY[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~clkctrl_outclk\);

-- Location: LCFF_X34_Y23_N11
\proc|Tstep_Q.T3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|Tstep_Q.T2~regout\,
	aclr => \ALT_INV_KEY[0]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|Tstep_Q.T3~regout\);

-- Location: LCCOMB_X36_Y23_N2
\proc|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|Selector18~0_combout\ = (\proc|Tstep_Q.T3~regout\) # ((\proc|Tstep_Q.T1~regout\ & (!\proc|instruction\(2) & !\proc|instruction\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Tstep_Q.T1~regout\,
	datab => \proc|instruction\(2),
	datac => \proc|instruction\(1),
	datad => \proc|Tstep_Q.T3~regout\,
	combout => \proc|Selector18~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCCOMB_X33_Y23_N30
\proc|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|Selector0~0_combout\ = (!\proc|Selector18~0_combout\ & ((\proc|Tstep_Q.T0~regout\) # (\SW~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector18~0_combout\,
	datac => \proc|Tstep_Q.T0~regout\,
	datad => \SW~combout\(9),
	combout => \proc|Selector0~0_combout\);

-- Location: LCFF_X33_Y23_N31
\proc|Tstep_Q.T0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|Selector0~0_combout\,
	aclr => \ALT_INV_KEY[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|Tstep_Q.T0~regout\);

-- Location: LCCOMB_X33_Y23_N20
\proc|Tstep_D.T1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|Tstep_D.T1~0_combout\ = (!\proc|Tstep_Q.T0~regout\ & \SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Tstep_Q.T0~regout\,
	datad => \SW~combout\(9),
	combout => \proc|Tstep_D.T1~0_combout\);

-- Location: LCFF_X34_Y23_N19
\proc|Tstep_Q.T1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|Tstep_D.T1~0_combout\,
	aclr => \ALT_INV_KEY[0]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|Tstep_Q.T1~regout\);

-- Location: LCCOMB_X33_Y23_N6
\proc|Tstep_D.T2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|Tstep_D.T2~0_combout\ = (\proc|Tstep_Q.T1~regout\ & (!\proc|Tstep_Q.T3~regout\ & ((\proc|instruction\(1)) # (\proc|instruction\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|instruction\(1),
	datab => \proc|Tstep_Q.T1~regout\,
	datac => \proc|instruction\(2),
	datad => \proc|Tstep_Q.T3~regout\,
	combout => \proc|Tstep_D.T2~0_combout\);

-- Location: LCFF_X34_Y23_N17
\proc|Tstep_Q.T2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|Tstep_D.T2~0_combout\,
	aclr => \ALT_INV_KEY[0]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|Tstep_Q.T2~regout\);

-- Location: LCCOMB_X35_Y25_N4
\proc|enableReg[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(9) = LCELL(\proc|Tstep_Q.T2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|Tstep_Q.T2~regout\,
	combout => \proc|enableReg\(9));

-- Location: LCFF_X37_Y25_N3
\proc|REGISTER_G|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[0]~11_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(0));

-- Location: LCCOMB_X39_Y25_N24
\proc|R[9][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][0]~combout\ = LCELL(\proc|REGISTER_G|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_G|Q\(0),
	combout => \proc|R[9][0]~combout\);

-- Location: LCFF_X33_Y23_N19
\proc|REGISTER_IR|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(1));

-- Location: LCCOMB_X33_Y23_N18
\proc|R[10][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][1]~combout\ = LCELL(\proc|REGISTER_IR|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(1),
	combout => \proc|R[10][1]~combout\);

-- Location: LCFF_X33_Y23_N5
\proc|REGISTER_IR|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(2));

-- Location: LCCOMB_X33_Y23_N4
\proc|R[10][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][2]~combout\ = LCELL(\proc|REGISTER_IR|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(2),
	combout => \proc|R[10][2]~combout\);

-- Location: LCFF_X33_Y23_N13
\proc|REGISTER_IR|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(0));

-- Location: LCCOMB_X33_Y23_N12
\proc|R[10][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][0]~combout\ = LCELL(\proc|REGISTER_IR|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(0),
	combout => \proc|R[10][0]~combout\);

-- Location: LCCOMB_X33_Y23_N26
\proc|regY[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(0) = LCELL((\proc|R[10][1]~combout\ & (\proc|R[10][2]~combout\ & \proc|R[10][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][1]~combout\,
	datac => \proc|R[10][2]~combout\,
	datad => \proc|R[10][0]~combout\,
	combout => \proc|regY\(0));

-- Location: LCFF_X35_Y23_N15
\proc|REGISTER_IR|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(3));

-- Location: LCCOMB_X35_Y23_N14
\proc|R[10][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][3]~combout\ = LCELL(\proc|REGISTER_IR|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(3),
	combout => \proc|R[10][3]~combout\);

-- Location: LCFF_X35_Y23_N17
\proc|REGISTER_IR|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(4));

-- Location: LCCOMB_X35_Y23_N16
\proc|R[10][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][4]~combout\ = LCELL(\proc|REGISTER_IR|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(4),
	combout => \proc|R[10][4]~combout\);

-- Location: LCFF_X35_Y23_N23
\proc|REGISTER_IR|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(5));

-- Location: LCCOMB_X35_Y23_N22
\proc|R[10][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][5]~combout\ = LCELL(\proc|REGISTER_IR|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(5),
	combout => \proc|R[10][5]~combout\);

-- Location: LCCOMB_X35_Y23_N26
\proc|regX[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(0) = LCELL((\proc|R[10][3]~combout\ & (\proc|R[10][4]~combout\ & \proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(0));

-- Location: LCFF_X34_Y23_N13
\proc|REGISTER_IR|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \rom|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \proc|enableReg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_IR|Q\(6));

-- Location: LCCOMB_X34_Y23_N12
\proc|R[10][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[10][6]~combout\ = LCELL(\proc|REGISTER_IR|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_IR|Q\(6),
	combout => \proc|R[10][6]~combout\);

-- Location: LCCOMB_X34_Y23_N24
\proc|instruction[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|instruction\(0) = LCELL(\proc|R[10][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|R[10][6]~combout\,
	combout => \proc|instruction\(0));

-- Location: LCCOMB_X34_Y23_N0
\proc|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|Selector10~0_combout\ = (!\proc|instruction\(1) & (\proc|Tstep_Q.T1~regout\ & (!\proc|instruction\(0) & !\proc|instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|instruction\(1),
	datab => \proc|Tstep_Q.T1~regout\,
	datac => \proc|instruction\(0),
	datad => \proc|instruction\(2),
	combout => \proc|Selector10~0_combout\);

-- Location: LCCOMB_X34_Y23_N30
\proc|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|Selector11~0_combout\ = (\proc|Tstep_Q.T2~regout\) # (\proc|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|Tstep_Q.T2~regout\,
	datad => \proc|Selector10~0_combout\,
	combout => \proc|Selector11~0_combout\);

-- Location: LCCOMB_X34_Y23_N14
\proc|muxSel[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(2) = LCELL((\proc|enableReg\(8) & ((\proc|regX\(0)) # ((\proc|regY\(0) & \proc|Selector11~0_combout\)))) # (!\proc|enableReg\(8) & (\proc|regY\(0) & ((\proc|Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|enableReg\(8),
	datab => \proc|regY\(0),
	datac => \proc|regX\(0),
	datad => \proc|Selector11~0_combout\,
	combout => \proc|muxSel\(2));

-- Location: LCCOMB_X35_Y23_N6
\proc|muxSel[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(0) = LCELL((!\proc|instruction\(2) & (\proc|instruction\(0) & (!\proc|instruction\(1) & \proc|Tstep_Q.T1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|instruction\(2),
	datab => \proc|instruction\(0),
	datac => \proc|instruction\(1),
	datad => \proc|Tstep_Q.T1~regout\,
	combout => \proc|muxSel\(0));

-- Location: LCCOMB_X35_Y23_N28
\proc|regX[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(6) = LCELL((\proc|R[10][3]~combout\ & (!\proc|R[10][4]~combout\ & !\proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(6));

-- Location: LCCOMB_X34_Y23_N10
\proc|enableReg[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(8) = LCELL((\proc|instruction\(1) & (\proc|Tstep_Q.T1~regout\ & !\proc|instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|instruction\(1),
	datab => \proc|Tstep_Q.T1~regout\,
	datad => \proc|instruction\(2),
	combout => \proc|enableReg\(8));

-- Location: LCCOMB_X35_Y23_N20
\proc|muxSel[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(8) = LCELL((\proc|regY\(6) & ((\proc|Selector11~0_combout\) # ((\proc|regX\(6) & \proc|enableReg\(8))))) # (!\proc|regY\(6) & (\proc|regX\(6) & ((\proc|enableReg\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regY\(6),
	datab => \proc|regX\(6),
	datac => \proc|Selector11~0_combout\,
	datad => \proc|enableReg\(8),
	combout => \proc|muxSel\(8));

-- Location: LCCOMB_X34_Y23_N22
\proc|regY[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(2) = LCELL((!\proc|R[10][1]~combout\ & (\proc|R[10][2]~combout\ & \proc|R[10][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][1]~combout\,
	datac => \proc|R[10][2]~combout\,
	datad => \proc|R[10][0]~combout\,
	combout => \proc|regY\(2));

-- Location: LCCOMB_X35_Y23_N12
\proc|muxSel[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(4) = LCELL((\proc|regX\(2) & ((\proc|enableReg\(8)) # ((\proc|regY\(2) & \proc|Selector11~0_combout\)))) # (!\proc|regX\(2) & (\proc|regY\(2) & (\proc|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(2),
	datab => \proc|regY\(2),
	datac => \proc|Selector11~0_combout\,
	datad => \proc|enableReg\(8),
	combout => \proc|muxSel\(4));

-- Location: LCCOMB_X36_Y23_N4
\proc|mux|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal8~0_combout\ = (\proc|muxSel\(1) & (!\proc|muxSel\(0) & (!\proc|muxSel\(8) & !\proc|muxSel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(1),
	datab => \proc|muxSel\(0),
	datac => \proc|muxSel\(8),
	datad => \proc|muxSel\(4),
	combout => \proc|mux|Equal8~0_combout\);

-- Location: LCCOMB_X34_Y23_N18
\proc|regY[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(7) = LCELL((!\proc|R[10][0]~combout\ & (!\proc|R[10][2]~combout\ & !\proc|R[10][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[10][0]~combout\,
	datab => \proc|R[10][2]~combout\,
	datad => \proc|R[10][1]~combout\,
	combout => \proc|regY\(7));

-- Location: LCCOMB_X35_Y23_N4
\proc|muxSel[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(9) = LCELL((\proc|regX\(7) & ((\proc|enableReg\(8)) # ((\proc|regY\(7) & \proc|Selector11~0_combout\)))) # (!\proc|regX\(7) & (\proc|regY\(7) & (\proc|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(7),
	datab => \proc|regY\(7),
	datac => \proc|Selector11~0_combout\,
	datad => \proc|enableReg\(8),
	combout => \proc|muxSel\(9));

-- Location: LCCOMB_X34_Y23_N16
\proc|regY[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(5) = LCELL((!\proc|R[10][0]~combout\ & (!\proc|R[10][2]~combout\ & \proc|R[10][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[10][0]~combout\,
	datab => \proc|R[10][2]~combout\,
	datad => \proc|R[10][1]~combout\,
	combout => \proc|regY\(5));

-- Location: LCCOMB_X35_Y23_N30
\proc|muxSel[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(7) = LCELL((\proc|regX\(5) & ((\proc|enableReg\(8)) # ((\proc|regY\(5) & \proc|Selector11~0_combout\)))) # (!\proc|regX\(5) & (\proc|regY\(5) & (\proc|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(5),
	datab => \proc|regY\(5),
	datac => \proc|Selector11~0_combout\,
	datad => \proc|enableReg\(8),
	combout => \proc|muxSel\(7));

-- Location: LCCOMB_X33_Y23_N28
\proc|regY[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(3) = LCELL((!\proc|R[10][0]~combout\ & (\proc|R[10][2]~combout\ & !\proc|R[10][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[10][0]~combout\,
	datac => \proc|R[10][2]~combout\,
	datad => \proc|R[10][1]~combout\,
	combout => \proc|regY\(3));

-- Location: LCCOMB_X33_Y23_N14
\proc|muxSel[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(5) = LCELL((\proc|regX\(3) & ((\proc|enableReg\(8)) # ((\proc|regY\(3) & \proc|Selector11~0_combout\)))) # (!\proc|regX\(3) & (\proc|regY\(3) & ((\proc|Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(3),
	datab => \proc|regY\(3),
	datac => \proc|enableReg\(8),
	datad => \proc|Selector11~0_combout\,
	combout => \proc|muxSel\(5));

-- Location: LCCOMB_X36_Y23_N12
\proc|mux|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal1~0_combout\ = (!\proc|muxSel\(6) & (!\proc|muxSel\(9) & (!\proc|muxSel\(7) & !\proc|muxSel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(6),
	datab => \proc|muxSel\(9),
	datac => \proc|muxSel\(7),
	datad => \proc|muxSel\(5),
	combout => \proc|mux|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y23_N4
\proc|mux|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal8~1_combout\ = (!\proc|muxSel\(3) & (!\proc|muxSel\(2) & (\proc|mux|Equal8~0_combout\ & \proc|mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(3),
	datab => \proc|muxSel\(2),
	datac => \proc|mux|Equal8~0_combout\,
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Equal8~1_combout\);

-- Location: LCCOMB_X35_Y23_N18
\proc|regX[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(4) = LCELL((\proc|R[10][3]~combout\ & (\proc|R[10][4]~combout\ & !\proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(4));

-- Location: LCCOMB_X34_Y24_N4
\proc|enableReg[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(3) = LCELL((\proc|regX\(4) & \proc|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|regX\(4),
	datac => \proc|Selector18~0_combout\,
	combout => \proc|enableReg\(3));

-- Location: LCFF_X37_Y26_N27
\proc|REGISTERS:3:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector8~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(0));

-- Location: LCCOMB_X37_Y26_N26
\proc|R[3][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][0]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:3:BUS_IN_REGS|Q\(0),
	combout => \proc|R[3][0]~combout\);

-- Location: LCCOMB_X33_Y23_N8
\proc|regY[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regY\(1) = LCELL((!\proc|R[10][0]~combout\ & (\proc|R[10][2]~combout\ & \proc|R[10][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[10][0]~combout\,
	datac => \proc|R[10][2]~combout\,
	datad => \proc|R[10][1]~combout\,
	combout => \proc|regY\(1));

-- Location: LCCOMB_X33_Y23_N16
\proc|muxSel[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(3) = LCELL((\proc|regX\(1) & ((\proc|enableReg\(8)) # ((\proc|regY\(1) & \proc|Selector11~0_combout\)))) # (!\proc|regX\(1) & (\proc|regY\(1) & ((\proc|Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(1),
	datab => \proc|regY\(1),
	datac => \proc|enableReg\(8),
	datad => \proc|Selector11~0_combout\,
	combout => \proc|muxSel\(3));

-- Location: LCCOMB_X33_Y23_N0
\proc|mux|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal5~0_combout\ = (!\proc|muxSel\(1) & (!\proc|muxSel\(2) & (!\proc|muxSel\(3) & !\proc|muxSel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(1),
	datab => \proc|muxSel\(2),
	datac => \proc|muxSel\(3),
	datad => \proc|muxSel\(5),
	combout => \proc|mux|Equal5~0_combout\);

-- Location: LCCOMB_X36_Y23_N16
\proc|mux|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal0~0_combout\ = (!\proc|muxSel\(0) & (!\proc|muxSel\(8) & !\proc|muxSel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|muxSel\(0),
	datac => \proc|muxSel\(8),
	datad => \proc|muxSel\(4),
	combout => \proc|mux|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y23_N30
\proc|mux|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal3~1_combout\ = (\proc|mux|Equal3~0_combout\ & (!\proc|muxSel\(7) & (\proc|mux|Equal5~0_combout\ & \proc|mux|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|muxSel\(7),
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux|Equal0~0_combout\,
	combout => \proc|mux|Equal3~1_combout\);

-- Location: LCCOMB_X37_Y23_N14
\proc|mux|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal1~1_combout\ = (!\proc|muxSel\(1) & (!\proc|muxSel\(2) & !\proc|muxSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(1),
	datab => \proc|muxSel\(2),
	datad => \proc|muxSel\(3),
	combout => \proc|mux|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y23_N20
\proc|mux|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal1~3_combout\ = (\proc|muxSel\(8) & !\proc|muxSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|muxSel\(8),
	datad => \proc|muxSel\(0),
	combout => \proc|mux|Equal1~3_combout\);

-- Location: LCCOMB_X37_Y23_N28
\proc|mux|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal1~4_combout\ = (!\proc|muxSel\(4) & (\proc|mux|Equal1~1_combout\ & (\proc|mux|Equal1~3_combout\ & \proc|mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(4),
	datab => \proc|mux|Equal1~1_combout\,
	datac => \proc|mux|Equal1~3_combout\,
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Equal1~4_combout\);

-- Location: LCCOMB_X38_Y23_N0
\proc|mux|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~3_combout\ = (\proc|R[1][0]~combout\ & ((\proc|mux|Equal1~4_combout\) # ((\proc|R[3][0]~combout\ & \proc|mux|Equal3~1_combout\)))) # (!\proc|R[1][0]~combout\ & (\proc|R[3][0]~combout\ & (\proc|mux|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[1][0]~combout\,
	datab => \proc|R[3][0]~combout\,
	datac => \proc|mux|Equal3~1_combout\,
	datad => \proc|mux|Equal1~4_combout\,
	combout => \proc|mux|Selector8~3_combout\);

-- Location: LCCOMB_X38_Y25_N20
\proc|mux|Selector8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~4_combout\ = (\proc|mux|Selector8~2_combout\) # ((\proc|mux|Selector8~3_combout\) # ((\proc|R[9][0]~combout\ & \proc|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector8~2_combout\,
	datab => \proc|R[9][0]~combout\,
	datac => \proc|mux|Equal8~1_combout\,
	datad => \proc|mux|Selector8~3_combout\,
	combout => \proc|mux|Selector8~4_combout\);

-- Location: LCCOMB_X35_Y24_N10
\proc|enableReg[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(5) = LCELL((\proc|regX\(2) & \proc|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(2),
	datac => \proc|Selector18~0_combout\,
	combout => \proc|enableReg\(5));

-- Location: LCFF_X39_Y24_N25
\proc|REGISTERS:5:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector8~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(0));

-- Location: LCCOMB_X39_Y24_N24
\proc|R[5][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][0]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(0),
	combout => \proc|R[5][0]~combout\);

-- Location: LCCOMB_X36_Y25_N24
\proc|mux|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal6~0_combout\ = (!\proc|muxSel\(0) & !\proc|muxSel\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|muxSel\(0),
	datad => \proc|muxSel\(8),
	combout => \proc|mux|Equal6~0_combout\);

-- Location: LCCOMB_X35_Y23_N2
\proc|muxSel[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(6) = LCELL((\proc|regY\(4) & ((\proc|Selector11~0_combout\) # ((\proc|regX\(4) & \proc|enableReg\(8))))) # (!\proc|regY\(4) & (\proc|regX\(4) & ((\proc|enableReg\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regY\(4),
	datab => \proc|regX\(4),
	datac => \proc|Selector11~0_combout\,
	datad => \proc|enableReg\(8),
	combout => \proc|muxSel\(6));

-- Location: LCCOMB_X36_Y25_N2
\proc|mux|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal1~2_combout\ = (!\proc|muxSel\(7) & (!\proc|muxSel\(6) & !\proc|muxSel\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|muxSel\(7),
	datac => \proc|muxSel\(6),
	datad => \proc|muxSel\(9),
	combout => \proc|mux|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y25_N30
\proc|mux|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal5~1_combout\ = (\proc|muxSel\(4) & (\proc|mux|Equal5~0_combout\ & (\proc|mux|Equal6~0_combout\ & \proc|mux|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(4),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|mux|Equal6~0_combout\,
	datad => \proc|mux|Equal1~2_combout\,
	combout => \proc|mux|Equal5~1_combout\);

-- Location: LCCOMB_X33_Y23_N10
\proc|muxSel[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|muxSel\(1) = LCELL(\proc|Tstep_Q.T3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|Tstep_Q.T3~regout\,
	combout => \proc|muxSel\(1));

-- Location: LCCOMB_X33_Y23_N22
\proc|mux|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal4~0_combout\ = (!\proc|muxSel\(3) & (!\proc|muxSel\(1) & (\proc|muxSel\(5) & !\proc|muxSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(3),
	datab => \proc|muxSel\(1),
	datac => \proc|muxSel\(5),
	datad => \proc|muxSel\(2),
	combout => \proc|mux|Equal4~0_combout\);

-- Location: LCCOMB_X36_Y25_N16
\proc|mux|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal4~1_combout\ = (!\proc|muxSel\(4) & (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal6~0_combout\ & \proc|mux|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(4),
	datab => \proc|mux|Equal4~0_combout\,
	datac => \proc|mux|Equal6~0_combout\,
	datad => \proc|mux|Equal1~2_combout\,
	combout => \proc|mux|Equal4~1_combout\);

-- Location: LCCOMB_X38_Y25_N18
\proc|mux|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~1_combout\ = (\proc|R[4][0]~combout\ & ((\proc|mux|Equal4~1_combout\) # ((\proc|R[5][0]~combout\ & \proc|mux|Equal5~1_combout\)))) # (!\proc|R[4][0]~combout\ & (\proc|R[5][0]~combout\ & (\proc|mux|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[4][0]~combout\,
	datab => \proc|R[5][0]~combout\,
	datac => \proc|mux|Equal5~1_combout\,
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector8~1_combout\);

-- Location: LCCOMB_X36_Y23_N6
\proc|mux|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal9~0_combout\ = (\proc|muxSel\(0) & !\proc|muxSel\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|muxSel\(0),
	datad => \proc|muxSel\(8),
	combout => \proc|mux|Equal9~0_combout\);

-- Location: LCCOMB_X37_Y23_N8
\proc|mux|Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal9~1_combout\ = (!\proc|muxSel\(4) & (\proc|mux|Equal1~1_combout\ & (\proc|mux|Equal9~0_combout\ & \proc|mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(4),
	datab => \proc|mux|Equal1~1_combout\,
	datac => \proc|mux|Equal9~0_combout\,
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Equal9~1_combout\);

-- Location: LCCOMB_X33_Y23_N24
\proc|mux|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal6~1_combout\ = (!\proc|muxSel\(1) & (!\proc|muxSel\(2) & \proc|muxSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(1),
	datab => \proc|muxSel\(2),
	datac => \proc|muxSel\(3),
	combout => \proc|mux|Equal6~1_combout\);

-- Location: LCCOMB_X37_Y23_N0
\proc|mux|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal6~2_combout\ = (\proc|mux|Equal1~0_combout\ & (!\proc|muxSel\(4) & (\proc|mux|Equal6~1_combout\ & \proc|mux|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal1~0_combout\,
	datab => \proc|muxSel\(4),
	datac => \proc|mux|Equal6~1_combout\,
	datad => \proc|mux|Equal6~0_combout\,
	combout => \proc|mux|Equal6~2_combout\);

-- Location: LCCOMB_X38_Y25_N8
\proc|mux|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~0_combout\ = (\proc|R[6][0]~combout\ & ((\proc|mux|Equal6~2_combout\) # ((\proc|mux|Equal9~1_combout\ & \rom|altsyncram_component|auto_generated|q_a\(0))))) # (!\proc|R[6][0]~combout\ & (\proc|mux|Equal9~1_combout\ & 
-- ((\rom|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[6][0]~combout\,
	datab => \proc|mux|Equal9~1_combout\,
	datac => \proc|mux|Equal6~2_combout\,
	datad => \rom|altsyncram_component|auto_generated|q_a\(0),
	combout => \proc|mux|Selector8~0_combout\);

-- Location: LCCOMB_X35_Y24_N16
\proc|enableReg[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(7) = LCELL((\proc|Selector18~0_combout\ & \proc|regX\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|Selector18~0_combout\,
	datad => \proc|regX\(0),
	combout => \proc|enableReg\(7));

-- Location: LCFF_X37_Y25_N31
\proc|REGISTERS:7:BUS_IN_REGS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector8~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(0));

-- Location: LCCOMB_X36_Y25_N22
\proc|R[7][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][0]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:7:BUS_IN_REGS|Q\(0),
	combout => \proc|R[7][0]~combout\);

-- Location: LCCOMB_X35_Y23_N8
\proc|mux|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal0~1_combout\ = (\proc|muxSel\(9) & !\proc|muxSel\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|muxSel\(9),
	datad => \proc|muxSel\(6),
	combout => \proc|mux|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y23_N18
\proc|mux|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal0~2_combout\ = (\proc|mux|Equal0~0_combout\ & (!\proc|muxSel\(7) & (\proc|mux|Equal5~0_combout\ & \proc|mux|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal0~0_combout\,
	datab => \proc|muxSel\(7),
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux|Equal0~1_combout\,
	combout => \proc|mux|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y23_N28
\proc|mux|Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal6~3_combout\ = (!\proc|muxSel\(4) & (!\proc|muxSel\(0) & (!\proc|muxSel\(8) & \proc|mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(4),
	datab => \proc|muxSel\(0),
	datac => \proc|muxSel\(8),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Equal6~3_combout\);

-- Location: LCCOMB_X36_Y23_N14
\proc|mux|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal7~0_combout\ = (\proc|muxSel\(2) & (!\proc|muxSel\(3) & (!\proc|muxSel\(1) & \proc|mux|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(2),
	datab => \proc|muxSel\(3),
	datac => \proc|muxSel\(1),
	datad => \proc|mux|Equal6~3_combout\,
	combout => \proc|mux|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y25_N8
\proc|mux|Selector8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~5_combout\ = (\proc|R[0][0]~combout\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R[7][0]~combout\ & \proc|mux|Equal7~0_combout\)))) # (!\proc|R[0][0]~combout\ & (\proc|R[7][0]~combout\ & ((\proc|mux|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[0][0]~combout\,
	datab => \proc|R[7][0]~combout\,
	datac => \proc|mux|Equal0~2_combout\,
	datad => \proc|mux|Equal7~0_combout\,
	combout => \proc|mux|Selector8~5_combout\);

-- Location: LCCOMB_X38_Y25_N2
\proc|mux|Selector8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~6_combout\ = (\proc|mux|Selector8~4_combout\) # ((\proc|mux|Selector8~1_combout\) # ((\proc|mux|Selector8~0_combout\) # (\proc|mux|Selector8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector8~4_combout\,
	datab => \proc|mux|Selector8~1_combout\,
	datac => \proc|mux|Selector8~0_combout\,
	datad => \proc|mux|Selector8~5_combout\,
	combout => \proc|mux|Selector8~6_combout\);

-- Location: LCCOMB_X36_Y23_N10
\proc|mux|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal2~0_combout\ = (\proc|muxSel\(7) & (!\proc|muxSel\(9) & !\proc|muxSel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|muxSel\(7),
	datac => \proc|muxSel\(9),
	datad => \proc|muxSel\(6),
	combout => \proc|mux|Equal2~0_combout\);

-- Location: LCCOMB_X37_Y23_N12
\proc|mux|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~2_combout\ = (\proc|R[2][1]~combout\ & (\proc|mux|Equal0~0_combout\ & (\proc|mux|Equal5~0_combout\ & \proc|mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[2][1]~combout\,
	datab => \proc|mux|Equal0~0_combout\,
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux|Equal2~0_combout\,
	combout => \proc|mux|Selector7~2_combout\);

-- Location: LCCOMB_X35_Y24_N2
\proc|enableReg[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(1) = LCELL((\proc|regX\(6) & \proc|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(6),
	datac => \proc|Selector18~0_combout\,
	combout => \proc|enableReg\(1));

-- Location: LCFF_X38_Y23_N31
\proc|REGISTERS:1:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(1));

-- Location: LCCOMB_X38_Y23_N30
\proc|R[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][1]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(1),
	combout => \proc|R[1][1]~combout\);

-- Location: LCCOMB_X37_Y23_N26
\proc|mux|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~3_combout\ = (\proc|R[3][1]~combout\ & ((\proc|mux|Equal3~1_combout\) # ((\proc|mux|Equal1~4_combout\ & \proc|R[1][1]~combout\)))) # (!\proc|R[3][1]~combout\ & (\proc|mux|Equal1~4_combout\ & (\proc|R[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[3][1]~combout\,
	datab => \proc|mux|Equal1~4_combout\,
	datac => \proc|R[1][1]~combout\,
	datad => \proc|mux|Equal3~1_combout\,
	combout => \proc|mux|Selector7~3_combout\);

-- Location: LCCOMB_X37_Y23_N16
\proc|mux|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~4_combout\ = (\proc|mux|Selector7~2_combout\) # ((\proc|mux|Selector7~3_combout\) # ((\proc|R[9][1]~combout\ & \proc|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[9][1]~combout\,
	datab => \proc|mux|Selector7~2_combout\,
	datac => \proc|mux|Equal8~1_combout\,
	datad => \proc|mux|Selector7~3_combout\,
	combout => \proc|mux|Selector7~4_combout\);

-- Location: LCCOMB_X35_Y23_N0
\proc|regX[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(7) = LCELL((!\proc|R[10][3]~combout\ & (!\proc|R[10][4]~combout\ & !\proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(7));

-- Location: LCCOMB_X35_Y24_N30
\proc|enableReg[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(0) = LCELL((\proc|Selector18~0_combout\ & \proc|regX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|Selector18~0_combout\,
	datad => \proc|regX\(7),
	combout => \proc|enableReg\(0));

-- Location: LCFF_X37_Y23_N15
\proc|REGISTERS:0:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(1));

-- Location: LCCOMB_X36_Y23_N26
\proc|R[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][1]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(1),
	combout => \proc|R[0][1]~combout\);

-- Location: LCCOMB_X36_Y23_N22
\proc|mux|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~5_combout\ = (\proc|R[7][1]~combout\ & ((\proc|mux|Equal7~0_combout\) # ((\proc|R[0][1]~combout\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R[7][1]~combout\ & (\proc|R[0][1]~combout\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[7][1]~combout\,
	datab => \proc|R[0][1]~combout\,
	datac => \proc|mux|Equal7~0_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector7~5_combout\);

-- Location: LCFF_X36_Y26_N9
\proc|REGISTERS:5:BUS_IN_REGS|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector7~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(1));

-- Location: LCCOMB_X36_Y26_N8
\proc|R[5][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][1]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(1),
	combout => \proc|R[5][1]~combout\);

-- Location: LCCOMB_X36_Y23_N0
\proc|mux|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~1_combout\ = (\proc|R[4][1]~combout\ & ((\proc|mux|Equal4~1_combout\) # ((\proc|R[5][1]~combout\ & \proc|mux|Equal5~1_combout\)))) # (!\proc|R[4][1]~combout\ & (\proc|R[5][1]~combout\ & (\proc|mux|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[4][1]~combout\,
	datab => \proc|R[5][1]~combout\,
	datac => \proc|mux|Equal5~1_combout\,
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector7~1_combout\);

-- Location: LCCOMB_X37_Y23_N18
\proc|mux|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~0_combout\ = (\proc|R[6][1]~combout\ & ((\proc|mux|Equal6~2_combout\) # ((\proc|mux|Equal9~1_combout\ & \rom|altsyncram_component|auto_generated|q_a\(1))))) # (!\proc|R[6][1]~combout\ & (((\proc|mux|Equal9~1_combout\ & 
-- \rom|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[6][1]~combout\,
	datab => \proc|mux|Equal6~2_combout\,
	datac => \proc|mux|Equal9~1_combout\,
	datad => \rom|altsyncram_component|auto_generated|q_a\(1),
	combout => \proc|mux|Selector7~0_combout\);

-- Location: LCCOMB_X37_Y23_N2
\proc|mux|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~6_combout\ = (\proc|mux|Selector7~4_combout\) # ((\proc|mux|Selector7~5_combout\) # ((\proc|mux|Selector7~1_combout\) # (\proc|mux|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector7~4_combout\,
	datab => \proc|mux|Selector7~5_combout\,
	datac => \proc|mux|Selector7~1_combout\,
	datad => \proc|mux|Selector7~0_combout\,
	combout => \proc|mux|Selector7~6_combout\);

-- Location: LCFF_X35_Y25_N13
\proc|REGISTERS:7:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector6~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(2));

-- Location: LCCOMB_X35_Y25_N12
\proc|R[7][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][2]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:7:BUS_IN_REGS|Q\(2),
	combout => \proc|R[7][2]~combout\);

-- Location: LCCOMB_X36_Y24_N24
\proc|mux|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~5_combout\ = (\proc|R[0][2]~combout\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R[7][2]~combout\ & \proc|mux|Equal7~0_combout\)))) # (!\proc|R[0][2]~combout\ & (\proc|R[7][2]~combout\ & ((\proc|mux|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[0][2]~combout\,
	datab => \proc|R[7][2]~combout\,
	datac => \proc|mux|Equal0~2_combout\,
	datad => \proc|mux|Equal7~0_combout\,
	combout => \proc|mux|Selector6~5_combout\);

-- Location: LCFF_X36_Y26_N19
\proc|REGISTERS:5:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector6~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(2));

-- Location: LCCOMB_X36_Y26_N18
\proc|R[5][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][2]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(2),
	combout => \proc|R[5][2]~combout\);

-- Location: LCCOMB_X34_Y23_N26
\proc|regX[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(3) = LCELL((!\proc|R[10][3]~combout\ & (!\proc|R[10][4]~combout\ & \proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(3));

-- Location: LCCOMB_X34_Y24_N10
\proc|enableReg[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(4) = LCELL((\proc|regX\(3) & \proc|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|regX\(3),
	datac => \proc|Selector18~0_combout\,
	combout => \proc|enableReg\(4));

-- Location: LCFF_X36_Y24_N7
\proc|REGISTERS:4:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector6~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(2));

-- Location: LCCOMB_X36_Y24_N6
\proc|R[4][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][2]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:4:BUS_IN_REGS|Q\(2),
	combout => \proc|R[4][2]~combout\);

-- Location: LCCOMB_X36_Y24_N30
\proc|mux|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~1_combout\ = (\proc|mux|Equal4~1_combout\ & ((\proc|R[4][2]~combout\) # ((\proc|R[5][2]~combout\ & \proc|mux|Equal5~1_combout\)))) # (!\proc|mux|Equal4~1_combout\ & (\proc|R[5][2]~combout\ & ((\proc|mux|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~1_combout\,
	datab => \proc|R[5][2]~combout\,
	datac => \proc|R[4][2]~combout\,
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector6~1_combout\);

-- Location: LCCOMB_X36_Y24_N8
\proc|mux|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~2_combout\ = (\proc|R[2][2]~combout\ & (\proc|mux|Equal5~0_combout\ & (\proc|mux|Equal2~0_combout\ & \proc|mux|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[2][2]~combout\,
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|mux|Equal2~0_combout\,
	datad => \proc|mux|Equal0~0_combout\,
	combout => \proc|mux|Selector6~2_combout\);

-- Location: LCFF_X34_Y24_N21
\proc|REGISTERS:3:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector6~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(2));

-- Location: LCCOMB_X34_Y24_N20
\proc|R[3][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][2]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:3:BUS_IN_REGS|Q\(2),
	combout => \proc|R[3][2]~combout\);

-- Location: LCCOMB_X37_Y23_N20
\proc|mux|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~3_combout\ = (\proc|R[1][2]~combout\ & ((\proc|mux|Equal1~4_combout\) # ((\proc|R[3][2]~combout\ & \proc|mux|Equal3~1_combout\)))) # (!\proc|R[1][2]~combout\ & (((\proc|R[3][2]~combout\ & \proc|mux|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[1][2]~combout\,
	datab => \proc|mux|Equal1~4_combout\,
	datac => \proc|R[3][2]~combout\,
	datad => \proc|mux|Equal3~1_combout\,
	combout => \proc|mux|Selector6~3_combout\);

-- Location: LCCOMB_X36_Y24_N14
\proc|mux|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~4_combout\ = (\proc|mux|Selector6~2_combout\) # ((\proc|mux|Selector6~3_combout\) # ((\proc|R[9][2]~combout\ & \proc|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[9][2]~combout\,
	datab => \proc|mux|Selector6~2_combout\,
	datac => \proc|mux|Equal8~1_combout\,
	datad => \proc|mux|Selector6~3_combout\,
	combout => \proc|mux|Selector6~4_combout\);

-- Location: LCCOMB_X34_Y24_N0
\proc|enableReg[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(6) = LCELL((\proc|regX\(1) & \proc|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|regX\(1),
	datac => \proc|Selector18~0_combout\,
	combout => \proc|enableReg\(6));

-- Location: LCFF_X36_Y24_N11
\proc|REGISTERS:6:BUS_IN_REGS|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector6~6_combout\,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(2));

-- Location: LCCOMB_X36_Y24_N18
\proc|R[6][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][2]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:6:BUS_IN_REGS|Q\(2),
	combout => \proc|R[6][2]~combout\);

-- Location: LCCOMB_X36_Y24_N28
\proc|mux|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~0_combout\ = (\proc|mux|Equal9~1_combout\ & ((\rom|altsyncram_component|auto_generated|q_a\(2)) # ((\proc|R[6][2]~combout\ & \proc|mux|Equal6~2_combout\)))) # (!\proc|mux|Equal9~1_combout\ & (\proc|R[6][2]~combout\ & 
-- (\proc|mux|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal9~1_combout\,
	datab => \proc|R[6][2]~combout\,
	datac => \proc|mux|Equal6~2_combout\,
	datad => \rom|altsyncram_component|auto_generated|q_a\(2),
	combout => \proc|mux|Selector6~0_combout\);

-- Location: LCCOMB_X36_Y24_N10
\proc|mux|Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~6_combout\ = (\proc|mux|Selector6~5_combout\) # ((\proc|mux|Selector6~1_combout\) # ((\proc|mux|Selector6~4_combout\) # (\proc|mux|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector6~5_combout\,
	datab => \proc|mux|Selector6~1_combout\,
	datac => \proc|mux|Selector6~4_combout\,
	datad => \proc|mux|Selector6~0_combout\,
	combout => \proc|mux|Selector6~6_combout\);

-- Location: LCCOMB_X37_Y26_N10
\proc|REGISTERS:3:BUS_IN_REGS|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTERS:3:BUS_IN_REGS|Q[3]~feeder_combout\ = \proc|mux|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector5~6_combout\,
	combout => \proc|REGISTERS:3:BUS_IN_REGS|Q[3]~feeder_combout\);

-- Location: LCFF_X37_Y26_N11
\proc|REGISTERS:3:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTERS:3:BUS_IN_REGS|Q[3]~feeder_combout\,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(3));

-- Location: LCCOMB_X37_Y26_N6
\proc|R[3][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][3]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:3:BUS_IN_REGS|Q\(3),
	combout => \proc|R[3][3]~combout\);

-- Location: LCCOMB_X37_Y24_N10
\proc|mux|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~4_combout\ = (\proc|R[1][3]~combout\ & ((\proc|mux|Equal1~4_combout\) # ((\proc|R[3][3]~combout\ & \proc|mux|Equal3~1_combout\)))) # (!\proc|R[1][3]~combout\ & (\proc|R[3][3]~combout\ & (\proc|mux|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[1][3]~combout\,
	datab => \proc|R[3][3]~combout\,
	datac => \proc|mux|Equal3~1_combout\,
	datad => \proc|mux|Equal1~4_combout\,
	combout => \proc|mux|Selector5~4_combout\);

-- Location: LCCOMB_X35_Y23_N10
\proc|regX[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|regX\(5) = LCELL((!\proc|R[10][3]~combout\ & (\proc|R[10][4]~combout\ & !\proc|R[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[10][3]~combout\,
	datac => \proc|R[10][4]~combout\,
	datad => \proc|R[10][5]~combout\,
	combout => \proc|regX\(5));

-- Location: LCCOMB_X35_Y24_N12
\proc|enableReg[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|enableReg\(2) = LCELL((\proc|regX\(5) & \proc|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|regX\(5),
	datac => \proc|Selector18~0_combout\,
	combout => \proc|enableReg\(2));

-- Location: LCFF_X39_Y24_N21
\proc|REGISTERS:2:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector5~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(3));

-- Location: LCCOMB_X39_Y24_N20
\proc|R[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][3]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(3),
	combout => \proc|R[2][3]~combout\);

-- Location: LCCOMB_X37_Y23_N6
\proc|mux|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Equal2~1_combout\ = (\proc|mux|Equal0~0_combout\ & (\proc|mux|Equal5~0_combout\ & \proc|mux|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Equal0~0_combout\,
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux|Equal2~0_combout\,
	combout => \proc|mux|Equal2~1_combout\);

-- Location: LCCOMB_X38_Y23_N2
\proc|mux|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~3_combout\ = (\proc|R[9][3]~combout\ & ((\proc|mux|Equal8~1_combout\) # ((\proc|R[2][3]~combout\ & \proc|mux|Equal2~1_combout\)))) # (!\proc|R[9][3]~combout\ & (\proc|R[2][3]~combout\ & (\proc|mux|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[9][3]~combout\,
	datab => \proc|R[2][3]~combout\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal8~1_combout\,
	combout => \proc|mux|Selector5~3_combout\);

-- Location: LCFF_X38_Y24_N21
\proc|REGISTERS:7:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector5~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(3));

-- Location: LCCOMB_X38_Y24_N20
\proc|R[7][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][3]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:7:BUS_IN_REGS|Q\(3),
	combout => \proc|R[7][3]~combout\);

-- Location: LCFF_X34_Y24_N25
\proc|REGISTERS:0:BUS_IN_REGS|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector5~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(3));

-- Location: LCCOMB_X34_Y24_N24
\proc|R[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][3]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(3),
	combout => \proc|R[0][3]~combout\);

-- Location: LCCOMB_X37_Y24_N16
\proc|mux|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~5_combout\ = (\proc|mux|Equal0~2_combout\ & ((\proc|R[0][3]~combout\) # ((\proc|R[7][3]~combout\ & \proc|mux|Equal7~0_combout\)))) # (!\proc|mux|Equal0~2_combout\ & (\proc|R[7][3]~combout\ & ((\proc|mux|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal0~2_combout\,
	datab => \proc|R[7][3]~combout\,
	datac => \proc|R[0][3]~combout\,
	datad => \proc|mux|Equal7~0_combout\,
	combout => \proc|mux|Selector5~5_combout\);

-- Location: LCCOMB_X37_Y24_N8
\proc|mux|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~0_combout\ = (\proc|R[6][3]~combout\ & ((\proc|mux|Equal6~2_combout\) # ((\proc|mux|Equal9~1_combout\ & \rom|altsyncram_component|auto_generated|q_a\(3))))) # (!\proc|R[6][3]~combout\ & (((\proc|mux|Equal9~1_combout\ & 
-- \rom|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[6][3]~combout\,
	datab => \proc|mux|Equal6~2_combout\,
	datac => \proc|mux|Equal9~1_combout\,
	datad => \rom|altsyncram_component|auto_generated|q_a\(3),
	combout => \proc|mux|Selector5~0_combout\);

-- Location: LCCOMB_X37_Y24_N26
\proc|mux|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~1_combout\ = (\proc|R[5][3]~combout\ & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[5][3]~combout\,
	datac => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector5~1_combout\);

-- Location: LCCOMB_X37_Y24_N12
\proc|mux|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~2_combout\ = (\proc|mux|Selector5~0_combout\) # ((\proc|mux|Selector5~1_combout\) # ((\proc|R[4][3]~combout\ & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[4][3]~combout\,
	datab => \proc|mux|Equal4~1_combout\,
	datac => \proc|mux|Selector5~0_combout\,
	datad => \proc|mux|Selector5~1_combout\,
	combout => \proc|mux|Selector5~2_combout\);

-- Location: LCCOMB_X37_Y24_N6
\proc|mux|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~6_combout\ = (\proc|mux|Selector5~4_combout\) # ((\proc|mux|Selector5~3_combout\) # ((\proc|mux|Selector5~5_combout\) # (\proc|mux|Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~4_combout\,
	datab => \proc|mux|Selector5~3_combout\,
	datac => \proc|mux|Selector5~5_combout\,
	datad => \proc|mux|Selector5~2_combout\,
	combout => \proc|mux|Selector5~6_combout\);

-- Location: LCFF_X34_Y24_N13
\proc|REGISTERS:0:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(4));

-- Location: LCCOMB_X34_Y24_N12
\proc|R[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][4]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(4),
	combout => \proc|R[0][4]~combout\);

-- Location: LCCOMB_X36_Y23_N8
\proc|mux|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~5_combout\ = (\proc|R[7][4]~combout\ & ((\proc|mux|Equal7~0_combout\) # ((\proc|R[0][4]~combout\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R[7][4]~combout\ & (\proc|R[0][4]~combout\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[7][4]~combout\,
	datab => \proc|R[0][4]~combout\,
	datac => \proc|mux|Equal7~0_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector4~5_combout\);

-- Location: LCFF_X36_Y24_N21
\proc|REGISTERS:4:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(4));

-- Location: LCCOMB_X36_Y25_N0
\proc|R[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][4]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:4:BUS_IN_REGS|Q\(4),
	combout => \proc|R[4][4]~combout\);

-- Location: LCCOMB_X36_Y25_N26
\proc|mux|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~1_combout\ = (\proc|R[5][4]~combout\ & ((\proc|mux|Equal5~1_combout\) # ((\proc|R[4][4]~combout\ & \proc|mux|Equal4~1_combout\)))) # (!\proc|R[5][4]~combout\ & (\proc|R[4][4]~combout\ & (\proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[5][4]~combout\,
	datab => \proc|R[4][4]~combout\,
	datac => \proc|mux|Equal4~1_combout\,
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector4~1_combout\);

-- Location: LCCOMB_X36_Y24_N4
\proc|mux|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~0_combout\ = (\proc|R[6][4]~combout\ & ((\proc|mux|Equal6~2_combout\) # ((\rom|altsyncram_component|auto_generated|q_a\(4) & \proc|mux|Equal9~1_combout\)))) # (!\proc|R[6][4]~combout\ & (\rom|altsyncram_component|auto_generated|q_a\(4) 
-- & ((\proc|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[6][4]~combout\,
	datab => \rom|altsyncram_component|auto_generated|q_a\(4),
	datac => \proc|mux|Equal6~2_combout\,
	datad => \proc|mux|Equal9~1_combout\,
	combout => \proc|mux|Selector4~0_combout\);

-- Location: LCFF_X35_Y24_N15
\proc|REGISTERS:2:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:2:BUS_IN_REGS|Q\(4));

-- Location: LCCOMB_X35_Y24_N14
\proc|R[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[2][4]~combout\ = LCELL(\proc|REGISTERS:2:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:2:BUS_IN_REGS|Q\(4),
	combout => \proc|R[2][4]~combout\);

-- Location: LCCOMB_X36_Y24_N22
\proc|mux|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~2_combout\ = (\proc|mux|Equal0~0_combout\ & (\proc|mux|Equal5~0_combout\ & (\proc|mux|Equal2~0_combout\ & \proc|R[2][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal0~0_combout\,
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|mux|Equal2~0_combout\,
	datad => \proc|R[2][4]~combout\,
	combout => \proc|mux|Selector4~2_combout\);

-- Location: LCFF_X35_Y24_N29
\proc|REGISTERS:1:BUS_IN_REGS|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector4~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(4));

-- Location: LCCOMB_X35_Y24_N28
\proc|R[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][4]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(4),
	combout => \proc|R[1][4]~combout\);

-- Location: LCCOMB_X36_Y24_N12
\proc|mux|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~3_combout\ = (\proc|R[3][4]~combout\ & ((\proc|mux|Equal3~1_combout\) # ((\proc|R[1][4]~combout\ & \proc|mux|Equal1~4_combout\)))) # (!\proc|R[3][4]~combout\ & (\proc|R[1][4]~combout\ & ((\proc|mux|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[3][4]~combout\,
	datab => \proc|R[1][4]~combout\,
	datac => \proc|mux|Equal3~1_combout\,
	datad => \proc|mux|Equal1~4_combout\,
	combout => \proc|mux|Selector4~3_combout\);

-- Location: LCCOMB_X36_Y24_N26
\proc|mux|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~4_combout\ = (\proc|mux|Selector4~2_combout\) # ((\proc|mux|Selector4~3_combout\) # ((\proc|R[9][4]~combout\ & \proc|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[9][4]~combout\,
	datab => \proc|mux|Selector4~2_combout\,
	datac => \proc|mux|Equal8~1_combout\,
	datad => \proc|mux|Selector4~3_combout\,
	combout => \proc|mux|Selector4~4_combout\);

-- Location: LCCOMB_X36_Y24_N0
\proc|mux|Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~6_combout\ = (\proc|mux|Selector4~5_combout\) # ((\proc|mux|Selector4~1_combout\) # ((\proc|mux|Selector4~0_combout\) # (\proc|mux|Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector4~5_combout\,
	datab => \proc|mux|Selector4~1_combout\,
	datac => \proc|mux|Selector4~0_combout\,
	datad => \proc|mux|Selector4~4_combout\,
	combout => \proc|mux|Selector4~6_combout\);

-- Location: LCFF_X38_Y24_N19
\proc|REGISTERS:7:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(5));

-- Location: LCCOMB_X38_Y24_N18
\proc|R[7][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][5]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:7:BUS_IN_REGS|Q\(5),
	combout => \proc|R[7][5]~combout\);

-- Location: LCFF_X37_Y26_N19
\proc|REGISTERS:0:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(5));

-- Location: LCCOMB_X37_Y26_N18
\proc|R[0][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][5]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(5),
	combout => \proc|R[0][5]~combout\);

-- Location: LCCOMB_X37_Y24_N24
\proc|mux|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~5_combout\ = (\proc|mux|Equal0~2_combout\ & ((\proc|R[0][5]~combout\) # ((\proc|R[7][5]~combout\ & \proc|mux|Equal7~0_combout\)))) # (!\proc|mux|Equal0~2_combout\ & (\proc|R[7][5]~combout\ & ((\proc|mux|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal0~2_combout\,
	datab => \proc|R[7][5]~combout\,
	datac => \proc|R[0][5]~combout\,
	datad => \proc|mux|Equal7~0_combout\,
	combout => \proc|mux|Selector3~5_combout\);

-- Location: LCFF_X37_Y24_N29
\proc|REGISTERS:4:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(5));

-- Location: LCCOMB_X37_Y24_N28
\proc|R[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][5]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:4:BUS_IN_REGS|Q\(5),
	combout => \proc|R[4][5]~combout\);

-- Location: LCCOMB_X37_Y24_N22
\proc|mux|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~1_combout\ = (\proc|R[5][5]~combout\ & ((\proc|mux|Equal5~1_combout\) # ((\proc|R[4][5]~combout\ & \proc|mux|Equal4~1_combout\)))) # (!\proc|R[5][5]~combout\ & (\proc|R[4][5]~combout\ & (\proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[5][5]~combout\,
	datab => \proc|R[4][5]~combout\,
	datac => \proc|mux|Equal4~1_combout\,
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector3~1_combout\);

-- Location: LCCOMB_X37_Y24_N4
\proc|mux|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~0_combout\ = (\proc|R[6][5]~combout\ & ((\proc|mux|Equal6~2_combout\) # ((\rom|altsyncram_component|auto_generated|q_a\(5) & \proc|mux|Equal9~1_combout\)))) # (!\proc|R[6][5]~combout\ & (\rom|altsyncram_component|auto_generated|q_a\(5) 
-- & (\proc|mux|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[6][5]~combout\,
	datab => \rom|altsyncram_component|auto_generated|q_a\(5),
	datac => \proc|mux|Equal9~1_combout\,
	datad => \proc|mux|Equal6~2_combout\,
	combout => \proc|mux|Selector3~0_combout\);

-- Location: LCCOMB_X37_Y23_N24
\proc|mux|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~2_combout\ = (\proc|R[2][5]~combout\ & (\proc|mux|Equal0~0_combout\ & (\proc|mux|Equal5~0_combout\ & \proc|mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[2][5]~combout\,
	datab => \proc|mux|Equal0~0_combout\,
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux|Equal2~0_combout\,
	combout => \proc|mux|Selector3~2_combout\);

-- Location: LCFF_X38_Y23_N19
\proc|REGISTERS:1:BUS_IN_REGS|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(5));

-- Location: LCCOMB_X38_Y23_N18
\proc|R[1][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][5]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(5),
	combout => \proc|R[1][5]~combout\);

-- Location: LCCOMB_X38_Y23_N12
\proc|mux|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~3_combout\ = (\proc|R[3][5]~combout\ & ((\proc|mux|Equal3~1_combout\) # ((\proc|R[1][5]~combout\ & \proc|mux|Equal1~4_combout\)))) # (!\proc|R[3][5]~combout\ & (\proc|R[1][5]~combout\ & ((\proc|mux|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[3][5]~combout\,
	datab => \proc|R[1][5]~combout\,
	datac => \proc|mux|Equal3~1_combout\,
	datad => \proc|mux|Equal1~4_combout\,
	combout => \proc|mux|Selector3~3_combout\);

-- Location: LCCOMB_X38_Y23_N22
\proc|mux|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~4_combout\ = (\proc|mux|Selector3~2_combout\) # ((\proc|mux|Selector3~3_combout\) # ((\proc|R[9][5]~combout\ & \proc|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[9][5]~combout\,
	datab => \proc|mux|Selector3~2_combout\,
	datac => \proc|mux|Equal8~1_combout\,
	datad => \proc|mux|Selector3~3_combout\,
	combout => \proc|mux|Selector3~4_combout\);

-- Location: LCCOMB_X37_Y24_N2
\proc|mux|Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~6_combout\ = (\proc|mux|Selector3~5_combout\) # ((\proc|mux|Selector3~1_combout\) # ((\proc|mux|Selector3~0_combout\) # (\proc|mux|Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector3~5_combout\,
	datab => \proc|mux|Selector3~1_combout\,
	datac => \proc|mux|Selector3~0_combout\,
	datad => \proc|mux|Selector3~4_combout\,
	combout => \proc|mux|Selector3~6_combout\);

-- Location: LCCOMB_X35_Y25_N24
\proc|addSubMode\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|addSubMode~combout\ = LCELL((\proc|instruction\(0) & (\proc|instruction\(1) & (\proc|Tstep_Q.T2~regout\ & !\proc|instruction\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|instruction\(0),
	datab => \proc|instruction\(1),
	datac => \proc|Tstep_Q.T2~regout\,
	datad => \proc|instruction\(2),
	combout => \proc|addSubMode~combout\);

-- Location: LCCOMB_X37_Y25_N22
\proc|ADD_SUB|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~6_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector2~6_combout\,
	combout => \proc|ADD_SUB|Add0~6_combout\);

-- Location: LCFF_X36_Y25_N7
\proc|REGISTER_A|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector3~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(5));

-- Location: LCCOMB_X36_Y25_N6
\proc|R[8][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][5]~combout\ = LCELL(\proc|REGISTER_A|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_A|Q\(5),
	combout => \proc|R[8][5]~combout\);

-- Location: LCCOMB_X36_Y25_N4
\proc|ADD_SUB|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~4_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector4~6_combout\,
	combout => \proc|ADD_SUB|Add0~4_combout\);

-- Location: LCCOMB_X37_Y25_N30
\proc|ADD_SUB|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~3_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector5~6_combout\,
	combout => \proc|ADD_SUB|Add0~3_combout\);

-- Location: LCCOMB_X37_Y25_N28
\proc|ADD_SUB|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~2_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector6~6_combout\,
	combout => \proc|ADD_SUB|Add0~2_combout\);

-- Location: LCCOMB_X37_Y25_N26
\proc|ADD_SUB|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~1_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector7~6_combout\,
	combout => \proc|ADD_SUB|Add0~1_combout\);

-- Location: LCCOMB_X37_Y25_N14
\proc|REGISTER_G|Q[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[6]~23_combout\ = (\proc|R[8][6]~combout\ & ((\proc|ADD_SUB|Add0~6_combout\ & (\proc|REGISTER_G|Q[5]~22\ & VCC)) # (!\proc|ADD_SUB|Add0~6_combout\ & (!\proc|REGISTER_G|Q[5]~22\)))) # (!\proc|R[8][6]~combout\ & 
-- ((\proc|ADD_SUB|Add0~6_combout\ & (!\proc|REGISTER_G|Q[5]~22\)) # (!\proc|ADD_SUB|Add0~6_combout\ & ((\proc|REGISTER_G|Q[5]~22\) # (GND)))))
-- \proc|REGISTER_G|Q[6]~24\ = CARRY((\proc|R[8][6]~combout\ & (!\proc|ADD_SUB|Add0~6_combout\ & !\proc|REGISTER_G|Q[5]~22\)) # (!\proc|R[8][6]~combout\ & ((!\proc|REGISTER_G|Q[5]~22\) # (!\proc|ADD_SUB|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[8][6]~combout\,
	datab => \proc|ADD_SUB|Add0~6_combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[5]~22\,
	combout => \proc|REGISTER_G|Q[6]~23_combout\,
	cout => \proc|REGISTER_G|Q[6]~24\);

-- Location: LCFF_X37_Y25_N15
\proc|REGISTER_G|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[6]~23_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(6));

-- Location: LCCOMB_X38_Y25_N4
\proc|R[9][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][6]~combout\ = LCELL(\proc|REGISTER_G|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_G|Q\(6),
	combout => \proc|R[9][6]~combout\);

-- Location: LCCOMB_X38_Y24_N16
\proc|mux|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~3_combout\ = (\proc|R[2][6]~combout\ & ((\proc|mux|Equal2~1_combout\) # ((\proc|R[9][6]~combout\ & \proc|mux|Equal8~1_combout\)))) # (!\proc|R[2][6]~combout\ & (\proc|R[9][6]~combout\ & ((\proc|mux|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[2][6]~combout\,
	datab => \proc|R[9][6]~combout\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal8~1_combout\,
	combout => \proc|mux|Selector2~3_combout\);

-- Location: LCCOMB_X35_Y24_N22
\proc|REGISTERS:1:BUS_IN_REGS|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTERS:1:BUS_IN_REGS|Q[6]~feeder_combout\ = \proc|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector2~6_combout\,
	combout => \proc|REGISTERS:1:BUS_IN_REGS|Q[6]~feeder_combout\);

-- Location: LCFF_X35_Y24_N23
\proc|REGISTERS:1:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTERS:1:BUS_IN_REGS|Q[6]~feeder_combout\,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(6));

-- Location: LCCOMB_X35_Y24_N26
\proc|R[1][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][6]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:1:BUS_IN_REGS|Q\(6),
	combout => \proc|R[1][6]~combout\);

-- Location: LCCOMB_X37_Y26_N16
\proc|REGISTERS:3:BUS_IN_REGS|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTERS:3:BUS_IN_REGS|Q[6]~feeder_combout\ = \proc|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector2~6_combout\,
	combout => \proc|REGISTERS:3:BUS_IN_REGS|Q[6]~feeder_combout\);

-- Location: LCFF_X37_Y26_N17
\proc|REGISTERS:3:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTERS:3:BUS_IN_REGS|Q[6]~feeder_combout\,
	ena => \proc|enableReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:3:BUS_IN_REGS|Q\(6));

-- Location: LCCOMB_X38_Y26_N16
\proc|R[3][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[3][6]~combout\ = LCELL(\proc|REGISTERS:3:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:3:BUS_IN_REGS|Q\(6),
	combout => \proc|R[3][6]~combout\);

-- Location: LCCOMB_X38_Y24_N22
\proc|mux|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~4_combout\ = (\proc|mux|Equal1~4_combout\ & ((\proc|R[1][6]~combout\) # ((\proc|mux|Equal3~1_combout\ & \proc|R[3][6]~combout\)))) # (!\proc|mux|Equal1~4_combout\ & (\proc|mux|Equal3~1_combout\ & ((\proc|R[3][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal1~4_combout\,
	datab => \proc|mux|Equal3~1_combout\,
	datac => \proc|R[1][6]~combout\,
	datad => \proc|R[3][6]~combout\,
	combout => \proc|mux|Selector2~4_combout\);

-- Location: LCFF_X38_Y24_N1
\proc|REGISTERS:7:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector2~6_combout\,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(6));

-- Location: LCCOMB_X39_Y24_N28
\proc|R[7][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][6]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:7:BUS_IN_REGS|Q\(6),
	combout => \proc|R[7][6]~combout\);

-- Location: LCFF_X37_Y26_N23
\proc|REGISTERS:0:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector2~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(6));

-- Location: LCCOMB_X37_Y26_N22
\proc|R[0][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][6]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(6),
	combout => \proc|R[0][6]~combout\);

-- Location: LCCOMB_X37_Y24_N30
\proc|mux|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~5_combout\ = (\proc|mux|Equal0~2_combout\ & ((\proc|R[0][6]~combout\) # ((\proc|R[7][6]~combout\ & \proc|mux|Equal7~0_combout\)))) # (!\proc|mux|Equal0~2_combout\ & (\proc|R[7][6]~combout\ & ((\proc|mux|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal0~2_combout\,
	datab => \proc|R[7][6]~combout\,
	datac => \proc|R[0][6]~combout\,
	datad => \proc|mux|Equal7~0_combout\,
	combout => \proc|mux|Selector2~5_combout\);

-- Location: LCFF_X39_Y24_N13
\proc|REGISTERS:5:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector2~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:5:BUS_IN_REGS|Q\(6));

-- Location: LCCOMB_X39_Y24_N12
\proc|R[5][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[5][6]~combout\ = LCELL(\proc|REGISTERS:5:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:5:BUS_IN_REGS|Q\(6),
	combout => \proc|R[5][6]~combout\);

-- Location: LCCOMB_X37_Y24_N0
\proc|mux|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~1_combout\ = (\proc|R[5][6]~combout\ & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[5][6]~combout\,
	datac => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector2~1_combout\);

-- Location: LCFF_X38_Y25_N17
\proc|REGISTERS:6:BUS_IN_REGS|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector2~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(6));

-- Location: LCCOMB_X38_Y25_N16
\proc|R[6][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][6]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:6:BUS_IN_REGS|Q\(6),
	combout => \proc|R[6][6]~combout\);

-- Location: LCCOMB_X38_Y24_N12
\proc|mux|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~0_combout\ = (\proc|mux|Equal9~1_combout\ & ((\rom|altsyncram_component|auto_generated|q_a\(6)) # ((\proc|R[6][6]~combout\ & \proc|mux|Equal6~2_combout\)))) # (!\proc|mux|Equal9~1_combout\ & (\proc|R[6][6]~combout\ & 
-- (\proc|mux|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal9~1_combout\,
	datab => \proc|R[6][6]~combout\,
	datac => \proc|mux|Equal6~2_combout\,
	datad => \rom|altsyncram_component|auto_generated|q_a\(6),
	combout => \proc|mux|Selector2~0_combout\);

-- Location: LCCOMB_X38_Y24_N30
\proc|mux|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~2_combout\ = (\proc|mux|Selector2~1_combout\) # ((\proc|mux|Selector2~0_combout\) # ((\proc|R[4][6]~combout\ & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[4][6]~combout\,
	datab => \proc|mux|Equal4~1_combout\,
	datac => \proc|mux|Selector2~1_combout\,
	datad => \proc|mux|Selector2~0_combout\,
	combout => \proc|mux|Selector2~2_combout\);

-- Location: LCCOMB_X38_Y24_N0
\proc|mux|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~6_combout\ = (\proc|mux|Selector2~3_combout\) # ((\proc|mux|Selector2~4_combout\) # ((\proc|mux|Selector2~5_combout\) # (\proc|mux|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector2~3_combout\,
	datab => \proc|mux|Selector2~4_combout\,
	datac => \proc|mux|Selector2~5_combout\,
	datad => \proc|mux|Selector2~2_combout\,
	combout => \proc|mux|Selector2~6_combout\);

-- Location: LCFF_X37_Y26_N25
\proc|REGISTERS:0:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(7));

-- Location: LCCOMB_X37_Y26_N24
\proc|R[0][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][7]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(7),
	combout => \proc|R[0][7]~combout\);

-- Location: LCCOMB_X37_Y24_N20
\proc|mux|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~5_combout\ = (\proc|R[0][7]~combout\ & \proc|mux|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[0][7]~combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector1~5_combout\);

-- Location: LCFF_X38_Y24_N7
\proc|REGISTERS:7:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|mux|Selector1~6_combout\,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(7));

-- Location: LCCOMB_X38_Y24_N2
\proc|R[7][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][7]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:7:BUS_IN_REGS|Q\(7),
	combout => \proc|R[7][7]~combout\);

-- Location: LCFF_X39_Y25_N23
\proc|REGISTER_A|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_A|Q\(7));

-- Location: LCCOMB_X39_Y25_N22
\proc|R[8][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[8][7]~combout\ = LCELL(\proc|REGISTER_A|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTER_A|Q\(7),
	combout => \proc|R[8][7]~combout\);

-- Location: LCCOMB_X37_Y25_N16
\proc|REGISTER_G|Q[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[7]~25_combout\ = ((\proc|ADD_SUB|Add0~7_combout\ $ (\proc|R[8][7]~combout\ $ (!\proc|REGISTER_G|Q[6]~24\)))) # (GND)
-- \proc|REGISTER_G|Q[7]~26\ = CARRY((\proc|ADD_SUB|Add0~7_combout\ & ((\proc|R[8][7]~combout\) # (!\proc|REGISTER_G|Q[6]~24\))) # (!\proc|ADD_SUB|Add0~7_combout\ & (\proc|R[8][7]~combout\ & !\proc|REGISTER_G|Q[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|ADD_SUB|Add0~7_combout\,
	datab => \proc|R[8][7]~combout\,
	datad => VCC,
	cin => \proc|REGISTER_G|Q[6]~24\,
	combout => \proc|REGISTER_G|Q[7]~25_combout\,
	cout => \proc|REGISTER_G|Q[7]~26\);

-- Location: LCFF_X37_Y25_N17
\proc|REGISTER_G|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[7]~25_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(7));

-- Location: LCCOMB_X38_Y24_N26
\proc|R[9][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][7]~combout\ = LCELL(\proc|REGISTER_G|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_G|Q\(7),
	combout => \proc|R[9][7]~combout\);

-- Location: LCCOMB_X38_Y24_N8
\proc|mux|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~2_combout\ = (\proc|R[2][7]~combout\ & ((\proc|mux|Equal2~1_combout\) # ((\proc|R[9][7]~combout\ & \proc|mux|Equal8~1_combout\)))) # (!\proc|R[2][7]~combout\ & (\proc|R[9][7]~combout\ & (\proc|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[2][7]~combout\,
	datab => \proc|R[9][7]~combout\,
	datac => \proc|mux|Equal8~1_combout\,
	datad => \proc|mux|Equal2~1_combout\,
	combout => \proc|mux|Selector1~2_combout\);

-- Location: LCFF_X38_Y24_N27
\proc|REGISTERS:4:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:4:BUS_IN_REGS|Q\(7));

-- Location: LCCOMB_X38_Y25_N14
\proc|R[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[4][7]~combout\ = LCELL(\proc|REGISTERS:4:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:4:BUS_IN_REGS|Q\(7),
	combout => \proc|R[4][7]~combout\);

-- Location: LCCOMB_X37_Y25_N20
\proc|mux|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~1_combout\ = (\proc|R[5][7]~combout\ & ((\proc|mux|Equal5~1_combout\) # ((\proc|R[4][7]~combout\ & \proc|mux|Equal4~1_combout\)))) # (!\proc|R[5][7]~combout\ & (\proc|R[4][7]~combout\ & ((\proc|mux|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[5][7]~combout\,
	datab => \proc|R[4][7]~combout\,
	datac => \proc|mux|Equal5~1_combout\,
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector1~1_combout\);

-- Location: LCFF_X38_Y25_N23
\proc|REGISTERS:6:BUS_IN_REGS|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector1~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:6:BUS_IN_REGS|Q\(7));

-- Location: LCCOMB_X38_Y25_N22
\proc|R[6][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[6][7]~combout\ = LCELL(\proc|REGISTERS:6:BUS_IN_REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:6:BUS_IN_REGS|Q\(7),
	combout => \proc|R[6][7]~combout\);

-- Location: LCCOMB_X38_Y24_N10
\proc|mux|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~0_combout\ = (\proc|mux|Equal9~1_combout\ & ((\rom|altsyncram_component|auto_generated|q_a\(7)) # ((\proc|R[6][7]~combout\ & \proc|mux|Equal6~2_combout\)))) # (!\proc|mux|Equal9~1_combout\ & (\proc|R[6][7]~combout\ & 
-- (\proc|mux|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal9~1_combout\,
	datab => \proc|R[6][7]~combout\,
	datac => \proc|mux|Equal6~2_combout\,
	datad => \rom|altsyncram_component|auto_generated|q_a\(7),
	combout => \proc|mux|Selector1~0_combout\);

-- Location: LCCOMB_X38_Y24_N28
\proc|mux|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~4_combout\ = (\proc|mux|Selector1~3_combout\) # ((\proc|mux|Selector1~2_combout\) # ((\proc|mux|Selector1~1_combout\) # (\proc|mux|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector1~3_combout\,
	datab => \proc|mux|Selector1~2_combout\,
	datac => \proc|mux|Selector1~1_combout\,
	datad => \proc|mux|Selector1~0_combout\,
	combout => \proc|mux|Selector1~4_combout\);

-- Location: LCCOMB_X38_Y24_N6
\proc|mux|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~6_combout\ = (\proc|mux|Selector1~5_combout\) # ((\proc|mux|Selector1~4_combout\) # ((\proc|R[7][7]~combout\ & \proc|mux|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector1~5_combout\,
	datab => \proc|R[7][7]~combout\,
	datac => \proc|mux|Equal7~0_combout\,
	datad => \proc|mux|Selector1~4_combout\,
	combout => \proc|mux|Selector1~6_combout\);

-- Location: LCFF_X37_Y26_N9
\proc|REGISTERS:0:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:0:BUS_IN_REGS|Q\(8));

-- Location: LCCOMB_X37_Y26_N8
\proc|R[0][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[0][8]~combout\ = LCELL(\proc|REGISTERS:0:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:0:BUS_IN_REGS|Q\(8),
	combout => \proc|R[0][8]~combout\);

-- Location: LCCOMB_X37_Y26_N20
\proc|mux|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~5_combout\ = (\proc|R[0][8]~combout\ & \proc|mux|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R[0][8]~combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector0~5_combout\);

-- Location: LCFF_X37_Y25_N25
\proc|REGISTERS:7:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:7:BUS_IN_REGS|Q\(8));

-- Location: LCCOMB_X38_Y25_N0
\proc|R[7][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[7][8]~combout\ = LCELL(\proc|REGISTERS:7:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTERS:7:BUS_IN_REGS|Q\(8),
	combout => \proc|R[7][8]~combout\);

-- Location: LCFF_X38_Y23_N29
\proc|REGISTERS:1:BUS_IN_REGS|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sdata => \proc|mux|Selector0~6_combout\,
	sload => VCC,
	ena => \proc|enableReg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTERS:1:BUS_IN_REGS|Q\(8));

-- Location: LCCOMB_X38_Y23_N28
\proc|R[1][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[1][8]~combout\ = LCELL(\proc|REGISTERS:1:BUS_IN_REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|REGISTERS:1:BUS_IN_REGS|Q\(8),
	combout => \proc|R[1][8]~combout\);

-- Location: LCCOMB_X38_Y23_N6
\proc|mux|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~3_combout\ = (\proc|R[3][8]~combout\ & ((\proc|mux|Equal3~1_combout\) # ((\proc|R[1][8]~combout\ & \proc|mux|Equal1~4_combout\)))) # (!\proc|R[3][8]~combout\ & (\proc|R[1][8]~combout\ & ((\proc|mux|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[3][8]~combout\,
	datab => \proc|R[1][8]~combout\,
	datac => \proc|mux|Equal3~1_combout\,
	datad => \proc|mux|Equal1~4_combout\,
	combout => \proc|mux|Selector0~3_combout\);

-- Location: LCCOMB_X38_Y25_N24
\proc|ADD_SUB|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|ADD_SUB|Add0~8_combout\ = \proc|addSubMode~combout\ $ (\proc|mux|Selector0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|addSubMode~combout\,
	datad => \proc|mux|Selector0~6_combout\,
	combout => \proc|ADD_SUB|Add0~8_combout\);

-- Location: LCCOMB_X37_Y25_N18
\proc|REGISTER_G|Q[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|REGISTER_G|Q[8]~27_combout\ = \proc|R[8][8]~combout\ $ (\proc|REGISTER_G|Q[7]~26\ $ (\proc|ADD_SUB|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[8][8]~combout\,
	datad => \proc|ADD_SUB|Add0~8_combout\,
	cin => \proc|REGISTER_G|Q[7]~26\,
	combout => \proc|REGISTER_G|Q[8]~27_combout\);

-- Location: LCFF_X37_Y25_N19
\proc|REGISTER_G|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[2]~clkctrl_outclk\,
	datain => \proc|REGISTER_G|Q[8]~27_combout\,
	ena => \proc|enableReg\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|REGISTER_G|Q\(8));

-- Location: LCCOMB_X38_Y23_N26
\proc|R[9][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R[9][8]~combout\ = LCELL(\proc|REGISTER_G|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|REGISTER_G|Q\(8),
	combout => \proc|R[9][8]~combout\);

-- Location: LCCOMB_X38_Y23_N16
\proc|mux|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~2_combout\ = (\proc|R[2][8]~combout\ & ((\proc|mux|Equal2~1_combout\) # ((\proc|R[9][8]~combout\ & \proc|mux|Equal8~1_combout\)))) # (!\proc|R[2][8]~combout\ & (\proc|R[9][8]~combout\ & ((\proc|mux|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[2][8]~combout\,
	datab => \proc|R[9][8]~combout\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal8~1_combout\,
	combout => \proc|mux|Selector0~2_combout\);

-- Location: LCCOMB_X38_Y25_N28
\proc|mux|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~0_combout\ = (\proc|R[6][8]~combout\ & ((\proc|mux|Equal6~2_combout\) # ((\proc|mux|Equal9~1_combout\ & \rom|altsyncram_component|auto_generated|q_a\(8))))) # (!\proc|R[6][8]~combout\ & (\proc|mux|Equal9~1_combout\ & 
-- (\rom|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R[6][8]~combout\,
	datab => \proc|mux|Equal9~1_combout\,
	datac => \rom|altsyncram_component|auto_generated|q_a\(8),
	datad => \proc|mux|Equal6~2_combout\,
	combout => \proc|mux|Selector0~0_combout\);

-- Location: LCCOMB_X38_Y25_N6
\proc|mux|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~4_combout\ = (\proc|mux|Selector0~1_combout\) # ((\proc|mux|Selector0~3_combout\) # ((\proc|mux|Selector0~2_combout\) # (\proc|mux|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~1_combout\,
	datab => \proc|mux|Selector0~3_combout\,
	datac => \proc|mux|Selector0~2_combout\,
	datad => \proc|mux|Selector0~0_combout\,
	combout => \proc|mux|Selector0~4_combout\);

-- Location: LCCOMB_X38_Y25_N12
\proc|mux|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~6_combout\ = (\proc|mux|Selector0~5_combout\) # ((\proc|mux|Selector0~4_combout\) # ((\proc|R[7][8]~combout\ & \proc|mux|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~5_combout\,
	datab => \proc|R[7][8]~combout\,
	datac => \proc|mux|Equal7~0_combout\,
	datad => \proc|mux|Selector0~4_combout\,
	combout => \proc|mux|Selector0~6_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \proc|mux|Selector8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \proc|mux|Selector7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \proc|mux|Selector6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \proc|mux|Selector5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \proc|mux|Selector4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \proc|mux|Selector3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => \proc|mux|Selector2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => \proc|mux|Selector1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => \proc|mux|Selector0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => \proc|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


