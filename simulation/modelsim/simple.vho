-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.1 Build 218 06/01/2016 SJ Lite Edition"

-- DATE "06/23/2016 19:59:21"

-- 
-- Device: Altera EPM570T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	simple IS
    PORT (
	TX_OUTPUT : OUT std_logic;
	OSC_CLK : IN std_logic;
	steps : IN std_logic_vector(2 DOWNTO 0);
	dirs : IN std_logic_vector(2 DOWNTO 0);
	TxFree : OUT std_logic;
	BufferFull : OUT std_logic;
	BufferEmpty : OUT std_logic
	);
END simple;

-- Design Ports Information


ARCHITECTURE structure OF simple IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TX_OUTPUT : std_logic;
SIGNAL ww_OSC_CLK : std_logic;
SIGNAL ww_steps : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dirs : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_TxFree : std_logic;
SIGNAL ww_BufferFull : std_logic;
SIGNAL ww_BufferEmpty : std_logic;
SIGNAL \OSC_CLK~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst3|PB_sync_0~regout\ : std_logic;
SIGNAL \inst3|PB_sync_1~regout\ : std_logic;
SIGNAL \inst3|comb~0\ : std_logic;
SIGNAL \inst3|PB_down~0_combout\ : std_logic;
SIGNAL \inst3|PB_state~regout\ : std_logic;
SIGNAL \inst8|PB_sync_0~regout\ : std_logic;
SIGNAL \inst8|PB_sync_1~regout\ : std_logic;
SIGNAL \inst8|PB_down~0_combout\ : std_logic;
SIGNAL \inst8|PB_state~regout\ : std_logic;
SIGNAL \inst8|comb~0\ : std_logic;
SIGNAL \inst7|PB_sync_0~regout\ : std_logic;
SIGNAL \inst7|PB_sync_1~regout\ : std_logic;
SIGNAL \inst7|PB_down~0_combout\ : std_logic;
SIGNAL \inst7|PB_state~regout\ : std_logic;
SIGNAL \inst7|comb~0\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst19~1_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|valid_wreq~combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|_~2_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|_~3_combout\ : std_logic;
SIGNAL \inst|changed\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_full~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_full~regout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|_~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_empty~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ : std_logic;
SIGNAL \ewrq|Mux1~4_combout\ : std_logic;
SIGNAL \ewrq|Mux0~2_combout\ : std_logic;
SIGNAL \ewrq|Mux1~2_combout\ : std_logic;
SIGNAL \ewrq|Mux1~0_combout\ : std_logic;
SIGNAL \ewrq|Mux1~1_combout\ : std_logic;
SIGNAL \ewrq|Equal0~0_combout\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[1]~33\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[1]~33COUT1_35\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[2]~31\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[2]~31COUT1_36\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[3]~29\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[4]~27\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[4]~27COUT1_37\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[5]~25\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[5]~25COUT1_38\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[6]~23\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[6]~23COUT1_39\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[7]~21\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[7]~21COUT1_40\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[8]~19\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[9]~17\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[9]~17COUT1_41\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[10]~15\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[10]~15COUT1_42\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[11]~13\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[11]~13COUT1_43\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[12]~11\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[12]~11COUT1_44\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[13]~9\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[14]~7\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[14]~7COUT1_45\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[15]~5\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[15]~5COUT1_46\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[16]~3\ : std_logic;
SIGNAL \ewrq|tickgen|Acc[16]~3COUT1_47\ : std_logic;
SIGNAL \ewrq|Mux2~0_combout\ : std_logic;
SIGNAL \ewrq|Mux0~3_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~17\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~15\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~14\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~13\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~16_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~3\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~18\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~19_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~20_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|valid_rreq~combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~40\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~46\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~45\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~43\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~44\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~47_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~41\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~9\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~42_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~48_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[5]~10\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~54\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~55\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~11\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~56_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~52\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~51\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~50\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~53_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~57_combout\ : std_logic;
SIGNAL \ewrq|TxD_shift~6_combout\ : std_logic;
SIGNAL \ewrq|TxD_shift[1]~1_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~37\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~36\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~38_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~33\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~34\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~30\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~31\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~7\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~32_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~39_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~21\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~22\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~5\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~23_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~26\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~25\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~27\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~24\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~28_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~29_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~0\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~6\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~4\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~9\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~8\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\ : std_logic;
SIGNAL \ewrq|TxD~0_combout\ : std_logic;
SIGNAL \steps~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|last_data_node[0]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][13]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][10]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|last_data_node[1]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][11]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst8|PB_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][14]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst7|PB_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|output_buffer|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][9]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|PB_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|last_data_node[2]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|data_buffer\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ewrq|TxD_shift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][6]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][4]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dirs~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][5]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][7]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][2]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][0]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ewrq|TxD_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][12]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ewrq|tickgen|Acc\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][3]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][15]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|data_node[0][8]|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|fifo_state|ALT_INV_state_full~regout\ : std_logic;

BEGIN

TX_OUTPUT <= ww_TX_OUTPUT;
ww_OSC_CLK <= OSC_CLK;
ww_steps <= steps;
ww_dirs <= dirs;
TxFree <= ww_TxFree;
BufferFull <= ww_BufferFull;
BufferEmpty <= ww_BufferEmpty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst6|myFIFO|subfifo|fifo_state|ALT_INV_state_full~regout\ <= NOT \inst6|myFIFO|subfifo|fifo_state|state_full~regout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OSC_CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_OSC_CLK,
	combout => \OSC_CLK~combout\);

-- Location: LC_X3_Y4_N9
\~GND\ : maxii_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\steps[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_steps(0),
	combout => \steps~combout\(0));

-- Location: LC_X2_Y7_N4
\inst3|PB_sync_0\ : maxii_lcell
-- Equation(s):
-- \inst3|PB_sync_0~regout\ = DFFEAS((((!\steps~combout\(0)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \steps~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|PB_sync_0~regout\);

-- Location: LC_X2_Y7_N1
\inst3|PB_sync_1\ : maxii_lcell
-- Equation(s):
-- \inst3|comb~0\ = ((D3_PB_sync_1 $ (\inst3|PB_state~regout\)))
-- \inst3|PB_sync_1~regout\ = DFFEAS(\inst3|comb~0\, GLOBAL(\OSC_CLK~combout\), VCC, , , \inst3|PB_sync_0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst3|PB_sync_0~regout\,
	datad => \inst3|PB_state~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|comb~0\,
	regout => \inst3|PB_sync_1~regout\);

-- Location: LC_X1_Y7_N6
\inst3|PB_cnt[0]\ : maxii_lcell
-- Equation(s):
-- \inst3|PB_cnt\(0) = DFFEAS(((!\inst3|PB_cnt\(0) & (\inst3|PB_state~regout\ $ (\inst3|PB_sync_1~regout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst3|PB_state~regout\,
	datac => \inst3|PB_cnt\(0),
	datad => \inst3|PB_sync_1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|PB_cnt\(0));

-- Location: LC_X1_Y7_N7
\inst3|PB_cnt[1]\ : maxii_lcell
-- Equation(s):
-- \inst3|PB_cnt\(1) = DFFEAS((\inst3|PB_cnt\(0) & (!\inst3|PB_cnt\(1) & (\inst3|PB_state~regout\ $ (\inst3|PB_sync_1~regout\)))) # (!\inst3|PB_cnt\(0) & (\inst3|PB_cnt\(1) & (\inst3|PB_state~regout\ $ (\inst3|PB_sync_1~regout\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst3|PB_cnt\(0),
	datab => \inst3|PB_state~regout\,
	datac => \inst3|PB_cnt\(1),
	datad => \inst3|PB_sync_1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|PB_cnt\(1));

-- Location: LC_X1_Y7_N9
\inst3|PB_cnt[2]\ : maxii_lcell
-- Equation(s):
-- \inst3|PB_cnt\(2) = DFFEAS((\inst3|comb~0\ & (\inst3|PB_cnt\(2) $ (((\inst3|PB_cnt\(0) & \inst3|PB_cnt\(1)))))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst3|PB_cnt\(0),
	datab => \inst3|comb~0\,
	datac => \inst3|PB_cnt\(1),
	datad => \inst3|PB_cnt\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|PB_cnt\(2));

-- Location: LC_X1_Y7_N4
\inst3|PB_down~0\ : maxii_lcell
-- Equation(s):
-- \inst3|PB_down~0_combout\ = ((\inst3|PB_cnt\(1) & (\inst3|PB_cnt\(0) & \inst3|PB_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|PB_cnt\(1),
	datac => \inst3|PB_cnt\(0),
	datad => \inst3|PB_cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|PB_down~0_combout\);

-- Location: LC_X2_Y7_N2
\inst3|PB_state\ : maxii_lcell
-- Equation(s):
-- \inst3|PB_state~regout\ = DFFEAS(((\inst3|PB_down~0_combout\ & (\inst3|PB_sync_1~regout\)) # (!\inst3|PB_down~0_combout\ & ((\inst3|PB_state~regout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst3|PB_sync_1~regout\,
	datac => \inst3|PB_down~0_combout\,
	datad => \inst3|PB_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|PB_state~regout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\steps[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_steps(2),
	combout => \steps~combout\(2));

-- Location: LC_X2_Y7_N9
\inst8|PB_sync_0\ : maxii_lcell
-- Equation(s):
-- \inst8|PB_sync_0~regout\ = DFFEAS((((!\steps~combout\(2)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \steps~combout\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|PB_sync_0~regout\);

-- Location: LC_X3_Y7_N3
\inst8|PB_sync_1\ : maxii_lcell
-- Equation(s):
-- \inst8|comb~0\ = ((D1_PB_sync_1 $ (\inst8|PB_state~regout\)))
-- \inst8|PB_sync_1~regout\ = DFFEAS(\inst8|comb~0\, GLOBAL(\OSC_CLK~combout\), VCC, , , \inst8|PB_sync_0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst8|PB_sync_0~regout\,
	datad => \inst8|PB_state~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|comb~0\,
	regout => \inst8|PB_sync_1~regout\);

-- Location: LC_X3_Y7_N7
\inst8|PB_cnt[0]\ : maxii_lcell
-- Equation(s):
-- \inst8|PB_cnt\(0) = DFFEAS(((!\inst8|PB_cnt\(0) & (\inst8|PB_state~regout\ $ (\inst8|PB_sync_1~regout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst8|PB_state~regout\,
	datac => \inst8|PB_cnt\(0),
	datad => \inst8|PB_sync_1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|PB_cnt\(0));

-- Location: LC_X3_Y7_N8
\inst8|PB_cnt[1]\ : maxii_lcell
-- Equation(s):
-- \inst8|PB_cnt\(1) = DFFEAS((\inst8|PB_cnt\(1) & (!\inst8|PB_cnt\(0) & (\inst8|PB_state~regout\ $ (\inst8|PB_sync_1~regout\)))) # (!\inst8|PB_cnt\(1) & (\inst8|PB_cnt\(0) & (\inst8|PB_state~regout\ $ (\inst8|PB_sync_1~regout\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst8|PB_cnt\(1),
	datab => \inst8|PB_state~regout\,
	datac => \inst8|PB_cnt\(0),
	datad => \inst8|PB_sync_1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|PB_cnt\(1));

-- Location: LC_X3_Y7_N4
\inst8|PB_cnt[2]\ : maxii_lcell
-- Equation(s):
-- \inst8|PB_cnt\(2) = DFFEAS((\inst8|comb~0\ & (\inst8|PB_cnt\(2) $ (((\inst8|PB_cnt\(0) & \inst8|PB_cnt\(1)))))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst8|PB_cnt\(2),
	datab => \inst8|comb~0\,
	datac => \inst8|PB_cnt\(0),
	datad => \inst8|PB_cnt\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|PB_cnt\(2));

-- Location: LC_X3_Y7_N5
\inst8|PB_down~0\ : maxii_lcell
-- Equation(s):
-- \inst8|PB_down~0_combout\ = ((\inst8|PB_cnt\(0) & (\inst8|PB_cnt\(2) & \inst8|PB_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|PB_cnt\(0),
	datac => \inst8|PB_cnt\(2),
	datad => \inst8|PB_cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|PB_down~0_combout\);

-- Location: LC_X2_Y7_N7
\inst8|PB_state\ : maxii_lcell
-- Equation(s):
-- \inst8|PB_state~regout\ = DFFEAS(((\inst8|PB_down~0_combout\ & (\inst8|PB_sync_1~regout\)) # (!\inst8|PB_down~0_combout\ & ((\inst8|PB_state~regout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst8|PB_sync_1~regout\,
	datac => \inst8|PB_state~regout\,
	datad => \inst8|PB_down~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|PB_state~regout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\steps[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_steps(1),
	combout => \steps~combout\(1));

-- Location: LC_X5_Y7_N9
\inst7|PB_sync_0\ : maxii_lcell
-- Equation(s):
-- \inst7|PB_sync_0~regout\ = DFFEAS((((!\steps~combout\(1)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \steps~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|PB_sync_0~regout\);

-- Location: LC_X3_Y7_N0
\inst7|PB_sync_1\ : maxii_lcell
-- Equation(s):
-- \inst7|comb~0\ = ((D2_PB_sync_1 $ (\inst7|PB_state~regout\)))
-- \inst7|PB_sync_1~regout\ = DFFEAS(\inst7|comb~0\, GLOBAL(\OSC_CLK~combout\), VCC, , , \inst7|PB_sync_0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst7|PB_sync_0~regout\,
	datad => \inst7|PB_state~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst7|comb~0\,
	regout => \inst7|PB_sync_1~regout\);

-- Location: LC_X2_Y7_N3
\inst7|PB_cnt[0]\ : maxii_lcell
-- Equation(s):
-- \inst7|PB_cnt\(0) = DFFEAS(((!\inst7|PB_cnt\(0) & (\inst7|PB_state~regout\ $ (\inst7|PB_sync_1~regout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst7|PB_state~regout\,
	datac => \inst7|PB_sync_1~regout\,
	datad => \inst7|PB_cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|PB_cnt\(0));

-- Location: LC_X2_Y7_N6
\inst7|PB_cnt[1]\ : maxii_lcell
-- Equation(s):
-- \inst7|PB_cnt\(1) = DFFEAS((\inst7|PB_state~regout\ & (!\inst7|PB_sync_1~regout\ & (\inst7|PB_cnt\(1) $ (\inst7|PB_cnt\(0))))) # (!\inst7|PB_state~regout\ & (\inst7|PB_sync_1~regout\ & (\inst7|PB_cnt\(1) $ (\inst7|PB_cnt\(0))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst7|PB_state~regout\,
	datab => \inst7|PB_cnt\(1),
	datac => \inst7|PB_sync_1~regout\,
	datad => \inst7|PB_cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|PB_cnt\(1));

-- Location: LC_X2_Y7_N0
\inst7|PB_cnt[2]\ : maxii_lcell
-- Equation(s):
-- \inst7|PB_cnt\(2) = DFFEAS((\inst7|comb~0\ & (\inst7|PB_cnt\(2) $ (((\inst7|PB_cnt\(1) & \inst7|PB_cnt\(0)))))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst7|comb~0\,
	datab => \inst7|PB_cnt\(2),
	datac => \inst7|PB_cnt\(1),
	datad => \inst7|PB_cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|PB_cnt\(2));

-- Location: LC_X2_Y7_N5
\inst7|PB_down~0\ : maxii_lcell
-- Equation(s):
-- \inst7|PB_down~0_combout\ = ((\inst7|PB_cnt\(2) & (\inst7|PB_cnt\(1) & \inst7|PB_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|PB_cnt\(2),
	datac => \inst7|PB_cnt\(1),
	datad => \inst7|PB_cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst7|PB_down~0_combout\);

-- Location: LC_X3_Y7_N9
\inst7|PB_state\ : maxii_lcell
-- Equation(s):
-- \inst7|PB_state~regout\ = DFFEAS((\inst7|PB_down~0_combout\ & (((\inst7|PB_sync_1~regout\)))) # (!\inst7|PB_down~0_combout\ & (((\inst7|PB_state~regout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst7|PB_down~0_combout\,
	datac => \inst7|PB_sync_1~regout\,
	datad => \inst7|PB_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|PB_state~regout\);

-- Location: LC_X3_Y7_N2
\inst19~0\ : maxii_lcell
-- Equation(s):
-- \inst19~0_combout\ = (\inst8|comb~0\ & ((\inst8|PB_down~0_combout\) # ((\inst7|comb~0\ & \inst7|PB_down~0_combout\)))) # (!\inst8|comb~0\ & (\inst7|comb~0\ & ((\inst7|PB_down~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|comb~0\,
	datab => \inst7|comb~0\,
	datac => \inst8|PB_down~0_combout\,
	datad => \inst7|PB_down~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19~0_combout\);

-- Location: LC_X3_Y7_N1
\inst19~1\ : maxii_lcell
-- Equation(s):
-- \inst19~1_combout\ = (\inst19~0_combout\) # ((\inst3|PB_down~0_combout\ & (\inst3|PB_state~regout\ $ (\inst3|PB_sync_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PB_state~regout\,
	datab => \inst3|PB_sync_1~regout\,
	datac => \inst3|PB_down~0_combout\,
	datad => \inst19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19~1_combout\);

-- Location: LC_X3_Y7_N6
\inst6|myFIFO|subfifo|valid_wreq\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|valid_wreq~combout\ = (!\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ & ((\inst19~0_combout\) # ((\inst3|comb~0\ & \inst3|PB_down~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|comb~0\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	datac => \inst3|PB_down~0_combout\,
	datad => \inst19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|valid_wreq~combout\);

-- Location: LC_X7_Y7_N0
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) = DFFEAS((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0)), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|_~0_combout\, , , , )
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUT\ = CARRY(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) $ ((!\inst6|myFIFO|subfifo|valid_wreq~combout\)))
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) $ ((!\inst6|myFIFO|subfifo|valid_wreq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5599",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	cout0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUT\,
	cout1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X7_Y7_N1
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) = DFFEAS(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) $ ((((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUT\)))), GLOBAL(\OSC_CLK~combout\), VCC, , 
-- \inst6|myFIFO|subfifo|_~0_combout\, , , , )
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUT\ = CARRY((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) $ (\inst6|myFIFO|subfifo|valid_wreq~combout\)) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUT\))
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) $ (\inst6|myFIFO|subfifo|valid_wreq~combout\)) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUTCOUT1_1\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a6f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datab => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|_~0_combout\,
	cin0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUT\,
	cin1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	cout0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUT\,
	cout1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X7_Y7_N2
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) = DFFEAS(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) $ ((((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUT\)))), GLOBAL(\OSC_CLK~combout\), VCC, , 
-- \inst6|myFIFO|subfifo|_~0_combout\, , , , )
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\ = CARRY((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUT\ & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) $ (!\inst6|myFIFO|subfifo|valid_wreq~combout\))))
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUTCOUT1_1\ & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) $ 
-- (!\inst6|myFIFO|subfifo|valid_wreq~combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a509",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|_~0_combout\,
	cin0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUT\,
	cin1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	cout0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\,
	cout1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X7_Y7_N3
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) = DFFEAS(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) $ ((((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\)))), GLOBAL(\OSC_CLK~combout\), VCC, , 
-- \inst6|myFIFO|subfifo|_~0_combout\, , , , )
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ = CARRY((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) $ (\inst6|myFIFO|subfifo|valid_wreq~combout\)) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\))
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) $ (\inst6|myFIFO|subfifo|valid_wreq~combout\)) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUTCOUT1_1\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a6f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datab => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|_~0_combout\,
	cin0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\,
	cin1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	cout0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\,
	cout1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X5_Y7_N1
\inst6|myFIFO|subfifo|fifo_state|_~2\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|_~2_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & 
-- !\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|_~2_combout\);

-- Location: LC_X7_Y7_N8
\inst|data_buffer[0]\ : maxii_lcell
-- Equation(s):
-- \inst|changed\ = ((C1_data_buffer[0] $ (\ewrq|Equal0~0_combout\)))
-- \inst|data_buffer\(0) = DFFEAS(\inst|changed\, GLOBAL(\OSC_CLK~combout\), VCC, , , \ewrq|Equal0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \ewrq|Equal0~0_combout\,
	datad => \ewrq|Equal0~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|changed\,
	regout => \inst|data_buffer\(0));

-- Location: LC_X4_Y7_N0
\inst6|myFIFO|subfifo|fifo_state|_~3\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|_~3_combout\ = (\inst19~1_combout\ & ((\ewrq|Equal0~0_combout\ $ (\inst|data_buffer\(0))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4)))) # (!\inst19~1_combout\ & 
-- ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4)) # (\ewrq|Equal0~0_combout\ $ (!\inst|data_buffer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~1_combout\,
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datac => \ewrq|Equal0~0_combout\,
	datad => \inst|data_buffer\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|_~3_combout\);

-- Location: LC_X4_Y7_N3
\inst6|myFIFO|subfifo|fifo_state|state_middle~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\ = (\inst19~1_combout\ & (((\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ & \inst|changed\)) # (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\))) # (!\inst19~1_combout\ & 
-- (\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ & ((\inst|changed\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~1_combout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	datac => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datad => \inst|changed\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\);

-- Location: LC_X4_Y7_N4
\inst6|myFIFO|subfifo|fifo_state|state_middle\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\) # ((\inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ & ((\inst6|myFIFO|subfifo|fifo_state|_~3_combout\) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|_~2_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|_~2_combout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\,
	datac => \inst6|myFIFO|subfifo|fifo_state|_~3_combout\,
	datad => \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\);

-- Location: LC_X4_Y7_N8
\inst6|myFIFO|subfifo|fifo_state|state_full~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_full~0_combout\ = (\inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ & (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) & \inst6|myFIFO|subfifo|fifo_state|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\,
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datad => \inst6|myFIFO|subfifo|fifo_state|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|state_full~0_combout\);

-- Location: LC_X4_Y7_N9
\inst6|myFIFO|subfifo|fifo_state|state_full\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_full~regout\ = DFFEAS((!\inst|changed\ & ((\inst6|myFIFO|subfifo|fifo_state|state_full~regout\) # ((\inst6|myFIFO|subfifo|fifo_state|state_full~0_combout\ & \inst19~1_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_full~0_combout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	datac => \inst19~1_combout\,
	datad => \inst|changed\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\);

-- Location: LC_X7_Y7_N9
\inst6|myFIFO|subfifo|_~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|_~0_combout\ = (\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ & (\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\inst|changed\)))) # (!\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ & (\inst19~1_combout\ $ 
-- (((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & \inst|changed\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datac => \inst19~1_combout\,
	datad => \inst|changed\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|_~0_combout\);

-- Location: LC_X7_Y7_N4
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) = DFFEAS(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) $ ((((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\)))), GLOBAL(\OSC_CLK~combout\), VCC, , 
-- \inst6|myFIFO|subfifo|_~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|_~0_combout\,
	cin0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\,
	cin1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4));

-- Location: LC_X4_Y7_N6
\inst6|myFIFO|subfifo|fifo_state|state_empty~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_empty~0_combout\ = (\inst6|myFIFO|subfifo|fifo_state|_~2_combout\ & (\inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ & (\inst|data_buffer\(0) $ (\ewrq|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|_~2_combout\,
	datab => \inst|data_buffer\(0),
	datac => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\,
	datad => \ewrq|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|state_empty~0_combout\);

-- Location: LC_X4_Y7_N7
\inst6|myFIFO|subfifo|fifo_state|state_empty\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ = DFFEAS((\inst19~1_combout\) # ((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4)) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~0_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \inst19~1_combout\,
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datad => \inst6|myFIFO|subfifo|fifo_state|state_empty~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\);

-- Location: LC_X2_Y5_N1
\ewrq|Mux1~4\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux1~4_combout\ = ((!\ewrq|TxD_state\(2) & ((\ewrq|TxD_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ewrq|TxD_state\(2),
	datad => \ewrq|TxD_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux1~4_combout\);

-- Location: LC_X2_Y5_N5
\ewrq|TxD_state[0]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_state\(0) = DFFEAS((\ewrq|TxD_state\(0) & (((!\ewrq|tickgen|Acc\(17))))) # (!\ewrq|TxD_state\(0) & (\ewrq|tickgen|Acc\(17) & ((\ewrq|TxD_state\(3)) # (\ewrq|Mux1~4_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|TxD_state\(0),
	datab => \ewrq|TxD_state\(3),
	datac => \ewrq|Mux1~4_combout\,
	datad => \ewrq|tickgen|Acc\(17),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_state\(0));

-- Location: LC_X3_Y5_N5
\ewrq|Mux0~2\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux0~2_combout\ = (((!\ewrq|TxD_state\(1) & !\ewrq|TxD_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ewrq|TxD_state\(1),
	datad => \ewrq|TxD_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux0~2_combout\);

-- Location: LC_X5_Y5_N1
\ewrq|Mux1~2\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux1~2_combout\ = (\ewrq|TxD_state\(2) & (((!\ewrq|tickgen|Acc\(17))))) # (!\ewrq|TxD_state\(2) & (\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (\ewrq|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|TxD_state\(2),
	datac => \ewrq|Mux0~2_combout\,
	datad => \ewrq|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux1~2_combout\);

-- Location: LC_X2_Y5_N7
\ewrq|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux1~0_combout\ = (((\ewrq|TxD_state\(0) & \ewrq|tickgen|Acc\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ewrq|TxD_state\(0),
	datad => \ewrq|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux1~0_combout\);

-- Location: LC_X2_Y5_N8
\ewrq|Mux1~1\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux1~1_combout\ = (\ewrq|TxD_state\(3) & (\ewrq|TxD_state\(2) $ (((\ewrq|TxD_state\(1) & \ewrq|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ewrq|TxD_state\(1),
	datab => \ewrq|TxD_state\(2),
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux1~1_combout\);

-- Location: LC_X2_Y5_N2
\ewrq|TxD_state[2]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_state\(2) = DFFEAS(((\ewrq|Mux1~1_combout\) # ((!\ewrq|TxD_state\(3) & \ewrq|Mux1~2_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|TxD_state\(3),
	datac => \ewrq|Mux1~2_combout\,
	datad => \ewrq|Mux1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_state\(2));

-- Location: LC_X2_Y5_N0
\ewrq|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|Equal0~0_combout\ = (!\ewrq|TxD_state\(3) & (!\ewrq|TxD_state\(2) & (!\ewrq|TxD_state\(0) & !\ewrq|TxD_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ewrq|TxD_state\(3),
	datab => \ewrq|TxD_state\(2),
	datac => \ewrq|TxD_state\(0),
	datad => \ewrq|TxD_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Equal0~0_combout\);

-- Location: LC_X2_Y4_N2
\ewrq|tickgen|Acc[1]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(1) = DFFEAS(((!\ewrq|tickgen|Acc\(1))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[1]~33\ = CARRY(((\ewrq|tickgen|Acc\(1))))
-- \ewrq|tickgen|Acc[1]~33COUT1_35\ = CARRY(((\ewrq|tickgen|Acc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|tickgen|Acc\(1),
	datac => VCC,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(1),
	cout0 => \ewrq|tickgen|Acc[1]~33\,
	cout1 => \ewrq|tickgen|Acc[1]~33COUT1_35\);

-- Location: LC_X2_Y4_N3
\ewrq|tickgen|Acc[2]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(2) = DFFEAS(\ewrq|tickgen|Acc\(2) $ ((((!\ewrq|tickgen|Acc[1]~33\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[2]~31\ = CARRY((!\ewrq|tickgen|Acc\(2) & ((!\ewrq|tickgen|Acc[1]~33\))))
-- \ewrq|tickgen|Acc[2]~31COUT1_36\ = CARRY((!\ewrq|tickgen|Acc\(2) & ((!\ewrq|tickgen|Acc[1]~33COUT1_35\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(2),
	datac => VCC,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin0 => \ewrq|tickgen|Acc[1]~33\,
	cin1 => \ewrq|tickgen|Acc[1]~33COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(2),
	cout0 => \ewrq|tickgen|Acc[2]~31\,
	cout1 => \ewrq|tickgen|Acc[2]~31COUT1_36\);

-- Location: LC_X2_Y4_N4
\ewrq|tickgen|Acc[3]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(3) = DFFEAS(\ewrq|tickgen|Acc\(3) $ ((((\ewrq|tickgen|Acc[2]~31\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[3]~29\ = CARRY((\ewrq|tickgen|Acc\(3)) # ((!\ewrq|tickgen|Acc[2]~31COUT1_36\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(3),
	datac => VCC,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin0 => \ewrq|tickgen|Acc[2]~31\,
	cin1 => \ewrq|tickgen|Acc[2]~31COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(3),
	cout => \ewrq|tickgen|Acc[3]~29\);

-- Location: LC_X2_Y4_N5
\ewrq|tickgen|Acc[4]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(4) = DFFEAS(\ewrq|tickgen|Acc\(4) $ ((((\ewrq|tickgen|Acc[3]~29\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[4]~27\ = CARRY(((!\ewrq|tickgen|Acc[3]~29\)) # (!\ewrq|tickgen|Acc\(4)))
-- \ewrq|tickgen|Acc[4]~27COUT1_37\ = CARRY(((!\ewrq|tickgen|Acc[3]~29\)) # (!\ewrq|tickgen|Acc\(4)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(4),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[3]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(4),
	cout0 => \ewrq|tickgen|Acc[4]~27\,
	cout1 => \ewrq|tickgen|Acc[4]~27COUT1_37\);

-- Location: LC_X2_Y4_N6
\ewrq|tickgen|Acc[5]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(5) = DFFEAS(\ewrq|tickgen|Acc\(5) $ (((((!\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[4]~27\) # (\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[4]~27COUT1_37\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[5]~25\ = CARRY((\ewrq|tickgen|Acc\(5)) # ((!\ewrq|tickgen|Acc[4]~27\)))
-- \ewrq|tickgen|Acc[5]~25COUT1_38\ = CARRY((\ewrq|tickgen|Acc\(5)) # ((!\ewrq|tickgen|Acc[4]~27COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(5),
	datac => VCC,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[3]~29\,
	cin0 => \ewrq|tickgen|Acc[4]~27\,
	cin1 => \ewrq|tickgen|Acc[4]~27COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(5),
	cout0 => \ewrq|tickgen|Acc[5]~25\,
	cout1 => \ewrq|tickgen|Acc[5]~25COUT1_38\);

-- Location: LC_X2_Y4_N7
\ewrq|tickgen|Acc[6]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(6) = DFFEAS((\ewrq|tickgen|Acc\(6) $ (((!\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[5]~25\) # (\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[5]~25COUT1_38\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[6]~23\ = CARRY(((!\ewrq|tickgen|Acc[5]~25\) # (!\ewrq|tickgen|Acc\(6))))
-- \ewrq|tickgen|Acc[6]~23COUT1_39\ = CARRY(((!\ewrq|tickgen|Acc[5]~25COUT1_38\) # (!\ewrq|tickgen|Acc\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|tickgen|Acc\(6),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[3]~29\,
	cin0 => \ewrq|tickgen|Acc[5]~25\,
	cin1 => \ewrq|tickgen|Acc[5]~25COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(6),
	cout0 => \ewrq|tickgen|Acc[6]~23\,
	cout1 => \ewrq|tickgen|Acc[6]~23COUT1_39\);

-- Location: LC_X2_Y4_N8
\ewrq|tickgen|Acc[7]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(7) = DFFEAS(\ewrq|tickgen|Acc\(7) $ ((((!(!\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[6]~23\) # (\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[6]~23COUT1_39\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[7]~21\ = CARRY((\ewrq|tickgen|Acc\(7) & ((!\ewrq|tickgen|Acc[6]~23\))))
-- \ewrq|tickgen|Acc[7]~21COUT1_40\ = CARRY((\ewrq|tickgen|Acc\(7) & ((!\ewrq|tickgen|Acc[6]~23COUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(7),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[3]~29\,
	cin0 => \ewrq|tickgen|Acc[6]~23\,
	cin1 => \ewrq|tickgen|Acc[6]~23COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(7),
	cout0 => \ewrq|tickgen|Acc[7]~21\,
	cout1 => \ewrq|tickgen|Acc[7]~21COUT1_40\);

-- Location: LC_X2_Y4_N9
\ewrq|tickgen|Acc[8]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(8) = DFFEAS((\ewrq|tickgen|Acc\(8) $ ((!(!\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[7]~21\) # (\ewrq|tickgen|Acc[3]~29\ & \ewrq|tickgen|Acc[7]~21COUT1_40\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[8]~19\ = CARRY(((!\ewrq|tickgen|Acc\(8) & !\ewrq|tickgen|Acc[7]~21COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|tickgen|Acc\(8),
	datac => VCC,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[3]~29\,
	cin0 => \ewrq|tickgen|Acc[7]~21\,
	cin1 => \ewrq|tickgen|Acc[7]~21COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(8),
	cout => \ewrq|tickgen|Acc[8]~19\);

-- Location: LC_X3_Y4_N0
\ewrq|tickgen|Acc[9]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(9) = DFFEAS((\ewrq|tickgen|Acc\(9) $ ((!\ewrq|tickgen|Acc[8]~19\))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[9]~17\ = CARRY(((\ewrq|tickgen|Acc\(9) & !\ewrq|tickgen|Acc[8]~19\)))
-- \ewrq|tickgen|Acc[9]~17COUT1_41\ = CARRY(((\ewrq|tickgen|Acc\(9) & !\ewrq|tickgen|Acc[8]~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|tickgen|Acc\(9),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[8]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(9),
	cout0 => \ewrq|tickgen|Acc[9]~17\,
	cout1 => \ewrq|tickgen|Acc[9]~17COUT1_41\);

-- Location: LC_X3_Y4_N1
\ewrq|tickgen|Acc[10]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(10) = DFFEAS((\ewrq|tickgen|Acc\(10) $ (((!\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[9]~17\) # (\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[9]~17COUT1_41\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[10]~15\ = CARRY(((!\ewrq|tickgen|Acc[9]~17\) # (!\ewrq|tickgen|Acc\(10))))
-- \ewrq|tickgen|Acc[10]~15COUT1_42\ = CARRY(((!\ewrq|tickgen|Acc[9]~17COUT1_41\) # (!\ewrq|tickgen|Acc\(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|tickgen|Acc\(10),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[8]~19\,
	cin0 => \ewrq|tickgen|Acc[9]~17\,
	cin1 => \ewrq|tickgen|Acc[9]~17COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(10),
	cout0 => \ewrq|tickgen|Acc[10]~15\,
	cout1 => \ewrq|tickgen|Acc[10]~15COUT1_42\);

-- Location: LC_X3_Y4_N2
\ewrq|tickgen|Acc[11]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(11) = DFFEAS((\ewrq|tickgen|Acc\(11) $ ((!(!\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[10]~15\) # (\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[10]~15COUT1_42\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[11]~13\ = CARRY(((\ewrq|tickgen|Acc\(11) & !\ewrq|tickgen|Acc[10]~15\)))
-- \ewrq|tickgen|Acc[11]~13COUT1_43\ = CARRY(((\ewrq|tickgen|Acc\(11) & !\ewrq|tickgen|Acc[10]~15COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|tickgen|Acc\(11),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[8]~19\,
	cin0 => \ewrq|tickgen|Acc[10]~15\,
	cin1 => \ewrq|tickgen|Acc[10]~15COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(11),
	cout0 => \ewrq|tickgen|Acc[11]~13\,
	cout1 => \ewrq|tickgen|Acc[11]~13COUT1_43\);

-- Location: LC_X3_Y4_N3
\ewrq|tickgen|Acc[12]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(12) = DFFEAS(\ewrq|tickgen|Acc\(12) $ (((((!\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[11]~13\) # (\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[11]~13COUT1_43\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[12]~11\ = CARRY(((!\ewrq|tickgen|Acc[11]~13\)) # (!\ewrq|tickgen|Acc\(12)))
-- \ewrq|tickgen|Acc[12]~11COUT1_44\ = CARRY(((!\ewrq|tickgen|Acc[11]~13COUT1_43\)) # (!\ewrq|tickgen|Acc\(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(12),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[8]~19\,
	cin0 => \ewrq|tickgen|Acc[11]~13\,
	cin1 => \ewrq|tickgen|Acc[11]~13COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(12),
	cout0 => \ewrq|tickgen|Acc[12]~11\,
	cout1 => \ewrq|tickgen|Acc[12]~11COUT1_44\);

-- Location: LC_X3_Y4_N4
\ewrq|tickgen|Acc[13]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(13) = DFFEAS(\ewrq|tickgen|Acc\(13) $ ((((!(!\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[12]~11\) # (\ewrq|tickgen|Acc[8]~19\ & \ewrq|tickgen|Acc[12]~11COUT1_44\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[13]~9\ = CARRY((\ewrq|tickgen|Acc\(13) & ((!\ewrq|tickgen|Acc[12]~11COUT1_44\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(13),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[8]~19\,
	cin0 => \ewrq|tickgen|Acc[12]~11\,
	cin1 => \ewrq|tickgen|Acc[12]~11COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(13),
	cout => \ewrq|tickgen|Acc[13]~9\);

-- Location: LC_X3_Y4_N5
\ewrq|tickgen|Acc[14]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(14) = DFFEAS(\ewrq|tickgen|Acc\(14) $ ((((\ewrq|tickgen|Acc[13]~9\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[14]~7\ = CARRY(((!\ewrq|tickgen|Acc[13]~9\)) # (!\ewrq|tickgen|Acc\(14)))
-- \ewrq|tickgen|Acc[14]~7COUT1_45\ = CARRY(((!\ewrq|tickgen|Acc[13]~9\)) # (!\ewrq|tickgen|Acc\(14)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(14),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[13]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(14),
	cout0 => \ewrq|tickgen|Acc[14]~7\,
	cout1 => \ewrq|tickgen|Acc[14]~7COUT1_45\);

-- Location: LC_X3_Y4_N6
\ewrq|tickgen|Acc[15]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(15) = DFFEAS(\ewrq|tickgen|Acc\(15) $ ((((!(!\ewrq|tickgen|Acc[13]~9\ & \ewrq|tickgen|Acc[14]~7\) # (\ewrq|tickgen|Acc[13]~9\ & \ewrq|tickgen|Acc[14]~7COUT1_45\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[15]~5\ = CARRY((\ewrq|tickgen|Acc\(15) & ((!\ewrq|tickgen|Acc[14]~7\))))
-- \ewrq|tickgen|Acc[15]~5COUT1_46\ = CARRY((\ewrq|tickgen|Acc\(15) & ((!\ewrq|tickgen|Acc[14]~7COUT1_45\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|tickgen|Acc\(15),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[13]~9\,
	cin0 => \ewrq|tickgen|Acc[14]~7\,
	cin1 => \ewrq|tickgen|Acc[14]~7COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(15),
	cout0 => \ewrq|tickgen|Acc[15]~5\,
	cout1 => \ewrq|tickgen|Acc[15]~5COUT1_46\);

-- Location: LC_X3_Y4_N7
\ewrq|tickgen|Acc[16]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(16) = DFFEAS((\ewrq|tickgen|Acc\(16) $ (((!\ewrq|tickgen|Acc[13]~9\ & \ewrq|tickgen|Acc[15]~5\) # (\ewrq|tickgen|Acc[13]~9\ & \ewrq|tickgen|Acc[15]~5COUT1_46\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \ewrq|Equal0~0_combout\)
-- \ewrq|tickgen|Acc[16]~3\ = CARRY(((!\ewrq|tickgen|Acc[15]~5\) # (!\ewrq|tickgen|Acc\(16))))
-- \ewrq|tickgen|Acc[16]~3COUT1_47\ = CARRY(((!\ewrq|tickgen|Acc[15]~5COUT1_46\) # (!\ewrq|tickgen|Acc\(16))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|tickgen|Acc\(16),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[13]~9\,
	cin0 => \ewrq|tickgen|Acc[15]~5\,
	cin1 => \ewrq|tickgen|Acc[15]~5COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(16),
	cout0 => \ewrq|tickgen|Acc[16]~3\,
	cout1 => \ewrq|tickgen|Acc[16]~3COUT1_47\);

-- Location: LC_X3_Y4_N8
\ewrq|tickgen|Acc[17]\ : maxii_lcell
-- Equation(s):
-- \ewrq|tickgen|Acc\(17) = DFFEAS((((!(!\ewrq|tickgen|Acc[13]~9\ & \ewrq|tickgen|Acc[16]~3\) # (\ewrq|tickgen|Acc[13]~9\ & \ewrq|tickgen|Acc[16]~3COUT1_47\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \ewrq|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ewrq|Equal0~0_combout\,
	cin => \ewrq|tickgen|Acc[13]~9\,
	cin0 => \ewrq|tickgen|Acc[16]~3\,
	cin1 => \ewrq|tickgen|Acc[16]~3COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|tickgen|Acc\(17));

-- Location: LC_X2_Y5_N6
\ewrq|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux2~0_combout\ = ((\ewrq|TxD_state\(2) & (\ewrq|TxD_state\(3))) # (!\ewrq|TxD_state\(2) & ((!\ewrq|TxD_state\(0))))) # (!\ewrq|tickgen|Acc\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ewrq|tickgen|Acc\(17),
	datab => \ewrq|TxD_state\(3),
	datac => \ewrq|TxD_state\(0),
	datad => \ewrq|TxD_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux2~0_combout\);

-- Location: LC_X2_Y5_N9
\ewrq|TxD_state[1]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_state\(1) = DFFEAS((\ewrq|TxD_state\(1) & (((\ewrq|Mux2~0_combout\)))) # (!\ewrq|TxD_state\(1) & (\ewrq|TxD_state\(3) & ((\ewrq|Mux1~0_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|TxD_state\(3),
	datab => \ewrq|TxD_state\(1),
	datac => \ewrq|Mux2~0_combout\,
	datad => \ewrq|Mux1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_state\(1));

-- Location: LC_X2_Y5_N3
\ewrq|Mux0~3\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux0~3_combout\ = (\ewrq|TxD_state\(2) & (\ewrq|tickgen|Acc\(17) & ((\ewrq|TxD_state\(1)) # (!\ewrq|TxD_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ewrq|TxD_state\(2),
	datab => \ewrq|TxD_state\(1),
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux0~3_combout\);

-- Location: LC_X2_Y5_N4
\ewrq|TxD_state[3]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_state\(3) = DFFEAS((\ewrq|Mux0~3_combout\ & (!\ewrq|TxD_state\(0) & ((\ewrq|TxD_state\(3)) # (!\ewrq|TxD_state\(1))))) # (!\ewrq|Mux0~3_combout\ & (\ewrq|TxD_state\(3))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0baa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|TxD_state\(3),
	datab => \ewrq|TxD_state\(1),
	datac => \ewrq|TxD_state\(0),
	datad => \ewrq|Mux0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_state\(3));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dirs[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dirs(1),
	combout => \dirs~combout\(1));

-- Location: LC_X5_Y6_N1
\inst6|myFIFO|subfifo|data_node[0][3]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~17\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((N13_dffs[1]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & 
-- (\inst6|myFIFO|subfifo|data_node[0][2]|dffs\(1))))
-- \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~17\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~17\,
	regout => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(1));

-- Location: LC_X5_Y6_N9
\inst6|myFIFO|subfifo|data_node[0][0]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~18\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~17\))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (N16_dffs[1])))
-- \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~18\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \dirs~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \dirs~combout\(1),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~17\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~18\,
	regout => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(1));

-- Location: LC_X5_Y6_N2
\inst6|myFIFO|subfifo|data_node[0][2]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(1) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(1));

-- Location: LC_X5_Y6_N8
\inst6|myFIFO|subfifo|data_node[0][4]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(1) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][3]|dffs\(1)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(1),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(1));

-- Location: LC_X5_Y6_N3
\inst6|myFIFO|subfifo|data_node[0][5]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (((N11_dffs[1]) # (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][4]|dffs\(1) & ((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1)))))
-- \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(1),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\,
	regout => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(1));

-- Location: LC_X5_Y6_N4
\inst6|myFIFO|subfifo|data_node[0][6]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~3\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\ & (\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(1))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\ & ((N10_dffs[1]))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\))))
-- \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~3\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datab => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~2\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~3\,
	regout => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(1));

-- Location: LC_X5_Y6_N0
\inst6|myFIFO|subfifo|data_node[0][7]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(1) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][6]|dffs\(1)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(1),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(1));

-- Location: LC_X6_Y6_N1
\inst6|myFIFO|subfifo|data_node[0][8]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(1) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(1)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(1),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(1));

-- Location: LC_X6_Y6_N9
\inst6|myFIFO|subfifo|data_node[0][9]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(1) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(1)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(1),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(1));

-- Location: LC_X6_Y6_N4
\inst6|myFIFO|subfifo|data_node[0][10]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N6_dffs[1]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(1)))))
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\,
	regout => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(1));

-- Location: LC_X6_Y6_N5
\inst6|myFIFO|subfifo|data_node[0][11]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~13\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\ & ((N5_dffs[1]))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\ & (\inst6|myFIFO|subfifo|data_node[0][9]|dffs\(1))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & 
-- (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\))))
-- \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~13\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~12\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~13\,
	regout => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(1));

-- Location: LC_X6_Y6_N2
\inst6|myFIFO|subfifo|data_node[0][12]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(1) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(1));

-- Location: LC_X6_Y6_N8
\inst6|myFIFO|subfifo|data_node[0][13]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(1) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][12]|dffs\(1)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(1),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(1));

-- Location: LC_X6_Y6_N0
\inst6|myFIFO|subfifo|data_node[0][14]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~14\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N2_dffs[1]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][12]|dffs\(1)))))
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~14\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~14\,
	regout => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(1));

-- Location: LC_X6_Y6_N7
\inst6|myFIFO|subfifo|data_node[0][15]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~15\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N1_dffs[1]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][13]|dffs\(1)))))
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~15\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~15\,
	regout => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(1));

-- Location: LC_X4_Y6_N2
\inst6|myFIFO|subfifo|last_data_node[0]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(1) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(1));

-- Location: LC_X6_Y7_N7
\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ = (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\);

-- Location: LC_X6_Y7_N8
\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0)) # (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\);

-- Location: LC_X4_Y6_N1
\inst6|myFIFO|subfifo|last_data_node[1]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\ = (\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & (((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\)))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & 
-- ((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & ((N18_dffs[1]))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & (\inst6|myFIFO|subfifo|last_data_node[0]|dffs\(1)))))
-- \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(1) = DFFEAS(\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(1),
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(1),
	datad => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\,
	regout => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(1));

-- Location: LC_X4_Y6_N9
\inst6|myFIFO|subfifo|last_data_node[2]|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(1) = DFFEAS((((\inst6|myFIFO|subfifo|last_data_node[1]|dffs\(1)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(1),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(1));

-- Location: LC_X6_Y6_N6
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~16\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~16_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~15\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~14\)))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~15\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~14\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~16_combout\);

-- Location: LC_X5_Y6_N5
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~19\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~19_combout\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~3\)) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~3\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~19_combout\);

-- Location: LC_X5_Y6_N6
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~20\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~20_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~16_combout\)))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~16_combout\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~20_combout\);

-- Location: LC_X5_Y5_N3
\inst6|myFIFO|subfifo|valid_rreq\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|valid_rreq~combout\ = ((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (\inst|data_buffer\(0) $ (\ewrq|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|data_buffer\(0),
	datac => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datad => \ewrq|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|valid_rreq~combout\);

-- Location: LC_X5_Y6_N7
\inst6|myFIFO|subfifo|output_buffer|dffs[1]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs\(1) = DFFEAS((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & ((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\ & (\inst6|myFIFO|subfifo|last_data_node[2]|dffs\(1))) # 
-- (!\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\ & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~20_combout\))))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & 
-- (((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_rreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(1),
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datac => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[1]~2\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[1]~20_combout\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|output_buffer|dffs\(1));

-- Location: LC_X5_Y7_N4
\inst6|myFIFO|subfifo|data_node[0][3]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~40\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((N13_dffs[4]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & 
-- (\inst6|myFIFO|subfifo|data_node[0][2]|dffs\(4))))
-- \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~40\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(4),
	datac => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~40\,
	regout => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(4));

-- Location: LC_X5_Y7_N5
\inst6|myFIFO|subfifo|data_node[0][0]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~41\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~40\))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (N16_dffs[4])))
-- \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~41\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \steps~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \steps~combout\(1),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~40\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~41\,
	regout => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(4));

-- Location: LC_X5_Y7_N0
\inst6|myFIFO|subfifo|data_node[0][2]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(4) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(4));

-- Location: LC_X5_Y7_N8
\inst6|myFIFO|subfifo|data_node[0][4]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(4) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(4));

-- Location: LC_X5_Y7_N2
\inst6|myFIFO|subfifo|data_node[0][5]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & 
-- ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((N11_dffs[4]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][4]|dffs\(4)))))
-- \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(4),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\,
	regout => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(4));

-- Location: LC_X5_Y7_N6
\inst6|myFIFO|subfifo|data_node[0][6]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~9\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\ & (\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(4))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\ & ((N10_dffs[4]))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\))))
-- \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~9\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(4),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~8\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~9\,
	regout => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(4));

-- Location: LC_X5_Y7_N3
\inst6|myFIFO|subfifo|data_node[0][7]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(4) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(4));

-- Location: LC_X8_Y5_N1
\inst6|myFIFO|subfifo|data_node[0][8]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(4) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(4));

-- Location: LC_X8_Y5_N9
\inst6|myFIFO|subfifo|data_node[0][9]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(4) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(4)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(4),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(4));

-- Location: LC_X7_Y7_N7
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\ = (((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & !\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\);

-- Location: LC_X7_Y5_N9
\inst6|myFIFO|subfifo|data_node[0][10]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~45\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N6_dffs[4]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(4)))))
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~45\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(4),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~45\,
	regout => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(4));

-- Location: LC_X8_Y5_N3
\inst6|myFIFO|subfifo|data_node[0][11]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(4) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(4));

-- Location: LC_X8_Y5_N0
\inst6|myFIFO|subfifo|data_node[0][12]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(4) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(4));

-- Location: LC_X7_Y7_N6
\inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\ = (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & !\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\);

-- Location: LC_X7_Y5_N6
\inst6|myFIFO|subfifo|data_node[0][13]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~46\ = (\inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((N3_dffs[4]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|data_node[0][9]|dffs\(4)))))
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~46\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(4),
	datac => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~46\,
	regout => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(4));

-- Location: LC_X7_Y5_N0
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\ = (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & !\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\);

-- Location: LC_X7_Y5_N4
\inst6|myFIFO|subfifo|data_node[0][14]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~43\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N2_dffs[4]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][12]|dffs\(4)))))
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~43\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(4),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~43\,
	regout => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(4));

-- Location: LC_X7_Y7_N5
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\ = (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\);

-- Location: LC_X7_Y5_N2
\inst6|myFIFO|subfifo|data_node[0][15]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~44\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((N1_dffs[4]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|data_node[0][11]|dffs\(4)))))
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~44\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(4),
	datac => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~44\,
	regout => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(4));

-- Location: LC_X7_Y5_N3
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~47\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~47_combout\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~46\) # ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~45\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~43\) # (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~46\,
	datab => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~45\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~43\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~47_combout\);

-- Location: LC_X5_Y7_N7
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~42\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~42_combout\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~9\))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~41\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~42_combout\);

-- Location: LC_X6_Y5_N1
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~48\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~48_combout\ = ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~42_combout\) # ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & 
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~47_combout\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~48_combout\);

-- Location: LC_X6_Y5_N2
\inst6|myFIFO|subfifo|last_data_node[0]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\ = (\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & ((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~48_combout\)))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & (N19_dffs[4])))
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(4) = DFFEAS(\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[4]~48_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\,
	regout => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(4));

-- Location: LC_X6_Y5_N5
\inst6|myFIFO|subfifo|last_data_node[1]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(4) = DFFEAS((((\inst6|myFIFO|subfifo|last_data_node[0]|dffs\(4)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(4),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(4));

-- Location: LC_X6_Y5_N4
\inst6|myFIFO|subfifo|last_data_node[2]|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(4) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(4));

-- Location: LC_X6_Y5_N3
\inst6|myFIFO|subfifo|output_buffer|dffs[4]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs\(4) = DFFEAS((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & ((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\ & (\inst6|myFIFO|subfifo|last_data_node[2]|dffs\(4))) # 
-- (!\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\ & ((\inst6|myFIFO|subfifo|last_data_node[1]|dffs\(4)))))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & 
-- (((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_rreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(4),
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(4),
	datad => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[4]~8\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|output_buffer|dffs\(4));

-- Location: LC_X2_Y6_N2
\inst6|myFIFO|subfifo|data_node[0][0]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~54\ = (((N16_dffs[5] & !\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))
-- \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~54\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \steps~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \steps~combout\(2),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~54\,
	regout => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(5));

-- Location: LC_X2_Y6_N6
\inst6|myFIFO|subfifo|data_node[0][2]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(5) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(5),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(5));

-- Location: LC_X2_Y6_N0
\inst6|myFIFO|subfifo|data_node[0][3]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~55\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((N13_dffs[5]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][2]|dffs\(5)))))
-- \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~55\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(5),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~55\,
	regout => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(5));

-- Location: LC_X2_Y6_N3
\inst6|myFIFO|subfifo|data_node[0][4]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(5) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][3]|dffs\(5)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(5),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(5));

-- Location: LC_X2_Y6_N7
\inst6|myFIFO|subfifo|data_node[0][5]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (((N11_dffs[5]) # (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][4]|dffs\(5) & ((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1)))))
-- \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(5),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\,
	regout => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(5));

-- Location: LC_X2_Y6_N8
\inst6|myFIFO|subfifo|data_node[0][6]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~11\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\ & (\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(5))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\ & ((N10_dffs[5]))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\))))
-- \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~11\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datab => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(5),
	datac => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~10\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~11\,
	regout => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(5));

-- Location: LC_X2_Y6_N1
\inst6|myFIFO|subfifo|data_node[0][7]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(5) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][6]|dffs\(5)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(5),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(5));

-- Location: LC_X2_Y6_N5
\inst6|myFIFO|subfifo|data_node[0][8]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(5) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(5)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(5),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(5));

-- Location: LC_X2_Y6_N4
\inst6|myFIFO|subfifo|data_node[0][9]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(5) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(5),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(5));

-- Location: LC_X3_Y6_N7
\inst6|myFIFO|subfifo|data_node[0][10]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N6_dffs[5]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(5)))))
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(5),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\,
	regout => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(5));

-- Location: LC_X3_Y6_N8
\inst6|myFIFO|subfifo|data_node[0][11]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~50\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\ & ((N5_dffs[5]))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\ & (\inst6|myFIFO|subfifo|data_node[0][9]|dffs\(5))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & 
-- (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\))))
-- \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~50\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(5),
	datac => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~49\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~50\,
	regout => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(5));

-- Location: LC_X4_Y6_N4
\inst6|myFIFO|subfifo|data_node[0][12]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(5) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(5),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(5));

-- Location: LC_X4_Y6_N5
\inst6|myFIFO|subfifo|data_node[0][13]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(5) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(5),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(5));

-- Location: LC_X3_Y6_N0
\inst6|myFIFO|subfifo|data_node[0][14]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~51\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N2_dffs[5]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][12]|dffs\(5)))))
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~51\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(5),
	datac => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~51\,
	regout => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(5));

-- Location: LC_X3_Y6_N2
\inst6|myFIFO|subfifo|data_node[0][15]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~52\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N1_dffs[5]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][13]|dffs\(5)))))
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~52\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(5),
	datac => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~52\,
	regout => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(5));

-- Location: LC_X3_Y6_N6
\inst6|myFIFO|subfifo|last_data_node[0]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(5) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(5),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(5));

-- Location: LC_X3_Y6_N9
\inst6|myFIFO|subfifo|last_data_node[1]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[5]~10\ = (\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & (((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\)))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & 
-- ((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & ((N18_dffs[5]))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & (\inst6|myFIFO|subfifo|last_data_node[0]|dffs\(5)))))
-- \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(5) = DFFEAS(\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[5]~10\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(5),
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(5),
	datad => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[5]~10\,
	regout => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(5));

-- Location: LC_X3_Y6_N5
\inst6|myFIFO|subfifo|last_data_node[2]|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(5) = DFFEAS((((\inst6|myFIFO|subfifo|last_data_node[1]|dffs\(5)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(5),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(5));

-- Location: LC_X2_Y6_N9
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~56\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~56_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~11\)))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~54\) # ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~54\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~55\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~56_combout\);

-- Location: LC_X3_Y6_N1
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~53\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~53_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~52\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~51\)))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~52\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~51\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~53_combout\);

-- Location: LC_X3_Y6_N3
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~57\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~57_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~53_combout\)))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~56_combout\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~57_combout\);

-- Location: LC_X3_Y6_N4
\inst6|myFIFO|subfifo|output_buffer|dffs[5]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs\(5) = DFFEAS((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[5]~10\ & ((\inst6|myFIFO|subfifo|last_data_node[2]|dffs\(5)) # ((!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\)))) # 
-- (!\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[5]~10\ & (((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~57_combout\)))), GLOBAL(\OSC_CLK~combout\), 
-- VCC, , \inst6|myFIFO|subfifo|valid_rreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(5),
	datab => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[5]~10\,
	datac => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[5]~57_combout\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|output_buffer|dffs\(5));

-- Location: LC_X5_Y5_N8
\ewrq|TxD_shift~6\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift~6_combout\ = ((\ewrq|TxD_shift\(5) & ((!\ewrq|tickgen|Acc\(17)) # (!\ewrq|TxD_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ewrq|TxD_shift\(5),
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|TxD_shift~6_combout\);

-- Location: LC_X5_Y5_N9
\ewrq|TxD_shift[5]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(5) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & (\inst6|myFIFO|subfifo|output_buffer|dffs\(5))) # (!\ewrq|Equal0~0_combout\ & ((\ewrq|TxD_shift~6_combout\))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_shift~6_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|Equal0~0_combout\,
	datac => \inst6|myFIFO|subfifo|output_buffer|dffs\(5),
	datad => \ewrq|TxD_shift~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(5));

-- Location: LC_X5_Y5_N7
\ewrq|TxD_shift[1]~1\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift[1]~1_combout\ = (\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\) # ((\ewrq|TxD_state\(3) & \ewrq|tickgen|Acc\(17))))) # (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_state\(3) & 
-- \ewrq|tickgen|Acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|Equal0~0_combout\,
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|TxD_shift[1]~1_combout\);

-- Location: LC_X5_Y5_N5
\ewrq|TxD_shift[4]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(4) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & (\inst6|myFIFO|subfifo|output_buffer|dffs\(4))) # (!\ewrq|Equal0~0_combout\ & ((\ewrq|TxD_shift\(5)))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_shift\(5))))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|Equal0~0_combout\,
	datac => \inst6|myFIFO|subfifo|output_buffer|dffs\(4),
	datad => \ewrq|TxD_shift\(5),
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(4));

-- Location: LC_X4_Y5_N3
\inst6|myFIFO|subfifo|data_node[0][0]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~30\ = (((N16_dffs[3] & !\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))
-- \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~30\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \steps~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \steps~combout\(0),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~30\,
	regout => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(3));

-- Location: LC_X4_Y5_N9
\inst6|myFIFO|subfifo|data_node[0][2]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(3) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(3));

-- Location: LC_X4_Y5_N4
\inst6|myFIFO|subfifo|data_node[0][3]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~31\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((N13_dffs[3]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][2]|dffs\(3)))))
-- \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~31\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(3),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~31\,
	regout => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(3));

-- Location: LC_X4_Y5_N8
\inst6|myFIFO|subfifo|data_node[0][4]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(3) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][3]|dffs\(3)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(3),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(3));

-- Location: LC_X4_Y5_N0
\inst6|myFIFO|subfifo|data_node[0][5]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (((N11_dffs[3]) # (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][4]|dffs\(3) & ((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1)))))
-- \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(3),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\,
	regout => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(3));

-- Location: LC_X4_Y5_N1
\inst6|myFIFO|subfifo|data_node[0][6]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~7\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\ & (\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(3))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\ & ((N10_dffs[3]))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\))))
-- \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~7\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datab => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(3),
	datac => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~6\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~7\,
	regout => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(3));

-- Location: LC_X4_Y5_N7
\inst6|myFIFO|subfifo|data_node[0][7]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(3) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(3));

-- Location: LC_X4_Y6_N3
\inst6|myFIFO|subfifo|data_node[0][8]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(3) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(3)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(3),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(3));

-- Location: LC_X3_Y5_N9
\inst6|myFIFO|subfifo|data_node[0][9]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(3) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(3));

-- Location: LC_X3_Y5_N0
\inst6|myFIFO|subfifo|data_node[0][10]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~37\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N6_dffs[3]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & 
-- (\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(3))))
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~37\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(3),
	datac => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~37\,
	regout => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(3));

-- Location: LC_X3_Y5_N2
\inst6|myFIFO|subfifo|data_node[0][11]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~36\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N5_dffs[3]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][9]|dffs\(3)))))
-- \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~36\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(3),
	datac => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~36\,
	regout => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(3));

-- Location: LC_X3_Y5_N4
\inst6|myFIFO|subfifo|data_node[0][12]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(3) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][11]|dffs\(3)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(3),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(3));

-- Location: LC_X3_Y5_N1
\inst6|myFIFO|subfifo|data_node[0][13]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(3) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(3));

-- Location: LC_X3_Y5_N7
\inst6|myFIFO|subfifo|data_node[0][14]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~34\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N2_dffs[3]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & 
-- (\inst6|myFIFO|subfifo|data_node[0][12]|dffs\(3))))
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~34\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(3),
	datac => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~34\,
	regout => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(3));

-- Location: LC_X3_Y5_N6
\inst6|myFIFO|subfifo|data_node[0][15]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~33\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N1_dffs[3]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][13]|dffs\(3)))))
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~33\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(3),
	datac => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~33\,
	regout => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(3));

-- Location: LC_X4_Y6_N7
\inst6|myFIFO|subfifo|last_data_node[0]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(3) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(3));

-- Location: LC_X4_Y6_N0
\inst6|myFIFO|subfifo|last_data_node[1]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\ = (\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & (((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\)))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & 
-- ((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & ((N18_dffs[3]))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & (\inst6|myFIFO|subfifo|last_data_node[0]|dffs\(3)))))
-- \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(3) = DFFEAS(\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(3),
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(3),
	datad => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\,
	regout => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(3));

-- Location: LC_X4_Y6_N6
\inst6|myFIFO|subfifo|last_data_node[2]|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(3) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(3));

-- Location: LC_X3_Y5_N3
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~38\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~38_combout\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~36\) # 
-- ((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3310",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~37\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~38_combout\);

-- Location: LC_X3_Y5_N8
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~35\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~35_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~33\) # 
-- ((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~33\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~35_combout\);

-- Location: LC_X4_Y5_N5
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~32\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~32_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~7\)))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~30\) # ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~30\,
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~31\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~32_combout\);

-- Location: LC_X4_Y5_N6
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~39\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~39_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~38_combout\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~35_combout\)))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datab => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~38_combout\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~35_combout\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~39_combout\);

-- Location: LC_X4_Y5_N2
\inst6|myFIFO|subfifo|output_buffer|dffs[3]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs\(3) = DFFEAS((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & ((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\ & (\inst6|myFIFO|subfifo|last_data_node[2]|dffs\(3))) # 
-- (!\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\ & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~39_combout\))))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & 
-- (((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_rreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(3),
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[3]~39_combout\,
	datad => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[3]~6\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|output_buffer|dffs\(3));

-- Location: LC_X5_Y5_N0
\ewrq|TxD_shift[3]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(3) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|output_buffer|dffs\(3)))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(4))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_shift\(4))))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f870",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|Equal0~0_combout\,
	datac => \ewrq|TxD_shift\(4),
	datad => \inst6|myFIFO|subfifo|output_buffer|dffs\(3),
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dirs[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dirs(2),
	combout => \dirs~combout\(2));

-- Location: LC_X9_Y7_N4
\inst6|myFIFO|subfifo|data_node[0][3]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~21\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((N13_dffs[2]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & 
-- (\inst6|myFIFO|subfifo|data_node[0][2]|dffs\(2))))
-- \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~21\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(2),
	datac => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~21\,
	regout => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(2));

-- Location: LC_X9_Y7_N5
\inst6|myFIFO|subfifo|data_node[0][0]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~22\ = ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~21\))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (N16_dffs[2])))
-- \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~22\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \dirs~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \dirs~combout\(2),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~21\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~22\,
	regout => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(2));

-- Location: LC_X9_Y7_N9
\inst6|myFIFO|subfifo|data_node[0][2]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(2) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(2));

-- Location: LC_X9_Y7_N3
\inst6|myFIFO|subfifo|data_node[0][4]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(2) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(2));

-- Location: LC_X9_Y7_N0
\inst6|myFIFO|subfifo|data_node[0][5]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & 
-- ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & ((N11_dffs[2]))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][4]|dffs\(2)))))
-- \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(2),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\,
	regout => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(2));

-- Location: LC_X9_Y7_N1
\inst6|myFIFO|subfifo|data_node[0][6]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~5\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\ & (\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(2))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\ & ((N10_dffs[2]))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\))))
-- \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~5\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(2),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~4\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~5\,
	regout => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(2));

-- Location: LC_X9_Y7_N6
\inst6|myFIFO|subfifo|data_node[0][7]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(2) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][6]|dffs\(2)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(2),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(2));

-- Location: LC_X9_Y7_N8
\inst6|myFIFO|subfifo|data_node[0][8]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(2) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(2));

-- Location: LC_X9_Y7_N7
\inst6|myFIFO|subfifo|data_node[0][9]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(2) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(2)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(2),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(2));

-- Location: LC_X8_Y7_N3
\inst6|myFIFO|subfifo|data_node[0][10]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~26\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N6_dffs[2]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(2)))))
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~26\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(2),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~26\,
	regout => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(2));

-- Location: LC_X8_Y7_N8
\inst6|myFIFO|subfifo|data_node[0][11]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(2) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(2));

-- Location: LC_X8_Y7_N1
\inst6|myFIFO|subfifo|data_node[0][12]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(2) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][11]|dffs\(2)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(2),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(2));

-- Location: LC_X8_Y7_N0
\inst6|myFIFO|subfifo|data_node[0][13]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~27\ = (\inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((N3_dffs[2]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|data_node[0][9]|dffs\(2)))))
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~27\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(2),
	datab => \inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~27\,
	regout => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(2));

-- Location: LC_X8_Y7_N2
\inst6|myFIFO|subfifo|data_node[0][14]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~24\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N2_dffs[2]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][12]|dffs\(2)))))
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~24\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(2),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~24\,
	regout => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(2));

-- Location: LC_X8_Y7_N9
\inst6|myFIFO|subfifo|data_node[0][15]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~25\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((N1_dffs[2]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|data_node[0][11]|dffs\(2)))))
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~25\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(2),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~25\,
	regout => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(2));

-- Location: LC_X9_Y7_N2
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~23\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~23_combout\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~5\))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~22\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~23_combout\);

-- Location: LC_X8_Y7_N4
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~28\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~28_combout\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~26\) # ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~25\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~27\) # (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~26\,
	datab => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~25\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~27\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~28_combout\);

-- Location: LC_X8_Y7_N5
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~29\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~29_combout\ = ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~23_combout\) # ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & 
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~23_combout\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~29_combout\);

-- Location: LC_X8_Y7_N6
\inst6|myFIFO|subfifo|last_data_node[0]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\ = (\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & ((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~29_combout\)))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & (N19_dffs[2])))
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(2) = DFFEAS(\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[2]~29_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\,
	regout => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(2));

-- Location: LC_X8_Y6_N1
\inst6|myFIFO|subfifo|last_data_node[1]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(2) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(2));

-- Location: LC_X8_Y6_N2
\inst6|myFIFO|subfifo|last_data_node[2]|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(2) = DFFEAS((((\inst6|myFIFO|subfifo|last_data_node[1]|dffs\(2)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(2),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(2));

-- Location: LC_X8_Y7_N7
\inst6|myFIFO|subfifo|output_buffer|dffs[2]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs\(2) = DFFEAS((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & ((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\ & (\inst6|myFIFO|subfifo|last_data_node[2]|dffs\(2))) # 
-- (!\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\ & ((\inst6|myFIFO|subfifo|last_data_node[1]|dffs\(2)))))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & 
-- (((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_rreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(2),
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(2),
	datad => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[2]~4\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|output_buffer|dffs\(2));

-- Location: LC_X5_Y5_N2
\ewrq|TxD_shift[2]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(2) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|output_buffer|dffs\(2)))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(3))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (\ewrq|TxD_shift\(3))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|TxD_shift\(3),
	datac => \inst6|myFIFO|subfifo|output_buffer|dffs\(2),
	datad => \ewrq|Equal0~0_combout\,
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(2));

-- Location: LC_X5_Y5_N6
\ewrq|TxD_shift[1]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(1) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & (\inst6|myFIFO|subfifo|output_buffer|dffs\(1))) # (!\ewrq|Equal0~0_combout\ & ((\ewrq|TxD_shift\(2)))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_shift\(2))))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|Equal0~0_combout\,
	datac => \inst6|myFIFO|subfifo|output_buffer|dffs\(1),
	datad => \ewrq|TxD_shift\(2),
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(1));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dirs[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dirs(0),
	combout => \dirs~combout\(0));

-- Location: LC_X6_Y7_N4
\inst6|myFIFO|subfifo|data_node[0][3]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~0\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (((N13_dffs[0])))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & 
-- (((\inst6|myFIFO|subfifo|data_node[0][2]|dffs\(0)))))
-- \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~0\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~0\,
	regout => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(0));

-- Location: LC_X6_Y7_N5
\inst6|myFIFO|subfifo|data_node[0][0]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~1\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~0\)))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((N16_dffs[0]))))
-- \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~1\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \dirs~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \dirs~combout\(0),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~0\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~1\,
	regout => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(0));

-- Location: LC_X6_Y7_N9
\inst6|myFIFO|subfifo|data_node[0][2]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(0) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][0]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][2]|dffs\(0));

-- Location: LC_X6_Y7_N0
\inst6|myFIFO|subfifo|data_node[0][4]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(0) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][3]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(0));

-- Location: LC_X6_Y7_N1
\inst6|myFIFO|subfifo|data_node[0][5]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (((N11_dffs[0]) # (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|data_node[0][4]|dffs\(0) & ((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1)))))
-- \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datab => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][4]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\,
	regout => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(0));

-- Location: LC_X6_Y7_N2
\inst6|myFIFO|subfifo|data_node[0][6]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~1\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\ & (\inst6|myFIFO|subfifo|data_node[0][7]|dffs\(0))) # 
-- (!\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\ & ((N10_dffs[0]))))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\))))
-- \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~1\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datab => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][5]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~0\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~1\,
	regout => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(0));

-- Location: LC_X6_Y7_N6
\inst6|myFIFO|subfifo|data_node[0][7]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(0) = DFFEAS((((\inst6|myFIFO|subfifo|data_node[0][6]|dffs\(0)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|data_node[0][6]|dffs\(0),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(0));

-- Location: LC_X8_Y5_N7
\inst6|myFIFO|subfifo|data_node[0][8]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(0) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][7]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(0));

-- Location: LC_X8_Y5_N5
\inst6|myFIFO|subfifo|data_node[0][9]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(0) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(0));

-- Location: LC_X8_Y5_N4
\inst6|myFIFO|subfifo|data_node[0][10]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~8\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N6_dffs[0]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][8]|dffs\(0)))))
-- \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~8\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datab => \inst6|myFIFO|subfifo|data_node[0][8]|dffs\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~7_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~8\,
	regout => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(0));

-- Location: LC_X8_Y5_N8
\inst6|myFIFO|subfifo|data_node[0][11]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(0) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][10]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(0));

-- Location: LC_X8_Y5_N6
\inst6|myFIFO|subfifo|data_node[0][12]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(0) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(0));

-- Location: LC_X7_Y5_N5
\inst6|myFIFO|subfifo|data_node[0][13]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~9\ = (\inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((N3_dffs[0]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|data_node[0][9]|dffs\(0)))))
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~9\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|data_node[0][9]|dffs\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|fifo_state|is_almost_full_compare|auto_generated|data_wire[0]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~9\,
	regout => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(0));

-- Location: LC_X7_Y5_N1
\inst6|myFIFO|subfifo|data_node[0][14]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~4\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & ((N2_dffs[0]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1) & (\inst6|myFIFO|subfifo|data_node[0][12]|dffs\(0)))))
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~4\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|data_node[0][12]|dffs\(0),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datac => \inst6|myFIFO|subfifo|data_node[0][13]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~4\,
	regout => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(0));

-- Location: LC_X7_Y5_N7
\inst6|myFIFO|subfifo|data_node[0][15]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~6\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & ((N1_dffs[0]))) # 
-- (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|data_node[0][11]|dffs\(0)))))
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~6\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datab => \inst6|myFIFO|subfifo|data_node[0][11]|dffs\(0),
	datac => \inst6|myFIFO|subfifo|data_node[0][14]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~6\,
	regout => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(0));

-- Location: LC_X6_Y7_N3
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~2\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~2_combout\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~1\))) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~1\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|_~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~2_combout\);

-- Location: LC_X7_Y5_N8
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~10\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~10_combout\ = (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~6\) # ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~4\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~9\) # (\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~6\,
	datab => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~4\,
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~9\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~10_combout\);

-- Location: LC_X6_Y5_N6
\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~11\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~11_combout\ = ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~2_combout\) # ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & 
-- \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datac => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~2_combout\,
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~11_combout\);

-- Location: LC_X6_Y5_N7
\inst6|myFIFO|subfifo|last_data_node[0]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\ = (\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & ((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\) # 
-- ((\inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~11_combout\)))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\ & (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & (N19_dffs[0])))
-- \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(0) = DFFEAS(\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, 
-- \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~1_combout\,
	datab => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	datac => \inst6|myFIFO|subfifo|data_node[0][15]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|row_data_out_mux[0]|auto_generated|result_node[0]~11_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\,
	regout => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(0));

-- Location: LC_X6_Y5_N9
\inst6|myFIFO|subfifo|last_data_node[1]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(0) = DFFEAS(GND, GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst6|myFIFO|subfifo|last_data_node[0]|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(0));

-- Location: LC_X6_Y5_N0
\inst6|myFIFO|subfifo|last_data_node[2]|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(0) = DFFEAS((((\inst6|myFIFO|subfifo|last_data_node[1]|dffs\(0)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_wreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(0),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(0));

-- Location: LC_X6_Y5_N8
\inst6|myFIFO|subfifo|output_buffer|dffs[0]\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|output_buffer|dffs\(0) = DFFEAS((\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & ((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\ & ((\inst6|myFIFO|subfifo|last_data_node[2]|dffs\(0)))) # 
-- (!\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\ & (\inst6|myFIFO|subfifo|last_data_node[1]|dffs\(0))))) # (!\inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\ & 
-- (((\inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\)))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst6|myFIFO|subfifo|valid_rreq~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|output_buffer|dffs[2]~0_combout\,
	datab => \inst6|myFIFO|subfifo|last_data_node[1]|dffs\(0),
	datac => \inst6|myFIFO|subfifo|last_data_node[2]|dffs\(0),
	datad => \inst6|myFIFO|subfifo|col_data_out_mux|auto_generated|result_node[0]~0\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|output_buffer|dffs\(0));

-- Location: LC_X5_Y5_N4
\ewrq|TxD_shift[0]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(0) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|output_buffer|dffs\(0)))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(1))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_shift\(1))))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f870",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|Equal0~0_combout\,
	datac => \ewrq|TxD_shift\(1),
	datad => \inst6|myFIFO|subfifo|output_buffer|dffs\(0),
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(0));

-- Location: LC_X4_Y6_N8
\ewrq|TxD~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD~0_combout\ = ((\ewrq|TxD_state\(3) & ((\ewrq|TxD_shift\(0)))) # (!\ewrq|TxD_state\(3) & (!\ewrq|TxD_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ewrq|TxD_state\(3),
	datac => \ewrq|TxD_state\(2),
	datad => \ewrq|TxD_shift\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|TxD~0_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TX_OUTPUT~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ewrq|TxD~0_combout\,
	oe => VCC,
	padio => ww_TX_OUTPUT);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TxFree~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ewrq|Equal0~0_combout\,
	oe => VCC,
	padio => ww_TxFree);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BufferFull~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst6|myFIFO|subfifo|fifo_state|ALT_INV_state_full~regout\,
	oe => VCC,
	padio => ww_BufferFull);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BufferEmpty~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	oe => VCC,
	padio => ww_BufferEmpty);
END structure;


