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

-- DATE "06/18/2016 19:34:28"

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
	Button : IN std_logic
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
SIGNAL ww_Button : std_logic;
SIGNAL \OSC_CLK~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Button~combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~4_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc[1]~33\ : std_logic;
SIGNAL \inst|tickgen|Acc[1]~33COUT1_35\ : std_logic;
SIGNAL \inst|tickgen|Acc[2]~31\ : std_logic;
SIGNAL \inst|tickgen|Acc[2]~31COUT1_36\ : std_logic;
SIGNAL \inst|tickgen|Acc[3]~29\ : std_logic;
SIGNAL \inst|tickgen|Acc[4]~27\ : std_logic;
SIGNAL \inst|tickgen|Acc[4]~27COUT1_37\ : std_logic;
SIGNAL \inst|tickgen|Acc[5]~25\ : std_logic;
SIGNAL \inst|tickgen|Acc[5]~25COUT1_38\ : std_logic;
SIGNAL \inst|tickgen|Acc[6]~23\ : std_logic;
SIGNAL \inst|tickgen|Acc[6]~23COUT1_39\ : std_logic;
SIGNAL \inst|tickgen|Acc[7]~21\ : std_logic;
SIGNAL \inst|tickgen|Acc[7]~21COUT1_40\ : std_logic;
SIGNAL \inst|tickgen|Acc[8]~19\ : std_logic;
SIGNAL \inst|tickgen|Acc[9]~17\ : std_logic;
SIGNAL \inst|tickgen|Acc[9]~17COUT1_41\ : std_logic;
SIGNAL \inst|tickgen|Acc[10]~15\ : std_logic;
SIGNAL \inst|tickgen|Acc[10]~15COUT1_42\ : std_logic;
SIGNAL \inst|tickgen|Acc[11]~13\ : std_logic;
SIGNAL \inst|tickgen|Acc[11]~13COUT1_43\ : std_logic;
SIGNAL \inst|tickgen|Acc[12]~11\ : std_logic;
SIGNAL \inst|tickgen|Acc[12]~11COUT1_44\ : std_logic;
SIGNAL \inst|tickgen|Acc[13]~9\ : std_logic;
SIGNAL \inst|tickgen|Acc[14]~7\ : std_logic;
SIGNAL \inst|tickgen|Acc[14]~7COUT1_45\ : std_logic;
SIGNAL \inst|tickgen|Acc[15]~5\ : std_logic;
SIGNAL \inst|tickgen|Acc[15]~5COUT1_46\ : std_logic;
SIGNAL \inst|tickgen|Acc[16]~3\ : std_logic;
SIGNAL \inst|tickgen|Acc[16]~3COUT1_47\ : std_logic;
SIGNAL \inst|TxD_shift~0_combout\ : std_logic;
SIGNAL \inst|TxD_shift[1]~2_combout\ : std_logic;
SIGNAL \inst|TxD~0_combout\ : std_logic;
SIGNAL \inst|tickgen|Acc\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|TxD_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|TxD_shift\ : std_logic_vector(7 DOWNTO 0);

BEGIN

TX_OUTPUT <= ww_TX_OUTPUT;
ww_OSC_CLK <= OSC_CLK;
ww_Button <= Button;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LC_X7_Y7_N9
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

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Button,
	combout => \Button~combout\);

-- Location: LC_X5_Y7_N7
\inst|Mux0~2\ : maxii_lcell
-- Equation(s):
-- \inst|Mux0~2_combout\ = (((!\inst|TxD_state\(0) & !\inst|TxD_state\(1))))

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
	datac => \inst|TxD_state\(0),
	datad => \inst|TxD_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Mux0~2_combout\);

-- Location: LC_X5_Y7_N4
\inst|Mux1~2\ : maxii_lcell
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\inst|TxD_state\(2) & (((!\inst|tickgen|Acc\(17))))) # (!\inst|TxD_state\(2) & (\Button~combout\ & (\inst|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\,
	datab => \inst|Mux0~2_combout\,
	datac => \inst|tickgen|Acc\(17),
	datad => \inst|TxD_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Mux1~2_combout\);

-- Location: LC_X6_Y7_N1
\inst|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|TxD_state\(0) & (((\inst|tickgen|Acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|TxD_state\(0),
	datad => \inst|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Mux1~0_combout\);

-- Location: LC_X5_Y7_N0
\inst|Mux1~1\ : maxii_lcell
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|TxD_state\(3) & (\inst|TxD_state\(2) $ (((\inst|TxD_state\(1) & \inst|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "48c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|TxD_state\(1),
	datab => \inst|TxD_state\(3),
	datac => \inst|TxD_state\(2),
	datad => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Mux1~1_combout\);

-- Location: LC_X5_Y7_N1
\inst|TxD_state[2]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_state\(2) = DFFEAS(((\inst|Mux1~1_combout\) # ((!\inst|TxD_state\(3) & \inst|Mux1~2_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst|TxD_state\(3),
	datac => \inst|Mux1~2_combout\,
	datad => \inst|Mux1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_state\(2));

-- Location: LC_X5_Y7_N2
\inst|Mux1~4\ : maxii_lcell
-- Equation(s):
-- \inst|Mux1~4_combout\ = (((\inst|TxD_state\(1) & !\inst|TxD_state\(2))))

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
	datac => \inst|TxD_state\(1),
	datad => \inst|TxD_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Mux1~4_combout\);

-- Location: LC_X5_Y7_N5
\inst|TxD_state[0]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_state\(0) = DFFEAS((\inst|tickgen|Acc\(17) & (!\inst|TxD_state\(0) & ((\inst|TxD_state\(3)) # (\inst|Mux1~4_combout\)))) # (!\inst|tickgen|Acc\(17) & (((\inst|TxD_state\(0))))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a58",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst|tickgen|Acc\(17),
	datab => \inst|TxD_state\(3),
	datac => \inst|TxD_state\(0),
	datad => \inst|Mux1~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_state\(0));

-- Location: LC_X5_Y7_N8
\inst|Mux0~3\ : maxii_lcell
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst|TxD_state\(2) & (\inst|tickgen|Acc\(17) & ((\inst|TxD_state\(0)) # (!\inst|TxD_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|TxD_state\(0),
	datab => \inst|TxD_state\(2),
	datac => \inst|tickgen|Acc\(17),
	datad => \inst|TxD_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Mux0~3_combout\);

-- Location: LC_X4_Y7_N2
\inst|TxD_state[3]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_state\(3) = DFFEAS((\inst|Mux0~3_combout\ & (!\inst|TxD_state\(1) & ((\inst|TxD_state\(3)) # (!\inst|TxD_state\(0))))) # (!\inst|Mux0~3_combout\ & (\inst|TxD_state\(3))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

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
	dataa => \inst|TxD_state\(3),
	datab => \inst|TxD_state\(0),
	datac => \inst|TxD_state\(1),
	datad => \inst|Mux0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_state\(3));

-- Location: LC_X5_Y7_N6
\inst|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \inst|Mux2~0_combout\ = ((\inst|TxD_state\(2) & ((\inst|TxD_state\(3)))) # (!\inst|TxD_state\(2) & (!\inst|TxD_state\(0)))) # (!\inst|tickgen|Acc\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|TxD_state\(0),
	datab => \inst|TxD_state\(3),
	datac => \inst|TxD_state\(2),
	datad => \inst|tickgen|Acc\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Mux2~0_combout\);

-- Location: LC_X5_Y7_N3
\inst|TxD_state[1]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_state\(1) = DFFEAS((\inst|TxD_state\(1) & (((\inst|Mux2~0_combout\)))) # (!\inst|TxD_state\(1) & (\inst|TxD_state\(3) & ((\inst|Mux1~0_combout\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst|TxD_state\(1),
	datab => \inst|TxD_state\(3),
	datac => \inst|Mux2~0_combout\,
	datad => \inst|Mux1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_state\(1));

-- Location: LC_X5_Y7_N9
\inst|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|TxD_state\(1) & (!\inst|TxD_state\(2) & (!\inst|TxD_state\(0) & !\inst|TxD_state\(3))))

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
	dataa => \inst|TxD_state\(1),
	datab => \inst|TxD_state\(2),
	datac => \inst|TxD_state\(0),
	datad => \inst|TxD_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Equal0~0_combout\);

-- Location: LC_X6_Y7_N2
\inst|tickgen|Acc[1]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(1) = DFFEAS(((!\inst|tickgen|Acc\(1))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[1]~33\ = CARRY(((\inst|tickgen|Acc\(1))))
-- \inst|tickgen|Acc[1]~33COUT1_35\ = CARRY(((\inst|tickgen|Acc\(1))))

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
	datab => \inst|tickgen|Acc\(1),
	datac => VCC,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(1),
	cout0 => \inst|tickgen|Acc[1]~33\,
	cout1 => \inst|tickgen|Acc[1]~33COUT1_35\);

-- Location: LC_X6_Y7_N3
\inst|tickgen|Acc[2]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(2) = DFFEAS(\inst|tickgen|Acc\(2) $ ((((!\inst|tickgen|Acc[1]~33\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[2]~31\ = CARRY((!\inst|tickgen|Acc\(2) & ((!\inst|tickgen|Acc[1]~33\))))
-- \inst|tickgen|Acc[2]~31COUT1_36\ = CARRY((!\inst|tickgen|Acc\(2) & ((!\inst|tickgen|Acc[1]~33COUT1_35\))))

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
	dataa => \inst|tickgen|Acc\(2),
	datac => VCC,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin0 => \inst|tickgen|Acc[1]~33\,
	cin1 => \inst|tickgen|Acc[1]~33COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(2),
	cout0 => \inst|tickgen|Acc[2]~31\,
	cout1 => \inst|tickgen|Acc[2]~31COUT1_36\);

-- Location: LC_X6_Y7_N4
\inst|tickgen|Acc[3]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(3) = DFFEAS(\inst|tickgen|Acc\(3) $ ((((\inst|tickgen|Acc[2]~31\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[3]~29\ = CARRY((\inst|tickgen|Acc\(3)) # ((!\inst|tickgen|Acc[2]~31COUT1_36\)))

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
	dataa => \inst|tickgen|Acc\(3),
	datac => VCC,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin0 => \inst|tickgen|Acc[2]~31\,
	cin1 => \inst|tickgen|Acc[2]~31COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(3),
	cout => \inst|tickgen|Acc[3]~29\);

-- Location: LC_X6_Y7_N5
\inst|tickgen|Acc[4]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(4) = DFFEAS(\inst|tickgen|Acc\(4) $ ((((\inst|tickgen|Acc[3]~29\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[4]~27\ = CARRY(((!\inst|tickgen|Acc[3]~29\)) # (!\inst|tickgen|Acc\(4)))
-- \inst|tickgen|Acc[4]~27COUT1_37\ = CARRY(((!\inst|tickgen|Acc[3]~29\)) # (!\inst|tickgen|Acc\(4)))

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
	dataa => \inst|tickgen|Acc\(4),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[3]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(4),
	cout0 => \inst|tickgen|Acc[4]~27\,
	cout1 => \inst|tickgen|Acc[4]~27COUT1_37\);

-- Location: LC_X6_Y7_N6
\inst|tickgen|Acc[5]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(5) = DFFEAS(\inst|tickgen|Acc\(5) $ (((((!\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[4]~27\) # (\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[4]~27COUT1_37\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[5]~25\ = CARRY((\inst|tickgen|Acc\(5)) # ((!\inst|tickgen|Acc[4]~27\)))
-- \inst|tickgen|Acc[5]~25COUT1_38\ = CARRY((\inst|tickgen|Acc\(5)) # ((!\inst|tickgen|Acc[4]~27COUT1_37\)))

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
	dataa => \inst|tickgen|Acc\(5),
	datac => VCC,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[3]~29\,
	cin0 => \inst|tickgen|Acc[4]~27\,
	cin1 => \inst|tickgen|Acc[4]~27COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(5),
	cout0 => \inst|tickgen|Acc[5]~25\,
	cout1 => \inst|tickgen|Acc[5]~25COUT1_38\);

-- Location: LC_X6_Y7_N7
\inst|tickgen|Acc[6]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(6) = DFFEAS((\inst|tickgen|Acc\(6) $ (((!\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[5]~25\) # (\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[5]~25COUT1_38\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[6]~23\ = CARRY(((!\inst|tickgen|Acc[5]~25\) # (!\inst|tickgen|Acc\(6))))
-- \inst|tickgen|Acc[6]~23COUT1_39\ = CARRY(((!\inst|tickgen|Acc[5]~25COUT1_38\) # (!\inst|tickgen|Acc\(6))))

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
	datab => \inst|tickgen|Acc\(6),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[3]~29\,
	cin0 => \inst|tickgen|Acc[5]~25\,
	cin1 => \inst|tickgen|Acc[5]~25COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(6),
	cout0 => \inst|tickgen|Acc[6]~23\,
	cout1 => \inst|tickgen|Acc[6]~23COUT1_39\);

-- Location: LC_X6_Y7_N8
\inst|tickgen|Acc[7]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(7) = DFFEAS(\inst|tickgen|Acc\(7) $ ((((!(!\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[6]~23\) # (\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[6]~23COUT1_39\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[7]~21\ = CARRY((\inst|tickgen|Acc\(7) & ((!\inst|tickgen|Acc[6]~23\))))
-- \inst|tickgen|Acc[7]~21COUT1_40\ = CARRY((\inst|tickgen|Acc\(7) & ((!\inst|tickgen|Acc[6]~23COUT1_39\))))

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
	dataa => \inst|tickgen|Acc\(7),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[3]~29\,
	cin0 => \inst|tickgen|Acc[6]~23\,
	cin1 => \inst|tickgen|Acc[6]~23COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(7),
	cout0 => \inst|tickgen|Acc[7]~21\,
	cout1 => \inst|tickgen|Acc[7]~21COUT1_40\);

-- Location: LC_X6_Y7_N9
\inst|tickgen|Acc[8]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(8) = DFFEAS((\inst|tickgen|Acc\(8) $ ((!(!\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[7]~21\) # (\inst|tickgen|Acc[3]~29\ & \inst|tickgen|Acc[7]~21COUT1_40\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , VCC, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[8]~19\ = CARRY(((!\inst|tickgen|Acc\(8) & !\inst|tickgen|Acc[7]~21COUT1_40\)))

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
	datab => \inst|tickgen|Acc\(8),
	datac => VCC,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[3]~29\,
	cin0 => \inst|tickgen|Acc[7]~21\,
	cin1 => \inst|tickgen|Acc[7]~21COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(8),
	cout => \inst|tickgen|Acc[8]~19\);

-- Location: LC_X7_Y7_N0
\inst|tickgen|Acc[9]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(9) = DFFEAS((\inst|tickgen|Acc\(9) $ ((!\inst|tickgen|Acc[8]~19\))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[9]~17\ = CARRY(((\inst|tickgen|Acc\(9) & !\inst|tickgen|Acc[8]~19\)))
-- \inst|tickgen|Acc[9]~17COUT1_41\ = CARRY(((\inst|tickgen|Acc\(9) & !\inst|tickgen|Acc[8]~19\)))

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
	datab => \inst|tickgen|Acc\(9),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[8]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(9),
	cout0 => \inst|tickgen|Acc[9]~17\,
	cout1 => \inst|tickgen|Acc[9]~17COUT1_41\);

-- Location: LC_X7_Y7_N1
\inst|tickgen|Acc[10]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(10) = DFFEAS((\inst|tickgen|Acc\(10) $ (((!\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[9]~17\) # (\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[9]~17COUT1_41\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[10]~15\ = CARRY(((!\inst|tickgen|Acc[9]~17\) # (!\inst|tickgen|Acc\(10))))
-- \inst|tickgen|Acc[10]~15COUT1_42\ = CARRY(((!\inst|tickgen|Acc[9]~17COUT1_41\) # (!\inst|tickgen|Acc\(10))))

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
	datab => \inst|tickgen|Acc\(10),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[8]~19\,
	cin0 => \inst|tickgen|Acc[9]~17\,
	cin1 => \inst|tickgen|Acc[9]~17COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(10),
	cout0 => \inst|tickgen|Acc[10]~15\,
	cout1 => \inst|tickgen|Acc[10]~15COUT1_42\);

-- Location: LC_X7_Y7_N2
\inst|tickgen|Acc[11]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(11) = DFFEAS((\inst|tickgen|Acc\(11) $ ((!(!\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[10]~15\) # (\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[10]~15COUT1_42\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[11]~13\ = CARRY(((\inst|tickgen|Acc\(11) & !\inst|tickgen|Acc[10]~15\)))
-- \inst|tickgen|Acc[11]~13COUT1_43\ = CARRY(((\inst|tickgen|Acc\(11) & !\inst|tickgen|Acc[10]~15COUT1_42\)))

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
	datab => \inst|tickgen|Acc\(11),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[8]~19\,
	cin0 => \inst|tickgen|Acc[10]~15\,
	cin1 => \inst|tickgen|Acc[10]~15COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(11),
	cout0 => \inst|tickgen|Acc[11]~13\,
	cout1 => \inst|tickgen|Acc[11]~13COUT1_43\);

-- Location: LC_X7_Y7_N3
\inst|tickgen|Acc[12]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(12) = DFFEAS(\inst|tickgen|Acc\(12) $ (((((!\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[11]~13\) # (\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[11]~13COUT1_43\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[12]~11\ = CARRY(((!\inst|tickgen|Acc[11]~13\)) # (!\inst|tickgen|Acc\(12)))
-- \inst|tickgen|Acc[12]~11COUT1_44\ = CARRY(((!\inst|tickgen|Acc[11]~13COUT1_43\)) # (!\inst|tickgen|Acc\(12)))

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
	dataa => \inst|tickgen|Acc\(12),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[8]~19\,
	cin0 => \inst|tickgen|Acc[11]~13\,
	cin1 => \inst|tickgen|Acc[11]~13COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(12),
	cout0 => \inst|tickgen|Acc[12]~11\,
	cout1 => \inst|tickgen|Acc[12]~11COUT1_44\);

-- Location: LC_X7_Y7_N4
\inst|tickgen|Acc[13]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(13) = DFFEAS(\inst|tickgen|Acc\(13) $ ((((!(!\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[12]~11\) # (\inst|tickgen|Acc[8]~19\ & \inst|tickgen|Acc[12]~11COUT1_44\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[13]~9\ = CARRY((\inst|tickgen|Acc\(13) & ((!\inst|tickgen|Acc[12]~11COUT1_44\))))

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
	dataa => \inst|tickgen|Acc\(13),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[8]~19\,
	cin0 => \inst|tickgen|Acc[12]~11\,
	cin1 => \inst|tickgen|Acc[12]~11COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(13),
	cout => \inst|tickgen|Acc[13]~9\);

-- Location: LC_X7_Y7_N5
\inst|tickgen|Acc[14]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(14) = DFFEAS(\inst|tickgen|Acc\(14) $ ((((\inst|tickgen|Acc[13]~9\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[14]~7\ = CARRY(((!\inst|tickgen|Acc[13]~9\)) # (!\inst|tickgen|Acc\(14)))
-- \inst|tickgen|Acc[14]~7COUT1_45\ = CARRY(((!\inst|tickgen|Acc[13]~9\)) # (!\inst|tickgen|Acc\(14)))

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
	dataa => \inst|tickgen|Acc\(14),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[13]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(14),
	cout0 => \inst|tickgen|Acc[14]~7\,
	cout1 => \inst|tickgen|Acc[14]~7COUT1_45\);

-- Location: LC_X7_Y7_N6
\inst|tickgen|Acc[15]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(15) = DFFEAS(\inst|tickgen|Acc\(15) $ ((((!(!\inst|tickgen|Acc[13]~9\ & \inst|tickgen|Acc[14]~7\) # (\inst|tickgen|Acc[13]~9\ & \inst|tickgen|Acc[14]~7COUT1_45\))))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[15]~5\ = CARRY((\inst|tickgen|Acc\(15) & ((!\inst|tickgen|Acc[14]~7\))))
-- \inst|tickgen|Acc[15]~5COUT1_46\ = CARRY((\inst|tickgen|Acc\(15) & ((!\inst|tickgen|Acc[14]~7COUT1_45\))))

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
	dataa => \inst|tickgen|Acc\(15),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[13]~9\,
	cin0 => \inst|tickgen|Acc[14]~7\,
	cin1 => \inst|tickgen|Acc[14]~7COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(15),
	cout0 => \inst|tickgen|Acc[15]~5\,
	cout1 => \inst|tickgen|Acc[15]~5COUT1_46\);

-- Location: LC_X7_Y7_N7
\inst|tickgen|Acc[16]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(16) = DFFEAS((\inst|tickgen|Acc\(16) $ (((!\inst|tickgen|Acc[13]~9\ & \inst|tickgen|Acc[15]~5\) # (\inst|tickgen|Acc[13]~9\ & \inst|tickgen|Acc[15]~5COUT1_46\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , 
-- \inst|Equal0~0_combout\)
-- \inst|tickgen|Acc[16]~3\ = CARRY(((!\inst|tickgen|Acc[15]~5\) # (!\inst|tickgen|Acc\(16))))
-- \inst|tickgen|Acc[16]~3COUT1_47\ = CARRY(((!\inst|tickgen|Acc[15]~5COUT1_46\) # (!\inst|tickgen|Acc\(16))))

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
	datab => \inst|tickgen|Acc\(16),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[13]~9\,
	cin0 => \inst|tickgen|Acc[15]~5\,
	cin1 => \inst|tickgen|Acc[15]~5COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(16),
	cout0 => \inst|tickgen|Acc[16]~3\,
	cout1 => \inst|tickgen|Acc[16]~3COUT1_47\);

-- Location: LC_X7_Y7_N8
\inst|tickgen|Acc[17]\ : maxii_lcell
-- Equation(s):
-- \inst|tickgen|Acc\(17) = DFFEAS((((!(!\inst|tickgen|Acc[13]~9\ & \inst|tickgen|Acc[16]~3\) # (\inst|tickgen|Acc[13]~9\ & \inst|tickgen|Acc[16]~3COUT1_47\)))), GLOBAL(\OSC_CLK~combout\), VCC, , , \~GND~combout\, , , \inst|Equal0~0_combout\)

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
	sload => \inst|Equal0~0_combout\,
	cin => \inst|tickgen|Acc[13]~9\,
	cin0 => \inst|tickgen|Acc[16]~3\,
	cin1 => \inst|tickgen|Acc[16]~3COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tickgen|Acc\(17));

-- Location: LC_X4_Y7_N8
\inst|TxD_shift~0\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift~0_combout\ = (\Button~combout\ & (!\inst|TxD_state\(3) & (!\inst|TxD_state\(2) & \inst|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\,
	datab => \inst|TxD_state\(3),
	datac => \inst|TxD_state\(2),
	datad => \inst|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|TxD_shift~0_combout\);

-- Location: LC_X3_Y7_N4
\inst|TxD_shift[7]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(7) = DFFEAS((\inst|TxD_shift~0_combout\) # ((\inst|TxD_shift\(7) & ((!\inst|TxD_state\(3)) # (!\inst|tickgen|Acc\(17))))), GLOBAL(\OSC_CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst|TxD_shift\(7),
	datab => \inst|tickgen|Acc\(17),
	datac => \inst|TxD_state\(3),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(7));

-- Location: LC_X4_Y7_N9
\inst|TxD_shift[1]~2\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift[1]~2_combout\ = ((\inst|TxD_shift~0_combout\) # ((\inst|TxD_state\(3) & \inst|tickgen|Acc\(17))))

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
	datab => \inst|TxD_state\(3),
	datac => \inst|tickgen|Acc\(17),
	datad => \inst|TxD_shift~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|TxD_shift[1]~2_combout\);

-- Location: LC_X4_Y7_N7
\inst|TxD_shift[6]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(6) = DFFEAS(((\inst|TxD_shift\(7)) # ((\inst|TxD_shift~0_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst|TxD_shift[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst|TxD_shift\(7),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	ena => \inst|TxD_shift[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(6));

-- Location: LC_X4_Y7_N4
\inst|TxD_shift[5]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(5) = DFFEAS((((\inst|TxD_shift\(6)) # (\inst|TxD_shift~0_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst|TxD_shift[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst|TxD_shift\(6),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	ena => \inst|TxD_shift[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(5));

-- Location: LC_X4_Y7_N3
\inst|TxD_shift[4]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(4) = DFFEAS((((\inst|TxD_shift\(5)) # (\inst|TxD_shift~0_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst|TxD_shift[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst|TxD_shift\(5),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	ena => \inst|TxD_shift[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(4));

-- Location: LC_X4_Y7_N1
\inst|TxD_shift[3]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(3) = DFFEAS((\inst|TxD_shift\(4)) # (((\inst|TxD_shift~0_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst|TxD_shift[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	dataa => \inst|TxD_shift\(4),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	ena => \inst|TxD_shift[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(3));

-- Location: LC_X4_Y7_N6
\inst|TxD_shift[2]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(2) = DFFEAS(((\inst|TxD_shift\(3)) # ((\inst|TxD_shift~0_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst|TxD_shift[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datab => \inst|TxD_shift\(3),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	ena => \inst|TxD_shift[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(2));

-- Location: LC_X4_Y7_N0
\inst|TxD_shift[1]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(1) = DFFEAS((((\inst|TxD_shift\(2)) # (\inst|TxD_shift~0_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst|TxD_shift[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst|TxD_shift\(2),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	ena => \inst|TxD_shift[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(1));

-- Location: LC_X4_Y7_N5
\inst|TxD_shift[0]\ : maxii_lcell
-- Equation(s):
-- \inst|TxD_shift\(0) = DFFEAS((((\inst|TxD_shift\(1)) # (\inst|TxD_shift~0_combout\))), GLOBAL(\OSC_CLK~combout\), VCC, , \inst|TxD_shift[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \OSC_CLK~combout\,
	datac => \inst|TxD_shift\(1),
	datad => \inst|TxD_shift~0_combout\,
	aclr => GND,
	ena => \inst|TxD_shift[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|TxD_shift\(0));

-- Location: LC_X3_Y7_N2
\inst|TxD~0\ : maxii_lcell
-- Equation(s):
-- \inst|TxD~0_combout\ = ((\inst|TxD_state\(3) & (\inst|TxD_shift\(0))) # (!\inst|TxD_state\(3) & ((!\inst|TxD_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|TxD_shift\(0),
	datac => \inst|TxD_state\(3),
	datad => \inst|TxD_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|TxD~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TX_OUTPUT~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|TxD~0_combout\,
	oe => VCC,
	padio => ww_TX_OUTPUT);
END structure;


