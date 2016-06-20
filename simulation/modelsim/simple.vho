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

-- DATE "06/20/2016 23:04:38"

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
SIGNAL \inst31|prescaler_counter[0]~17\ : std_logic;
SIGNAL \inst31|prescaler_counter[0]~17COUT1_49\ : std_logic;
SIGNAL \inst31|prescaler_counter[1]~19\ : std_logic;
SIGNAL \inst31|prescaler_counter[2]~21\ : std_logic;
SIGNAL \inst31|prescaler_counter[2]~21COUT1_50\ : std_logic;
SIGNAL \inst31|prescaler_counter[3]~25\ : std_logic;
SIGNAL \inst31|prescaler_counter[3]~25COUT1_51\ : std_logic;
SIGNAL \inst31|prescaler_counter[4]~27\ : std_logic;
SIGNAL \inst31|prescaler_counter[4]~27COUT1_52\ : std_logic;
SIGNAL \inst31|prescaler_counter[5]~15\ : std_logic;
SIGNAL \inst31|prescaler_counter[5]~15COUT1_53\ : std_logic;
SIGNAL \inst31|prescaler_counter[6]~23\ : std_logic;
SIGNAL \inst31|prescaler_counter[7]~29\ : std_logic;
SIGNAL \inst31|prescaler_counter[7]~29COUT1_54\ : std_logic;
SIGNAL \inst31|prescaler_counter[8]~31\ : std_logic;
SIGNAL \inst31|prescaler_counter[8]~31COUT1_55\ : std_logic;
SIGNAL \inst31|prescaler_counter[9]~33\ : std_logic;
SIGNAL \inst31|prescaler_counter[9]~33COUT1_56\ : std_logic;
SIGNAL \inst31|prescaler_counter[10]~7\ : std_logic;
SIGNAL \inst31|prescaler_counter[10]~7COUT1_57\ : std_logic;
SIGNAL \inst31|prescaler_counter[11]~9\ : std_logic;
SIGNAL \inst31|prescaler_counter[12]~11\ : std_logic;
SIGNAL \inst31|prescaler_counter[12]~11COUT1_58\ : std_logic;
SIGNAL \inst31|prescaler_counter[13]~13\ : std_logic;
SIGNAL \inst31|prescaler_counter[13]~13COUT1_59\ : std_logic;
SIGNAL \inst31|prescaler_counter[14]~35\ : std_logic;
SIGNAL \inst31|prescaler_counter[14]~35COUT1_60\ : std_logic;
SIGNAL \inst31|prescaler_counter[15]~5\ : std_logic;
SIGNAL \inst31|prescaler_counter[15]~5COUT1_61\ : std_logic;
SIGNAL \inst31|prescaler_counter[16]~3\ : std_logic;
SIGNAL \inst31|prescaler_counter[17]~39\ : std_logic;
SIGNAL \inst31|prescaler_counter[17]~39COUT1_62\ : std_logic;
SIGNAL \inst31|prescaler_counter[18]~41\ : std_logic;
SIGNAL \inst31|prescaler_counter[18]~41COUT1_63\ : std_logic;
SIGNAL \inst31|prescaler_counter[19]~43\ : std_logic;
SIGNAL \inst31|prescaler_counter[19]~43COUT1_64\ : std_logic;
SIGNAL \inst31|prescaler_counter[20]~45\ : std_logic;
SIGNAL \inst31|prescaler_counter[20]~45COUT1_65\ : std_logic;
SIGNAL \inst31|prescaler_counter[21]~47\ : std_logic;
SIGNAL \inst31|prescaler_counter[22]~1\ : std_logic;
SIGNAL \inst31|prescaler_counter[22]~1COUT1_66\ : std_logic;
SIGNAL \inst31|LessThan0~6_combout\ : std_logic;
SIGNAL \inst31|LessThan0~7_combout\ : std_logic;
SIGNAL \inst31|LessThan0~2_combout\ : std_logic;
SIGNAL \inst31|LessThan0~1_combout\ : std_logic;
SIGNAL \inst31|LessThan0~3_combout\ : std_logic;
SIGNAL \inst31|LessThan0~0_combout\ : std_logic;
SIGNAL \inst31|LessThan0~4_combout\ : std_logic;
SIGNAL \inst31|LessThan0~5_combout\ : std_logic;
SIGNAL \inst31|LessThan0~8\ : std_logic;
SIGNAL \inst31|newClock~regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
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
SIGNAL \ewrq|Mux1~0_combout\ : std_logic;
SIGNAL \ewrq|Mux0~3_combout\ : std_logic;
SIGNAL \ewrq|Mux1~4_combout\ : std_logic;
SIGNAL \ewrq|Equal0~0_combout\ : std_logic;
SIGNAL \inst|changed\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_full~regout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|valid_wreq~combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|_~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|_~2_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|_~3_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|_~6_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|_~4_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|_~5_combout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ : std_logic;
SIGNAL \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ : std_logic;
SIGNAL \ewrq|Mux0~2_combout\ : std_logic;
SIGNAL \ewrq|Mux1~2_combout\ : std_logic;
SIGNAL \ewrq|Mux1~1_combout\ : std_logic;
SIGNAL \ewrq|TxD_shift~6_combout\ : std_logic;
SIGNAL \ewrq|TxD_shift[1]~1_combout\ : std_logic;
SIGNAL \ewrq|TxD~0_combout\ : std_logic;
SIGNAL \inst31|prescaler_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|data_buffer\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ewrq|tickgen|Acc\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ewrq|TxD_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ewrq|TxD_shift\ : std_logic_vector(7 DOWNTO 0);
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

-- Location: LC_X3_Y6_N3
\inst31|prescaler_counter[0]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(0) = DFFEAS((!\inst31|prescaler_counter\(0)), GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[0]~17\ = CARRY((\inst31|prescaler_counter\(0)))
-- \inst31|prescaler_counter[0]~17COUT1_49\ = CARRY((\inst31|prescaler_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst31|prescaler_counter\(0),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(0),
	cout0 => \inst31|prescaler_counter[0]~17\,
	cout1 => \inst31|prescaler_counter[0]~17COUT1_49\);

-- Location: LC_X3_Y6_N4
\inst31|prescaler_counter[1]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(1) = DFFEAS(\inst31|prescaler_counter\(1) $ ((((\inst31|prescaler_counter[0]~17\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[1]~19\ = CARRY(((!\inst31|prescaler_counter[0]~17COUT1_49\)) # (!\inst31|prescaler_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst31|prescaler_counter\(1),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin0 => \inst31|prescaler_counter[0]~17\,
	cin1 => \inst31|prescaler_counter[0]~17COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(1),
	cout => \inst31|prescaler_counter[1]~19\);

-- Location: LC_X3_Y6_N5
\inst31|prescaler_counter[2]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(2) = DFFEAS(\inst31|prescaler_counter\(2) $ ((((!\inst31|prescaler_counter[1]~19\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[2]~21\ = CARRY((\inst31|prescaler_counter\(2) & ((!\inst31|prescaler_counter[1]~19\))))
-- \inst31|prescaler_counter[2]~21COUT1_50\ = CARRY((\inst31|prescaler_counter\(2) & ((!\inst31|prescaler_counter[1]~19\))))

-- pragma translate_off
GENERIC MAP (
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
	dataa => \inst31|prescaler_counter\(2),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[1]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(2),
	cout0 => \inst31|prescaler_counter[2]~21\,
	cout1 => \inst31|prescaler_counter[2]~21COUT1_50\);

-- Location: LC_X3_Y6_N6
\inst31|prescaler_counter[3]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(3) = DFFEAS(\inst31|prescaler_counter\(3) $ (((((!\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[2]~21\) # (\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[2]~21COUT1_50\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[3]~25\ = CARRY(((!\inst31|prescaler_counter[2]~21\)) # (!\inst31|prescaler_counter\(3)))
-- \inst31|prescaler_counter[3]~25COUT1_51\ = CARRY(((!\inst31|prescaler_counter[2]~21COUT1_50\)) # (!\inst31|prescaler_counter\(3)))

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
	dataa => \inst31|prescaler_counter\(3),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[1]~19\,
	cin0 => \inst31|prescaler_counter[2]~21\,
	cin1 => \inst31|prescaler_counter[2]~21COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(3),
	cout0 => \inst31|prescaler_counter[3]~25\,
	cout1 => \inst31|prescaler_counter[3]~25COUT1_51\);

-- Location: LC_X3_Y6_N7
\inst31|prescaler_counter[4]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(4) = DFFEAS((\inst31|prescaler_counter\(4) $ ((!(!\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[3]~25\) # (\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[3]~25COUT1_51\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[4]~27\ = CARRY(((\inst31|prescaler_counter\(4) & !\inst31|prescaler_counter[3]~25\)))
-- \inst31|prescaler_counter[4]~27COUT1_52\ = CARRY(((\inst31|prescaler_counter\(4) & !\inst31|prescaler_counter[3]~25COUT1_51\)))

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
	datab => \inst31|prescaler_counter\(4),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[1]~19\,
	cin0 => \inst31|prescaler_counter[3]~25\,
	cin1 => \inst31|prescaler_counter[3]~25COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(4),
	cout0 => \inst31|prescaler_counter[4]~27\,
	cout1 => \inst31|prescaler_counter[4]~27COUT1_52\);

-- Location: LC_X3_Y6_N8
\inst31|prescaler_counter[5]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(5) = DFFEAS(\inst31|prescaler_counter\(5) $ (((((!\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[4]~27\) # (\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[4]~27COUT1_52\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[5]~15\ = CARRY(((!\inst31|prescaler_counter[4]~27\)) # (!\inst31|prescaler_counter\(5)))
-- \inst31|prescaler_counter[5]~15COUT1_53\ = CARRY(((!\inst31|prescaler_counter[4]~27COUT1_52\)) # (!\inst31|prescaler_counter\(5)))

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
	dataa => \inst31|prescaler_counter\(5),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[1]~19\,
	cin0 => \inst31|prescaler_counter[4]~27\,
	cin1 => \inst31|prescaler_counter[4]~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(5),
	cout0 => \inst31|prescaler_counter[5]~15\,
	cout1 => \inst31|prescaler_counter[5]~15COUT1_53\);

-- Location: LC_X3_Y6_N9
\inst31|prescaler_counter[6]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(6) = DFFEAS((\inst31|prescaler_counter\(6) $ ((!(!\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[5]~15\) # (\inst31|prescaler_counter[1]~19\ & \inst31|prescaler_counter[5]~15COUT1_53\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[6]~23\ = CARRY(((\inst31|prescaler_counter\(6) & !\inst31|prescaler_counter[5]~15COUT1_53\)))

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
	datab => \inst31|prescaler_counter\(6),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[1]~19\,
	cin0 => \inst31|prescaler_counter[5]~15\,
	cin1 => \inst31|prescaler_counter[5]~15COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(6),
	cout => \inst31|prescaler_counter[6]~23\);

-- Location: LC_X4_Y6_N0
\inst31|prescaler_counter[7]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(7) = DFFEAS((\inst31|prescaler_counter\(7) $ ((\inst31|prescaler_counter[6]~23\))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[7]~29\ = CARRY(((!\inst31|prescaler_counter[6]~23\) # (!\inst31|prescaler_counter\(7))))
-- \inst31|prescaler_counter[7]~29COUT1_54\ = CARRY(((!\inst31|prescaler_counter[6]~23\) # (!\inst31|prescaler_counter\(7))))

-- pragma translate_off
GENERIC MAP (
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
	datab => \inst31|prescaler_counter\(7),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[6]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(7),
	cout0 => \inst31|prescaler_counter[7]~29\,
	cout1 => \inst31|prescaler_counter[7]~29COUT1_54\);

-- Location: LC_X4_Y6_N1
\inst31|prescaler_counter[8]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(8) = DFFEAS((\inst31|prescaler_counter\(8) $ ((!(!\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[7]~29\) # (\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[7]~29COUT1_54\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[8]~31\ = CARRY(((\inst31|prescaler_counter\(8) & !\inst31|prescaler_counter[7]~29\)))
-- \inst31|prescaler_counter[8]~31COUT1_55\ = CARRY(((\inst31|prescaler_counter\(8) & !\inst31|prescaler_counter[7]~29COUT1_54\)))

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
	datab => \inst31|prescaler_counter\(8),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[6]~23\,
	cin0 => \inst31|prescaler_counter[7]~29\,
	cin1 => \inst31|prescaler_counter[7]~29COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(8),
	cout0 => \inst31|prescaler_counter[8]~31\,
	cout1 => \inst31|prescaler_counter[8]~31COUT1_55\);

-- Location: LC_X4_Y6_N2
\inst31|prescaler_counter[9]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(9) = DFFEAS((\inst31|prescaler_counter\(9) $ (((!\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[8]~31\) # (\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[8]~31COUT1_55\)))), GLOBAL(\OSC_CLK~combout\), 
-- VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[9]~33\ = CARRY(((!\inst31|prescaler_counter[8]~31\) # (!\inst31|prescaler_counter\(9))))
-- \inst31|prescaler_counter[9]~33COUT1_56\ = CARRY(((!\inst31|prescaler_counter[8]~31COUT1_55\) # (!\inst31|prescaler_counter\(9))))

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
	datab => \inst31|prescaler_counter\(9),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[6]~23\,
	cin0 => \inst31|prescaler_counter[8]~31\,
	cin1 => \inst31|prescaler_counter[8]~31COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(9),
	cout0 => \inst31|prescaler_counter[9]~33\,
	cout1 => \inst31|prescaler_counter[9]~33COUT1_56\);

-- Location: LC_X4_Y6_N3
\inst31|prescaler_counter[10]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(10) = DFFEAS(\inst31|prescaler_counter\(10) $ ((((!(!\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[9]~33\) # (\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[9]~33COUT1_56\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[10]~7\ = CARRY((\inst31|prescaler_counter\(10) & ((!\inst31|prescaler_counter[9]~33\))))
-- \inst31|prescaler_counter[10]~7COUT1_57\ = CARRY((\inst31|prescaler_counter\(10) & ((!\inst31|prescaler_counter[9]~33COUT1_56\))))

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
	dataa => \inst31|prescaler_counter\(10),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[6]~23\,
	cin0 => \inst31|prescaler_counter[9]~33\,
	cin1 => \inst31|prescaler_counter[9]~33COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(10),
	cout0 => \inst31|prescaler_counter[10]~7\,
	cout1 => \inst31|prescaler_counter[10]~7COUT1_57\);

-- Location: LC_X4_Y6_N4
\inst31|prescaler_counter[11]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(11) = DFFEAS(\inst31|prescaler_counter\(11) $ (((((!\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[10]~7\) # (\inst31|prescaler_counter[6]~23\ & \inst31|prescaler_counter[10]~7COUT1_57\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[11]~9\ = CARRY(((!\inst31|prescaler_counter[10]~7COUT1_57\)) # (!\inst31|prescaler_counter\(11)))

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
	dataa => \inst31|prescaler_counter\(11),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[6]~23\,
	cin0 => \inst31|prescaler_counter[10]~7\,
	cin1 => \inst31|prescaler_counter[10]~7COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(11),
	cout => \inst31|prescaler_counter[11]~9\);

-- Location: LC_X4_Y6_N5
\inst31|prescaler_counter[12]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(12) = DFFEAS(\inst31|prescaler_counter\(12) $ ((((!\inst31|prescaler_counter[11]~9\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[12]~11\ = CARRY((\inst31|prescaler_counter\(12) & ((!\inst31|prescaler_counter[11]~9\))))
-- \inst31|prescaler_counter[12]~11COUT1_58\ = CARRY((\inst31|prescaler_counter\(12) & ((!\inst31|prescaler_counter[11]~9\))))

-- pragma translate_off
GENERIC MAP (
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
	dataa => \inst31|prescaler_counter\(12),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[11]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(12),
	cout0 => \inst31|prescaler_counter[12]~11\,
	cout1 => \inst31|prescaler_counter[12]~11COUT1_58\);

-- Location: LC_X4_Y6_N6
\inst31|prescaler_counter[13]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(13) = DFFEAS(\inst31|prescaler_counter\(13) $ (((((!\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[12]~11\) # (\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[12]~11COUT1_58\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[13]~13\ = CARRY(((!\inst31|prescaler_counter[12]~11\)) # (!\inst31|prescaler_counter\(13)))
-- \inst31|prescaler_counter[13]~13COUT1_59\ = CARRY(((!\inst31|prescaler_counter[12]~11COUT1_58\)) # (!\inst31|prescaler_counter\(13)))

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
	dataa => \inst31|prescaler_counter\(13),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[11]~9\,
	cin0 => \inst31|prescaler_counter[12]~11\,
	cin1 => \inst31|prescaler_counter[12]~11COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(13),
	cout0 => \inst31|prescaler_counter[13]~13\,
	cout1 => \inst31|prescaler_counter[13]~13COUT1_59\);

-- Location: LC_X4_Y6_N7
\inst31|prescaler_counter[14]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(14) = DFFEAS((\inst31|prescaler_counter\(14) $ ((!(!\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[13]~13\) # (\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[13]~13COUT1_59\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[14]~35\ = CARRY(((\inst31|prescaler_counter\(14) & !\inst31|prescaler_counter[13]~13\)))
-- \inst31|prescaler_counter[14]~35COUT1_60\ = CARRY(((\inst31|prescaler_counter\(14) & !\inst31|prescaler_counter[13]~13COUT1_59\)))

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
	datab => \inst31|prescaler_counter\(14),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[11]~9\,
	cin0 => \inst31|prescaler_counter[13]~13\,
	cin1 => \inst31|prescaler_counter[13]~13COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(14),
	cout0 => \inst31|prescaler_counter[14]~35\,
	cout1 => \inst31|prescaler_counter[14]~35COUT1_60\);

-- Location: LC_X4_Y6_N8
\inst31|prescaler_counter[15]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(15) = DFFEAS(\inst31|prescaler_counter\(15) $ (((((!\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[14]~35\) # (\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[14]~35COUT1_60\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[15]~5\ = CARRY(((!\inst31|prescaler_counter[14]~35\)) # (!\inst31|prescaler_counter\(15)))
-- \inst31|prescaler_counter[15]~5COUT1_61\ = CARRY(((!\inst31|prescaler_counter[14]~35COUT1_60\)) # (!\inst31|prescaler_counter\(15)))

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
	dataa => \inst31|prescaler_counter\(15),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[11]~9\,
	cin0 => \inst31|prescaler_counter[14]~35\,
	cin1 => \inst31|prescaler_counter[14]~35COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(15),
	cout0 => \inst31|prescaler_counter[15]~5\,
	cout1 => \inst31|prescaler_counter[15]~5COUT1_61\);

-- Location: LC_X4_Y6_N9
\inst31|prescaler_counter[16]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(16) = DFFEAS((\inst31|prescaler_counter\(16) $ ((!(!\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[15]~5\) # (\inst31|prescaler_counter[11]~9\ & \inst31|prescaler_counter[15]~5COUT1_61\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[16]~3\ = CARRY(((\inst31|prescaler_counter\(16) & !\inst31|prescaler_counter[15]~5COUT1_61\)))

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
	datab => \inst31|prescaler_counter\(16),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[11]~9\,
	cin0 => \inst31|prescaler_counter[15]~5\,
	cin1 => \inst31|prescaler_counter[15]~5COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(16),
	cout => \inst31|prescaler_counter[16]~3\);

-- Location: LC_X5_Y6_N0
\inst31|prescaler_counter[17]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(17) = DFFEAS((\inst31|prescaler_counter\(17) $ ((\inst31|prescaler_counter[16]~3\))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[17]~39\ = CARRY(((!\inst31|prescaler_counter[16]~3\) # (!\inst31|prescaler_counter\(17))))
-- \inst31|prescaler_counter[17]~39COUT1_62\ = CARRY(((!\inst31|prescaler_counter[16]~3\) # (!\inst31|prescaler_counter\(17))))

-- pragma translate_off
GENERIC MAP (
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
	datab => \inst31|prescaler_counter\(17),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[16]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(17),
	cout0 => \inst31|prescaler_counter[17]~39\,
	cout1 => \inst31|prescaler_counter[17]~39COUT1_62\);

-- Location: LC_X5_Y6_N1
\inst31|prescaler_counter[18]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(18) = DFFEAS((\inst31|prescaler_counter\(18) $ ((!(!\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[17]~39\) # (\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[17]~39COUT1_62\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[18]~41\ = CARRY(((\inst31|prescaler_counter\(18) & !\inst31|prescaler_counter[17]~39\)))
-- \inst31|prescaler_counter[18]~41COUT1_63\ = CARRY(((\inst31|prescaler_counter\(18) & !\inst31|prescaler_counter[17]~39COUT1_62\)))

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
	datab => \inst31|prescaler_counter\(18),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[16]~3\,
	cin0 => \inst31|prescaler_counter[17]~39\,
	cin1 => \inst31|prescaler_counter[17]~39COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(18),
	cout0 => \inst31|prescaler_counter[18]~41\,
	cout1 => \inst31|prescaler_counter[18]~41COUT1_63\);

-- Location: LC_X5_Y6_N2
\inst31|prescaler_counter[19]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(19) = DFFEAS((\inst31|prescaler_counter\(19) $ (((!\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[18]~41\) # (\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[18]~41COUT1_63\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[19]~43\ = CARRY(((!\inst31|prescaler_counter[18]~41\) # (!\inst31|prescaler_counter\(19))))
-- \inst31|prescaler_counter[19]~43COUT1_64\ = CARRY(((!\inst31|prescaler_counter[18]~41COUT1_63\) # (!\inst31|prescaler_counter\(19))))

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
	datab => \inst31|prescaler_counter\(19),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[16]~3\,
	cin0 => \inst31|prescaler_counter[18]~41\,
	cin1 => \inst31|prescaler_counter[18]~41COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(19),
	cout0 => \inst31|prescaler_counter[19]~43\,
	cout1 => \inst31|prescaler_counter[19]~43COUT1_64\);

-- Location: LC_X5_Y6_N3
\inst31|prescaler_counter[20]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(20) = DFFEAS(\inst31|prescaler_counter\(20) $ ((((!(!\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[19]~43\) # (\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[19]~43COUT1_64\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[20]~45\ = CARRY((\inst31|prescaler_counter\(20) & ((!\inst31|prescaler_counter[19]~43\))))
-- \inst31|prescaler_counter[20]~45COUT1_65\ = CARRY((\inst31|prescaler_counter\(20) & ((!\inst31|prescaler_counter[19]~43COUT1_64\))))

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
	dataa => \inst31|prescaler_counter\(20),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[16]~3\,
	cin0 => \inst31|prescaler_counter[19]~43\,
	cin1 => \inst31|prescaler_counter[19]~43COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(20),
	cout0 => \inst31|prescaler_counter[20]~45\,
	cout1 => \inst31|prescaler_counter[20]~45COUT1_65\);

-- Location: LC_X5_Y6_N4
\inst31|prescaler_counter[21]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(21) = DFFEAS(\inst31|prescaler_counter\(21) $ (((((!\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[20]~45\) # (\inst31|prescaler_counter[16]~3\ & \inst31|prescaler_counter[20]~45COUT1_65\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[21]~47\ = CARRY(((!\inst31|prescaler_counter[20]~45COUT1_65\)) # (!\inst31|prescaler_counter\(21)))

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
	dataa => \inst31|prescaler_counter\(21),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[16]~3\,
	cin0 => \inst31|prescaler_counter[20]~45\,
	cin1 => \inst31|prescaler_counter[20]~45COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(21),
	cout => \inst31|prescaler_counter[21]~47\);

-- Location: LC_X5_Y6_N5
\inst31|prescaler_counter[22]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(22) = DFFEAS(\inst31|prescaler_counter\(22) $ ((((!\inst31|prescaler_counter[21]~47\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )
-- \inst31|prescaler_counter[22]~1\ = CARRY((\inst31|prescaler_counter\(22) & ((!\inst31|prescaler_counter[21]~47\))))
-- \inst31|prescaler_counter[22]~1COUT1_66\ = CARRY((\inst31|prescaler_counter\(22) & ((!\inst31|prescaler_counter[21]~47\))))

-- pragma translate_off
GENERIC MAP (
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
	dataa => \inst31|prescaler_counter\(22),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[21]~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(22),
	cout0 => \inst31|prescaler_counter[22]~1\,
	cout1 => \inst31|prescaler_counter[22]~1COUT1_66\);

-- Location: LC_X5_Y6_N6
\inst31|prescaler_counter[23]\ : maxii_lcell
-- Equation(s):
-- \inst31|prescaler_counter\(23) = DFFEAS(\inst31|prescaler_counter\(23) $ (((((!\inst31|prescaler_counter[21]~47\ & \inst31|prescaler_counter[22]~1\) # (\inst31|prescaler_counter[21]~47\ & \inst31|prescaler_counter[22]~1COUT1_66\))))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , \inst31|LessThan0~8\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst31|prescaler_counter\(23),
	aclr => GND,
	sclr => \inst31|LessThan0~8\,
	cin => \inst31|prescaler_counter[21]~47\,
	cin0 => \inst31|prescaler_counter[22]~1\,
	cin1 => \inst31|prescaler_counter[22]~1COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst31|prescaler_counter\(23));

-- Location: LC_X5_Y6_N8
\inst31|LessThan0~6\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~6_combout\ = (\inst31|prescaler_counter\(20) & (\inst31|prescaler_counter\(18) & (\inst31|prescaler_counter\(17) & \inst31|prescaler_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|prescaler_counter\(20),
	datab => \inst31|prescaler_counter\(18),
	datac => \inst31|prescaler_counter\(17),
	datad => \inst31|prescaler_counter\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~6_combout\);

-- Location: LC_X5_Y6_N9
\inst31|LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~7_combout\ = (\inst31|prescaler_counter\(21) & (((\inst31|prescaler_counter\(23) & \inst31|LessThan0~6_combout\))))

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
	dataa => \inst31|prescaler_counter\(21),
	datac => \inst31|prescaler_counter\(23),
	datad => \inst31|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~7_combout\);

-- Location: LC_X2_Y6_N6
\inst31|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~2_combout\ = (\inst31|prescaler_counter\(6)) # ((\inst31|prescaler_counter\(5) & ((\inst31|prescaler_counter\(4)) # (\inst31|prescaler_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|prescaler_counter\(4),
	datab => \inst31|prescaler_counter\(6),
	datac => \inst31|prescaler_counter\(3),
	datad => \inst31|prescaler_counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~2_combout\);

-- Location: LC_X3_Y6_N2
\inst31|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~1_combout\ = (\inst31|prescaler_counter\(5) & ((\inst31|prescaler_counter\(2)) # ((\inst31|prescaler_counter\(1)) # (\inst31|prescaler_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|prescaler_counter\(2),
	datab => \inst31|prescaler_counter\(5),
	datac => \inst31|prescaler_counter\(1),
	datad => \inst31|prescaler_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~1_combout\);

-- Location: LC_X3_Y6_N0
\inst31|LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~3_combout\ = ((\inst31|prescaler_counter\(9)) # ((\inst31|prescaler_counter\(7)) # (\inst31|prescaler_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst31|prescaler_counter\(9),
	datac => \inst31|prescaler_counter\(7),
	datad => \inst31|prescaler_counter\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~3_combout\);

-- Location: LC_X3_Y6_N1
\inst31|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~0_combout\ = (\inst31|prescaler_counter\(13) & (\inst31|prescaler_counter\(11) & (\inst31|prescaler_counter\(10) & \inst31|prescaler_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|prescaler_counter\(13),
	datab => \inst31|prescaler_counter\(11),
	datac => \inst31|prescaler_counter\(10),
	datad => \inst31|prescaler_counter\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~0_combout\);

-- Location: LC_X2_Y6_N7
\inst31|LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~4_combout\ = (\inst31|LessThan0~0_combout\ & ((\inst31|LessThan0~2_combout\) # ((\inst31|LessThan0~1_combout\) # (\inst31|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|LessThan0~2_combout\,
	datab => \inst31|LessThan0~1_combout\,
	datac => \inst31|LessThan0~3_combout\,
	datad => \inst31|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~4_combout\);

-- Location: LC_X2_Y6_N8
\inst31|LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~5_combout\ = (\inst31|prescaler_counter\(16)) # ((\inst31|prescaler_counter\(15) & ((\inst31|prescaler_counter\(14)) # (\inst31|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|prescaler_counter\(15),
	datab => \inst31|prescaler_counter\(14),
	datac => \inst31|prescaler_counter\(16),
	datad => \inst31|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~5_combout\);

-- Location: LC_X2_Y6_N9
\inst31|newClock\ : maxii_lcell
-- Equation(s):
-- \inst31|LessThan0~8\ = (\inst31|prescaler_counter\(22) & ((\inst31|prescaler_counter\(23)) # ((\inst31|LessThan0~7_combout\ & \inst31|LessThan0~5_combout\)))) # (!\inst31|prescaler_counter\(22) & (((\inst31|LessThan0~7_combout\ & 
-- \inst31|LessThan0~5_combout\))))
-- \inst31|newClock~regout\ = DFFEAS(\inst31|LessThan0~8\, GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst31|prescaler_counter\(22),
	datab => \inst31|prescaler_counter\(23),
	datac => \inst31|LessThan0~7_combout\,
	datad => \inst31|LessThan0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst31|LessThan0~8\,
	regout => \inst31|newClock~regout\);

-- Location: LC_X8_Y6_N9
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

-- Location: LC_X7_Y6_N2
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

-- Location: LC_X7_Y6_N3
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

-- Location: LC_X7_Y6_N4
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

-- Location: LC_X7_Y6_N5
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

-- Location: LC_X7_Y6_N6
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

-- Location: LC_X7_Y6_N7
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

-- Location: LC_X7_Y6_N8
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

-- Location: LC_X7_Y6_N9
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

-- Location: LC_X8_Y6_N0
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

-- Location: LC_X8_Y6_N1
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

-- Location: LC_X8_Y6_N2
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

-- Location: LC_X8_Y6_N3
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

-- Location: LC_X8_Y6_N4
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

-- Location: LC_X8_Y6_N5
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

-- Location: LC_X8_Y6_N6
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

-- Location: LC_X8_Y6_N7
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

-- Location: LC_X8_Y6_N8
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

-- Location: LC_X6_Y5_N4
\ewrq|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux2~0_combout\ = ((\ewrq|TxD_state\(2) & ((\ewrq|TxD_state\(3)))) # (!\ewrq|TxD_state\(2) & (!\ewrq|TxD_state\(0)))) # (!\ewrq|tickgen|Acc\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ewrq|TxD_state\(0),
	datab => \ewrq|TxD_state\(2),
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux2~0_combout\);

-- Location: LC_X7_Y5_N1
\ewrq|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux1~0_combout\ = (((\ewrq|tickgen|Acc\(17) & \ewrq|TxD_state\(0))))

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
	datac => \ewrq|tickgen|Acc\(17),
	datad => \ewrq|TxD_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux1~0_combout\);

-- Location: LC_X6_Y5_N1
\ewrq|TxD_state[1]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_state\(1) = DFFEAS((\ewrq|TxD_state\(1) & (\ewrq|Mux2~0_combout\)) # (!\ewrq|TxD_state\(1) & (((\ewrq|TxD_state\(3) & \ewrq|Mux1~0_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|Mux2~0_combout\,
	datab => \ewrq|TxD_state\(1),
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|Mux1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_state\(1));

-- Location: LC_X6_Y5_N3
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

-- Location: LC_X6_Y5_N0
\ewrq|TxD_state[3]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_state\(3) = DFFEAS((\ewrq|Mux0~3_combout\ & (!\ewrq|TxD_state\(0) & ((\ewrq|TxD_state\(3)) # (!\ewrq|TxD_state\(1))))) # (!\ewrq|Mux0~3_combout\ & (\ewrq|TxD_state\(3))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c4e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|Mux0~3_combout\,
	datab => \ewrq|TxD_state\(3),
	datac => \ewrq|TxD_state\(0),
	datad => \ewrq|TxD_state\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_state\(3));

-- Location: LC_X6_Y5_N6
\ewrq|Mux1~4\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux1~4_combout\ = ((\ewrq|TxD_state\(1) & ((!\ewrq|TxD_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ewrq|TxD_state\(1),
	datad => \ewrq|TxD_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux1~4_combout\);

-- Location: LC_X6_Y5_N5
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

-- Location: LC_X6_Y5_N8
\ewrq|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|Equal0~0_combout\ = (!\ewrq|TxD_state\(0) & (!\ewrq|TxD_state\(1) & (!\ewrq|TxD_state\(3) & !\ewrq|TxD_state\(2))))

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
	dataa => \ewrq|TxD_state\(0),
	datab => \ewrq|TxD_state\(1),
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|TxD_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Equal0~0_combout\);

-- Location: LC_X5_Y7_N8
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

-- Location: LC_X6_Y7_N4
\inst6|myFIFO|subfifo|fifo_state|state_full\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_full~regout\ = DFFEAS((!\inst|changed\ & ((\inst6|myFIFO|subfifo|fifo_state|state_full~regout\) # ((\inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ & \inst6|myFIFO|subfifo|fifo_state|_~3_combout\)))), 
-- GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	datac => \inst|changed\,
	datad => \inst6|myFIFO|subfifo|fifo_state|_~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\);

-- Location: LC_X5_Y7_N9
\inst6|myFIFO|subfifo|valid_wreq\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|valid_wreq~combout\ = (((\inst31|newClock~regout\ & !\inst6|myFIFO|subfifo|fifo_state|state_full~regout\)))

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
	datac => \inst31|newClock~regout\,
	datad => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|valid_wreq~combout\);

-- Location: LC_X5_Y7_N7
\inst6|myFIFO|subfifo|_~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|_~0_combout\ = (\inst31|newClock~regout\ & (\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ $ (((!\inst|changed\) # (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\))))) # (!\inst31|newClock~regout\ & 
-- (((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & \inst|changed\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|newClock~regout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	datac => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datad => \inst|changed\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|_~0_combout\);

-- Location: LC_X5_Y7_N1
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

-- Location: LC_X5_Y7_N2
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

-- Location: LC_X5_Y7_N3
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

-- Location: LC_X5_Y7_N4
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) = DFFEAS(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) $ ((((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUT\)))), GLOBAL(\OSC_CLK~combout\), VCC, , 
-- \inst6|myFIFO|subfifo|_~0_combout\, , , , )
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ = CARRY((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) $ (\inst6|myFIFO|subfifo|valid_wreq~combout\)) # (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella2~COUTCOUT1_1\))

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
	cout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\);

-- Location: LC_X5_Y7_N5
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) = DFFEAS(\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) $ ((((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\)))), GLOBAL(\OSC_CLK~combout\), VCC, , 
-- \inst6|myFIFO|subfifo|_~0_combout\, , , , )
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUT\ = CARRY((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) $ (!\inst6|myFIFO|subfifo|valid_wreq~combout\))))
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) $ (!\inst6|myFIFO|subfifo|valid_wreq~combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a509",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datab => \inst6|myFIFO|subfifo|valid_wreq~combout\,
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|_~0_combout\,
	cin => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	cout0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUT\,
	cout1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X5_Y7_N6
\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella5\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5) = DFFEAS((((!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ & \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUT\) # 
-- (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\ & \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUTCOUT1_1\) $ (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5)))), GLOBAL(\OSC_CLK~combout\), VCC, , 
-- \inst6|myFIFO|subfifo|_~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5),
	aclr => GND,
	ena => \inst6|myFIFO|subfifo|_~0_combout\,
	cin => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella3~COUT\,
	cin0 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUT\,
	cin1 => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5));

-- Location: LC_X6_Y7_N0
\inst6|myFIFO|subfifo|fifo_state|_~2\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|_~2_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & 
-- \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
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

-- Location: LC_X6_Y7_N1
\inst6|myFIFO|subfifo|fifo_state|_~3\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|_~3_combout\ = (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) & (\inst31|newClock~regout\ & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5) & \inst6|myFIFO|subfifo|fifo_state|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datab => \inst31|newClock~regout\,
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5),
	datad => \inst6|myFIFO|subfifo|fifo_state|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|_~3_combout\);

-- Location: LC_X6_Y7_N7
\inst6|myFIFO|subfifo|fifo_state|_~6\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|_~6_combout\ = (\inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ & ((\ewrq|Equal0~0_combout\ $ (\inst|data_buffer\(0))) # (!\inst6|myFIFO|subfifo|fifo_state|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\,
	datab => \ewrq|Equal0~0_combout\,
	datac => \inst|data_buffer\(0),
	datad => \inst6|myFIFO|subfifo|fifo_state|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|_~6_combout\);

-- Location: LC_X6_Y7_N6
\inst6|myFIFO|subfifo|fifo_state|state_middle~0\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\ = (\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ & (\inst|changed\))) # (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & 
-- ((\inst31|newClock~regout\) # ((\inst6|myFIFO|subfifo|fifo_state|state_full~regout\ & \inst|changed\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|state_full~regout\,
	datac => \inst|changed\,
	datad => \inst31|newClock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\);

-- Location: LC_X6_Y7_N9
\inst6|myFIFO|subfifo|fifo_state|_~4\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|_~4_combout\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3) & (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2) & (\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0) & 
-- !\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|_~4_combout\);

-- Location: LC_X6_Y7_N2
\inst6|myFIFO|subfifo|fifo_state|_~5\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|_~5_combout\ = (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4) & (!\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5) & (\inst|changed\ & \inst6|myFIFO|subfifo|fifo_state|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	datab => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5),
	datac => \inst|changed\,
	datad => \inst6|myFIFO|subfifo|fifo_state|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|myFIFO|subfifo|fifo_state|_~5_combout\);

-- Location: LC_X6_Y7_N3
\inst6|myFIFO|subfifo|fifo_state|state_middle\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\ = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\) # ((\inst6|myFIFO|subfifo|fifo_state|_~6_combout\ & ((\inst31|newClock~regout\) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|_~5_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst31|newClock~regout\,
	datab => \inst6|myFIFO|subfifo|fifo_state|_~6_combout\,
	datac => \inst6|myFIFO|subfifo|fifo_state|state_middle~0_combout\,
	datad => \inst6|myFIFO|subfifo|fifo_state|_~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\);

-- Location: LC_X6_Y7_N5
\inst6|myFIFO|subfifo|fifo_state|state_empty\ : maxii_lcell
-- Equation(s):
-- \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ = DFFEAS((\inst31|newClock~regout\) # ((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((!\inst6|myFIFO|subfifo|fifo_state|_~5_combout\) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_middle~regout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_middle~regout\,
	datab => \inst31|newClock~regout\,
	datac => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datad => \inst6|myFIFO|subfifo|fifo_state|_~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\);

-- Location: LC_X7_Y5_N2
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

-- Location: LC_X6_Y5_N7
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

-- Location: LC_X6_Y5_N9
\ewrq|Mux1~1\ : maxii_lcell
-- Equation(s):
-- \ewrq|Mux1~1_combout\ = (\ewrq|TxD_state\(3) & (\ewrq|TxD_state\(2) $ (((\ewrq|Mux1~0_combout\ & \ewrq|TxD_state\(1))))))

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
	dataa => \ewrq|Mux1~0_combout\,
	datab => \ewrq|TxD_state\(2),
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|TxD_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|Mux1~1_combout\);

-- Location: LC_X6_Y5_N2
\ewrq|TxD_state[2]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_state\(2) = DFFEAS(((\ewrq|Mux1~1_combout\) # ((\ewrq|Mux1~2_combout\ & !\ewrq|TxD_state\(3)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \ewrq|Mux1~2_combout\,
	datac => \ewrq|TxD_state\(3),
	datad => \ewrq|Mux1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_state\(2));

-- Location: LC_X6_Y6_N5
\ewrq|TxD_shift~6\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift~6_combout\ = (\ewrq|TxD_shift\(5) & (((!\ewrq|TxD_state\(3))) # (!\ewrq|tickgen|Acc\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ewrq|TxD_shift\(5),
	datab => \ewrq|tickgen|Acc\(17),
	datac => \ewrq|TxD_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|TxD_shift~6_combout\);

-- Location: LC_X6_Y6_N6
\ewrq|TxD_shift[5]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(5) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5)))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift~6_combout\)))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_shift~6_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

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
	datac => \ewrq|TxD_shift~6_combout\,
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(5));

-- Location: LC_X6_Y6_N7
\ewrq|TxD_shift[1]~1\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift[1]~1_combout\ = (\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\) # ((\ewrq|TxD_state\(3) & \ewrq|tickgen|Acc\(17))))) # (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (\ewrq|TxD_state\(3) & 
-- (\ewrq|tickgen|Acc\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	datab => \ewrq|TxD_state\(3),
	datac => \ewrq|tickgen|Acc\(17),
	datad => \ewrq|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ewrq|TxD_shift[1]~1_combout\);

-- Location: LC_X6_Y6_N4
\ewrq|TxD_shift[4]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(4) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4)))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(5))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (((\ewrq|TxD_shift\(5))))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

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
	datac => \ewrq|TxD_shift\(5),
	datad => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(4),
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(4));

-- Location: LC_X6_Y6_N8
\ewrq|TxD_shift[3]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(3) = DFFEAS((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3)))) # (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & 
-- (\ewrq|TxD_shift\(4))))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(4))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|TxD_shift\(4),
	datab => \ewrq|Equal0~0_combout\,
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(3),
	datad => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(3));

-- Location: LC_X6_Y6_N1
\ewrq|TxD_shift[2]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(2) = DFFEAS((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2)))) # (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & 
-- (\ewrq|TxD_shift\(3))))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(3))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \ewrq|TxD_shift\(3),
	datab => \ewrq|Equal0~0_combout\,
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(2),
	datad => \inst6|myFIFO|subfifo|fifo_state|state_empty~regout\,
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(2));

-- Location: LC_X6_Y6_N2
\ewrq|TxD_shift[1]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(1) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1)))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(2))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (\ewrq|TxD_shift\(2))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

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
	datab => \ewrq|TxD_shift\(2),
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(1),
	datad => \ewrq|Equal0~0_combout\,
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(1));

-- Location: LC_X6_Y6_N9
\ewrq|TxD_shift[0]\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD_shift\(0) = DFFEAS((\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & ((\ewrq|Equal0~0_combout\ & ((\inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0)))) # (!\ewrq|Equal0~0_combout\ & (\ewrq|TxD_shift\(1))))) # 
-- (!\inst6|myFIFO|subfifo|fifo_state|state_empty~regout\ & (\ewrq|TxD_shift\(1))), GLOBAL(\OSC_CLK~combout\), VCC, , \ewrq|TxD_shift[1]~1_combout\, , , , )

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
	datab => \ewrq|TxD_shift\(1),
	datac => \inst6|myFIFO|subfifo|rd_ptr|auto_generated|safe_q\(0),
	datad => \ewrq|Equal0~0_combout\,
	aclr => GND,
	ena => \ewrq|TxD_shift[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ewrq|TxD_shift\(0));

-- Location: LC_X6_Y6_N3
\ewrq|TxD~0\ : maxii_lcell
-- Equation(s):
-- \ewrq|TxD~0_combout\ = ((\ewrq|TxD_state\(3) & ((\ewrq|TxD_shift\(0)))) # (!\ewrq|TxD_state\(3) & (!\ewrq|TxD_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ewrq|TxD_state\(2),
	datac => \ewrq|TxD_state\(3),
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

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\steps[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_steps(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\steps[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_steps(1));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\steps[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_steps(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dirs[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dirs(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dirs[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dirs(1));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dirs[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dirs(0));

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


