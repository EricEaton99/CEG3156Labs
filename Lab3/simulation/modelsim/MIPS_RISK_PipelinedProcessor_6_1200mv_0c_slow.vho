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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/24/2024 19:06:43"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	IMEM_out : OUT std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	global_reset : IN std_logic;
	output_sys : OUT std_logic_vector(7 DOWNTO 0);
	output_sel : IN std_logic_vector(2 DOWNTO 0);
	PC_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- IMEM_out[31]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[30]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[29]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[27]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[26]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[25]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[24]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[22]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[21]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[20]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[19]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[18]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[17]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[16]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[13]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[9]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[5]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMEM_out[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[5]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[4]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sys[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[31]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[30]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[29]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[28]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[27]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[26]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[25]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[24]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[23]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[22]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[21]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[20]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[19]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[18]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[17]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[16]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[15]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[14]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[12]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[11]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sel[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sel[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_sel[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- global_reset	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IMEM_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_global_reset : std_logic;
SIGNAL ww_output_sys : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PC_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \global_reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_sys[7]~output_o\ : std_logic;
SIGNAL \output_sys[6]~output_o\ : std_logic;
SIGNAL \output_sys[5]~output_o\ : std_logic;
SIGNAL \output_sys[4]~output_o\ : std_logic;
SIGNAL \output_sys[3]~output_o\ : std_logic;
SIGNAL \output_sys[2]~output_o\ : std_logic;
SIGNAL \output_sys[1]~output_o\ : std_logic;
SIGNAL \output_sys[0]~output_o\ : std_logic;
SIGNAL \IMEM_out[31]~output_o\ : std_logic;
SIGNAL \IMEM_out[30]~output_o\ : std_logic;
SIGNAL \IMEM_out[29]~output_o\ : std_logic;
SIGNAL \IMEM_out[28]~output_o\ : std_logic;
SIGNAL \IMEM_out[27]~output_o\ : std_logic;
SIGNAL \IMEM_out[26]~output_o\ : std_logic;
SIGNAL \IMEM_out[25]~output_o\ : std_logic;
SIGNAL \IMEM_out[24]~output_o\ : std_logic;
SIGNAL \IMEM_out[23]~output_o\ : std_logic;
SIGNAL \IMEM_out[22]~output_o\ : std_logic;
SIGNAL \IMEM_out[21]~output_o\ : std_logic;
SIGNAL \IMEM_out[20]~output_o\ : std_logic;
SIGNAL \IMEM_out[19]~output_o\ : std_logic;
SIGNAL \IMEM_out[18]~output_o\ : std_logic;
SIGNAL \IMEM_out[17]~output_o\ : std_logic;
SIGNAL \IMEM_out[16]~output_o\ : std_logic;
SIGNAL \IMEM_out[15]~output_o\ : std_logic;
SIGNAL \IMEM_out[14]~output_o\ : std_logic;
SIGNAL \IMEM_out[13]~output_o\ : std_logic;
SIGNAL \IMEM_out[12]~output_o\ : std_logic;
SIGNAL \IMEM_out[11]~output_o\ : std_logic;
SIGNAL \IMEM_out[10]~output_o\ : std_logic;
SIGNAL \IMEM_out[9]~output_o\ : std_logic;
SIGNAL \IMEM_out[8]~output_o\ : std_logic;
SIGNAL \IMEM_out[7]~output_o\ : std_logic;
SIGNAL \IMEM_out[6]~output_o\ : std_logic;
SIGNAL \IMEM_out[5]~output_o\ : std_logic;
SIGNAL \IMEM_out[4]~output_o\ : std_logic;
SIGNAL \IMEM_out[3]~output_o\ : std_logic;
SIGNAL \IMEM_out[2]~output_o\ : std_logic;
SIGNAL \IMEM_out[1]~output_o\ : std_logic;
SIGNAL \IMEM_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[31]~output_o\ : std_logic;
SIGNAL \PC_out[30]~output_o\ : std_logic;
SIGNAL \PC_out[29]~output_o\ : std_logic;
SIGNAL \PC_out[28]~output_o\ : std_logic;
SIGNAL \PC_out[27]~output_o\ : std_logic;
SIGNAL \PC_out[26]~output_o\ : std_logic;
SIGNAL \PC_out[25]~output_o\ : std_logic;
SIGNAL \PC_out[24]~output_o\ : std_logic;
SIGNAL \PC_out[23]~output_o\ : std_logic;
SIGNAL \PC_out[22]~output_o\ : std_logic;
SIGNAL \PC_out[21]~output_o\ : std_logic;
SIGNAL \PC_out[20]~output_o\ : std_logic;
SIGNAL \PC_out[19]~output_o\ : std_logic;
SIGNAL \PC_out[18]~output_o\ : std_logic;
SIGNAL \PC_out[17]~output_o\ : std_logic;
SIGNAL \PC_out[16]~output_o\ : std_logic;
SIGNAL \PC_out[15]~output_o\ : std_logic;
SIGNAL \PC_out[14]~output_o\ : std_logic;
SIGNAL \PC_out[13]~output_o\ : std_logic;
SIGNAL \PC_out[12]~output_o\ : std_logic;
SIGNAL \PC_out[11]~output_o\ : std_logic;
SIGNAL \PC_out[10]~output_o\ : std_logic;
SIGNAL \PC_out[9]~output_o\ : std_logic;
SIGNAL \PC_out[8]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \output_sel[0]~input_o\ : std_logic;
SIGNAL \output_sel[1]~input_o\ : std_logic;
SIGNAL \output_sel[2]~input_o\ : std_logic;
SIGNAL \inst3|loop0:7:mux_i|dec|Equal0~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \global_reset~input_o\ : std_logic;
SIGNAL \global_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:2:dff|master|q_t~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:2:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:2:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:3:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:3:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:3:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:4:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:4:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:4:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:5:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:5:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:5:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd2~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:6:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:6:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:6:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:7:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:7:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:7:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst6|MainControlUnit_rkjerh|Jump~combout\ : std_logic;
SIGNAL \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\ : std_logic;
SIGNAL \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|is_sub~2_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|c_in~combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_ovfl~2_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst7|comb~0_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|sub_block|b_out[6]~0_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~5_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\ : std_logic;
SIGNAL \inst7|comb~2_combout\ : std_logic;
SIGNAL \inst7|comb~1_combout\ : std_logic;
SIGNAL \inst7|comb~3_combout\ : std_logic;
SIGNAL \inst7|comb~4_combout\ : std_logic;
SIGNAL \inst7|comb~5_combout\ : std_logic;
SIGNAL \inst7|comb~6_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|sum[3]~2_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~14_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c_ovfl~combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|sub_block|b_out[4]~1_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c[1]~15_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|sub_block|b_out[5]~2_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~10_combout\ : std_logic;
SIGNAL \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst7|comb~7_combout\ : std_logic;
SIGNAL \inst5|ALU_Ctrl_asa|ALUControl~3_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~1_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~1_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c[1]~1_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~5_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~4_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\ : std_logic;
SIGNAL \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~0_combout\ : std_logic;
SIGNAL \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~1_combout\ : std_logic;
SIGNAL \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c~0_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~1_combout\ : std_logic;
SIGNAL \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2_combout\ : std_logic;
SIGNAL \inst3|loop0:7:mux_i|loop0:5:tsb|outp~9_combout\ : std_logic;
SIGNAL \inst3|loop0:7:mux_i|dec|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|loop0:7:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:7:mux_i|loop0:5:tsb|outp~8_combout\ : std_logic;
SIGNAL \inst3|loop0:6:mux_i|loop0:5:tsb|outp~7_combout\ : std_logic;
SIGNAL \inst3|loop0:6:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:6:mux_i|loop0:5:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst3|loop0:5:mux_i|loop0:5:tsb|outp~7_combout\ : std_logic;
SIGNAL \inst3|loop0:5:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:5:mux_i|loop0:5:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst3|loop0:4:mux_i|loop0:5:tsb|outp~7_combout\ : std_logic;
SIGNAL \inst3|loop0:4:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:4:mux_i|loop0:5:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst3|loop0:3:mux_i|loop0:5:tsb|outp~7_combout\ : std_logic;
SIGNAL \inst3|loop0:3:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:3:mux_i|loop0:5:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst3|loop0:2:mux_i|loop0:5:tsb|outp~7_combout\ : std_logic;
SIGNAL \inst3|loop0:2:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:2:mux_i|loop0:5:tsb|outp~6_combout\ : std_logic;
SIGNAL \inst3|loop0:1:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:1:mux_i|loop0:5:tsb|outp~4_combout\ : std_logic;
SIGNAL \inst3|loop0:1:mux_i|loop0:5:tsb|outp~3_combout\ : std_logic;
SIGNAL \inst3|loop0:0:mux_i|loop0:4:tsb|outp~0_combout\ : std_logic;
SIGNAL \inst3|loop0:0:mux_i|loop0:5:tsb|outp~1_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:8:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:8:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd5~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:9:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:9:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:10:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:10:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:11:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:11:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd8~0_combout\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd8~1_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:12:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:12:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:12:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:13:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:13:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:13:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:14:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:14:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd11~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:15:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:15:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:16:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:16:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd14~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:17:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:17:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:17:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd14~1_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:18:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:18:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:18:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:19:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:19:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:20:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:20:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd17~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:21:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:21:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:21:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd20~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:22:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:22:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:23:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:23:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:23:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd20~1_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:24:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:24:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:24:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:25:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:25:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:25:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:26:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:26:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:26:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd23~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:27:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:27:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:28:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:28:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:28:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:29:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:29:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:29:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst|PC_inc_adder|WideAnd26~0_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:30:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:30:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:30:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:31:dff|master|q_t~q\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:31:dff|slave|q_t~feeder_combout\ : std_logic;
SIGNAL \inst1|PC_reg|loop0:31:dff|slave|q_t~q\ : std_logic;
SIGNAL \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|sum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IMEM|srom|rom_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|PC_inc_adder|a_inc1\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \inst5|ALU_Ctrl_asa|ALUControl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DMEM|sram|ram_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

IMEM_out <= ww_IMEM_out;
ww_clk <= clk;
ww_global_reset <= global_reset;
output_sys <= ww_output_sys;
ww_output_sel <= output_sel;
PC_out <= ww_PC_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|PC_reg|loop0:7:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:6:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:5:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:4:dff|slave|q_t~q\ & 
\inst1|PC_reg|loop0:3:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:2:dff|slave|q_t~q\ & \~GND~combout\ & \~GND~combout\);

\IMEM|srom|rom_block|auto_generated|q_a\(0) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\IMEM|srom|rom_block|auto_generated|q_a\(1) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\IMEM|srom|rom_block|auto_generated|q_a\(2) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\IMEM|srom|rom_block|auto_generated|q_a\(3) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\IMEM|srom|rom_block|auto_generated|q_a\(4) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\IMEM|srom|rom_block|auto_generated|q_a\(5) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\IMEM|srom|rom_block|auto_generated|q_a\(6) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\IMEM|srom|rom_block|auto_generated|q_a\(7) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\IMEM|srom|rom_block|auto_generated|q_a\(8) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\IMEM|srom|rom_block|auto_generated|q_a\(9) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\IMEM|srom|rom_block|auto_generated|q_a\(10) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\IMEM|srom|rom_block|auto_generated|q_a\(11) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\IMEM|srom|rom_block|auto_generated|q_a\(12) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\IMEM|srom|rom_block|auto_generated|q_a\(13) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\IMEM|srom|rom_block|auto_generated|q_a\(14) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\IMEM|srom|rom_block|auto_generated|q_a\(15) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\IMEM|srom|rom_block|auto_generated|q_a\(16) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\IMEM|srom|rom_block|auto_generated|q_a\(17) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\IMEM|srom|rom_block|auto_generated|q_a\(18) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\IMEM|srom|rom_block|auto_generated|q_a\(19) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\IMEM|srom|rom_block|auto_generated|q_a\(20) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\IMEM|srom|rom_block|auto_generated|q_a\(21) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\IMEM|srom|rom_block|auto_generated|q_a\(22) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\IMEM|srom|rom_block|auto_generated|q_a\(23) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\IMEM|srom|rom_block|auto_generated|q_a\(24) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\IMEM|srom|rom_block|auto_generated|q_a\(25) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\IMEM|srom|rom_block|auto_generated|q_a\(26) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\IMEM|srom|rom_block|auto_generated|q_a\(27) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\IMEM|srom|rom_block|auto_generated|q_a\(28) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\IMEM|srom|rom_block|auto_generated|q_a\(29) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\IMEM|srom|rom_block|auto_generated|q_a\(30) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\IMEM|srom|rom_block|auto_generated|q_a\(31) <= \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\);

\DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\ & \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\ & \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\ & 
\inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\ & \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\ & \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\ & \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\ & \inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\);

\DMEM|sram|ram_block|auto_generated|q_a\(0) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DMEM|sram|ram_block|auto_generated|q_a\(1) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\DMEM|sram|ram_block|auto_generated|q_a\(2) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\DMEM|sram|ram_block|auto_generated|q_a\(3) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\DMEM|sram|ram_block|auto_generated|q_a\(4) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\DMEM|sram|ram_block|auto_generated|q_a\(5) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\DMEM|sram|ram_block|auto_generated|q_a\(6) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\DMEM|sram|ram_block|auto_generated|q_a\(7) <= \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\global_reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \global_reset~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: IOOBUF_X52_Y32_N2
\output_sys[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:7:mux_i|loop0:5:tsb|outp~8_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[7]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\output_sys[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:6:mux_i|loop0:5:tsb|outp~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[6]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\output_sys[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:5:mux_i|loop0:5:tsb|outp~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[5]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\output_sys[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:4:mux_i|loop0:5:tsb|outp~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[4]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\output_sys[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:3:mux_i|loop0:5:tsb|outp~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[3]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\output_sys[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:2:mux_i|loop0:5:tsb|outp~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[2]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\output_sys[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:1:mux_i|loop0:5:tsb|outp~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[1]~output_o\);

-- Location: IOOBUF_X10_Y41_N2
\output_sys[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|loop0:0:mux_i|loop0:5:tsb|outp~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \output_sys[0]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\IMEM_out[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \IMEM_out[31]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\IMEM_out[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \IMEM_out[30]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\IMEM_out[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \IMEM_out[29]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\IMEM_out[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \IMEM_out[28]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\IMEM_out[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \IMEM_out[27]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\IMEM_out[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \IMEM_out[26]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\IMEM_out[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \IMEM_out[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\IMEM_out[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \IMEM_out[24]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\IMEM_out[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \IMEM_out[23]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\IMEM_out[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \IMEM_out[22]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\IMEM_out[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \IMEM_out[21]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\IMEM_out[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \IMEM_out[20]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\IMEM_out[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \IMEM_out[19]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\IMEM_out[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \IMEM_out[18]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\IMEM_out[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \IMEM_out[17]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\IMEM_out[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \IMEM_out[16]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\IMEM_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \IMEM_out[15]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\IMEM_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \IMEM_out[14]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\IMEM_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \IMEM_out[13]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\IMEM_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \IMEM_out[12]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\IMEM_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \IMEM_out[11]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\IMEM_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \IMEM_out[10]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\IMEM_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \IMEM_out[9]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\IMEM_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \IMEM_out[8]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\IMEM_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \IMEM_out[7]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\IMEM_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \IMEM_out[6]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\IMEM_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \IMEM_out[5]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\IMEM_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \IMEM_out[4]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\IMEM_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \IMEM_out[3]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\IMEM_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \IMEM_out[2]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\IMEM_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \IMEM_out[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\IMEM_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \IMEM_out[0]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\PC_out[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:31:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[31]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\PC_out[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:30:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[30]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\PC_out[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:29:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[29]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\PC_out[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:28:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[28]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\PC_out[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:27:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[27]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\PC_out[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:26:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[26]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\PC_out[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:25:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[25]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\PC_out[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:24:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[24]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\PC_out[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:23:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\PC_out[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:22:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[22]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\PC_out[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:21:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[21]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\PC_out[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:20:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[20]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\PC_out[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:19:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[19]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\PC_out[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:18:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[18]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\PC_out[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:17:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[17]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\PC_out[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:16:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[16]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\PC_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:15:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[15]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\PC_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:14:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\PC_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:13:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[13]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\PC_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:12:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[12]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\PC_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:11:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[11]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\PC_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:10:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[10]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\PC_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:9:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[9]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\PC_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:8:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[8]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\PC_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:7:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\PC_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:6:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[6]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\PC_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:5:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[5]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\PC_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:4:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\PC_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:3:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[3]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\PC_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PC_reg|loop0:2:dff|slave|q_t~q\,
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\PC_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_out[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\PC_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_out[0]~output_o\);

-- Location: IOIBUF_X52_Y21_N1
\output_sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_output_sel(0),
	o => \output_sel[0]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\output_sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_output_sel(1),
	o => \output_sel[1]~input_o\);

-- Location: IOIBUF_X52_Y21_N8
\output_sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_output_sel(2),
	o => \output_sel[2]~input_o\);

-- Location: LCCOMB_X31_Y32_N26
\inst3|loop0:7:mux_i|dec|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:7:mux_i|dec|Equal0~1_combout\ = (\output_sel[0]~input_o\ & (!\output_sel[1]~input_o\ & !\output_sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output_sel[0]~input_o\,
	datac => \output_sel[1]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X34_Y31_N30
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X27_Y0_N15
\global_reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_global_reset,
	o => \global_reset~input_o\);

-- Location: CLKCTRL_G17
\global_reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \global_reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \global_reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X35_Y31_N16
\inst1|PC_reg|loop0:2:dff|master|q_t~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:2:dff|master|q_t~0_combout\ = !\inst1|PC_reg|loop0:2:dff|slave|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:2:dff|slave|q_t~q\,
	combout => \inst1|PC_reg|loop0:2:dff|master|q_t~0_combout\);

-- Location: FF_X35_Y31_N17
\inst1|PC_reg|loop0:2:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:2:dff|master|q_t~0_combout\,
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:2:dff|master|q_t~q\);

-- Location: FF_X35_Y30_N1
\inst1|PC_reg|loop0:2:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:2:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:2:dff|slave|q_t~q\);

-- Location: LCCOMB_X34_Y30_N18
\inst|PC_inc_adder|a_inc1[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(1) = \inst1|PC_reg|loop0:2:dff|slave|q_t~q\ $ (\inst1|PC_reg|loop0:3:dff|slave|q_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:2:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:3:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|a_inc1\(1));

-- Location: FF_X34_Y30_N19
\inst1|PC_reg|loop0:3:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(1),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:3:dff|master|q_t~q\);

-- Location: LCCOMB_X35_Y30_N12
\inst1|PC_reg|loop0:3:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:3:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:3:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:3:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:3:dff|slave|q_t~feeder_combout\);

-- Location: FF_X35_Y30_N13
\inst1|PC_reg|loop0:3:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:3:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:3:dff|slave|q_t~q\);

-- Location: LCCOMB_X34_Y30_N28
\inst|PC_inc_adder|a_inc1[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(2) = \inst1|PC_reg|loop0:4:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:2:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:3:dff|slave|q_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:4:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:2:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:3:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|a_inc1\(2));

-- Location: FF_X34_Y30_N29
\inst1|PC_reg|loop0:4:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(2),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:4:dff|master|q_t~q\);

-- Location: LCCOMB_X34_Y30_N6
\inst1|PC_reg|loop0:4:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:4:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:4:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:4:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:4:dff|slave|q_t~feeder_combout\);

-- Location: FF_X34_Y30_N7
\inst1|PC_reg|loop0:4:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:4:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:4:dff|slave|q_t~q\);

-- Location: LCCOMB_X34_Y30_N2
\inst|PC_inc_adder|a_inc1[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(3) = \inst1|PC_reg|loop0:5:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:2:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:4:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:3:dff|slave|q_t~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:2:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:4:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:3:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:5:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|a_inc1\(3));

-- Location: FF_X34_Y30_N3
\inst1|PC_reg|loop0:5:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(3),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:5:dff|master|q_t~q\);

-- Location: LCCOMB_X34_Y30_N8
\inst1|PC_reg|loop0:5:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:5:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:5:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:5:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:5:dff|slave|q_t~feeder_combout\);

-- Location: FF_X34_Y30_N9
\inst1|PC_reg|loop0:5:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:5:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:5:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N0
\inst|PC_inc_adder|WideAnd2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd2~0_combout\ = (\inst1|PC_reg|loop0:3:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:4:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:2:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:5:dff|slave|q_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:3:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:4:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:2:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:5:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|WideAnd2~0_combout\);

-- Location: LCCOMB_X34_Y30_N20
\inst|PC_inc_adder|a_inc1[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(4) = \inst|PC_inc_adder|WideAnd2~0_combout\ $ (\inst1|PC_reg|loop0:6:dff|slave|q_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC_inc_adder|WideAnd2~0_combout\,
	datad => \inst1|PC_reg|loop0:6:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|a_inc1\(4));

-- Location: FF_X34_Y30_N21
\inst1|PC_reg|loop0:6:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(4),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:6:dff|master|q_t~q\);

-- Location: LCCOMB_X35_Y30_N8
\inst1|PC_reg|loop0:6:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:6:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:6:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:6:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:6:dff|slave|q_t~feeder_combout\);

-- Location: FF_X35_Y30_N9
\inst1|PC_reg|loop0:6:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:6:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:6:dff|slave|q_t~q\);

-- Location: LCCOMB_X34_Y30_N10
\inst|PC_inc_adder|a_inc1[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(5) = \inst1|PC_reg|loop0:7:dff|slave|q_t~q\ $ (((\inst|PC_inc_adder|WideAnd2~0_combout\ & \inst1|PC_reg|loop0:6:dff|slave|q_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:7:dff|slave|q_t~q\,
	datac => \inst|PC_inc_adder|WideAnd2~0_combout\,
	datad => \inst1|PC_reg|loop0:6:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|a_inc1\(5));

-- Location: FF_X34_Y30_N11
\inst1|PC_reg|loop0:7:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(5),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:7:dff|master|q_t~q\);

-- Location: LCCOMB_X35_Y30_N6
\inst1|PC_reg|loop0:7:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:7:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:7:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:7:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:7:dff|slave|q_t~feeder_combout\);

-- Location: FF_X35_Y30_N7
\inst1|PC_reg|loop0:7:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:7:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:7:dff|slave|q_t~q\);

-- Location: M9K_X33_Y30_N0
\IMEM|srom|rom_block|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001022FFF801021FFD400800000B08C03000408C0200030AC0100040004308200AC04000300023202500043082208C03000108C020000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "IMEM",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:IMEM|altrom:srom|altsyncram:rom_block|altsyncram_lrv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \IMEM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y30_N6
\inst6|MainControlUnit_rkjerh|Jump\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|MainControlUnit_rkjerh|Jump~combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(28)) # (\IMEM|srom|rom_block|auto_generated|q_a\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	combout => \inst6|MainControlUnit_rkjerh|Jump~combout\);

-- Location: LCCOMB_X32_Y30_N12
\inst5|ALU_Ctrl_asa|ALUControl[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU_Ctrl_asa|ALUControl\(1) = (!\inst6|MainControlUnit_rkjerh|Jump~combout\ & ((\IMEM|srom|rom_block|auto_generated|q_a\(2)) # ((\IMEM|srom|rom_block|auto_generated|q_a\(3) & \IMEM|srom|rom_block|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	datad => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	combout => \inst5|ALU_Ctrl_asa|ALUControl\(1));

-- Location: LCCOMB_X32_Y30_N4
\inst5|ALU_Ctrl_asa|ALUControl[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(0)) # ((\IMEM|srom|rom_block|auto_generated|q_a\(1) & !\IMEM|srom|rom_block|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	combout => \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\);

-- Location: LCCOMB_X32_Y30_N28
\inst5|ALU_Ctrl_asa|ALUControl[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(28)) # ((!\IMEM|srom|rom_block|auto_generated|q_a\(31) & \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datad => \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\,
	combout => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\);

-- Location: LCCOMB_X32_Y31_N12
\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~2_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & (!\IMEM|srom|rom_block|auto_generated|q_a\(27) & (\IMEM|srom|rom_block|auto_generated|q_a\(0)))) # (!\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & 
-- (((\inst5|ALU_Ctrl_asa|ALUControl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	datac => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	datad => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~2_combout\);

-- Location: LCCOMB_X31_Y30_N16
\inst5|ALU_Ctrl_asa|ALUControl[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU_Ctrl_asa|ALUControl\(2) = (!\IMEM|srom|rom_block|auto_generated|q_a\(31) & (!\IMEM|srom|rom_block|auto_generated|q_a\(28) & \IMEM|srom|rom_block|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	combout => \inst5|ALU_Ctrl_asa|ALUControl\(2));

-- Location: LCCOMB_X32_Y30_N10
\inst5|ALU|AU|is_sub~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|is_sub~2_combout\ = \inst5|ALU_Ctrl_asa|ALUControl\(1) $ (((\IMEM|srom|rom_block|auto_generated|q_a\(28)) # ((!\IMEM|srom|rom_block|auto_generated|q_a\(31) & \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datac => \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\,
	datad => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	combout => \inst5|ALU|AU|is_sub~2_combout\);

-- Location: LCCOMB_X32_Y30_N16
\inst5|ALU|AU|c_in\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|c_in~combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(28)) # ((\inst5|ALU_Ctrl_asa|ALUControl\(1)) # ((!\IMEM|srom|rom_block|auto_generated|q_a\(31) & \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datab => \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\,
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datad => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	combout => \inst5|ALU|AU|c_in~combout\);

-- Location: LCCOMB_X32_Y31_N28
\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~3_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(27) & (((\inst5|ALU|AU|is_sub~2_combout\ & !\inst5|ALU|AU|c_in~combout\)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(27) & 
-- (\IMEM|srom|rom_block|auto_generated|q_a\(0) $ (((\inst5|ALU|AU|is_sub~2_combout\ & !\inst5|ALU|AU|c_in~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	datac => \inst5|ALU|AU|is_sub~2_combout\,
	datad => \inst5|ALU|AU|c_in~combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~3_combout\);

-- Location: LCCOMB_X32_Y31_N30
\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(2) & ((\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~3_combout\))) # (!\inst5|ALU_Ctrl_asa|ALUControl\(2) & (\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~2_combout\,
	datac => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	datad => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~3_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\);

-- Location: LCCOMB_X31_Y30_N14
\inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(1) & (!\IMEM|srom|rom_block|auto_generated|q_a\(28) & ((\IMEM|srom|rom_block|auto_generated|q_a\(31)) # (!\inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datab => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datad => \inst5|ALU_Ctrl_asa|ALUControl[0]~2_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3_combout\);

-- Location: LCCOMB_X32_Y30_N14
\inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(2) & (\inst5|ALU|AU|is_sub~2_combout\ $ ((\inst5|ALU|AU|c_in~combout\)))) # (!\inst5|ALU_Ctrl_asa|ALUControl\(2) & (((\inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|AU|is_sub~2_combout\,
	datab => \inst5|ALU|AU|c_in~combout\,
	datac => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	datad => \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y30_N6
\inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\ = (\inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3_combout\ & !\inst5|ALU_Ctrl_asa|ALUControl\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~3_combout\,
	datad => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	combout => \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\);

-- Location: LCCOMB_X32_Y31_N14
\inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~3_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & (!\IMEM|srom|rom_block|auto_generated|q_a\(27) & (\IMEM|srom|rom_block|auto_generated|q_a\(1)))) # (!\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & 
-- (((\inst5|ALU_Ctrl_asa|ALUControl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	datac => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	datad => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~3_combout\);

-- Location: LCCOMB_X32_Y31_N18
\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_ovfl~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_ovfl~2_combout\ = (\inst5|ALU|AU|is_sub~2_combout\ & (\inst5|ALU|AU|c_in~combout\ & ((\IMEM|srom|rom_block|auto_generated|q_a\(27)) # (!\IMEM|srom|rom_block|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	datac => \inst5|ALU|AU|is_sub~2_combout\,
	datad => \inst5|ALU|AU|c_in~combout\,
	combout => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_ovfl~2_combout\);

-- Location: LCCOMB_X32_Y31_N24
\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|sum[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|sum\(3) = \inst5|ALU|AU|is_sub~2_combout\ $ (\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_ovfl~2_combout\ $ (((!\IMEM|srom|rom_block|auto_generated|q_a\(27) & \IMEM|srom|rom_block|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	datac => \inst5|ALU|AU|is_sub~2_combout\,
	datad => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_ovfl~2_combout\,
	combout => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|sum\(3));

-- Location: LCCOMB_X32_Y31_N10
\inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(2) & ((\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|sum\(3)))) # (!\inst5|ALU_Ctrl_asa|ALUControl\(2) & (\inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	datac => \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~3_combout\,
	datad => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|sum\(3),
	combout => \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\);

-- Location: LCCOMB_X31_Y31_N8
\inst7|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~0_combout\ = (!\inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\ & (!\inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\ & !\inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\,
	datab => \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\,
	combout => \inst7|comb~0_combout\);

-- Location: LCCOMB_X32_Y31_N8
\inst5|ALU|AU|sub_block|b_out[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|sub_block|b_out[6]~0_combout\ = \inst5|ALU|AU|is_sub~2_combout\ $ (((!\IMEM|srom|rom_block|auto_generated|q_a\(27) & \IMEM|srom|rom_block|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(4),
	datad => \inst5|ALU|AU|is_sub~2_combout\,
	combout => \inst5|ALU|AU|sub_block|b_out[6]~0_combout\);

-- Location: LCCOMB_X31_Y31_N16
\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~6_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(4) & (!\IMEM|srom|rom_block|auto_generated|q_a\(27)))) # (!\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & 
-- (((\inst5|ALU_Ctrl_asa|ALUControl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(4),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datac => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\,
	datad => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	combout => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~6_combout\);

-- Location: LCCOMB_X32_Y31_N6
\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(27) & (((\inst5|ALU|AU|is_sub~2_combout\)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(27) & ((\IMEM|srom|rom_block|auto_generated|q_a\(2) & 
-- (\IMEM|srom|rom_block|auto_generated|q_a\(3) & !\inst5|ALU|AU|is_sub~2_combout\)) # (!\IMEM|srom|rom_block|auto_generated|q_a\(2) & (!\IMEM|srom|rom_block|auto_generated|q_a\(3) & \inst5|ALU|AU|is_sub~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datad => \inst5|ALU|AU|is_sub~2_combout\,
	combout => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16_combout\);

-- Location: LCCOMB_X32_Y30_N22
\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(27) & (((\inst5|ALU|AU|is_sub~2_combout\)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(27) & ((\IMEM|srom|rom_block|auto_generated|q_a\(0) & 
-- (\IMEM|srom|rom_block|auto_generated|q_a\(1) & !\inst5|ALU|AU|is_sub~2_combout\)) # (!\IMEM|srom|rom_block|auto_generated|q_a\(0) & (!\IMEM|srom|rom_block|auto_generated|q_a\(1) & \inst5|ALU|AU|is_sub~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datad => \inst5|ALU|AU|is_sub~2_combout\,
	combout => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\);

-- Location: LCCOMB_X32_Y31_N16
\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~5_combout\ = (((!\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\) # (!\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16_combout\)) # (!\inst5|ALU|AU|c_in~combout\)) # (!\inst5|ALU|AU|is_sub~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|AU|is_sub~2_combout\,
	datab => \inst5|ALU|AU|c_in~combout\,
	datac => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16_combout\,
	datad => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~5_combout\);

-- Location: LCCOMB_X32_Y31_N20
\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(2) & (\inst5|ALU|AU|sub_block|b_out[6]~0_combout\ $ (((!\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~5_combout\))))) # (!\inst5|ALU_Ctrl_asa|ALUControl\(2) & 
-- (((\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	datab => \inst5|ALU|AU|sub_block|b_out[6]~0_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~6_combout\,
	datad => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~5_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\);

-- Location: LCCOMB_X31_Y31_N14
\inst7|comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~2_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(12)) # ((\IMEM|srom|rom_block|auto_generated|q_a\(10)) # ((\IMEM|srom|rom_block|auto_generated|q_a\(11)) # (\IMEM|srom|rom_block|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(12),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(10),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(11),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst7|comb~2_combout\);

-- Location: LCCOMB_X34_Y31_N0
\inst7|comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~1_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(7)) # ((\IMEM|srom|rom_block|auto_generated|q_a\(15)) # ((\IMEM|srom|rom_block|auto_generated|q_a\(13)) # (\IMEM|srom|rom_block|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(7),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(15),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(13),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst7|comb~1_combout\);

-- Location: LCCOMB_X31_Y31_N12
\inst7|comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~3_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(27)) # ((!\inst7|comb~2_combout\ & !\inst7|comb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|comb~2_combout\,
	datac => \inst7|comb~1_combout\,
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	combout => \inst7|comb~3_combout\);

-- Location: LCCOMB_X31_Y31_N26
\inst7|comb~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~4_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(27)) # ((!\IMEM|srom|rom_block|auto_generated|q_a\(6) & !\IMEM|srom|rom_block|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(6),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(9),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	combout => \inst7|comb~4_combout\);

-- Location: LCCOMB_X31_Y31_N24
\inst7|comb~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~5_combout\ = (\inst7|comb~3_combout\ & (\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & (\inst7|comb~4_combout\ & \IMEM|srom|rom_block|auto_generated|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|comb~3_combout\,
	datab => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\,
	datac => \inst7|comb~4_combout\,
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	combout => \inst7|comb~5_combout\);

-- Location: LCCOMB_X31_Y31_N22
\inst7|comb~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~6_combout\ = (!\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\ & (\inst7|comb~0_combout\ & (!\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\ & \inst7|comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\,
	datab => \inst7|comb~0_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\,
	datad => \inst7|comb~5_combout\,
	combout => \inst7|comb~6_combout\);

-- Location: LCCOMB_X32_Y31_N4
\inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~3_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & (!\IMEM|srom|rom_block|auto_generated|q_a\(27) & (\IMEM|srom|rom_block|auto_generated|q_a\(5)))) # (!\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & 
-- (((\inst5|ALU_Ctrl_asa|ALUControl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(5),
	datac => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	datad => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~3_combout\);

-- Location: LCCOMB_X32_Y31_N22
\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|sum[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|sum[3]~2_combout\ = \inst5|ALU|AU|is_sub~2_combout\ $ (((!\IMEM|srom|rom_block|auto_generated|q_a\(27) & \IMEM|srom|rom_block|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(5),
	datad => \inst5|ALU|AU|is_sub~2_combout\,
	combout => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|sum[3]~2_combout\);

-- Location: LCCOMB_X32_Y31_N2
\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~14_combout\ = (\inst5|ALU|AU|is_sub~2_combout\ & (\inst5|ALU|AU|c_in~combout\ & (\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\ & \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|AU|is_sub~2_combout\,
	datab => \inst5|ALU|AU|c_in~combout\,
	datac => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\,
	datad => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~16_combout\,
	combout => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~14_combout\);

-- Location: LCCOMB_X32_Y31_N0
\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c_ovfl\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c_ovfl~combout\ = (\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~14_combout\ & (\inst5|ALU|AU|is_sub~2_combout\ $ (((!\IMEM|srom|rom_block|auto_generated|q_a\(27) & 
-- \IMEM|srom|rom_block|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(4),
	datac => \inst5|ALU|AU|is_sub~2_combout\,
	datad => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c~14_combout\,
	combout => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c_ovfl~combout\);

-- Location: LCCOMB_X32_Y31_N26
\inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(2) & ((\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|sum[3]~2_combout\ $ (\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c_ovfl~combout\)))) # 
-- (!\inst5|ALU_Ctrl_asa|ALUControl\(2) & (\inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	datab => \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~3_combout\,
	datac => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|sum[3]~2_combout\,
	datad => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c_ovfl~combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\);

-- Location: LCCOMB_X32_Y30_N24
\inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~3_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & (!\IMEM|srom|rom_block|auto_generated|q_a\(27) & ((\IMEM|srom|rom_block|auto_generated|q_a\(3))))) # (!\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & 
-- (((\inst5|ALU_Ctrl_asa|ALUControl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datab => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datad => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~3_combout\);

-- Location: LCCOMB_X32_Y30_N30
\inst5|ALU|AU|sub_block|b_out[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|sub_block|b_out[4]~1_combout\ = \inst5|ALU|AU|is_sub~2_combout\ $ (((\IMEM|srom|rom_block|auto_generated|q_a\(2) & !\IMEM|srom|rom_block|auto_generated|q_a\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datad => \inst5|ALU|AU|is_sub~2_combout\,
	combout => \inst5|ALU|AU|sub_block|b_out[4]~1_combout\);

-- Location: LCCOMB_X32_Y30_N26
\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c[1]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c[1]~15_combout\ = (\inst5|ALU|AU|is_sub~2_combout\ & (\inst5|ALU|AU|c_in~combout\ & (\inst5|ALU|AU|sub_block|b_out[4]~1_combout\ & \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|AU|is_sub~2_combout\,
	datab => \inst5|ALU|AU|c_in~combout\,
	datac => \inst5|ALU|AU|sub_block|b_out[4]~1_combout\,
	datad => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\,
	combout => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c[1]~15_combout\);

-- Location: LCCOMB_X32_Y30_N20
\inst5|ALU|AU|sub_block|b_out[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|sub_block|b_out[5]~2_combout\ = \inst5|ALU|AU|is_sub~2_combout\ $ (((!\IMEM|srom|rom_block|auto_generated|q_a\(27) & \IMEM|srom|rom_block|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datad => \inst5|ALU|AU|is_sub~2_combout\,
	combout => \inst5|ALU|AU|sub_block|b_out[5]~2_combout\);

-- Location: LCCOMB_X32_Y30_N2
\inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(2) & ((\inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c[1]~15_combout\ $ (\inst5|ALU|AU|sub_block|b_out[5]~2_combout\)))) # (!\inst5|ALU_Ctrl_asa|ALUControl\(2) & 
-- (\inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	datab => \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~3_combout\,
	datac => \inst5|ALU|AU|decode|loop0:1:cla4_adder_inst|c[1]~15_combout\,
	datad => \inst5|ALU|AU|sub_block|b_out[5]~2_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\);

-- Location: LCCOMB_X32_Y30_N8
\inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~3_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(2) & (!\IMEM|srom|rom_block|auto_generated|q_a\(27)))) # (!\inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\ & 
-- (((\inst5|ALU_Ctrl_asa|ALUControl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datab => \inst5|ALU_Ctrl_asa|ALUControl[0]~4_combout\,
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(27),
	datad => \inst5|ALU_Ctrl_asa|ALUControl\(1),
	combout => \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~3_combout\);

-- Location: LCCOMB_X32_Y30_N18
\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~10_combout\ = (\inst5|ALU|AU|is_sub~2_combout\ & (\inst5|ALU|AU|c_in~combout\ & \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|AU|is_sub~2_combout\,
	datab => \inst5|ALU|AU|c_in~combout\,
	datac => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~11_combout\,
	combout => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~10_combout\);

-- Location: LCCOMB_X32_Y30_N0
\inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl\(2) & ((\inst5|ALU|AU|sub_block|b_out[4]~1_combout\ $ (\inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~10_combout\)))) # (!\inst5|ALU_Ctrl_asa|ALUControl\(2) & 
-- (\inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU_Ctrl_asa|ALUControl\(2),
	datab => \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~3_combout\,
	datac => \inst5|ALU|AU|sub_block|b_out[4]~1_combout\,
	datad => \inst5|ALU|AU|decode|loop0:0:cla4_adder_inst|c_out~10_combout\,
	combout => \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\);

-- Location: LCCOMB_X31_Y31_N20
\inst7|comb~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|comb~7_combout\ = (\inst7|comb~6_combout\ & (!\inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\ & (!\inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\ & !\inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|comb~6_combout\,
	datab => \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\,
	datad => \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\,
	combout => \inst7|comb~7_combout\);

-- Location: LCCOMB_X31_Y31_N28
\inst5|ALU_Ctrl_asa|ALUControl~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|ALU_Ctrl_asa|ALUControl~3_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(2) & (!\IMEM|srom|rom_block|auto_generated|q_a\(28) & !\IMEM|srom|rom_block|auto_generated|q_a\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	combout => \inst5|ALU_Ctrl_asa|ALUControl~3_combout\);

-- Location: LCCOMB_X31_Y30_N12
\inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\ = (\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\ $ (((\IMEM|srom|rom_block|auto_generated|q_a\(0) & \inst7|comb~7_combout\))))) # 
-- (!\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	datab => \inst7|comb~7_combout\,
	datac => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	datad => \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\);

-- Location: LCCOMB_X31_Y30_N20
\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~1_combout\ = \IMEM|srom|rom_block|auto_generated|q_a\(1) $ (((\IMEM|srom|rom_block|auto_generated|q_a\(0) & (\inst6|MainControlUnit_rkjerh|Jump~combout\ & \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	datab => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	datad => \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~1_combout\);

-- Location: LCCOMB_X31_Y30_N18
\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\ = (\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\ $ (((\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~1_combout\ & \inst7|comb~7_combout\))))) # 
-- (!\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~1_combout\,
	datab => \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\,
	datac => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	datad => \inst7|comb~7_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\);

-- Location: LCCOMB_X31_Y30_N0
\inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\ = (\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\ & ((\IMEM|srom|rom_block|auto_generated|q_a\(1)) # ((\IMEM|srom|rom_block|auto_generated|q_a\(0) & 
-- \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\)))) # (!\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(0) & (\IMEM|srom|rom_block|auto_generated|q_a\(1) & 
-- \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(0),
	datab => \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\,
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(1),
	datad => \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\,
	combout => \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X31_Y31_N2
\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~1_combout\ = (\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(2) $ (\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\ $ 
-- (\inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datab => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	datac => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\,
	datad => \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~1_combout\);

-- Location: LCCOMB_X31_Y31_N4
\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~2_combout\ = (\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\ & ((\IMEM|srom|rom_block|auto_generated|q_a\(31)) # (\IMEM|srom|rom_block|auto_generated|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\,
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	combout => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~2_combout\);

-- Location: LCCOMB_X31_Y31_N30
\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\ = (\inst5|ALU_Ctrl_asa|ALUControl~3_combout\) # ((\inst7|comb~7_combout\ & (\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~1_combout\)) # (!\inst7|comb~7_combout\ & 
-- ((\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU_Ctrl_asa|ALUControl~3_combout\,
	datab => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~1_combout\,
	datac => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~2_combout\,
	datad => \inst7|comb~7_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\);

-- Location: LCCOMB_X31_Y30_N28
\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c[1]~1_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(2) & ((\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\) # (\inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\))) # 
-- (!\IMEM|srom|rom_block|auto_generated|q_a\(2) & (\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\ & \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datac => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\,
	datad => \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\,
	combout => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c[1]~1_combout\);

-- Location: LCCOMB_X31_Y30_N22
\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~5_combout\ = \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\ $ (((\inst7|comb~7_combout\ & (\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c[1]~1_combout\ $ (\IMEM|srom|rom_block|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\,
	datab => \inst7|comb~7_combout\,
	datac => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c[1]~1_combout\,
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	combout => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~5_combout\);

-- Location: LCCOMB_X31_Y30_N4
\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(31) & (\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~5_combout\)) # (!\IMEM|srom|rom_block|auto_generated|q_a\(31) & ((\IMEM|srom|rom_block|auto_generated|q_a\(28) 
-- & (\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~5_combout\)) # (!\IMEM|srom|rom_block|auto_generated|q_a\(28) & ((\IMEM|srom|rom_block|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~5_combout\,
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	combout => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\);

-- Location: LCCOMB_X31_Y31_N6
\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~3_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(2) & ((\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\) # (\inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\))) # 
-- (!\IMEM|srom|rom_block|auto_generated|q_a\(2) & (\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\ & \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datac => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\,
	datad => \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~3_combout\);

-- Location: LCCOMB_X31_Y31_N0
\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~4_combout\ = (\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\ & ((\IMEM|srom|rom_block|auto_generated|q_a\(3)) # (\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~3_combout\))) # 
-- (!\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(3) & \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\,
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datad => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~3_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~4_combout\);

-- Location: LCCOMB_X31_Y31_N10
\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~6_combout\ = \IMEM|srom|rom_block|auto_generated|q_a\(4) $ (((\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~4_combout\ & ((\IMEM|srom|rom_block|auto_generated|q_a\(28)) # 
-- (\IMEM|srom|rom_block|auto_generated|q_a\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(4),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(28),
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(31),
	datad => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~4_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~6_combout\);

-- Location: LCCOMB_X31_Y31_N18
\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\ = (\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\ $ (((\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~6_combout\ & \inst7|comb~7_combout\))))) # 
-- (!\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~6_combout\,
	datab => \inst7|comb~7_combout\,
	datac => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	datad => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\);

-- Location: LCCOMB_X31_Y30_N26
\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~0_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(3) & (!\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(4) $ 
-- (\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(3) & (\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\ & (\IMEM|srom|rom_block|auto_generated|q_a\(4) $ 
-- (\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(4),
	datac => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\,
	datad => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\,
	combout => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~0_combout\);

-- Location: LCCOMB_X31_Y30_N30
\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~1_combout\ = (\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~0_combout\ & ((\IMEM|srom|rom_block|auto_generated|q_a\(2) & ((\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\) # 
-- (\inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(2) & (\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\ & \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~0_combout\,
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(2),
	datac => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\,
	datad => \inst7|PC_branch_adder|loop0:0:cla4_adder_inst|c_out~0_combout\,
	combout => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~1_combout\);

-- Location: LCCOMB_X31_Y30_N24
\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c~0_combout\ = (\IMEM|srom|rom_block|auto_generated|q_a\(4) & ((\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\) # ((\IMEM|srom|rom_block|auto_generated|q_a\(3) & 
-- \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(4) & (\IMEM|srom|rom_block|auto_generated|q_a\(3) & (\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\ & 
-- \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMEM|srom|rom_block|auto_generated|q_a\(3),
	datab => \IMEM|srom|rom_block|auto_generated|q_a\(4),
	datac => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\,
	datad => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\,
	combout => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c~0_combout\);

-- Location: LCCOMB_X31_Y30_N8
\inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~1_combout\ = \IMEM|srom|rom_block|auto_generated|q_a\(5) $ (((\inst6|MainControlUnit_rkjerh|Jump~combout\ & ((\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~1_combout\) # 
-- (\inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c_ovfl~1_combout\,
	datab => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	datac => \IMEM|srom|rom_block|auto_generated|q_a\(5),
	datad => \inst7|PC_branch_adder|loop0:1:cla4_adder_inst|c~0_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~1_combout\);

-- Location: LCCOMB_X31_Y30_N2
\inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2_combout\ = (\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2_combout\ $ (((\inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~1_combout\ & \inst7|comb~7_combout\))))) # 
-- (!\inst6|MainControlUnit_rkjerh|Jump~combout\ & (\inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~1_combout\,
	datab => \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2_combout\,
	datac => \inst6|MainControlUnit_rkjerh|Jump~combout\,
	datad => \inst7|comb~7_combout\,
	combout => \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2_combout\);

-- Location: LCCOMB_X31_Y32_N16
\inst3|loop0:7:mux_i|loop0:5:tsb|outp~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:7:mux_i|loop0:5:tsb|outp~9_combout\ = (!\output_sel[1]~input_o\ & ((\output_sel[0]~input_o\ & ((!\output_sel[2]~input_o\))) # (!\output_sel[0]~input_o\ & ((\inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2_combout\) # (\output_sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:7:tsb|outp~2_combout\,
	datab => \output_sel[0]~input_o\,
	datac => \output_sel[1]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:7:mux_i|loop0:5:tsb|outp~9_combout\);

-- Location: LCCOMB_X31_Y32_N28
\inst3|loop0:7:mux_i|dec|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:7:mux_i|dec|Equal0~0_combout\ = (!\output_sel[0]~input_o\ & (!\output_sel[1]~input_o\ & \output_sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output_sel[0]~input_o\,
	datac => \output_sel[1]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\);

-- Location: M9K_X33_Y31_N0
\DMEM|sram|ram_block|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF003FC0000002A80055",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "DMEM",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:DMEM|altram:sram|altsyncram:ram_block|altsyncram_8e91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \IMEM|srom|rom_block|auto_generated|q_a\(29),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DMEM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y32_N4
\inst3|loop0:7:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:7:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\DMEM|sram|ram_block|auto_generated|q_a\(7)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\,
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \DMEM|sram|ram_block|auto_generated|q_a\(7),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:7:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N20
\inst3|loop0:7:mux_i|loop0:5:tsb|outp~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:7:mux_i|loop0:5:tsb|outp~8_combout\ = (\inst3|loop0:7:mux_i|loop0:5:tsb|outp~9_combout\ & (\inst3|loop0:7:mux_i|loop0:4:tsb|outp~0_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datab => \inst3|loop0:7:mux_i|loop0:5:tsb|outp~9_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:7:tsb|outp~2_combout\,
	datad => \inst3|loop0:7:mux_i|loop0:4:tsb|outp~0_combout\,
	combout => \inst3|loop0:7:mux_i|loop0:5:tsb|outp~8_combout\);

-- Location: LCCOMB_X31_Y32_N22
\inst3|loop0:6:mux_i|loop0:5:tsb|outp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:6:mux_i|loop0:5:tsb|outp~7_combout\ = (!\output_sel[1]~input_o\ & ((\output_sel[0]~input_o\ & ((!\output_sel[2]~input_o\))) # (!\output_sel[0]~input_o\ & ((\inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\) # (\output_sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:6:tsb|outp~5_combout\,
	datab => \output_sel[0]~input_o\,
	datac => \output_sel[1]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:6:mux_i|loop0:5:tsb|outp~7_combout\);

-- Location: LCCOMB_X32_Y32_N6
\inst3|loop0:6:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:6:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\DMEM|sram|ram_block|auto_generated|q_a\(6)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\,
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \DMEM|sram|ram_block|auto_generated|q_a\(6),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:6:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N18
\inst3|loop0:6:mux_i|loop0:5:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:6:mux_i|loop0:5:tsb|outp~6_combout\ = (\inst3|loop0:6:mux_i|loop0:5:tsb|outp~7_combout\ & (\inst3|loop0:6:mux_i|loop0:4:tsb|outp~0_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|loop0:6:mux_i|loop0:5:tsb|outp~7_combout\,
	datab => \inst5|ALU|mux2|tsb0|loop0:6:tsb|outp~4_combout\,
	datac => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datad => \inst3|loop0:6:mux_i|loop0:4:tsb|outp~0_combout\,
	combout => \inst3|loop0:6:mux_i|loop0:5:tsb|outp~6_combout\);

-- Location: LCCOMB_X31_Y32_N8
\inst3|loop0:5:mux_i|loop0:5:tsb|outp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:5:mux_i|loop0:5:tsb|outp~7_combout\ = (!\output_sel[1]~input_o\ & ((\output_sel[0]~input_o\ & ((!\output_sel[2]~input_o\))) # (!\output_sel[0]~input_o\ & ((\inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\) # (\output_sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:5:tsb|outp~6_combout\,
	datab => \output_sel[0]~input_o\,
	datac => \output_sel[1]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:5:mux_i|loop0:5:tsb|outp~7_combout\);

-- Location: LCCOMB_X32_Y32_N28
\inst3|loop0:5:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:5:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\DMEM|sram|ram_block|auto_generated|q_a\(5))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\)))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DMEM|sram|ram_block|auto_generated|q_a\(5),
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\,
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:5:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N24
\inst3|loop0:5:mux_i|loop0:5:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:5:mux_i|loop0:5:tsb|outp~6_combout\ = (\inst3|loop0:5:mux_i|loop0:5:tsb|outp~7_combout\ & (\inst3|loop0:5:mux_i|loop0:4:tsb|outp~0_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datab => \inst3|loop0:5:mux_i|loop0:5:tsb|outp~7_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:5:tsb|outp~2_combout\,
	datad => \inst3|loop0:5:mux_i|loop0:4:tsb|outp~0_combout\,
	combout => \inst3|loop0:5:mux_i|loop0:5:tsb|outp~6_combout\);

-- Location: LCCOMB_X31_Y32_N30
\inst3|loop0:4:mux_i|loop0:5:tsb|outp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:4:mux_i|loop0:5:tsb|outp~7_combout\ = (!\output_sel[1]~input_o\ & ((\output_sel[0]~input_o\ & ((!\output_sel[2]~input_o\))) # (!\output_sel[0]~input_o\ & ((\inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\) # (\output_sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_sel[1]~input_o\,
	datab => \inst7|PC_jump_mux|tsb0|loop0:4:tsb|outp~3_combout\,
	datac => \output_sel[0]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:4:mux_i|loop0:5:tsb|outp~7_combout\);

-- Location: LCCOMB_X32_Y32_N22
\inst3|loop0:4:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:4:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\DMEM|sram|ram_block|auto_generated|q_a\(4))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\)))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DMEM|sram|ram_block|auto_generated|q_a\(4),
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\,
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:4:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N10
\inst3|loop0:4:mux_i|loop0:5:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:4:mux_i|loop0:5:tsb|outp~6_combout\ = (\inst3|loop0:4:mux_i|loop0:5:tsb|outp~7_combout\ & (\inst3|loop0:4:mux_i|loop0:4:tsb|outp~0_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datab => \inst5|ALU|mux2|tsb0|loop0:4:tsb|outp~2_combout\,
	datac => \inst3|loop0:4:mux_i|loop0:5:tsb|outp~7_combout\,
	datad => \inst3|loop0:4:mux_i|loop0:4:tsb|outp~0_combout\,
	combout => \inst3|loop0:4:mux_i|loop0:5:tsb|outp~6_combout\);

-- Location: LCCOMB_X31_Y32_N12
\inst3|loop0:3:mux_i|loop0:5:tsb|outp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:3:mux_i|loop0:5:tsb|outp~7_combout\ = (!\output_sel[1]~input_o\ & ((\output_sel[0]~input_o\ & ((!\output_sel[2]~input_o\))) # (!\output_sel[0]~input_o\ & ((\inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\) # (\output_sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_sel[1]~input_o\,
	datab => \inst7|PC_jump_mux|tsb0|loop0:3:tsb|outp~2_combout\,
	datac => \output_sel[0]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:3:mux_i|loop0:5:tsb|outp~7_combout\);

-- Location: LCCOMB_X32_Y32_N16
\inst3|loop0:3:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:3:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\DMEM|sram|ram_block|auto_generated|q_a\(3)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\,
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \DMEM|sram|ram_block|auto_generated|q_a\(3),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:3:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N0
\inst3|loop0:3:mux_i|loop0:5:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:3:mux_i|loop0:5:tsb|outp~6_combout\ = (\inst3|loop0:3:mux_i|loop0:5:tsb|outp~7_combout\ & (\inst3|loop0:3:mux_i|loop0:4:tsb|outp~0_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|loop0:3:mux_i|loop0:5:tsb|outp~7_combout\,
	datab => \inst5|ALU|mux2|tsb0|loop0:3:tsb|outp~2_combout\,
	datac => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datad => \inst3|loop0:3:mux_i|loop0:4:tsb|outp~0_combout\,
	combout => \inst3|loop0:3:mux_i|loop0:5:tsb|outp~6_combout\);

-- Location: LCCOMB_X31_Y32_N2
\inst3|loop0:2:mux_i|loop0:5:tsb|outp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:2:mux_i|loop0:5:tsb|outp~7_combout\ = (!\output_sel[1]~input_o\ & ((\output_sel[0]~input_o\ & ((!\output_sel[2]~input_o\))) # (!\output_sel[0]~input_o\ & ((\inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\) # (\output_sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PC_jump_mux|tsb0|loop0:2:tsb|outp~1_combout\,
	datab => \output_sel[0]~input_o\,
	datac => \output_sel[1]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:2:mux_i|loop0:5:tsb|outp~7_combout\);

-- Location: LCCOMB_X32_Y32_N26
\inst3|loop0:2:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:2:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\DMEM|sram|ram_block|auto_generated|q_a\(2)))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\,
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \DMEM|sram|ram_block|auto_generated|q_a\(2),
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:2:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N6
\inst3|loop0:2:mux_i|loop0:5:tsb|outp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:2:mux_i|loop0:5:tsb|outp~6_combout\ = (\inst3|loop0:2:mux_i|loop0:5:tsb|outp~7_combout\ & (\inst3|loop0:2:mux_i|loop0:4:tsb|outp~0_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALU|mux2|tsb0|loop0:2:tsb|outp~4_combout\,
	datab => \inst3|loop0:2:mux_i|loop0:5:tsb|outp~7_combout\,
	datac => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datad => \inst3|loop0:2:mux_i|loop0:4:tsb|outp~0_combout\,
	combout => \inst3|loop0:2:mux_i|loop0:5:tsb|outp~6_combout\);

-- Location: LCCOMB_X32_Y32_N20
\inst3|loop0:1:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:1:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\DMEM|sram|ram_block|auto_generated|q_a\(1))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\)))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DMEM|sram|ram_block|auto_generated|q_a\(1),
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\,
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:1:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N14
\inst3|loop0:1:mux_i|loop0:5:tsb|outp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:1:mux_i|loop0:5:tsb|outp~4_combout\ = (!\output_sel[1]~input_o\ & (\output_sel[0]~input_o\ $ (\output_sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output_sel[0]~input_o\,
	datac => \output_sel[1]~input_o\,
	datad => \output_sel[2]~input_o\,
	combout => \inst3|loop0:1:mux_i|loop0:5:tsb|outp~4_combout\);

-- Location: LCCOMB_X32_Y32_N10
\inst3|loop0:1:mux_i|loop0:5:tsb|outp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:1:mux_i|loop0:5:tsb|outp~3_combout\ = (\inst3|loop0:1:mux_i|loop0:4:tsb|outp~0_combout\ & (\inst3|loop0:1:mux_i|loop0:5:tsb|outp~4_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datab => \inst3|loop0:1:mux_i|loop0:4:tsb|outp~0_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:1:tsb|outp~2_combout\,
	datad => \inst3|loop0:1:mux_i|loop0:5:tsb|outp~4_combout\,
	combout => \inst3|loop0:1:mux_i|loop0:5:tsb|outp~3_combout\);

-- Location: LCCOMB_X32_Y32_N0
\inst3|loop0:0:mux_i|loop0:4:tsb|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:0:mux_i|loop0:4:tsb|outp~0_combout\ = ((\IMEM|srom|rom_block|auto_generated|q_a\(26) & (\DMEM|sram|ram_block|auto_generated|q_a\(0))) # (!\IMEM|srom|rom_block|auto_generated|q_a\(26) & ((\inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\)))) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DMEM|sram|ram_block|auto_generated|q_a\(0),
	datab => \inst3|loop0:7:mux_i|dec|Equal0~0_combout\,
	datac => \inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\,
	datad => \IMEM|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst3|loop0:0:mux_i|loop0:4:tsb|outp~0_combout\);

-- Location: LCCOMB_X31_Y32_N4
\inst3|loop0:0:mux_i|loop0:5:tsb|outp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|loop0:0:mux_i|loop0:5:tsb|outp~1_combout\ = (\inst3|loop0:0:mux_i|loop0:4:tsb|outp~0_combout\ & (\inst3|loop0:1:mux_i|loop0:5:tsb|outp~4_combout\ & ((\inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\) # 
-- (!\inst3|loop0:7:mux_i|dec|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|loop0:7:mux_i|dec|Equal0~1_combout\,
	datab => \inst5|ALU|mux2|tsb0|loop0:0:tsb|outp~0_combout\,
	datac => \inst3|loop0:0:mux_i|loop0:4:tsb|outp~0_combout\,
	datad => \inst3|loop0:1:mux_i|loop0:5:tsb|outp~4_combout\,
	combout => \inst3|loop0:0:mux_i|loop0:5:tsb|outp~1_combout\);

-- Location: LCCOMB_X34_Y30_N16
\inst|PC_inc_adder|a_inc1[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(6) = \inst1|PC_reg|loop0:8:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:7:dff|slave|q_t~q\ & (\inst|PC_inc_adder|WideAnd2~0_combout\ & \inst1|PC_reg|loop0:6:dff|slave|q_t~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:7:dff|slave|q_t~q\,
	datab => \inst|PC_inc_adder|WideAnd2~0_combout\,
	datac => \inst1|PC_reg|loop0:8:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:6:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|a_inc1\(6));

-- Location: FF_X34_Y30_N17
\inst1|PC_reg|loop0:8:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(6),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:8:dff|master|q_t~q\);

-- Location: FF_X35_Y30_N27
\inst1|PC_reg|loop0:8:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:8:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:8:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N26
\inst|PC_inc_adder|WideAnd5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd5~0_combout\ = (\inst1|PC_reg|loop0:6:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:7:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:8:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:6:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:7:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:8:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd2~0_combout\,
	combout => \inst|PC_inc_adder|WideAnd5~0_combout\);

-- Location: LCCOMB_X36_Y30_N14
\inst|PC_inc_adder|a_inc1[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(7) = \inst1|PC_reg|loop0:9:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:9:dff|slave|q_t~q\,
	datac => \inst|PC_inc_adder|WideAnd5~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(7));

-- Location: FF_X36_Y30_N15
\inst1|PC_reg|loop0:9:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(7),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:9:dff|master|q_t~q\);

-- Location: FF_X35_Y30_N19
\inst1|PC_reg|loop0:9:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:9:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:9:dff|slave|q_t~q\);

-- Location: LCCOMB_X36_Y30_N8
\inst|PC_inc_adder|a_inc1[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(8) = \inst1|PC_reg|loop0:10:dff|slave|q_t~q\ $ (((\inst|PC_inc_adder|WideAnd5~0_combout\ & \inst1|PC_reg|loop0:9:dff|slave|q_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:10:dff|slave|q_t~q\,
	datac => \inst|PC_inc_adder|WideAnd5~0_combout\,
	datad => \inst1|PC_reg|loop0:9:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|a_inc1\(8));

-- Location: FF_X36_Y30_N9
\inst1|PC_reg|loop0:10:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(8),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:10:dff|master|q_t~q\);

-- Location: FF_X35_Y30_N25
\inst1|PC_reg|loop0:10:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:10:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:10:dff|slave|q_t~q\);

-- Location: LCCOMB_X34_Y30_N22
\inst|PC_inc_adder|a_inc1[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(9) = \inst1|PC_reg|loop0:11:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:10:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:9:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:11:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:10:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:9:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd5~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(9));

-- Location: FF_X34_Y30_N23
\inst1|PC_reg|loop0:11:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(9),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:11:dff|master|q_t~q\);

-- Location: FF_X34_Y30_N15
\inst1|PC_reg|loop0:11:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:11:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:11:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N18
\inst|PC_inc_adder|WideAnd8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd8~0_combout\ = (\inst1|PC_reg|loop0:8:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:6:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:9:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:7:dff|slave|q_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:8:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:6:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:9:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:7:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|WideAnd8~0_combout\);

-- Location: LCCOMB_X35_Y30_N24
\inst|PC_inc_adder|WideAnd8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd8~1_combout\ = (\inst1|PC_reg|loop0:11:dff|slave|q_t~q\ & (\inst|PC_inc_adder|WideAnd8~0_combout\ & (\inst1|PC_reg|loop0:10:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:11:dff|slave|q_t~q\,
	datab => \inst|PC_inc_adder|WideAnd8~0_combout\,
	datac => \inst1|PC_reg|loop0:10:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd2~0_combout\,
	combout => \inst|PC_inc_adder|WideAnd8~1_combout\);

-- Location: LCCOMB_X36_Y30_N6
\inst|PC_inc_adder|a_inc1[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(10) = \inst1|PC_reg|loop0:12:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:12:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd8~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(10));

-- Location: FF_X36_Y30_N7
\inst1|PC_reg|loop0:12:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(10),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:12:dff|master|q_t~q\);

-- Location: LCCOMB_X36_Y30_N2
\inst1|PC_reg|loop0:12:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:12:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:12:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:12:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:12:dff|slave|q_t~feeder_combout\);

-- Location: FF_X36_Y30_N3
\inst1|PC_reg|loop0:12:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:12:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:12:dff|slave|q_t~q\);

-- Location: LCCOMB_X36_Y30_N24
\inst|PC_inc_adder|a_inc1[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(11) = \inst1|PC_reg|loop0:13:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:12:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:13:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:12:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd8~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(11));

-- Location: FF_X36_Y30_N25
\inst1|PC_reg|loop0:13:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(11),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:13:dff|master|q_t~q\);

-- Location: LCCOMB_X36_Y30_N12
\inst1|PC_reg|loop0:13:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:13:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:13:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:13:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:13:dff|slave|q_t~feeder_combout\);

-- Location: FF_X36_Y30_N13
\inst1|PC_reg|loop0:13:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:13:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:13:dff|slave|q_t~q\);

-- Location: LCCOMB_X36_Y30_N26
\inst|PC_inc_adder|a_inc1[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(12) = \inst1|PC_reg|loop0:14:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:13:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:12:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:13:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:12:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:14:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd8~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(12));

-- Location: FF_X36_Y30_N27
\inst1|PC_reg|loop0:14:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(12),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:14:dff|master|q_t~q\);

-- Location: FF_X36_Y30_N17
\inst1|PC_reg|loop0:14:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:14:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:14:dff|slave|q_t~q\);

-- Location: LCCOMB_X36_Y30_N28
\inst|PC_inc_adder|WideAnd11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd11~0_combout\ = (\inst1|PC_reg|loop0:13:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:12:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:14:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:13:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:12:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:14:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd8~1_combout\,
	combout => \inst|PC_inc_adder|WideAnd11~0_combout\);

-- Location: LCCOMB_X36_Y30_N10
\inst|PC_inc_adder|a_inc1[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(13) = \inst1|PC_reg|loop0:15:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:15:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd11~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(13));

-- Location: FF_X36_Y30_N11
\inst1|PC_reg|loop0:15:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(13),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:15:dff|master|q_t~q\);

-- Location: FF_X35_Y30_N17
\inst1|PC_reg|loop0:15:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:15:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:15:dff|slave|q_t~q\);

-- Location: LCCOMB_X36_Y30_N4
\inst|PC_inc_adder|a_inc1[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(14) = \inst1|PC_reg|loop0:16:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:15:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:15:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:16:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd11~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(14));

-- Location: FF_X36_Y30_N5
\inst1|PC_reg|loop0:16:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(14),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:16:dff|master|q_t~q\);

-- Location: FF_X36_Y30_N31
\inst1|PC_reg|loop0:16:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:16:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:16:dff|slave|q_t~q\);

-- Location: LCCOMB_X36_Y30_N30
\inst|PC_inc_adder|WideAnd14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd14~0_combout\ = (\inst1|PC_reg|loop0:13:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:14:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:16:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:12:dff|slave|q_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:13:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:14:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:16:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:12:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|WideAnd14~0_combout\);

-- Location: LCCOMB_X36_Y30_N0
\inst|PC_inc_adder|a_inc1[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(15) = \inst1|PC_reg|loop0:17:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:15:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:16:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:15:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:17:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:16:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd11~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(15));

-- Location: FF_X36_Y30_N1
\inst1|PC_reg|loop0:17:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(15),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:17:dff|master|q_t~q\);

-- Location: LCCOMB_X36_Y30_N18
\inst1|PC_reg|loop0:17:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:17:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:17:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:17:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:17:dff|slave|q_t~feeder_combout\);

-- Location: FF_X36_Y30_N19
\inst1|PC_reg|loop0:17:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:17:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:17:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N16
\inst|PC_inc_adder|WideAnd14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd14~1_combout\ = (\inst|PC_inc_adder|WideAnd14~0_combout\ & (\inst1|PC_reg|loop0:17:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:15:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_inc_adder|WideAnd14~0_combout\,
	datab => \inst1|PC_reg|loop0:17:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:15:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd8~1_combout\,
	combout => \inst|PC_inc_adder|WideAnd14~1_combout\);

-- Location: LCCOMB_X37_Y30_N10
\inst|PC_inc_adder|a_inc1[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(16) = \inst1|PC_reg|loop0:18:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PC_reg|loop0:18:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd14~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(16));

-- Location: FF_X37_Y30_N11
\inst1|PC_reg|loop0:18:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(16),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:18:dff|master|q_t~q\);

-- Location: LCCOMB_X37_Y30_N14
\inst1|PC_reg|loop0:18:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:18:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:18:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:18:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:18:dff|slave|q_t~feeder_combout\);

-- Location: FF_X37_Y30_N15
\inst1|PC_reg|loop0:18:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:18:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:18:dff|slave|q_t~q\);

-- Location: LCCOMB_X37_Y30_N8
\inst|PC_inc_adder|a_inc1[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(17) = \inst1|PC_reg|loop0:19:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:18:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:18:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:19:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd14~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(17));

-- Location: FF_X37_Y30_N9
\inst1|PC_reg|loop0:19:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(17),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:19:dff|master|q_t~q\);

-- Location: FF_X37_Y30_N5
\inst1|PC_reg|loop0:19:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:19:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:19:dff|slave|q_t~q\);

-- Location: LCCOMB_X37_Y30_N22
\inst|PC_inc_adder|a_inc1[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(18) = \inst1|PC_reg|loop0:20:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:19:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:18:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:20:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:19:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:18:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd14~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(18));

-- Location: FF_X37_Y30_N23
\inst1|PC_reg|loop0:20:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(18),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:20:dff|master|q_t~q\);

-- Location: FF_X37_Y30_N7
\inst1|PC_reg|loop0:20:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:20:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:20:dff|slave|q_t~q\);

-- Location: LCCOMB_X37_Y30_N18
\inst|PC_inc_adder|WideAnd17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd17~0_combout\ = (\inst1|PC_reg|loop0:20:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:19:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:18:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:20:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:19:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:18:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd14~1_combout\,
	combout => \inst|PC_inc_adder|WideAnd17~0_combout\);

-- Location: LCCOMB_X37_Y30_N28
\inst|PC_inc_adder|a_inc1[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(19) = \inst1|PC_reg|loop0:21:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:21:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd17~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(19));

-- Location: FF_X37_Y30_N29
\inst1|PC_reg|loop0:21:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(19),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:21:dff|master|q_t~q\);

-- Location: LCCOMB_X37_Y30_N20
\inst1|PC_reg|loop0:21:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:21:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:21:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:21:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:21:dff|slave|q_t~feeder_combout\);

-- Location: FF_X37_Y30_N21
\inst1|PC_reg|loop0:21:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:21:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:21:dff|slave|q_t~q\);

-- Location: LCCOMB_X37_Y30_N24
\inst|PC_inc_adder|WideAnd20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd20~0_combout\ = (\inst1|PC_reg|loop0:20:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:18:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:19:dff|slave|q_t~q\ & \inst1|PC_reg|loop0:21:dff|slave|q_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:20:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:18:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:19:dff|slave|q_t~q\,
	datad => \inst1|PC_reg|loop0:21:dff|slave|q_t~q\,
	combout => \inst|PC_inc_adder|WideAnd20~0_combout\);

-- Location: LCCOMB_X37_Y30_N26
\inst|PC_inc_adder|a_inc1[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(20) = \inst1|PC_reg|loop0:22:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:21:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PC_reg|loop0:21:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:22:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd17~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(20));

-- Location: FF_X37_Y30_N27
\inst1|PC_reg|loop0:22:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(20),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:22:dff|master|q_t~q\);

-- Location: FF_X35_Y30_N29
\inst1|PC_reg|loop0:22:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:22:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:22:dff|slave|q_t~q\);

-- Location: LCCOMB_X37_Y30_N16
\inst|PC_inc_adder|a_inc1[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(21) = \inst1|PC_reg|loop0:23:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:21:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:22:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:23:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:21:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:22:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd17~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(21));

-- Location: FF_X37_Y30_N17
\inst1|PC_reg|loop0:23:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(21),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:23:dff|master|q_t~q\);

-- Location: LCCOMB_X37_Y30_N30
\inst1|PC_reg|loop0:23:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:23:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:23:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:23:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:23:dff|slave|q_t~feeder_combout\);

-- Location: FF_X37_Y30_N31
\inst1|PC_reg|loop0:23:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:23:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:23:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N28
\inst|PC_inc_adder|WideAnd20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd20~1_combout\ = (\inst|PC_inc_adder|WideAnd20~0_combout\ & (\inst1|PC_reg|loop0:23:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:22:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_inc_adder|WideAnd20~0_combout\,
	datab => \inst1|PC_reg|loop0:23:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:22:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd14~1_combout\,
	combout => \inst|PC_inc_adder|WideAnd20~1_combout\);

-- Location: LCCOMB_X34_Y30_N24
\inst|PC_inc_adder|a_inc1[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(22) = \inst1|PC_reg|loop0:24:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PC_reg|loop0:24:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd20~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(22));

-- Location: FF_X34_Y30_N25
\inst1|PC_reg|loop0:24:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(22),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:24:dff|master|q_t~q\);

-- Location: LCCOMB_X34_Y30_N4
\inst1|PC_reg|loop0:24:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:24:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:24:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:24:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:24:dff|slave|q_t~feeder_combout\);

-- Location: FF_X34_Y30_N5
\inst1|PC_reg|loop0:24:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:24:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:24:dff|slave|q_t~q\);

-- Location: LCCOMB_X34_Y30_N30
\inst|PC_inc_adder|a_inc1[23]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(23) = \inst1|PC_reg|loop0:25:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:24:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:25:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:24:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd20~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(23));

-- Location: FF_X34_Y30_N31
\inst1|PC_reg|loop0:25:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(23),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:25:dff|master|q_t~q\);

-- Location: LCCOMB_X34_Y30_N26
\inst1|PC_reg|loop0:25:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:25:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:25:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:25:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:25:dff|slave|q_t~feeder_combout\);

-- Location: FF_X34_Y30_N27
\inst1|PC_reg|loop0:25:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:25:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:25:dff|slave|q_t~q\);

-- Location: LCCOMB_X34_Y30_N12
\inst|PC_inc_adder|a_inc1[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(24) = \inst1|PC_reg|loop0:26:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:25:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:24:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:25:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:26:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:24:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd20~1_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(24));

-- Location: FF_X34_Y30_N13
\inst1|PC_reg|loop0:26:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(24),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:26:dff|master|q_t~q\);

-- Location: LCCOMB_X34_Y30_N0
\inst1|PC_reg|loop0:26:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:26:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:26:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:26:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:26:dff|slave|q_t~feeder_combout\);

-- Location: FF_X34_Y30_N1
\inst1|PC_reg|loop0:26:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:26:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:26:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N20
\inst|PC_inc_adder|WideAnd23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd23~0_combout\ = (\inst1|PC_reg|loop0:26:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:24:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:25:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:26:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:24:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:25:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd20~1_combout\,
	combout => \inst|PC_inc_adder|WideAnd23~0_combout\);

-- Location: LCCOMB_X35_Y30_N22
\inst|PC_inc_adder|a_inc1[25]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(25) = \inst1|PC_reg|loop0:27:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PC_reg|loop0:27:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd23~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(25));

-- Location: FF_X35_Y30_N23
\inst1|PC_reg|loop0:27:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(25),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:27:dff|master|q_t~q\);

-- Location: FF_X35_Y30_N11
\inst1|PC_reg|loop0:27:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	asdata => \inst1|PC_reg|loop0:27:dff|master|q_t~q\,
	clrn => \clk~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:27:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N2
\inst|PC_inc_adder|a_inc1[26]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(26) = \inst1|PC_reg|loop0:28:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:27:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:28:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:27:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd23~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(26));

-- Location: FF_X35_Y30_N3
\inst1|PC_reg|loop0:28:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(26),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:28:dff|master|q_t~q\);

-- Location: LCCOMB_X38_Y30_N8
\inst1|PC_reg|loop0:28:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:28:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:28:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:28:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:28:dff|slave|q_t~feeder_combout\);

-- Location: FF_X38_Y30_N9
\inst1|PC_reg|loop0:28:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:28:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:28:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N30
\inst|PC_inc_adder|a_inc1[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(27) = \inst1|PC_reg|loop0:29:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:28:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:27:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:28:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:29:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:27:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd23~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(27));

-- Location: FF_X35_Y30_N31
\inst1|PC_reg|loop0:29:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(27),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:29:dff|master|q_t~q\);

-- Location: LCCOMB_X36_Y30_N22
\inst1|PC_reg|loop0:29:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:29:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:29:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:29:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:29:dff|slave|q_t~feeder_combout\);

-- Location: FF_X36_Y30_N23
\inst1|PC_reg|loop0:29:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:29:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:29:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N10
\inst|PC_inc_adder|WideAnd26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|WideAnd26~0_combout\ = (\inst1|PC_reg|loop0:28:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:29:dff|slave|q_t~q\ & (\inst1|PC_reg|loop0:27:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:28:dff|slave|q_t~q\,
	datab => \inst1|PC_reg|loop0:29:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:27:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd23~0_combout\,
	combout => \inst|PC_inc_adder|WideAnd26~0_combout\);

-- Location: LCCOMB_X35_Y30_N4
\inst|PC_inc_adder|a_inc1[28]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(28) = \inst1|PC_reg|loop0:30:dff|slave|q_t~q\ $ (\inst|PC_inc_adder|WideAnd26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PC_reg|loop0:30:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd26~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(28));

-- Location: FF_X35_Y30_N5
\inst1|PC_reg|loop0:30:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(28),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:30:dff|master|q_t~q\);

-- Location: LCCOMB_X36_Y30_N20
\inst1|PC_reg|loop0:30:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:30:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:30:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PC_reg|loop0:30:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:30:dff|slave|q_t~feeder_combout\);

-- Location: FF_X36_Y30_N21
\inst1|PC_reg|loop0:30:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:30:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:30:dff|slave|q_t~q\);

-- Location: LCCOMB_X35_Y30_N14
\inst|PC_inc_adder|a_inc1[29]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|PC_inc_adder|a_inc1\(29) = \inst1|PC_reg|loop0:31:dff|slave|q_t~q\ $ (((\inst1|PC_reg|loop0:30:dff|slave|q_t~q\ & \inst|PC_inc_adder|WideAnd26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC_reg|loop0:30:dff|slave|q_t~q\,
	datac => \inst1|PC_reg|loop0:31:dff|slave|q_t~q\,
	datad => \inst|PC_inc_adder|WideAnd26~0_combout\,
	combout => \inst|PC_inc_adder|a_inc1\(29));

-- Location: FF_X35_Y30_N15
\inst1|PC_reg|loop0:31:dff|master|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst|PC_inc_adder|a_inc1\(29),
	clrn => \ALT_INV_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:31:dff|master|q_t~q\);

-- Location: LCCOMB_X37_Y30_N12
\inst1|PC_reg|loop0:31:dff|slave|q_t~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|PC_reg|loop0:31:dff|slave|q_t~feeder_combout\ = \inst1|PC_reg|loop0:31:dff|master|q_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PC_reg|loop0:31:dff|master|q_t~q\,
	combout => \inst1|PC_reg|loop0:31:dff|slave|q_t~feeder_combout\);

-- Location: FF_X37_Y30_N13
\inst1|PC_reg|loop0:31:dff|slave|q_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \global_reset~inputclkctrl_outclk\,
	d => \inst1|PC_reg|loop0:31:dff|slave|q_t~feeder_combout\,
	clrn => \clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC_reg|loop0:31:dff|slave|q_t~q\);

ww_IMEM_out(31) <= \IMEM_out[31]~output_o\;

ww_IMEM_out(30) <= \IMEM_out[30]~output_o\;

ww_IMEM_out(29) <= \IMEM_out[29]~output_o\;

ww_IMEM_out(28) <= \IMEM_out[28]~output_o\;

ww_IMEM_out(27) <= \IMEM_out[27]~output_o\;

ww_IMEM_out(26) <= \IMEM_out[26]~output_o\;

ww_IMEM_out(25) <= \IMEM_out[25]~output_o\;

ww_IMEM_out(24) <= \IMEM_out[24]~output_o\;

ww_IMEM_out(23) <= \IMEM_out[23]~output_o\;

ww_IMEM_out(22) <= \IMEM_out[22]~output_o\;

ww_IMEM_out(21) <= \IMEM_out[21]~output_o\;

ww_IMEM_out(20) <= \IMEM_out[20]~output_o\;

ww_IMEM_out(19) <= \IMEM_out[19]~output_o\;

ww_IMEM_out(18) <= \IMEM_out[18]~output_o\;

ww_IMEM_out(17) <= \IMEM_out[17]~output_o\;

ww_IMEM_out(16) <= \IMEM_out[16]~output_o\;

ww_IMEM_out(15) <= \IMEM_out[15]~output_o\;

ww_IMEM_out(14) <= \IMEM_out[14]~output_o\;

ww_IMEM_out(13) <= \IMEM_out[13]~output_o\;

ww_IMEM_out(12) <= \IMEM_out[12]~output_o\;

ww_IMEM_out(11) <= \IMEM_out[11]~output_o\;

ww_IMEM_out(10) <= \IMEM_out[10]~output_o\;

ww_IMEM_out(9) <= \IMEM_out[9]~output_o\;

ww_IMEM_out(8) <= \IMEM_out[8]~output_o\;

ww_IMEM_out(7) <= \IMEM_out[7]~output_o\;

ww_IMEM_out(6) <= \IMEM_out[6]~output_o\;

ww_IMEM_out(5) <= \IMEM_out[5]~output_o\;

ww_IMEM_out(4) <= \IMEM_out[4]~output_o\;

ww_IMEM_out(3) <= \IMEM_out[3]~output_o\;

ww_IMEM_out(2) <= \IMEM_out[2]~output_o\;

ww_IMEM_out(1) <= \IMEM_out[1]~output_o\;

ww_IMEM_out(0) <= \IMEM_out[0]~output_o\;

ww_output_sys(7) <= \output_sys[7]~output_o\;

ww_output_sys(6) <= \output_sys[6]~output_o\;

ww_output_sys(5) <= \output_sys[5]~output_o\;

ww_output_sys(4) <= \output_sys[4]~output_o\;

ww_output_sys(3) <= \output_sys[3]~output_o\;

ww_output_sys(2) <= \output_sys[2]~output_o\;

ww_output_sys(1) <= \output_sys[1]~output_o\;

ww_output_sys(0) <= \output_sys[0]~output_o\;

ww_PC_out(31) <= \PC_out[31]~output_o\;

ww_PC_out(30) <= \PC_out[30]~output_o\;

ww_PC_out(29) <= \PC_out[29]~output_o\;

ww_PC_out(28) <= \PC_out[28]~output_o\;

ww_PC_out(27) <= \PC_out[27]~output_o\;

ww_PC_out(26) <= \PC_out[26]~output_o\;

ww_PC_out(25) <= \PC_out[25]~output_o\;

ww_PC_out(24) <= \PC_out[24]~output_o\;

ww_PC_out(23) <= \PC_out[23]~output_o\;

ww_PC_out(22) <= \PC_out[22]~output_o\;

ww_PC_out(21) <= \PC_out[21]~output_o\;

ww_PC_out(20) <= \PC_out[20]~output_o\;

ww_PC_out(19) <= \PC_out[19]~output_o\;

ww_PC_out(18) <= \PC_out[18]~output_o\;

ww_PC_out(17) <= \PC_out[17]~output_o\;

ww_PC_out(16) <= \PC_out[16]~output_o\;

ww_PC_out(15) <= \PC_out[15]~output_o\;

ww_PC_out(14) <= \PC_out[14]~output_o\;

ww_PC_out(13) <= \PC_out[13]~output_o\;

ww_PC_out(12) <= \PC_out[12]~output_o\;

ww_PC_out(11) <= \PC_out[11]~output_o\;

ww_PC_out(10) <= \PC_out[10]~output_o\;

ww_PC_out(9) <= \PC_out[9]~output_o\;

ww_PC_out(8) <= \PC_out[8]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(0) <= \PC_out[0]~output_o\;
END structure;


