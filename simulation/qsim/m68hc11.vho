-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/22/2022 16:13:06"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	m68hc11 IS
    PORT (
	Z : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	IRQn : IN std_logic;
	XIRQn : IN std_logic;
	csnn : OUT std_logic;
	ACCA_D : OUT std_logic_vector(7 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(7 DOWNTO 0);
	AP_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	Debug_Q : OUT std_logic_vector(7 DOWNTO 0);
	Debug_Yupa : OUT std_logic_vector(7 DOWNTO 0);
	Edo_Pres : OUT std_logic_vector(11 DOWNTO 0);
	IX : OUT std_logic_vector(15 DOWNTO 0);
	PC_D : OUT std_logic_vector(15 DOWNTO 0);
	X_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END m68hc11;

ARCHITECTURE structure OF m68hc11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_IRQn : std_logic;
SIGNAL ww_XIRQn : std_logic;
SIGNAL ww_csnn : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Debug_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Debug_Yupa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Edo_Pres : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_IX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_X_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \csnn~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AP_D[15]~output_o\ : std_logic;
SIGNAL \AP_D[14]~output_o\ : std_logic;
SIGNAL \AP_D[13]~output_o\ : std_logic;
SIGNAL \AP_D[12]~output_o\ : std_logic;
SIGNAL \AP_D[11]~output_o\ : std_logic;
SIGNAL \AP_D[10]~output_o\ : std_logic;
SIGNAL \AP_D[9]~output_o\ : std_logic;
SIGNAL \AP_D[8]~output_o\ : std_logic;
SIGNAL \AP_D[7]~output_o\ : std_logic;
SIGNAL \AP_D[6]~output_o\ : std_logic;
SIGNAL \AP_D[5]~output_o\ : std_logic;
SIGNAL \AP_D[4]~output_o\ : std_logic;
SIGNAL \AP_D[3]~output_o\ : std_logic;
SIGNAL \AP_D[2]~output_o\ : std_logic;
SIGNAL \AP_D[1]~output_o\ : std_logic;
SIGNAL \AP_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \Debug_Q[7]~output_o\ : std_logic;
SIGNAL \Debug_Q[6]~output_o\ : std_logic;
SIGNAL \Debug_Q[5]~output_o\ : std_logic;
SIGNAL \Debug_Q[4]~output_o\ : std_logic;
SIGNAL \Debug_Q[3]~output_o\ : std_logic;
SIGNAL \Debug_Q[2]~output_o\ : std_logic;
SIGNAL \Debug_Q[1]~output_o\ : std_logic;
SIGNAL \Debug_Q[0]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[7]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[6]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[5]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[4]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[3]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[2]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[1]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[0]~output_o\ : std_logic;
SIGNAL \Edo_Pres[11]~output_o\ : std_logic;
SIGNAL \Edo_Pres[10]~output_o\ : std_logic;
SIGNAL \Edo_Pres[9]~output_o\ : std_logic;
SIGNAL \Edo_Pres[8]~output_o\ : std_logic;
SIGNAL \Edo_Pres[7]~output_o\ : std_logic;
SIGNAL \Edo_Pres[6]~output_o\ : std_logic;
SIGNAL \Edo_Pres[5]~output_o\ : std_logic;
SIGNAL \Edo_Pres[4]~output_o\ : std_logic;
SIGNAL \Edo_Pres[3]~output_o\ : std_logic;
SIGNAL \Edo_Pres[2]~output_o\ : std_logic;
SIGNAL \Edo_Pres[1]~output_o\ : std_logic;
SIGNAL \Edo_Pres[0]~output_o\ : std_logic;
SIGNAL \IX[15]~output_o\ : std_logic;
SIGNAL \IX[14]~output_o\ : std_logic;
SIGNAL \IX[13]~output_o\ : std_logic;
SIGNAL \IX[12]~output_o\ : std_logic;
SIGNAL \IX[11]~output_o\ : std_logic;
SIGNAL \IX[10]~output_o\ : std_logic;
SIGNAL \IX[9]~output_o\ : std_logic;
SIGNAL \IX[8]~output_o\ : std_logic;
SIGNAL \IX[7]~output_o\ : std_logic;
SIGNAL \IX[6]~output_o\ : std_logic;
SIGNAL \IX[5]~output_o\ : std_logic;
SIGNAL \IX[4]~output_o\ : std_logic;
SIGNAL \IX[3]~output_o\ : std_logic;
SIGNAL \IX[2]~output_o\ : std_logic;
SIGNAL \IX[1]~output_o\ : std_logic;
SIGNAL \IX[0]~output_o\ : std_logic;
SIGNAL \PC_D[15]~output_o\ : std_logic;
SIGNAL \PC_D[14]~output_o\ : std_logic;
SIGNAL \PC_D[13]~output_o\ : std_logic;
SIGNAL \PC_D[12]~output_o\ : std_logic;
SIGNAL \PC_D[11]~output_o\ : std_logic;
SIGNAL \PC_D[10]~output_o\ : std_logic;
SIGNAL \PC_D[9]~output_o\ : std_logic;
SIGNAL \PC_D[8]~output_o\ : std_logic;
SIGNAL \PC_D[7]~output_o\ : std_logic;
SIGNAL \PC_D[6]~output_o\ : std_logic;
SIGNAL \PC_D[5]~output_o\ : std_logic;
SIGNAL \PC_D[4]~output_o\ : std_logic;
SIGNAL \PC_D[3]~output_o\ : std_logic;
SIGNAL \PC_D[2]~output_o\ : std_logic;
SIGNAL \PC_D[1]~output_o\ : std_logic;
SIGNAL \PC_D[0]~output_o\ : std_logic;
SIGNAL \X_D[15]~output_o\ : std_logic;
SIGNAL \X_D[14]~output_o\ : std_logic;
SIGNAL \X_D[13]~output_o\ : std_logic;
SIGNAL \X_D[12]~output_o\ : std_logic;
SIGNAL \X_D[11]~output_o\ : std_logic;
SIGNAL \X_D[10]~output_o\ : std_logic;
SIGNAL \X_D[9]~output_o\ : std_logic;
SIGNAL \X_D[8]~output_o\ : std_logic;
SIGNAL \X_D[7]~output_o\ : std_logic;
SIGNAL \X_D[6]~output_o\ : std_logic;
SIGNAL \X_D[5]~output_o\ : std_logic;
SIGNAL \X_D[4]~output_o\ : std_logic;
SIGNAL \X_D[3]~output_o\ : std_logic;
SIGNAL \X_D[2]~output_o\ : std_logic;
SIGNAL \X_D[1]~output_o\ : std_logic;
SIGNAL \X_D[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \inst3|IRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|IRQ_flag~q\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \inst3|XIRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|XIRQ_flag~q\ : std_logic;
SIGNAL \ACCA|C[7]~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCA|B[7]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal8~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nWB~q\ : std_logic;
SIGNAL \inst14|inst9|Equal11~4_combout\ : std_logic;
SIGNAL \ACCA|C[2]~5_combout\ : std_logic;
SIGNAL \ACCA|data_out[2]~5_combout\ : std_logic;
SIGNAL \inst14|inst9|data~28_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~6_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~5_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~70_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~103_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~89_combout\ : std_logic;
SIGNAL \ACCB|C[2]~5_combout\ : std_logic;
SIGNAL \ACCB|data_out[2]~5_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~8_combout\ : std_logic;
SIGNAL \ACCB|B[7]~0_combout\ : std_logic;
SIGNAL \IRX|C[2]~23_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~26_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal10~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~7_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~35_combout\ : std_logic;
SIGNAL \ACCA|C[0]~7_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~7_combout\ : std_logic;
SIGNAL \ACCB|C[0]~7_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~7_combout\ : std_logic;
SIGNAL \IRX|C[0]~31_combout\ : std_logic;
SIGNAL \ACCB|C[1]~6_combout\ : std_logic;
SIGNAL \ACCB|data_out[1]~6_combout\ : std_logic;
SIGNAL \IRX|C[1]~27_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal29~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal28~0_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~12\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~14\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal28~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal21~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal26~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~36_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal35~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~30_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal18~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal18~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal20~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~31_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal25~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~32_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal6~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~64_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~65_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~66_combout\ : std_logic;
SIGNAL \inst14|inst9|data[46]~100_combout\ : std_logic;
SIGNAL \inst14|inst9|data[48]~91_combout\ : std_logic;
SIGNAL \inst14|inst9|data[35]~106_combout\ : std_logic;
SIGNAL \inst14|inst9|data[48]~105_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA1~q\ : std_logic;
SIGNAL \AUX|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~85_combout\ : std_logic;
SIGNAL \PC|data_out[9]~6_combout\ : std_logic;
SIGNAL \PC|data_out[8]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~37_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[4]~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~101_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~86_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~87_combout\ : std_logic;
SIGNAL \PC|Add0~16_combout\ : std_logic;
SIGNAL \PC|Add0~55_combout\ : std_logic;
SIGNAL \PC|Add0~17\ : std_logic;
SIGNAL \PC|Add0~18_combout\ : std_logic;
SIGNAL \PC|Add0~54_combout\ : std_logic;
SIGNAL \PC|Add0~19\ : std_logic;
SIGNAL \PC|Add0~20_combout\ : std_logic;
SIGNAL \PC|Add0~53_combout\ : std_logic;
SIGNAL \PC|Add0~21\ : std_logic;
SIGNAL \PC|Add0~22_combout\ : std_logic;
SIGNAL \PC|Add0~52_combout\ : std_logic;
SIGNAL \PC|Add0~23\ : std_logic;
SIGNAL \PC|Add0~24_combout\ : std_logic;
SIGNAL \PC|Add0~51_combout\ : std_logic;
SIGNAL \PC|Add0~25\ : std_logic;
SIGNAL \PC|Add0~26_combout\ : std_logic;
SIGNAL \ACCA|C[5]~2_combout\ : std_logic;
SIGNAL \ACCA|data_out[5]~2_combout\ : std_logic;
SIGNAL \ACCB|C[5]~2_combout\ : std_logic;
SIGNAL \ACCB|data_out[5]~2_combout\ : std_logic;
SIGNAL \IRX|C[5]~10_combout\ : std_logic;
SIGNAL \AUX|data_out~0_combout\ : std_logic;
SIGNAL \AUX|data_out~9_combout\ : std_logic;
SIGNAL \AUX|data_out~10_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal32~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~3_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~5_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~6_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~7_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~8_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~77_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA0~q\ : std_logic;
SIGNAL \AUX|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \ACCA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \IRX|D[6]~31_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[4]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[35]~88_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC0~q\ : std_logic;
SIGNAL \PC|D[6]~1_combout\ : std_logic;
SIGNAL \ACCB|C[6]~1_combout\ : std_logic;
SIGNAL \ACCB|data_out[6]~1_combout\ : std_logic;
SIGNAL \ACCB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \IRX|D[6]~32_combout\ : std_logic;
SIGNAL \inst14|inst13|nRW~q\ : std_logic;
SIGNAL \inst14|inst9|Equal15~0_combout\ : std_logic;
SIGNAL \inst14|inst13|BD~q\ : std_logic;
SIGNAL \ACCA|C[6]~1_combout\ : std_logic;
SIGNAL \inst1|Mux34~0_combout\ : std_logic;
SIGNAL \inst1|Mux33~0_combout\ : std_logic;
SIGNAL \ACCB|C[4]~3_combout\ : std_logic;
SIGNAL \ACCB|data_out[4]~3_combout\ : std_logic;
SIGNAL \IRX|C[4]~14_combout\ : std_logic;
SIGNAL \AUX|data_out~3_combout\ : std_logic;
SIGNAL \PC|data_out[12]~3_combout\ : std_logic;
SIGNAL \ACCB|C[3]~4_combout\ : std_logic;
SIGNAL \ACCB|data_out[3]~4_combout\ : std_logic;
SIGNAL \IRX|C[3]~18_combout\ : std_logic;
SIGNAL \PC|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \IRX|C[3]~19_combout\ : std_logic;
SIGNAL \BusAlta|PortR[3]~17_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~23_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~24_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~25_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~99_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~29_combout\ : std_logic;
SIGNAL \inst14|inst9|data~33_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~34_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~9_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~38_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~q\ : std_logic;
SIGNAL \inst6|MEM_WRITE~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data~92_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~93_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal33~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal36~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal33~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nCBD~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nCBD~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal23~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~94_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal12~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~95_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~97_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal31~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~98_combout\ : std_logic;
SIGNAL \inst14|inst13|nCBD~q\ : std_logic;
SIGNAL \AUX|data_out~11_combout\ : std_logic;
SIGNAL \AUX|data_out~12_combout\ : std_logic;
SIGNAL \AUX|data_out~13_combout\ : std_logic;
SIGNAL \AUX|data_out~14_combout\ : std_logic;
SIGNAL \AUX|data_out~15_combout\ : std_logic;
SIGNAL \AUX|data_out~16_combout\ : std_logic;
SIGNAL \inst14|inst9|data[37]~96_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC2~q\ : std_logic;
SIGNAL \PC|TRI_STATE_E~0_combout\ : std_logic;
SIGNAL \ENTRADA~0_combout\ : std_logic;
SIGNAL \ENTRADA~1_combout\ : std_logic;
SIGNAL \ENTRADA~2_combout\ : std_logic;
SIGNAL \ENTRADA~3_combout\ : std_logic;
SIGNAL \ENTRADA~4_combout\ : std_logic;
SIGNAL \ENTRADA~5_combout\ : std_logic;
SIGNAL \ENTRADA~6_combout\ : std_logic;
SIGNAL \ENTRADA~7_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \inst6|MEM_READ~0_combout\ : std_logic;
SIGNAL \inst6|data[7]~en_q\ : std_logic;
SIGNAL \BusAlta|PortR[3]~18_combout\ : std_logic;
SIGNAL \inst14|inst13|nEX~q\ : std_logic;
SIGNAL \IRX|C[3]~20_combout\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst1|Mux27~0_combout\ : std_logic;
SIGNAL \inst14|inst13|CC~q\ : std_logic;
SIGNAL \inst1|Mux35~0_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal21~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data~81_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~82_combout\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~83_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~104_combout\ : std_logic;
SIGNAL \inst14|inst13|nDUPA~q\ : std_logic;
SIGNAL \inst5|inst|valor_interno~q\ : std_logic;
SIGNAL \inst1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \IRX|C[3]~21_combout\ : std_logic;
SIGNAL \IRX|C[7]~3_combout\ : std_logic;
SIGNAL \IRX|D[7]~28_combout\ : std_logic;
SIGNAL \IRX|C[7]~4_combout\ : std_logic;
SIGNAL \IRX|C[3]~22_combout\ : std_logic;
SIGNAL \PC|data_out[11]~4_combout\ : std_logic;
SIGNAL \PC|data_out[10]~5_combout\ : std_logic;
SIGNAL \PC|Add0~35\ : std_logic;
SIGNAL \PC|Add0~36_combout\ : std_logic;
SIGNAL \PC|Equal0~0_combout\ : std_logic;
SIGNAL \PC|Add0~37\ : std_logic;
SIGNAL \PC|Add0~38_combout\ : std_logic;
SIGNAL \PC|Add0~39\ : std_logic;
SIGNAL \PC|Add0~40_combout\ : std_logic;
SIGNAL \IRX|C[4]~15_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~21_combout\ : std_logic;
SIGNAL \IRX|D[4]~41_combout\ : std_logic;
SIGNAL \BusAlta|PortR[4]~15_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[4]~16_combout\ : std_logic;
SIGNAL \IRX|C[4]~16_combout\ : std_logic;
SIGNAL \IRX|C[4]~17_combout\ : std_logic;
SIGNAL \inst1|Mux32~0_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~19_combout\ : std_logic;
SIGNAL \IRX|D[6]~33_combout\ : std_logic;
SIGNAL \BusAlta|PortR[6]~11_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[6]~12_combout\ : std_logic;
SIGNAL \IRX|D[6]~57_combout\ : std_logic;
SIGNAL \IRX|D[7]~29_combout\ : std_logic;
SIGNAL \IRX|D[7]~56_combout\ : std_logic;
SIGNAL \IRX|D[6]~34_combout\ : std_logic;
SIGNAL \ACCA|data_out[6]~1_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~8_combout\ : std_logic;
SIGNAL \IRX|C[6]~6_combout\ : std_logic;
SIGNAL \PC|data_out[14]~1_combout\ : std_logic;
SIGNAL \PC|data_out[13]~2_combout\ : std_logic;
SIGNAL \PC|Add0~41\ : std_logic;
SIGNAL \PC|Add0~42_combout\ : std_logic;
SIGNAL \PC|Add0~43\ : std_logic;
SIGNAL \PC|Add0~44_combout\ : std_logic;
SIGNAL \IRX|C[6]~7_combout\ : std_logic;
SIGNAL \IRX|C[6]~8_combout\ : std_logic;
SIGNAL \IRX|C[6]~9_combout\ : std_logic;
SIGNAL \AUX|data_out~1_combout\ : std_logic;
SIGNAL \AUX|data_out~2_combout\ : std_logic;
SIGNAL \IRX|C[5]~11_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \IRX|D[5]~37_combout\ : std_logic;
SIGNAL \BusAlta|PortR[5]~13_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[5]~14_combout\ : std_logic;
SIGNAL \IRX|C[5]~12_combout\ : std_logic;
SIGNAL \IRX|C[5]~13_combout\ : std_logic;
SIGNAL \IRX|D[5]~35_combout\ : std_logic;
SIGNAL \PC|D[5]~2_combout\ : std_logic;
SIGNAL \IRX|D[5]~36_combout\ : std_logic;
SIGNAL \IRX|D[5]~58_combout\ : std_logic;
SIGNAL \IRX|D[5]~38_combout\ : std_logic;
SIGNAL \PC|Add0~50_combout\ : std_logic;
SIGNAL \PC|Add0~27\ : std_logic;
SIGNAL \PC|Add0~28_combout\ : std_logic;
SIGNAL \PC|Add0~49_combout\ : std_logic;
SIGNAL \PC|Add0~29\ : std_logic;
SIGNAL \PC|Add0~30_combout\ : std_logic;
SIGNAL \PC|Add0~48_combout\ : std_logic;
SIGNAL \PC|Add0~31\ : std_logic;
SIGNAL \PC|Add0~32_combout\ : std_logic;
SIGNAL \PC|Add0~33\ : std_logic;
SIGNAL \PC|Add0~34_combout\ : std_logic;
SIGNAL \IRX|C[1]~28_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \IRX|D[1]~49_combout\ : std_logic;
SIGNAL \BusAlta|PortR[1]~21_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[1]~22_combout\ : std_logic;
SIGNAL \IRX|C[1]~29_combout\ : std_logic;
SIGNAL \IRX|C[1]~30_combout\ : std_logic;
SIGNAL \AUX|data_out~7_combout\ : std_logic;
SIGNAL \AUX|data_out~8_combout\ : std_logic;
SIGNAL \IRX|C[0]~32_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~25_combout\ : std_logic;
SIGNAL \IRX|D[0]~53_combout\ : std_logic;
SIGNAL \BusAlta|PortR[0]~23_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[0]~24_combout\ : std_logic;
SIGNAL \IRX|C[0]~33_combout\ : std_logic;
SIGNAL \IRX|C[0]~34_combout\ : std_logic;
SIGNAL \IRX|D[0]~51_combout\ : std_logic;
SIGNAL \PC|D[0]~7_combout\ : std_logic;
SIGNAL \IRX|D[0]~52_combout\ : std_logic;
SIGNAL \IRX|D[0]~62_combout\ : std_logic;
SIGNAL \IRX|D[0]~54_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~16\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~2_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~2_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~4_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~67_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~68_combout\ : std_logic;
SIGNAL \AUX|data_out~4_combout\ : std_logic;
SIGNAL \AUX|data_out~5_combout\ : std_logic;
SIGNAL \AUX|data_out~6_combout\ : std_logic;
SIGNAL \IRX|C[2]~24_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~23_combout\ : std_logic;
SIGNAL \IRX|D[2]~45_combout\ : std_logic;
SIGNAL \BusAlta|PortR[2]~19_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[2]~20_combout\ : std_logic;
SIGNAL \IRX|C[2]~25_combout\ : std_logic;
SIGNAL \IRX|C[2]~26_combout\ : std_logic;
SIGNAL \IRX|D[2]~43_combout\ : std_logic;
SIGNAL \PC|D[2]~5_combout\ : std_logic;
SIGNAL \IRX|D[2]~44_combout\ : std_logic;
SIGNAL \IRX|D[2]~60_combout\ : std_logic;
SIGNAL \IRX|D[2]~46_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~18\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~20\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~4_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~27_combout\ : std_logic;
SIGNAL \inst14|inst9|data[76]~90_combout\ : std_logic;
SIGNAL \ACCB|C[7]~0_combout\ : std_logic;
SIGNAL \ACCB|data_out[7]~0_combout\ : std_logic;
SIGNAL \IRX|C[7]~0_combout\ : std_logic;
SIGNAL \PC|data_out[15]~0_combout\ : std_logic;
SIGNAL \PC|Add0~45\ : std_logic;
SIGNAL \PC|Add0~46_combout\ : std_logic;
SIGNAL \IRX|C[7]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \IRX|D[7]~27_combout\ : std_logic;
SIGNAL \BusAlta|PortR[7]~9_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \BusAlta|PortR[7]~10_combout\ : std_logic;
SIGNAL \IRX|C[7]~2_combout\ : std_logic;
SIGNAL \IRX|C[7]~5_combout\ : std_logic;
SIGNAL \IRX|D[7]~25_combout\ : std_logic;
SIGNAL \PC|D[7]~0_combout\ : std_logic;
SIGNAL \IRX|D[7]~26_combout\ : std_logic;
SIGNAL \IRX|D[7]~55_combout\ : std_logic;
SIGNAL \IRX|D[7]~30_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~22\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~24\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~26\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~28\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~30\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~78_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~56_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~57_combout\ : std_logic;
SIGNAL \inst14|inst9|data~44_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~51_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~52_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~53_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~79_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~80_combout\ : std_logic;
SIGNAL \ACCA|C[1]~6_combout\ : std_logic;
SIGNAL \ACCA|data_out[1]~6_combout\ : std_logic;
SIGNAL \IRX|D[1]~47_combout\ : std_logic;
SIGNAL \PC|D[1]~6_combout\ : std_logic;
SIGNAL \IRX|D[1]~48_combout\ : std_logic;
SIGNAL \IRX|D[1]~61_combout\ : std_logic;
SIGNAL \IRX|D[1]~50_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal11~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal11~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~102_combout\ : std_logic;
SIGNAL \ACCA|C[4]~3_combout\ : std_logic;
SIGNAL \ACCA|data_out[4]~3_combout\ : std_logic;
SIGNAL \IRX|D[4]~39_combout\ : std_logic;
SIGNAL \PC|D[4]~3_combout\ : std_logic;
SIGNAL \IRX|D[4]~40_combout\ : std_logic;
SIGNAL \IRX|D[4]~59_combout\ : std_logic;
SIGNAL \IRX|D[4]~42_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal26~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal34~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~84_combout\ : std_logic;
SIGNAL \inst14|inst13|nWA~q\ : std_logic;
SIGNAL \ACCA|C[3]~4_combout\ : std_logic;
SIGNAL \ACCA|data_out[3]~4_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~1_combout\ : std_logic;
SIGNAL \PC|D[3]~4_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~2_combout\ : std_logic;
SIGNAL \BusAlta|PortR~8_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~3_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~4_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal19~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~54_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~60_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~61_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~62_combout\ : std_logic;
SIGNAL \inst14|inst9|data[78]~69_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal1~1_combout\ : std_logic;
SIGNAL \inst14|inst13|nCRI~q\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal7~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~22_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~59_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[4]~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~63_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~3_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~4_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~5_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal35~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~55_combout\ : std_logic;
SIGNAL \inst14|inst9|data~40_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~58_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~39_combout\ : std_logic;
SIGNAL \inst14|inst9|data~41_combout\ : std_logic;
SIGNAL \inst14|inst9|data~42_combout\ : std_logic;
SIGNAL \inst14|inst9|data~43_combout\ : std_logic;
SIGNAL \inst14|inst9|data~45_combout\ : std_logic;
SIGNAL \inst14|inst9|data~46_combout\ : std_logic;
SIGNAL \inst14|inst9|data~47_combout\ : std_logic;
SIGNAL \inst14|inst9|data~48_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~49_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~50_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|data~75_combout\ : std_logic;
SIGNAL \inst14|inst9|data~76_combout\ : std_logic;
SIGNAL \inst14|inst13|CZ~q\ : std_logic;
SIGNAL \inst14|inst9|Equal9~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~71_combout\ : std_logic;
SIGNAL \inst14|inst13|B4~q\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr0~1_combout\ : std_logic;
SIGNAL \inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst14|inst9|data[13]~72_combout\ : std_logic;
SIGNAL \inst14|inst9|data~73_combout\ : std_logic;
SIGNAL \inst14|inst9|data[13]~74_combout\ : std_logic;
SIGNAL \inst14|inst13|B3~q\ : std_logic;
SIGNAL \inst5|inst10|output~0_combout\ : std_logic;
SIGNAL \inst5|inst10|output~1_combout\ : std_logic;
SIGNAL \inst5|inst10|output~2_combout\ : std_logic;
SIGNAL \inst5|inst10|output~3_combout\ : std_logic;
SIGNAL \inst5|inst10|output~4_combout\ : std_logic;
SIGNAL \inst5|inst10|output~5_combout\ : std_logic;
SIGNAL \inst5|inst10|output~6_combout\ : std_logic;
SIGNAL \inst5|inst2|valor_interno~q\ : std_logic;
SIGNAL \ACCA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACCB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|inst4|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \AUX|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|inst13|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|inst13|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|UPA\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_EB\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_EA\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_CZ~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nAS~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCBD~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CC~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCRI~q\ : std_logic;
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;

BEGIN

Z <= ww_Z;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_IRQn <= IRQn;
ww_XIRQn <= XIRQn;
csnn <= ww_csnn;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AP_D <= ww_AP_D;
AUX_D <= ww_AUX_D;
Debug_Q <= ww_Debug_Q;
Debug_Yupa <= ww_Debug_Yupa;
Edo_Pres <= ww_Edo_Pres;
IX <= ww_IX;
PC_D <= ww_PC_D;
X_D <= ww_X_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \BusAlta|PortR[7]~10_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \BusAlta|PortR[6]~12_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \BusAlta|PortR[5]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \BusAlta|PortR[4]~16_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \BusAlta|PortR[3]~18_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \BusAlta|PortR[2]~20_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \BusAlta|PortR[1]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \BusAlta|PortR[0]~24_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|valor_interno\(7) & \inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & 
\inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst14|inst13|ALT_INV_nDUPA~q\ <= NOT \inst14|inst13|nDUPA~q\;
\inst14|inst13|ALT_INV_EB\(0) <= NOT \inst14|inst13|EB\(0);
\inst14|inst13|ALT_INV_EA\(0) <= NOT \inst14|inst13|EA\(0);
\inst14|inst13|ALT_INV_CZ~q\ <= NOT \inst14|inst13|CZ~q\;
\inst14|inst13|ALT_INV_nAS~q\ <= NOT \inst14|inst13|nAS~q\;
\inst14|inst13|ALT_INV_nCBD~q\ <= NOT \inst14|inst13|nCBD~q\;
\inst14|inst13|ALT_INV_CC~q\ <= NOT \inst14|inst13|CC~q\;
\inst14|inst13|ALT_INV_nCRI~q\ <= NOT \inst14|inst13|nCRI~q\;
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;

\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|valor_interno~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

\csnn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst13|ALT_INV_nAS~q\,
	devoe => ww_devoe,
	o => \csnn~output_o\);

\ACCA_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

\ACCA_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

\ACCA_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

\ACCA_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

\ACCA_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

\ACCA_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

\ACCA_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

\ACCA_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

\ACCB_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

\ACCB_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

\ACCB_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

\ACCB_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

\ACCB_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

\ACCB_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

\ACCB_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

\ACCB_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

\AP_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[15]~output_o\);

\AP_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[14]~output_o\);

\AP_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[13]~output_o\);

\AP_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[12]~output_o\);

\AP_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[11]~output_o\);

\AP_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[10]~output_o\);

\AP_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[9]~output_o\);

\AP_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[8]~output_o\);

\AP_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[7]~output_o\);

\AP_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[6]~output_o\);

\AP_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[5]~output_o\);

\AP_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[4]~output_o\);

\AP_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[3]~output_o\);

\AP_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[2]~output_o\);

\AP_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[1]~output_o\);

\AP_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[0]~output_o\);

\AUX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

\AUX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

\AUX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

\AUX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

\AUX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

\AUX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

\AUX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

\AUX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

\AUX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

\AUX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

\AUX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

\AUX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

\AUX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

\AUX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

\AUX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

\AUX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

\Debug_Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

\Debug_Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(6),
	devoe => ww_devoe,
	o => \Debug_Q[6]~output_o\);

\Debug_Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(5),
	devoe => ww_devoe,
	o => \Debug_Q[5]~output_o\);

\Debug_Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(4),
	devoe => ww_devoe,
	o => \Debug_Q[4]~output_o\);

\Debug_Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(3),
	devoe => ww_devoe,
	o => \Debug_Q[3]~output_o\);

\Debug_Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(2),
	devoe => ww_devoe,
	o => \Debug_Q[2]~output_o\);

\Debug_Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(1),
	devoe => ww_devoe,
	o => \Debug_Q[1]~output_o\);

\Debug_Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Q[0]~output_o\);

\Debug_Yupa[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[7]~output_o\);

\Debug_Yupa[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(6),
	devoe => ww_devoe,
	o => \Debug_Yupa[6]~output_o\);

\Debug_Yupa[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(5),
	devoe => ww_devoe,
	o => \Debug_Yupa[5]~output_o\);

\Debug_Yupa[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(4),
	devoe => ww_devoe,
	o => \Debug_Yupa[4]~output_o\);

\Debug_Yupa[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(3),
	devoe => ww_devoe,
	o => \Debug_Yupa[3]~output_o\);

\Debug_Yupa[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[2]~output_o\);

\Debug_Yupa[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(1),
	devoe => ww_devoe,
	o => \Debug_Yupa[1]~output_o\);

\Debug_Yupa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

\Edo_Pres[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[11]~output_o\);

\Edo_Pres[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[10]~output_o\);

\Edo_Pres[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[9]~output_o\);

\Edo_Pres[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[8]~output_o\);

\Edo_Pres[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[7]~output_o\);

\Edo_Pres[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[6]~output_o\);

\Edo_Pres[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[5]~output_o\);

\Edo_Pres[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[4]~output_o\);

\Edo_Pres[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[3]~output_o\);

\Edo_Pres[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[2]~output_o\);

\Edo_Pres[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[1]~output_o\);

\Edo_Pres[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[0]~output_o\);

\IX[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[15]~output_o\);

\IX[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[14]~output_o\);

\IX[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[13]~output_o\);

\IX[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[12]~output_o\);

\IX[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[11]~output_o\);

\IX[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[10]~output_o\);

\IX[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[9]~output_o\);

\IX[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[8]~output_o\);

\IX[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[7]~output_o\);

\IX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[6]~output_o\);

\IX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[5]~output_o\);

\IX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[4]~output_o\);

\IX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \IX[3]~output_o\);

\IX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[2]~output_o\);

\IX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[1]~output_o\);

\IX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[0]~output_o\);

\PC_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(15),
	devoe => ww_devoe,
	o => \PC_D[15]~output_o\);

\PC_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(14),
	devoe => ww_devoe,
	o => \PC_D[14]~output_o\);

\PC_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(13),
	devoe => ww_devoe,
	o => \PC_D[13]~output_o\);

\PC_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(12),
	devoe => ww_devoe,
	o => \PC_D[12]~output_o\);

\PC_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(11),
	devoe => ww_devoe,
	o => \PC_D[11]~output_o\);

\PC_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(10),
	devoe => ww_devoe,
	o => \PC_D[10]~output_o\);

\PC_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(9),
	devoe => ww_devoe,
	o => \PC_D[9]~output_o\);

\PC_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(8),
	devoe => ww_devoe,
	o => \PC_D[8]~output_o\);

\PC_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(7),
	devoe => ww_devoe,
	o => \PC_D[7]~output_o\);

\PC_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(6),
	devoe => ww_devoe,
	o => \PC_D[6]~output_o\);

\PC_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(5),
	devoe => ww_devoe,
	o => \PC_D[5]~output_o\);

\PC_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(4),
	devoe => ww_devoe,
	o => \PC_D[4]~output_o\);

\PC_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(3),
	devoe => ww_devoe,
	o => \PC_D[3]~output_o\);

\PC_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(2),
	devoe => ww_devoe,
	o => \PC_D[2]~output_o\);

\PC_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(1),
	devoe => ww_devoe,
	o => \PC_D[1]~output_o\);

\PC_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(0),
	devoe => ww_devoe,
	o => \PC_D[0]~output_o\);

\X_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[15]~output_o\);

\X_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[14]~output_o\);

\X_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[13]~output_o\);

\X_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[12]~output_o\);

\X_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[11]~output_o\);

\X_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[10]~output_o\);

\X_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[9]~output_o\);

\X_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[8]~output_o\);

\X_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[7]~output_o\);

\X_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[6]~output_o\);

\X_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[5]~output_o\);

\X_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[4]~output_o\);

\X_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[3]~output_o\);

\X_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[2]~output_o\);

\X_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[1]~output_o\);

\X_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[0]~output_o\);

\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

\inst14|inst13|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[91]~49_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(0));

\IRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRQn,
	o => \IRQn~input_o\);

\inst3|IRQ_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|IRQ_flag~0_combout\ = (\inst3|IRQ_flag~q\) # (!\IRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQn~input_o\,
	datad => \inst3|IRQ_flag~q\,
	combout => \inst3|IRQ_flag~0_combout\);

\inst3|IRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|IRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|IRQ_flag~q\);

\XIRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XIRQn,
	o => \XIRQn~input_o\);

\inst3|XIRQ_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|XIRQ_flag~0_combout\ = (\inst3|XIRQ_flag~q\) # (!\XIRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XIRQn~input_o\,
	datad => \inst3|XIRQ_flag~q\,
	combout => \inst3|XIRQ_flag~0_combout\);

\inst3|XIRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|XIRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|XIRQ_flag~q\);

\ACCA|C[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[7]~0_combout\ = (\ACCA|data_out\(7)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[7]~0_combout\);

\ACCA|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[7]~0_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[7]~0_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[7]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~30_combout\,
	datab => \ACCA|C[7]~0_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[7]~0_combout\);

\ACCA|B[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|B[7]~0_combout\ = (\inst14|inst13|EA\(0)) # ((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datab => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|B[7]~0_combout\);

\inst14|inst9|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal8~0_combout\ = (\inst14|inst9|Equal1~0_combout\ & \inst14|inst9|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|Equal8~0_combout\);

\inst14|inst13|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWB~q\);

\inst14|inst9|Equal11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~4_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal11~3_combout\,
	combout => \inst14|inst9|Equal11~4_combout\);

\ACCA|C[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[2]~5_combout\ = (\ACCA|data_out\(2)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[2]~5_combout\);

\ACCA|data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[2]~5_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[2]~5_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[2]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~46_combout\,
	datab => \ACCA|C[2]~5_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[2]~5_combout\);

\inst14|inst9|data~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~28_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (((!\inst14|inst9|Equal3~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # ((!\inst14|inst9|Equal7~0_combout\ & !\inst14|inst9|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal7~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|data~28_combout\);

\inst14|inst9|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~6_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal0~6_combout\);

\inst14|inst9|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~5_combout\ = (\inst14|inst9|Equal0~4_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	combout => \inst14|inst9|Equal0~5_combout\);

\inst14|inst9|data[73]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~70_combout\ = (\inst14|inst9|data[73]~27_combout\ & (\inst14|inst9|data~28_combout\ & ((!\inst14|inst9|Equal0~5_combout\) # (!\inst14|inst9|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~27_combout\,
	datab => \inst14|inst9|data~28_combout\,
	datac => \inst14|inst9|Equal0~6_combout\,
	datad => \inst14|inst9|Equal0~5_combout\,
	combout => \inst14|inst9|data[73]~70_combout\);

\inst14|inst9|data[75]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~103_combout\ = ((!\inst14|inst9|Equal3~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\) # (!\inst14|inst9|Equal0~4_combout\)))) # (!\inst14|inst9|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal0~4_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|data[75]~103_combout\);

\inst14|inst9|data[75]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~89_combout\ = (\inst14|inst9|data[73]~70_combout\ & ((\inst14|inst9|data[26]~22_combout\ & (\inst14|inst9|Equal11~4_combout\)) # (!\inst14|inst9|data[26]~22_combout\ & ((\inst14|inst9|data[75]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~70_combout\,
	datab => \inst14|inst9|Equal11~4_combout\,
	datac => \inst14|inst9|data[75]~103_combout\,
	datad => \inst14|inst9|data[26]~22_combout\,
	combout => \inst14|inst9|data[75]~89_combout\);

\inst14|inst13|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[75]~89_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EB\(0));

\ACCB|C[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[2]~5_combout\ = (\ACCB|data_out\(2)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(2),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[2]~5_combout\);

\ACCB|data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[2]~5_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[2]~5_combout\))) # (!\inst14|inst13|EB\(1) & (\IRX|D[2]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~46_combout\,
	datab => \ACCB|C[2]~5_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[2]~5_combout\);

\ACCB|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~8_combout\ = (\inst14|inst13|nWB~q\ & ((\inst14|inst13|EB\(1)) # (\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datab => \inst14|inst13|EB\(1),
	datac => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[0]~8_combout\);

\ACCB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[2]~5_combout\,
	asdata => \IRX|C[2]~26_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(2));

\ACCB|B[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|B[7]~0_combout\ = (\inst14|inst13|EB\(0)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|B[7]~0_combout\);

\IRX|C[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[2]~23_combout\ = (\ACCA|data_out\(2) & (((\ACCB|data_out\(2)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(2) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(2)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(2),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[2]~23_combout\);

\inst14|inst9|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal2~0_combout\);

\inst14|inst9|data[73]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~26_combout\ = (\inst14|inst9|Equal2~0_combout\ & (!\inst14|inst9|Equal7~0_combout\ & ((!\inst14|inst9|Equal11~3_combout\) # (!\inst14|inst9|Equal0~6_combout\)))) # (!\inst14|inst9|Equal2~0_combout\ & 
-- (((!\inst14|inst9|Equal11~3_combout\) # (!\inst14|inst9|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~0_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	datac => \inst14|inst9|Equal0~6_combout\,
	datad => \inst14|inst9|Equal11~3_combout\,
	combout => \inst14|inst9|data[73]~26_combout\);

\inst14|inst9|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal10~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|Equal10~0_combout\);

\inst14|inst9|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~7_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal0~4_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal0~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	combout => \inst14|inst9|Equal0~7_combout\);

\inst14|inst9|data[73]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~35_combout\ = (\inst14|inst9|data[73]~27_combout\ & (\inst14|inst9|data~28_combout\ & (!\inst14|inst9|Equal10~0_combout\ & !\inst14|inst9|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~27_combout\,
	datab => \inst14|inst9|data~28_combout\,
	datac => \inst14|inst9|Equal10~0_combout\,
	datad => \inst14|inst9|Equal0~7_combout\,
	combout => \inst14|inst9|data[73]~35_combout\);

\ACCA|C[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[0]~7_combout\ = (\ACCA|data_out\(0)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[0]~7_combout\);

\ACCA|data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~7_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[0]~7_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[0]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~54_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[0]~7_combout\);

\ACCB|C[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[0]~7_combout\ = (\ACCB|data_out\(0)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[0]~7_combout\);

\ACCB|data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~7_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[0]~7_combout\))) # (!\inst14|inst13|EB\(1) & (\IRX|D[0]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~54_combout\,
	datab => \ACCB|C[0]~7_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[0]~7_combout\);

\ACCB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[0]~7_combout\,
	asdata => \IRX|C[0]~34_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(0));

\IRX|C[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[0]~31_combout\ = (\ACCA|data_out\(0) & (((\ACCB|data_out\(0)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(0) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(0)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(0),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[0]~31_combout\);

\ACCB|C[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[1]~6_combout\ = (\ACCB|data_out\(1)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[1]~6_combout\);

\ACCB|data_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[1]~6_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[1]~6_combout\))) # (!\inst14|inst13|EB\(1) & (\IRX|D[1]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~50_combout\,
	datab => \ACCB|C[1]~6_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[1]~6_combout\);

\ACCB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[1]~6_combout\,
	asdata => \IRX|C[1]~30_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(1));

\IRX|C[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[1]~27_combout\ = (\ACCA|data_out\(1) & (((\ACCB|data_out\(1)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(1) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(1)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(1),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[1]~27_combout\);

\inst14|inst9|Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal29~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (\inst14|inst9|Equal3~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datab => \inst14|inst9|Equal3~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal29~0_combout\);

\inst14|inst9|Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal28~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	combout => \inst14|inst9|Equal28~0_combout\);

\inst14|inst4|valor_interno[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[1]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ $ (VCC))) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & 
-- (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & VCC))
-- \inst14|inst4|valor_interno[1]~12\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => VCC,
	combout => \inst14|inst4|valor_interno[1]~11_combout\,
	cout => \inst14|inst4|valor_interno[1]~12\);

\inst14|inst4|valor_interno[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[2]~13_combout\ = (\inst14|inst4|valor_interno[1]~12\ & (((\inst14|inst3|SELECTOR~5_combout\)) # (!\inst14|inst4|valor_interno\(2)))) # (!\inst14|inst4|valor_interno[1]~12\ & (((\inst14|inst4|valor_interno\(2) & 
-- !\inst14|inst3|SELECTOR~5_combout\)) # (GND)))
-- \inst14|inst4|valor_interno[2]~14\ = CARRY(((\inst14|inst3|SELECTOR~5_combout\) # (!\inst14|inst4|valor_interno[1]~12\)) # (!\inst14|inst4|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(2),
	datab => \inst14|inst3|SELECTOR~5_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[1]~12\,
	combout => \inst14|inst4|valor_interno[2]~13_combout\,
	cout => \inst14|inst4|valor_interno[2]~14\);

\inst14|inst4|valor_interno[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[3]~15_combout\ = (\inst14|inst4|valor_interno[2]~14\ & (\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~5_combout\ & VCC))) # (!\inst14|inst4|valor_interno[2]~14\ & ((((\inst14|inst4|valor_interno\(3) & 
-- !\inst14|inst3|SELECTOR~5_combout\)))))
-- \inst14|inst4|valor_interno[3]~16\ = CARRY((\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~5_combout\ & !\inst14|inst4|valor_interno[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(3),
	datab => \inst14|inst3|SELECTOR~5_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[2]~14\,
	combout => \inst14|inst4|valor_interno[3]~15_combout\,
	cout => \inst14|inst4|valor_interno[3]~16\);

\inst14|inst4|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[3]~15_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(3));

\inst14|inst5|$00000|auto_generated|result_node[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\ = (\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst4|valor_interno\(3),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\);

\inst14|inst9|Equal28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal28~1_combout\ = (\inst14|inst9|Equal0~2_combout\ & (\inst14|inst9|Equal28~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~2_combout\,
	datab => \inst14|inst9|Equal28~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	combout => \inst14|inst9|Equal28~1_combout\);

\inst14|inst9|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal21~2_combout\ = (\inst14|inst9|Equal28~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal28~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal21~2_combout\);

\inst14|inst9|Equal26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal26~3_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & 
-- \inst14|inst9|Equal28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst9|Equal28~1_combout\,
	combout => \inst14|inst9|Equal26~3_combout\);

\inst14|inst9|data[46]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~36_combout\ = (!\inst14|inst9|Equal26~3_combout\ & (((!\inst14|inst9|Equal29~0_combout\ & !\inst14|inst9|Equal21~2_combout\)) # (!\inst14|inst9|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datab => \inst14|inst9|Equal21~2_combout\,
	datac => \inst14|inst9|Equal0~6_combout\,
	datad => \inst14|inst9|Equal26~3_combout\,
	combout => \inst14|inst9|data[46]~36_combout\);

\inst14|inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[1]~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(1));

\inst14|inst5|$00000|auto_generated|result_node[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ = (\inst14|inst13|instruccion\(1) & !\inst14|inst13|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datad => \inst14|inst13|instruccion\(0),
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\);

\inst14|inst9|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal35~0_combout\ = (\inst14|inst4|valor_interno\(2) & (\inst14|inst4|valor_interno\(1) & (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & !\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(2),
	datab => \inst14|inst4|valor_interno\(1),
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst9|Equal35~0_combout\);

\inst14|inst9|data[37]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~30_combout\ = (!\inst14|inst9|Equal19~0_combout\ & (((!\inst14|inst9|Equal35~0_combout\) # (!\inst14|inst9|Equal28~1_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst9|Equal28~1_combout\,
	datac => \inst14|inst9|Equal35~0_combout\,
	datad => \inst14|inst9|Equal19~0_combout\,
	combout => \inst14|inst9|data[37]~30_combout\);

\inst14|inst9|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal18~0_combout\);

\inst14|inst9|Equal18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (\inst14|inst9|Equal18~0_combout\ & (\inst14|inst9|Equal14~0_combout\ & \inst14|inst9|Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datab => \inst14|inst9|Equal18~0_combout\,
	datac => \inst14|inst9|Equal14~0_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|Equal18~1_combout\);

\inst14|inst9|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst4|valor_interno\(1) & (\inst14|inst9|Equal28~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst4|valor_interno\(1),
	datac => \inst14|inst9|Equal28~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal27~0_combout\);

\inst14|inst9|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal20~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst9|Equal0~4_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datab => \inst14|inst9|Equal0~4_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal20~0_combout\);

\inst14|inst9|data[46]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~31_combout\ = (\inst14|inst9|data[37]~30_combout\ & (!\inst14|inst9|Equal18~1_combout\ & (!\inst14|inst9|Equal27~0_combout\ & !\inst14|inst9|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~30_combout\,
	datab => \inst14|inst9|Equal18~1_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	datad => \inst14|inst9|Equal20~0_combout\,
	combout => \inst14|inst9|data[46]~31_combout\);

\inst14|inst9|Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal25~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & 
-- \inst14|inst9|Equal28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal28~1_combout\,
	combout => \inst14|inst9|Equal25~2_combout\);

\inst14|inst9|data[46]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~32_combout\ = (\inst14|inst9|data[46]~31_combout\ & (!\inst14|inst9|Equal25~2_combout\ & ((!\inst14|inst9|Equal21~2_combout\) # (!\inst14|inst9|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[46]~31_combout\,
	datab => \inst14|inst9|Equal2~0_combout\,
	datac => \inst14|inst9|Equal21~2_combout\,
	datad => \inst14|inst9|Equal25~2_combout\,
	combout => \inst14|inst9|data[46]~32_combout\);

\inst14|inst9|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal6~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal6~0_combout\);

\inst14|inst9|data[46]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~64_combout\ = ((!\inst14|inst9|Equal14~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\) # (!\inst14|inst9|Equal28~1_combout\)))) # (!\inst14|inst9|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst9|Equal28~1_combout\,
	datac => \inst14|inst9|Equal14~2_combout\,
	datad => \inst14|inst9|Equal6~0_combout\,
	combout => \inst14|inst9|data[46]~64_combout\);

\inst14|inst9|data[46]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~65_combout\ = (\inst14|inst9|Equal1~0_combout\ & (\inst14|inst9|Equal29~0_combout\ & \inst14|inst9|data[46]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal29~0_combout\,
	datac => \inst14|inst9|data[46]~64_combout\,
	combout => \inst14|inst9|data[46]~65_combout\);

\inst14|inst9|data[46]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~66_combout\ = (\inst14|inst13|nAS~4_combout\ & (\inst14|inst9|data[46]~36_combout\ & (\inst14|inst9|data[46]~32_combout\ & \inst14|inst9|data[46]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~4_combout\,
	datab => \inst14|inst9|data[46]~36_combout\,
	datac => \inst14|inst9|data[46]~32_combout\,
	datad => \inst14|inst9|data[46]~65_combout\,
	combout => \inst14|inst9|data[46]~66_combout\);

\inst14|inst9|data[46]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[46]~100_combout\ = (\inst14|inst9|data[46]~66_combout\) # ((\inst14|inst9|Equal1~0_combout\ & ((\inst14|inst9|Equal14~2_combout\) # (\inst14|inst9|Equal21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal14~2_combout\,
	datac => \inst14|inst9|data[46]~66_combout\,
	datad => \inst14|inst9|Equal21~2_combout\,
	combout => \inst14|inst9|data[46]~100_combout\);

\inst14|inst13|RA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[46]~100_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|RA\(2));

\inst14|inst9|data[48]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~91_combout\ = (((!\inst14|inst9|Equal29~0_combout\ & !\inst14|inst9|Equal21~2_combout\)) # (!\inst14|inst13|prueba[4]~1_combout\)) # (!\inst14|inst9|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datab => \inst14|inst9|Equal21~2_combout\,
	datac => \inst14|inst9|Equal1~0_combout\,
	datad => \inst14|inst13|prueba[4]~1_combout\,
	combout => \inst14|inst9|data[48]~91_combout\);

\inst14|inst9|data[35]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[35]~106_combout\ = (((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal14~2_combout\)) # (!\inst14|inst13|nAS~4_combout\)) # (!\inst14|inst9|Equal18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst9|Equal14~2_combout\,
	datac => \inst14|inst9|Equal18~1_combout\,
	datad => \inst14|inst13|nAS~4_combout\,
	combout => \inst14|inst9|data[35]~106_combout\);

\inst14|inst9|data[48]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~105_combout\ = (((\inst14|inst9|Equal1~0_combout\ & \inst14|inst9|Equal14~2_combout\)) # (!\inst14|inst9|data[35]~106_combout\)) # (!\inst14|inst9|data[48]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal14~2_combout\,
	datac => \inst14|inst9|data[48]~91_combout\,
	datad => \inst14|inst9|data[35]~106_combout\,
	combout => \inst14|inst9|data[48]~105_combout\);

\inst14|inst13|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[48]~105_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA1~q\);

\AUX|TRI_STATE_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_C~0_combout\ = (\inst14|inst13|RA\(2)) # ((\inst14|inst13|RA\(0)) # (!\inst14|inst13|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(2),
	datab => \inst14|inst13|RA\(0),
	datad => \inst14|inst13|nERA1~q\,
	combout => \AUX|TRI_STATE_C~0_combout\);

\inst14|inst9|data[34]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~85_combout\ = (\inst14|inst9|Equal18~1_combout\) # ((\inst14|inst9|Equal20~0_combout\ & (\inst14|inst13|prueba[4]~1_combout\ & !\inst14|inst9|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal18~1_combout\,
	datab => \inst14|inst9|Equal20~0_combout\,
	datac => \inst14|inst13|prueba[4]~1_combout\,
	datad => \inst14|inst9|Equal19~0_combout\,
	combout => \inst14|inst9|data[34]~85_combout\);

\inst14|inst13|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[34]~85_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(2));

\PC|data_out[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[9]~6_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[1]~30_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datab => \IRX|C[1]~30_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[9]~6_combout\);

\PC|data_out[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~7_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[0]~34_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datab => \IRX|C[0]~34_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[8]~7_combout\);

\inst14|inst9|data[32]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~37_combout\ = (!\inst14|inst9|Equal18~1_combout\ & ((!\inst14|inst9|Equal14~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal14~2_combout\,
	datad => \inst14|inst9|Equal18~1_combout\,
	combout => \inst14|inst9|data[32]~37_combout\);

\inst14|inst13|prueba[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[4]~2_combout\ = (\inst14|inst13|nAS~4_combout\ & (\inst14|inst9|data[32]~37_combout\ & (!\inst14|inst9|Equal19~0_combout\ & !\inst14|inst9|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~4_combout\,
	datab => \inst14|inst9|data[32]~37_combout\,
	datac => \inst14|inst9|Equal19~0_combout\,
	datad => \inst14|inst9|Equal20~0_combout\,
	combout => \inst14|inst13|prueba[4]~2_combout\);

\inst14|inst9|data[44]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~101_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & ((\inst14|inst9|Equal29~0_combout\) # (\inst14|inst9|Equal21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal29~0_combout\,
	datad => \inst14|inst9|Equal21~2_combout\,
	combout => \inst14|inst9|data[44]~101_combout\);

\inst14|inst9|data[32]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~86_combout\ = (\inst14|inst9|data[32]~37_combout\ & (((\inst14|inst9|Equal19~0_combout\) # (!\inst14|inst9|Equal20~0_combout\)) # (!\inst14|inst13|nAS~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[32]~37_combout\,
	datab => \inst14|inst13|nAS~4_combout\,
	datac => \inst14|inst9|Equal20~0_combout\,
	datad => \inst14|inst9|Equal19~0_combout\,
	combout => \inst14|inst9|data[32]~86_combout\);

\inst14|inst9|data[32]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~87_combout\ = (((\inst14|inst13|prueba[4]~2_combout\ & \inst14|inst9|data[44]~101_combout\)) # (!\inst14|inst9|data[32]~86_combout\)) # (!\inst14|inst9|data[26]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst13|prueba[4]~2_combout\,
	datac => \inst14|inst9|data[44]~101_combout\,
	datad => \inst14|inst9|data[32]~86_combout\,
	combout => \inst14|inst9|data[32]~87_combout\);

\inst14|inst13|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[32]~87_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(0));

\PC|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~16_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|Add0~17\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|Add0~16_combout\,
	cout => \PC|Add0~17\);

\PC|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~55_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[0]~54_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~16_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~16_combout\,
	datad => \IRX|D[0]~54_combout\,
	combout => \PC|Add0~55_combout\);

\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~55_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

\PC|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~18_combout\ = (\PC|data_out\(1) & (!\PC|Add0~17\)) # (!\PC|data_out\(1) & ((\PC|Add0~17\) # (GND)))
-- \PC|Add0~19\ = CARRY((!\PC|Add0~17\) # (!\PC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(1),
	datad => VCC,
	cin => \PC|Add0~17\,
	combout => \PC|Add0~18_combout\,
	cout => \PC|Add0~19\);

\PC|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~54_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[1]~50_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~18_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[1]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~18_combout\,
	datad => \IRX|D[1]~50_combout\,
	combout => \PC|Add0~54_combout\);

\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~54_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

\PC|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~20_combout\ = (\PC|data_out\(2) & (\PC|Add0~19\ $ (GND))) # (!\PC|data_out\(2) & (!\PC|Add0~19\ & VCC))
-- \PC|Add0~21\ = CARRY((\PC|data_out\(2) & !\PC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datad => VCC,
	cin => \PC|Add0~19\,
	combout => \PC|Add0~20_combout\,
	cout => \PC|Add0~21\);

\PC|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~53_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[2]~46_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~20_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[2]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~20_combout\,
	datad => \IRX|D[2]~46_combout\,
	combout => \PC|Add0~53_combout\);

\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~53_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

\PC|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~22_combout\ = (\PC|data_out\(3) & (!\PC|Add0~21\)) # (!\PC|data_out\(3) & ((\PC|Add0~21\) # (GND)))
-- \PC|Add0~23\ = CARRY((!\PC|Add0~21\) # (!\PC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(3),
	datad => VCC,
	cin => \PC|Add0~21\,
	combout => \PC|Add0~22_combout\,
	cout => \PC|Add0~23\);

\PC|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~52_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\inst1|Yupa[3]~4_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~22_combout\)))) # (!\inst14|inst13|PC\(0) & (((\inst1|Yupa[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~22_combout\,
	datad => \inst1|Yupa[3]~4_combout\,
	combout => \PC|Add0~52_combout\);

\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~52_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

\PC|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~24_combout\ = (\PC|data_out\(4) & (\PC|Add0~23\ $ (GND))) # (!\PC|data_out\(4) & (!\PC|Add0~23\ & VCC))
-- \PC|Add0~25\ = CARRY((\PC|data_out\(4) & !\PC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(4),
	datad => VCC,
	cin => \PC|Add0~23\,
	combout => \PC|Add0~24_combout\,
	cout => \PC|Add0~25\);

\PC|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~51_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[4]~42_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~24_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[4]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~24_combout\,
	datad => \IRX|D[4]~42_combout\,
	combout => \PC|Add0~51_combout\);

\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~51_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

\PC|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~26_combout\ = (\PC|data_out\(5) & (!\PC|Add0~25\)) # (!\PC|data_out\(5) & ((\PC|Add0~25\) # (GND)))
-- \PC|Add0~27\ = CARRY((!\PC|Add0~25\) # (!\PC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(5),
	datad => VCC,
	cin => \PC|Add0~25\,
	combout => \PC|Add0~26_combout\,
	cout => \PC|Add0~27\);

\ACCA|C[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[5]~2_combout\ = (\ACCA|data_out\(5)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[5]~2_combout\);

\ACCA|data_out[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[5]~2_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[5]~2_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[5]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~38_combout\,
	datab => \ACCA|C[5]~2_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[5]~2_combout\);

\ACCB|C[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[5]~2_combout\ = (\ACCB|data_out\(5)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[5]~2_combout\);

\ACCB|data_out[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[5]~2_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[5]~2_combout\))) # (!\inst14|inst13|EB\(1) & (\IRX|D[5]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~38_combout\,
	datab => \ACCB|C[5]~2_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[5]~2_combout\);

\ACCB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[5]~2_combout\,
	asdata => \IRX|C[5]~13_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(5));

\IRX|C[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[5]~10_combout\ = (\ACCA|data_out\(5) & (((\ACCB|data_out\(5)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(5) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(5)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(5),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[5]~10_combout\);

\AUX|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~0_combout\ = (\inst14|inst13|RA\(0)) # (\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \IRX|C[7]~5_combout\,
	combout => \AUX|data_out~0_combout\);

\AUX|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(15));

\AUX|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~9_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(8))) # (!\inst14|inst13|RA\(2) & ((\IRX|D[7]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(8),
	datab => \IRX|D[7]~30_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~9_combout\);

\AUX|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~9_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(7));

\AUX|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~10_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(7))) # (!\inst14|inst13|RA\(2) & ((\IRX|D[6]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(7),
	datab => \IRX|D[6]~34_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~10_combout\);

\AUX|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~10_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(6));

\inst14|inst9|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal32~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal29~0_combout\,
	combout => \inst14|inst9|Equal32~0_combout\);

\inst14|inst13|nAS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~3_combout\ = (!\inst14|inst9|Equal25~2_combout\ & (((!\inst14|inst9|Equal29~0_combout\ & !\inst14|inst9|Equal21~2_combout\)) # (!\inst14|inst9|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datab => \inst14|inst9|Equal21~2_combout\,
	datac => \inst14|inst9|Equal2~0_combout\,
	datad => \inst14|inst9|Equal25~2_combout\,
	combout => \inst14|inst13|nAS~3_combout\);

\inst14|inst13|nAS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~5_combout\ = ((!\inst14|inst9|Equal21~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\) # (!\inst14|inst9|Equal29~0_combout\)))) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst9|Equal29~0_combout\,
	datac => \inst14|inst9|Equal21~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst13|nAS~5_combout\);

\inst14|inst13|nAS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~6_combout\ = (\inst14|inst9|data[46]~36_combout\ & \inst14|inst13|nAS~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[46]~36_combout\,
	datab => \inst14|inst13|nAS~5_combout\,
	combout => \inst14|inst13|nAS~6_combout\);

\inst14|inst13|nAS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~7_combout\ = (\inst14|inst13|nAS~6_combout\ & (\inst14|inst9|data[32]~37_combout\ & (!\inst14|inst9|Equal27~0_combout\ & !\inst14|inst9|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~6_combout\,
	datab => \inst14|inst9|data[32]~37_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	datad => \inst14|inst9|Equal20~0_combout\,
	combout => \inst14|inst13|nAS~7_combout\);

\inst14|inst13|nAS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~8_combout\ = (\inst14|inst13|nAS~3_combout\ & (\inst14|inst9|data[37]~30_combout\ & (\inst14|inst13|nAS~4_combout\ & \inst14|inst13|nAS~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~3_combout\,
	datab => \inst14|inst9|data[37]~30_combout\,
	datac => \inst14|inst13|nAS~4_combout\,
	datad => \inst14|inst13|nAS~7_combout\,
	combout => \inst14|inst13|nAS~8_combout\);

\inst14|inst9|data[47]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~77_combout\ = ((\inst14|inst9|Equal18~1_combout\) # ((\inst14|inst9|Equal32~0_combout\ & \inst14|inst13|nAS~8_combout\))) # (!\inst14|inst9|data[46]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[46]~64_combout\,
	datab => \inst14|inst9|Equal32~0_combout\,
	datac => \inst14|inst13|nAS~8_combout\,
	datad => \inst14|inst9|Equal18~1_combout\,
	combout => \inst14|inst9|data[47]~77_combout\);

\inst14|inst13|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[47]~77_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA0~q\);

\AUX|TRI_STATE_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_D~0_combout\ = (\inst14|inst13|RA\(2)) # ((\inst14|inst13|RA\(0)) # (!\inst14|inst13|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(2),
	datab => \inst14|inst13|RA\(0),
	datad => \inst14|inst13|nERA0~q\,
	combout => \AUX|TRI_STATE_D~0_combout\);

\ACCA|TRI_STATE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|TRI_STATE~0_combout\ = (\inst14|inst13|EA\(0) & (!\inst14|inst13|EA\(1) & !\inst14|inst13|nWA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|nWA~q\,
	combout => \ACCA|TRI_STATE~0_combout\);

\IRX|D[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[6]~31_combout\ = (\ACCA|data_out\(6) & ((\AUX|data_out\(6)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(6) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(6)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \AUX|data_out\(6),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[6]~31_combout\);

\inst14|inst13|prueba[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[4]~0_combout\ = (!\inst14|inst9|Equal14~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst13|prueba[4]~0_combout\);

\inst14|inst9|data[35]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[35]~88_combout\ = (\inst14|inst13|nAS~4_combout\ & ((\inst14|inst9|data[32]~37_combout\ & ((\inst14|inst9|Equal20~0_combout\))) # (!\inst14|inst9|data[32]~37_combout\ & (\inst14|inst13|prueba[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[32]~37_combout\,
	datab => \inst14|inst13|prueba[4]~0_combout\,
	datac => \inst14|inst9|Equal20~0_combout\,
	datad => \inst14|inst13|nAS~4_combout\,
	combout => \inst14|inst9|data[35]~88_combout\);

\inst14|inst13|nEPC0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[35]~88_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEPC0~q\);

\PC|D[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[6]~1_combout\ = (\PC|data_out\(6)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[6]~1_combout\);

\ACCB|C[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[6]~1_combout\ = (\ACCB|data_out\(6)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(6),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[6]~1_combout\);

\ACCB|data_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[6]~1_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[6]~1_combout\))) # (!\inst14|inst13|EB\(1) & (\IRX|D[6]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~34_combout\,
	datab => \ACCB|C[6]~1_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[6]~1_combout\);

\ACCB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[6]~1_combout\,
	asdata => \IRX|C[6]~9_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(6));

\ACCB|TRI_STATE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|TRI_STATE~0_combout\ = (\inst14|inst13|EB\(0) & (!\inst14|inst13|EB\(1) & !\inst14|inst13|nWB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|TRI_STATE~0_combout\);

\IRX|D[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[6]~32_combout\ = (\IRX|D[6]~31_combout\ & (\PC|D[6]~1_combout\ & ((\ACCB|data_out\(6)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~31_combout\,
	datab => \PC|D[6]~1_combout\,
	datac => \ACCB|data_out\(6),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[6]~32_combout\);

\inst14|inst13|nRW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal26~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nRW~q\);

\inst14|inst9|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal15~0_combout\ = (\inst14|inst9|Equal1~0_combout\ & \inst14|inst9|Equal14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|Equal15~0_combout\);

\inst14|inst13|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal15~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|BD~q\);

\ACCA|C[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[6]~1_combout\ = (\ACCA|data_out\(6)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[6]~1_combout\);

\inst1|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux34~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(6)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(6),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux34~0_combout\);

\inst1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux33~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(5)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(5),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux33~0_combout\);

\ACCB|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[4]~3_combout\ = (\ACCB|data_out\(4)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(4),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[4]~3_combout\);

\ACCB|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[4]~3_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[4]~3_combout\))) # (!\inst14|inst13|EB\(1) & (\IRX|D[4]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~42_combout\,
	datab => \ACCB|C[4]~3_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[4]~3_combout\);

\IRX|C[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[4]~14_combout\ = (\ACCA|data_out\(4) & (((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(4) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(4),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[4]~14_combout\);

\AUX|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~3_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(13))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(13),
	datab => \IRX|C[4]~17_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~3_combout\);

\AUX|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~3_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(12));

\PC|data_out[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[12]~3_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[4]~17_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datab => \IRX|C[4]~17_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[12]~3_combout\);

\ACCB|C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[3]~4_combout\ = (\ACCB|data_out\(3)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[3]~4_combout\);

\ACCB|data_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[3]~4_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[3]~4_combout\))) # (!\inst14|inst13|EB\(1) & (\inst1|Yupa[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~4_combout\,
	datab => \ACCB|C[3]~4_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[3]~4_combout\);

\ACCB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[3]~4_combout\,
	asdata => \IRX|C[3]~22_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(3));

\IRX|C[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[3]~18_combout\ = (\ACCA|data_out\(3) & (((\ACCB|data_out\(3)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(3) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(3)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(3),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[3]~18_combout\);

\PC|TRI_STATE_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|TRI_STATE_D~0_combout\ = (\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|TRI_STATE_D~0_combout\);

\IRX|C[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[3]~19_combout\ = (\AUX|data_out\(11) & (((\PC|data_out\(11)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(11) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(11)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(11),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[3]~19_combout\);

\BusAlta|PortR[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[3]~17_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[3]~22_combout\)) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[3]~4_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[3]~22_combout\,
	datab => \inst1|Yupa[3]~4_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[3]~17_combout\);

\inst14|inst9|data[26]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~23_combout\ = (\inst14|inst13|prueba[4]~0_combout\ & (!\inst14|inst9|Equal26~3_combout\ & ((!\inst14|inst9|Equal21~2_combout\) # (!\inst14|inst9|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba[4]~0_combout\,
	datab => \inst14|inst9|Equal6~0_combout\,
	datac => \inst14|inst9|Equal21~2_combout\,
	datad => \inst14|inst9|Equal26~3_combout\,
	combout => \inst14|inst9|data[26]~23_combout\);

\inst14|inst9|data[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~24_combout\ = (\inst14|inst9|data[26]~22_combout\ & \inst14|inst9|data[26]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst9|data[26]~23_combout\,
	combout => \inst14|inst9|data[26]~24_combout\);

\inst14|inst9|data[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~25_combout\ = (\inst14|inst9|Equal29~0_combout\ & (((!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\)))) # (!\inst14|inst9|Equal29~0_combout\ & 
-- (\inst14|inst9|Equal21~2_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datab => \inst14|inst9|Equal21~2_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|data[26]~25_combout\);

\inst14|inst9|data[73]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~99_combout\ = (\inst14|inst9|data~28_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst9|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|data~28_combout\,
	datad => \inst14|inst9|Equal0~5_combout\,
	combout => \inst14|inst9|data[73]~99_combout\);

\inst14|inst9|data[26]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~29_combout\ = (\inst14|inst9|data[73]~26_combout\ & (\inst14|inst9|data[73]~27_combout\ & (\inst14|inst9|data[73]~99_combout\ & !\inst14|inst9|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~26_combout\,
	datab => \inst14|inst9|data[73]~27_combout\,
	datac => \inst14|inst9|data[73]~99_combout\,
	datad => \inst14|inst9|Equal10~0_combout\,
	combout => \inst14|inst9|data[26]~29_combout\);

\inst14|inst9|data~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~33_combout\ = (\inst14|inst13|nAS~2_combout\ & (\inst14|inst9|data[46]~32_combout\ & ((!\inst14|inst9|Equal21~2_combout\) # (!\inst14|inst9|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~2_combout\,
	datab => \inst14|inst9|data[46]~32_combout\,
	datac => \inst14|inst9|Equal1~0_combout\,
	datad => \inst14|inst9|Equal21~2_combout\,
	combout => \inst14|inst9|data~33_combout\);

\inst14|inst9|data[26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~34_combout\ = (\inst14|inst9|data[26]~25_combout\) # ((!\inst14|inst9|data~33_combout\) # (!\inst14|inst9|data[26]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~25_combout\,
	datac => \inst14|inst9|data[26]~29_combout\,
	datad => \inst14|inst9|data~33_combout\,
	combout => \inst14|inst9|data[26]~34_combout\);

\inst14|inst13|nAS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~9_combout\ = (\inst14|inst13|nAS~8_combout\ & (((!\inst14|inst9|Equal29~0_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal29~0_combout\,
	datad => \inst14|inst13|nAS~8_combout\,
	combout => \inst14|inst13|nAS~9_combout\);

\inst14|inst9|data[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~38_combout\ = ((\inst14|inst13|nAS~9_combout\ & ((\inst14|inst9|Equal34~0_combout\))) # (!\inst14|inst13|nAS~9_combout\ & (!\inst14|inst9|data[26]~34_combout\))) # (!\inst14|inst9|data[26]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~24_combout\,
	datab => \inst14|inst9|data[26]~34_combout\,
	datac => \inst14|inst13|nAS~9_combout\,
	datad => \inst14|inst9|Equal34~0_combout\,
	combout => \inst14|inst9|data[26]~38_combout\);

\inst14|inst13|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[26]~38_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nAS~q\);

\inst6|MEM_WRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|MEM_WRITE~0_combout\ = (\inst14|inst13|nAS~q\ & \inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|nAS~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \inst6|MEM_WRITE~0_combout\);

\inst14|inst9|data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~92_combout\ = (\inst14|inst9|Equal2~0_combout\ & (!\inst14|inst9|Equal11~3_combout\ & ((!\inst14|inst9|Equal14~2_combout\)))) # (!\inst14|inst9|Equal2~0_combout\ & (((!\inst14|inst9|Equal14~2_combout\) # 
-- (!\inst14|inst9|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal11~3_combout\,
	datab => \inst14|inst9|Equal0~6_combout\,
	datac => \inst14|inst9|Equal2~0_combout\,
	datad => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|data~92_combout\);

\inst14|inst9|data[37]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~93_combout\ = (\inst14|inst9|data[37]~30_combout\ & (\inst14|inst9|data[73]~99_combout\ & (\inst14|inst9|data~92_combout\ & !\inst14|inst9|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~30_combout\,
	datab => \inst14|inst9|data[73]~99_combout\,
	datac => \inst14|inst9|data~92_combout\,
	datad => \inst14|inst9|Equal10~0_combout\,
	combout => \inst14|inst9|data[37]~93_combout\);

\inst14|inst9|Equal33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal33~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (\inst14|inst9|Equal3~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datab => \inst14|inst9|Equal3~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	combout => \inst14|inst9|Equal33~1_combout\);

\inst14|inst9|Equal36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal36~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst4|valor_interno\(1) & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst4|valor_interno\(1),
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal33~1_combout\,
	combout => \inst14|inst9|Equal36~0_combout\);

\inst14|inst9|Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal33~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (\inst14|inst9|Equal3~1_combout\ & (\inst14|inst9|Equal18~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datab => \inst14|inst9|Equal3~1_combout\,
	datac => \inst14|inst9|Equal18~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	combout => \inst14|inst9|Equal33~0_combout\);

\inst14|inst13|nCBD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nCBD~0_combout\ = (\inst14|inst13|nAS~3_combout\ & (!\inst14|inst9|Equal32~0_combout\ & !\inst14|inst9|Equal33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~3_combout\,
	datac => \inst14|inst9|Equal32~0_combout\,
	datad => \inst14|inst9|Equal33~0_combout\,
	combout => \inst14|inst13|nCBD~0_combout\);

\inst14|inst13|nCBD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nCBD~1_combout\ = (\inst14|inst9|data[37]~30_combout\ & (\inst14|inst13|nAS~4_combout\ & (\inst14|inst13|nAS~7_combout\ & \inst14|inst13|nCBD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~30_combout\,
	datab => \inst14|inst13|nAS~4_combout\,
	datac => \inst14|inst13|nAS~7_combout\,
	datad => \inst14|inst13|nCBD~0_combout\,
	combout => \inst14|inst13|nCBD~1_combout\);

\inst14|inst9|Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal23~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal28~1_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal28~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal23~2_combout\);

\inst14|inst9|data[37]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~94_combout\ = (\inst14|inst9|data[37]~93_combout\ & (!\inst14|inst9|Equal23~2_combout\ & ((!\inst14|inst13|nCBD~1_combout\) # (!\inst14|inst9|Equal36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~93_combout\,
	datab => \inst14|inst9|Equal36~0_combout\,
	datac => \inst14|inst13|nCBD~1_combout\,
	datad => \inst14|inst9|Equal23~2_combout\,
	combout => \inst14|inst9|data[37]~94_combout\);

\inst14|inst9|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~0_combout\ = (\inst14|inst9|Equal1~0_combout\ & \inst14|inst9|Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal11~3_combout\,
	combout => \inst14|inst9|Equal12~0_combout\);

\inst14|inst9|data[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~95_combout\ = (\inst14|inst9|data[73]~59_combout\ & (\inst14|inst9|data[73]~27_combout\ & (\inst14|inst13|nAS~7_combout\ & !\inst14|inst9|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~59_combout\,
	datab => \inst14|inst9|data[73]~27_combout\,
	datac => \inst14|inst13|nAS~7_combout\,
	datad => \inst14|inst9|Equal12~0_combout\,
	combout => \inst14|inst9|data[31]~95_combout\);

\inst14|inst9|data[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~97_combout\ = (\inst14|inst9|Equal32~0_combout\) # ((\inst14|inst13|nCBD~1_combout\) # (!\inst14|inst9|data[31]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal32~0_combout\,
	datab => \inst14|inst13|nCBD~1_combout\,
	datad => \inst14|inst9|data[31]~95_combout\,
	combout => \inst14|inst9|data[31]~97_combout\);

\inst14|inst9|Equal31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal31~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal29~0_combout\,
	combout => \inst14|inst9|Equal31~2_combout\);

\inst14|inst9|data[31]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~98_combout\ = (((\inst14|inst9|Equal25~2_combout\) # (\inst14|inst9|Equal31~2_combout\)) # (!\inst14|inst9|data[31]~97_combout\)) # (!\inst14|inst9|data[37]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~94_combout\,
	datab => \inst14|inst9|data[31]~97_combout\,
	datac => \inst14|inst9|Equal25~2_combout\,
	datad => \inst14|inst9|Equal31~2_combout\,
	combout => \inst14|inst9|data[31]~98_combout\);

\inst14|inst13|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[31]~98_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCBD~q\);

\AUX|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~11_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(6))) # (!\inst14|inst13|RA\(2) & ((\IRX|D[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(6),
	datab => \IRX|D[5]~38_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~11_combout\);

\AUX|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~11_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(5));

\AUX|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~12_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(5))) # (!\inst14|inst13|RA\(2) & ((\IRX|D[4]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(5),
	datab => \IRX|D[4]~42_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~12_combout\);

\AUX|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~12_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(4));

\AUX|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~13_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(4))) # (!\inst14|inst13|RA\(2) & ((\inst1|Yupa[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(4),
	datab => \inst1|Yupa[3]~4_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~13_combout\);

\AUX|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~13_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(3));

\AUX|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~14_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(3))) # (!\inst14|inst13|RA\(2) & ((\IRX|D[2]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \IRX|D[2]~46_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~14_combout\);

\AUX|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~14_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(2));

\AUX|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~15_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(2))) # (!\inst14|inst13|RA\(2) & ((\IRX|D[1]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(2),
	datab => \IRX|D[1]~50_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~15_combout\);

\AUX|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~15_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(1));

\AUX|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~16_combout\ = (\inst14|inst13|RA\(2) & (\AUX|data_out\(1))) # (!\inst14|inst13|RA\(2) & ((\IRX|D[0]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(1),
	datab => \IRX|D[0]~54_combout\,
	datad => \inst14|inst13|RA\(2),
	combout => \AUX|data_out~16_combout\);

\AUX|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~16_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(0));

\inst14|inst9|data[37]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[37]~96_combout\ = ((!\inst14|inst9|Equal25~2_combout\ & (\inst14|inst9|Equal31~2_combout\ & \inst14|inst9|data[31]~95_combout\))) # (!\inst14|inst9|data[37]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~94_combout\,
	datab => \inst14|inst9|Equal25~2_combout\,
	datac => \inst14|inst9|Equal31~2_combout\,
	datad => \inst14|inst9|data[31]~95_combout\,
	combout => \inst14|inst9|data[37]~96_combout\);

\inst14|inst13|nEPC2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[37]~96_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEPC2~q\);

\PC|TRI_STATE_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|TRI_STATE_E~0_combout\ = (\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC2~q\,
	combout => \PC|TRI_STATE_E~0_combout\);

\ENTRADA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~0_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(0))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(0),
	datab => \PC|data_out\(0),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~0_combout\);

\inst|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(0));

\ENTRADA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~1_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(1))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(1),
	datab => \PC|data_out\(1),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~1_combout\);

\inst|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(1));

\ENTRADA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~2_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(2))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(2),
	datab => \PC|data_out\(2),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~2_combout\);

\inst|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(2));

\ENTRADA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~3_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(3))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \PC|data_out\(3),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~3_combout\);

\inst|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(3));

\ENTRADA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~4_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(4))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(4),
	datab => \PC|data_out\(4),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~4_combout\);

\inst|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(4));

\ENTRADA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~5_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(5))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(5),
	datab => \PC|data_out\(5),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~5_combout\);

\inst|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(5));

\ENTRADA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~6_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(6))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(6),
	datab => \PC|data_out\(6),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~6_combout\);

\inst|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(6));

\ENTRADA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ENTRADA~7_combout\ = (\PC|TRI_STATE_E~0_combout\ & (\AUX|data_out\(7))) # (!\PC|TRI_STATE_E~0_combout\ & ((\PC|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(7),
	datab => \PC|data_out\(7),
	datad => \PC|TRI_STATE_E~0_combout\,
	combout => \ENTRADA~7_combout\);

\inst|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \ENTRADA~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(7));

\inst6|mem_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000016F0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\inst6|MEM_READ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|MEM_READ~0_combout\ = (\inst14|inst13|nAS~q\ & !\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \inst6|MEM_READ~0_combout\);

\inst6|data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|MEM_READ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~en_q\);

\BusAlta|PortR[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[3]~18_combout\ = (\BusAlta|PortR[3]~17_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a3~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[3]~17_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[3]~17_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[3]~18_combout\);

\inst14|inst13|nEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal20~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEX~q\);

\IRX|C[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[3]~20_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[3]~18_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \BusAlta|PortR[3]~18_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|C[3]~20_combout\);

\inst1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(3)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(3),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux31~0_combout\);

\inst1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(2)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(2),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux30~0_combout\);

\inst1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux29~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(1)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(1),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux29~0_combout\);

\inst1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux27~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(0)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux27~0_combout\);

\inst14|inst13|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal12~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CC~q\);

\inst1|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux35~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(7)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(7),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux35~0_combout\);

\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|Mux34~0_combout\ & ((\ACCA|C[6]~1_combout\ & (\inst1|Add0~13\ & VCC)) # (!\ACCA|C[6]~1_combout\ & (!\inst1|Add0~13\)))) # (!\inst1|Mux34~0_combout\ & ((\ACCA|C[6]~1_combout\ & (!\inst1|Add0~13\)) # (!\ACCA|C[6]~1_combout\ 
-- & ((\inst1|Add0~13\) # (GND)))))
-- \inst1|Add0~15\ = CARRY((\inst1|Mux34~0_combout\ & (!\ACCA|C[6]~1_combout\ & !\inst1|Add0~13\)) # (!\inst1|Mux34~0_combout\ & ((!\inst1|Add0~13\) # (!\ACCA|C[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux34~0_combout\,
	datab => \ACCA|C[6]~1_combout\,
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = ((\inst1|Mux35~0_combout\ $ (\ACCA|C[7]~0_combout\ $ (!\inst1|Add0~15\)))) # (GND)
-- \inst1|Add0~17\ = CARRY((\inst1|Mux35~0_combout\ & ((\ACCA|C[7]~0_combout\) # (!\inst1|Add0~15\))) # (!\inst1|Mux35~0_combout\ & (\ACCA|C[7]~0_combout\ & !\inst1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux35~0_combout\,
	datab => \ACCA|C[7]~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = \inst1|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~26_combout\);

\inst14|inst9|Equal21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal21~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal28~1_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal28~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal21~3_combout\);

\inst14|inst9|data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~81_combout\ = (\inst14|inst9|Equal29~0_combout\ & (\inst14|inst9|Equal0~6_combout\ & (\inst14|inst9|data~33_combout\ & \inst14|inst9|data[26]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datab => \inst14|inst9|Equal0~6_combout\,
	datac => \inst14|inst9|data~33_combout\,
	datad => \inst14|inst9|data[26]~23_combout\,
	combout => \inst14|inst9|data~81_combout\);

\inst14|inst9|data[73]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~82_combout\ = (\inst14|inst9|data[73]~59_combout\ & (\inst14|inst9|data[73]~35_combout\ & ((\inst14|inst9|Equal21~3_combout\) # (\inst14|inst9|data~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~59_combout\,
	datab => \inst14|inst9|data[73]~35_combout\,
	datac => \inst14|inst9|Equal21~3_combout\,
	datad => \inst14|inst9|data~81_combout\,
	combout => \inst14|inst9|data[73]~82_combout\);

\inst14|inst13|UPA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[73]~82_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|UPA\(6));

\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|Add0~26_combout\ & !\inst14|inst13|UPA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~26_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~28_combout\);

\inst14|inst9|data[71]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~83_combout\ = (\inst14|inst9|Equal12~0_combout\ & (\inst14|inst9|data[26]~29_combout\ & (!\inst14|inst9|Equal8~0_combout\ & !\inst14|inst9|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal12~0_combout\,
	datab => \inst14|inst9|data[26]~29_combout\,
	datac => \inst14|inst9|Equal8~0_combout\,
	datad => \inst14|inst9|Equal1~1_combout\,
	combout => \inst14|inst9|data[71]~83_combout\);

\inst14|inst9|data[58]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~104_combout\ = ((\inst14|inst9|data[71]~83_combout\ & ((!\inst14|inst9|Equal3~2_combout\) # (!\inst14|inst9|Equal1~0_combout\)))) # (!\inst14|inst9|data[48]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal3~2_combout\,
	datac => \inst14|inst9|data[48]~91_combout\,
	datad => \inst14|inst9|data[71]~83_combout\,
	combout => \inst14|inst9|data[58]~104_combout\);

\inst14|inst13|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[58]~104_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nDUPA~q\);

\inst1|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~28_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(1));

\inst5|inst|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CC~q\,
	d => \inst1|Banderas\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|valor_interno~q\);

\inst1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_cout\ = CARRY((!\inst14|inst13|EB\(1) & \inst5|inst|valor_interno~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \inst5|inst|valor_interno~q\,
	datad => VCC,
	cout => \inst1|Add0~1_cout\);

\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|Mux27~0_combout\ & ((\ACCA|C[0]~7_combout\ & (\inst1|Add0~1_cout\ & VCC)) # (!\ACCA|C[0]~7_combout\ & (!\inst1|Add0~1_cout\)))) # (!\inst1|Mux27~0_combout\ & ((\ACCA|C[0]~7_combout\ & (!\inst1|Add0~1_cout\)) # 
-- (!\ACCA|C[0]~7_combout\ & ((\inst1|Add0~1_cout\) # (GND)))))
-- \inst1|Add0~3\ = CARRY((\inst1|Mux27~0_combout\ & (!\ACCA|C[0]~7_combout\ & !\inst1|Add0~1_cout\)) # (!\inst1|Mux27~0_combout\ & ((!\inst1|Add0~1_cout\) # (!\ACCA|C[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux27~0_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => VCC,
	cin => \inst1|Add0~1_cout\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = ((\inst1|Mux29~0_combout\ $ (\ACCA|C[1]~6_combout\ $ (!\inst1|Add0~3\)))) # (GND)
-- \inst1|Add0~5\ = CARRY((\inst1|Mux29~0_combout\ & ((\ACCA|C[1]~6_combout\) # (!\inst1|Add0~3\))) # (!\inst1|Mux29~0_combout\ & (\ACCA|C[1]~6_combout\ & !\inst1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux29~0_combout\,
	datab => \ACCA|C[1]~6_combout\,
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|Mux30~0_combout\ & ((\ACCA|C[2]~5_combout\ & (\inst1|Add0~5\ & VCC)) # (!\ACCA|C[2]~5_combout\ & (!\inst1|Add0~5\)))) # (!\inst1|Mux30~0_combout\ & ((\ACCA|C[2]~5_combout\ & (!\inst1|Add0~5\)) # (!\ACCA|C[2]~5_combout\ & 
-- ((\inst1|Add0~5\) # (GND)))))
-- \inst1|Add0~7\ = CARRY((\inst1|Mux30~0_combout\ & (!\ACCA|C[2]~5_combout\ & !\inst1|Add0~5\)) # (!\inst1|Mux30~0_combout\ & ((!\inst1|Add0~5\) # (!\ACCA|C[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux30~0_combout\,
	datab => \ACCA|C[2]~5_combout\,
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = ((\inst1|Mux31~0_combout\ $ (\ACCA|C[3]~4_combout\ $ (!\inst1|Add0~7\)))) # (GND)
-- \inst1|Add0~9\ = CARRY((\inst1|Mux31~0_combout\ & ((\ACCA|C[3]~4_combout\) # (!\inst1|Add0~7\))) # (!\inst1|Mux31~0_combout\ & (\ACCA|C[3]~4_combout\ & !\inst1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux31~0_combout\,
	datab => \ACCA|C[3]~4_combout\,
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[3]~4_combout\ & (\inst1|Mux31~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[3]~4_combout\,
	datab => \inst1|Mux31~0_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~22_combout\);

\inst1|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~22_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(3));

\IRX|C[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[3]~21_combout\ = (\IRX|C[3]~20_combout\ & ((\inst1|Yupa_interno\(3)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[3]~20_combout\,
	datab => \inst1|Yupa_interno\(3),
	datad => \inst14|inst13|nDUPA~q\,
	combout => \IRX|C[3]~21_combout\);

\IRX|C[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[7]~3_combout\ = ((\inst14|inst13|BD~q\ & !\inst14|inst13|nRW~q\)) # (!\ACCA|B[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \inst14|inst13|nRW~q\,
	datad => \ACCA|B[7]~0_combout\,
	combout => \IRX|C[7]~3_combout\);

\IRX|D[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~28_combout\ = (\PC|TRI_STATE_D~0_combout\ & (!\inst14|inst13|nEX~q\ & !\inst14|inst13|nDUPA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datac => \inst14|inst13|nEX~q\,
	datad => \inst14|inst13|nDUPA~q\,
	combout => \IRX|D[7]~28_combout\);

\IRX|C[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[7]~4_combout\ = (\IRX|C[7]~3_combout\) # (((!\AUX|TRI_STATE_C~0_combout\) # (!\ACCB|B[7]~0_combout\)) # (!\IRX|D[7]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[7]~3_combout\,
	datab => \IRX|D[7]~28_combout\,
	datac => \ACCB|B[7]~0_combout\,
	datad => \AUX|TRI_STATE_C~0_combout\,
	combout => \IRX|C[7]~4_combout\);

\IRX|C[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[3]~22_combout\ = ((\IRX|C[3]~18_combout\ & (\IRX|C[3]~19_combout\ & \IRX|C[3]~21_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[3]~18_combout\,
	datab => \IRX|C[3]~19_combout\,
	datac => \IRX|C[3]~21_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[3]~22_combout\);

\PC|data_out[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[11]~4_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[3]~22_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(11),
	datab => \IRX|C[3]~22_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[11]~4_combout\);

\PC|data_out[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[10]~5_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[2]~26_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(10),
	datab => \IRX|C[2]~26_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[10]~5_combout\);

\PC|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~34_combout\ = (\PC|data_out\(9) & (!\PC|Add0~33\)) # (!\PC|data_out\(9) & ((\PC|Add0~33\) # (GND)))
-- \PC|Add0~35\ = CARRY((!\PC|Add0~33\) # (!\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datad => VCC,
	cin => \PC|Add0~33\,
	combout => \PC|Add0~34_combout\,
	cout => \PC|Add0~35\);

\PC|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~36_combout\ = (\PC|data_out\(10) & (\PC|Add0~35\ $ (GND))) # (!\PC|data_out\(10) & (!\PC|Add0~35\ & VCC))
-- \PC|Add0~37\ = CARRY((\PC|data_out\(10) & !\PC|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(10),
	datad => VCC,
	cin => \PC|Add0~35\,
	combout => \PC|Add0~36_combout\,
	cout => \PC|Add0~37\);

\PC|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Equal0~0_combout\ = (\inst14|inst13|PC\(0) & !\inst14|inst13|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|Equal0~0_combout\);

\PC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[10]~5_combout\,
	asdata => \PC|Add0~36_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(10));

\PC|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~38_combout\ = (\PC|data_out\(11) & (!\PC|Add0~37\)) # (!\PC|data_out\(11) & ((\PC|Add0~37\) # (GND)))
-- \PC|Add0~39\ = CARRY((!\PC|Add0~37\) # (!\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(11),
	datad => VCC,
	cin => \PC|Add0~37\,
	combout => \PC|Add0~38_combout\,
	cout => \PC|Add0~39\);

\PC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[11]~4_combout\,
	asdata => \PC|Add0~38_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(11));

\PC|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~40_combout\ = (\PC|data_out\(12) & (\PC|Add0~39\ $ (GND))) # (!\PC|data_out\(12) & (!\PC|Add0~39\ & VCC))
-- \PC|Add0~41\ = CARRY((\PC|data_out\(12) & !\PC|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datad => VCC,
	cin => \PC|Add0~39\,
	combout => \PC|Add0~40_combout\,
	cout => \PC|Add0~41\);

\PC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[12]~3_combout\,
	asdata => \PC|Add0~40_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(12));

\IRX|C[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[4]~15_combout\ = (\AUX|data_out\(12) & (((\PC|data_out\(12)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(12) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(12)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(12),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(12),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[4]~15_combout\);

\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|Mux32~0_combout\ & ((\ACCA|C[4]~3_combout\ & (\inst1|Add0~9\ & VCC)) # (!\ACCA|C[4]~3_combout\ & (!\inst1|Add0~9\)))) # (!\inst1|Mux32~0_combout\ & ((\ACCA|C[4]~3_combout\ & (!\inst1|Add0~9\)) # (!\ACCA|C[4]~3_combout\ & 
-- ((\inst1|Add0~9\) # (GND)))))
-- \inst1|Add0~11\ = CARRY((\inst1|Mux32~0_combout\ & (!\ACCA|C[4]~3_combout\ & !\inst1|Add0~9\)) # (!\inst1|Mux32~0_combout\ & ((!\inst1|Add0~9\) # (!\ACCA|C[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux32~0_combout\,
	datab => \ACCA|C[4]~3_combout\,
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

\inst1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[4]~3_combout\ & (\inst1|Mux32~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[4]~3_combout\,
	datab => \inst1|Mux32~0_combout\,
	datac => \inst1|Add0~10_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~21_combout\);

\inst1|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~21_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(4));

\IRX|D[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[4]~41_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Banderas\(4)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(4),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[4]~41_combout\);

\BusAlta|PortR[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[4]~15_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[4]~17_combout\)) # (!\inst14|inst13|BD~q\ & ((\IRX|D[4]~42_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[4]~17_combout\,
	datab => \IRX|D[4]~42_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[4]~15_combout\);

\inst6|mem_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000590",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\BusAlta|PortR[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[4]~16_combout\ = (\BusAlta|PortR[4]~15_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a4~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[4]~15_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[4]~15_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[4]~16_combout\);

\IRX|C[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[4]~16_combout\ = (\IRX|D[4]~41_combout\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[4]~16_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~41_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \BusAlta|PortR[4]~16_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|C[4]~16_combout\);

\IRX|C[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[4]~17_combout\ = ((\IRX|C[4]~14_combout\ & (\IRX|C[4]~15_combout\ & \IRX|C[4]~16_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[4]~14_combout\,
	datab => \IRX|C[4]~15_combout\,
	datac => \IRX|C[4]~16_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[4]~17_combout\);

\ACCB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[4]~3_combout\,
	asdata => \IRX|C[4]~17_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(4));

\inst1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux32~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|data_out\(4)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(1),
	datab => \ACCB|data_out\(4),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux32~0_combout\);

\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = ((\inst1|Mux33~0_combout\ $ (\ACCA|C[5]~2_combout\ $ (!\inst1|Add0~11\)))) # (GND)
-- \inst1|Add0~13\ = CARRY((\inst1|Mux33~0_combout\ & ((\ACCA|C[5]~2_combout\) # (!\inst1|Add0~11\))) # (!\inst1|Mux33~0_combout\ & (\ACCA|C[5]~2_combout\ & !\inst1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux33~0_combout\,
	datab => \ACCA|C[5]~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

\inst1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~19_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[6]~1_combout\ & (\inst1|Mux34~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[6]~1_combout\,
	datab => \inst1|Mux34~0_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~19_combout\);

\inst1|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~19_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(6));

\IRX|D[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[6]~33_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(6)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(6),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[6]~33_combout\);

\BusAlta|PortR[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[6]~11_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[6]~9_combout\)) # (!\inst14|inst13|BD~q\ & ((\IRX|D[6]~34_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[6]~9_combout\,
	datab => \IRX|D[6]~34_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[6]~11_combout\);

\inst6|mem_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000401",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\BusAlta|PortR[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[6]~12_combout\ = (\BusAlta|PortR[6]~11_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a6~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[6]~11_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[6]~11_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[6]~12_combout\);

\IRX|D[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[6]~57_combout\ = (\IRX|D[6]~33_combout\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[6]~33_combout\,
	datad => \BusAlta|PortR[6]~12_combout\,
	combout => \IRX|D[6]~57_combout\);

\IRX|D[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~29_combout\ = (\ACCB|TRI_STATE~0_combout\) # ((!\AUX|TRI_STATE_D~0_combout\) # (!\IRX|D[7]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datac => \IRX|D[7]~28_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \IRX|D[7]~29_combout\);

\IRX|D[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~56_combout\ = (\ACCA|TRI_STATE~0_combout\) # ((!\inst14|inst13|nRW~q\ & !\inst14|inst13|BD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[7]~56_combout\);

\IRX|D[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[6]~34_combout\ = (\IRX|D[6]~32_combout\ & ((\IRX|D[6]~57_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\IRX|D[6]~32_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~32_combout\,
	datab => \IRX|D[6]~57_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \IRX|D[6]~34_combout\);

\ACCA|data_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[6]~1_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[6]~1_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[6]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~34_combout\,
	datab => \ACCA|C[6]~1_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[6]~1_combout\);

\ACCA|data_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~8_combout\ = (\inst14|inst13|nWA~q\ & ((\inst14|inst13|EA\(1)) # (\inst14|inst13|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EA\(0),
	combout => \ACCA|data_out[0]~8_combout\);

\ACCA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[6]~1_combout\,
	asdata => \IRX|C[6]~9_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(6));

\IRX|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[6]~6_combout\ = (\ACCA|data_out\(6) & (((\ACCB|data_out\(6)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(6) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(6)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(6),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[6]~6_combout\);

\PC|data_out[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[14]~1_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[6]~9_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(14),
	datab => \IRX|C[6]~9_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[14]~1_combout\);

\PC|data_out[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[13]~2_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[5]~13_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datab => \IRX|C[5]~13_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[13]~2_combout\);

\PC|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~42_combout\ = (\PC|data_out\(13) & (!\PC|Add0~41\)) # (!\PC|data_out\(13) & ((\PC|Add0~41\) # (GND)))
-- \PC|Add0~43\ = CARRY((!\PC|Add0~41\) # (!\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datad => VCC,
	cin => \PC|Add0~41\,
	combout => \PC|Add0~42_combout\,
	cout => \PC|Add0~43\);

\PC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[13]~2_combout\,
	asdata => \PC|Add0~42_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(13));

\PC|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~44_combout\ = (\PC|data_out\(14) & (\PC|Add0~43\ $ (GND))) # (!\PC|data_out\(14) & (!\PC|Add0~43\ & VCC))
-- \PC|Add0~45\ = CARRY((\PC|data_out\(14) & !\PC|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(14),
	datad => VCC,
	cin => \PC|Add0~43\,
	combout => \PC|Add0~44_combout\,
	cout => \PC|Add0~45\);

\PC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[14]~1_combout\,
	asdata => \PC|Add0~44_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(14));

\IRX|C[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[6]~7_combout\ = (\AUX|data_out\(14) & (((\PC|data_out\(14)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(14) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(14)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(14),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(14),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[6]~7_combout\);

\IRX|C[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[6]~8_combout\ = (\IRX|D[6]~33_combout\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[6]~12_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~33_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \BusAlta|PortR[6]~12_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|C[6]~8_combout\);

\IRX|C[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[6]~9_combout\ = ((\IRX|C[6]~6_combout\ & (\IRX|C[6]~7_combout\ & \IRX|C[6]~8_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[6]~6_combout\,
	datab => \IRX|C[6]~7_combout\,
	datac => \IRX|C[6]~8_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[6]~9_combout\);

\AUX|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~1_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(15))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \IRX|C[6]~9_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~1_combout\);

\AUX|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~1_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(14));

\AUX|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~2_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(14))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[5]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(14),
	datab => \IRX|C[5]~13_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~2_combout\);

\AUX|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~2_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(13));

\IRX|C[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[5]~11_combout\ = (\AUX|data_out\(13) & (((\PC|data_out\(13)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(13) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(13)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(13),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(13),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[5]~11_combout\);

\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[5]~2_combout\ & (\inst1|Mux33~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[5]~2_combout\,
	datab => \inst1|Mux33~0_combout\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~20_combout\);

\inst1|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~20_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(5));

\IRX|D[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[5]~37_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(5)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(5),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[5]~37_combout\);

\BusAlta|PortR[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[5]~13_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[5]~13_combout\)) # (!\inst14|inst13|BD~q\ & ((\IRX|D[5]~38_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[5]~13_combout\,
	datab => \IRX|D[5]~38_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[5]~13_combout\);

\inst6|mem_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000420",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\BusAlta|PortR[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[5]~14_combout\ = (\BusAlta|PortR[5]~13_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a5~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[5]~13_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[5]~13_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[5]~14_combout\);

\IRX|C[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[5]~12_combout\ = (\IRX|D[5]~37_combout\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[5]~14_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~37_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \BusAlta|PortR[5]~14_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|C[5]~12_combout\);

\IRX|C[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[5]~13_combout\ = ((\IRX|C[5]~10_combout\ & (\IRX|C[5]~11_combout\ & \IRX|C[5]~12_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[5]~10_combout\,
	datab => \IRX|C[5]~11_combout\,
	datac => \IRX|C[5]~12_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[5]~13_combout\);

\ACCA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[5]~2_combout\,
	asdata => \IRX|C[5]~13_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(5));

\IRX|D[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[5]~35_combout\ = (\ACCA|data_out\(5) & ((\AUX|data_out\(5)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(5) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(5)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \AUX|data_out\(5),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[5]~35_combout\);

\PC|D[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[5]~2_combout\ = (\PC|data_out\(5)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(5),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[5]~2_combout\);

\IRX|D[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[5]~36_combout\ = (\IRX|D[5]~35_combout\ & (\PC|D[5]~2_combout\ & ((\ACCB|data_out\(5)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~35_combout\,
	datab => \PC|D[5]~2_combout\,
	datac => \ACCB|data_out\(5),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[5]~36_combout\);

\IRX|D[5]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[5]~58_combout\ = (\IRX|D[5]~37_combout\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[5]~37_combout\,
	datad => \BusAlta|PortR[5]~14_combout\,
	combout => \IRX|D[5]~58_combout\);

\IRX|D[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[5]~38_combout\ = (\IRX|D[5]~36_combout\ & ((\IRX|D[5]~58_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\IRX|D[5]~36_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~36_combout\,
	datab => \IRX|D[5]~58_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \IRX|D[5]~38_combout\);

\PC|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~50_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[5]~38_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~26_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~26_combout\,
	datad => \IRX|D[5]~38_combout\,
	combout => \PC|Add0~50_combout\);

\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~50_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

\PC|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~28_combout\ = (\PC|data_out\(6) & (\PC|Add0~27\ $ (GND))) # (!\PC|data_out\(6) & (!\PC|Add0~27\ & VCC))
-- \PC|Add0~29\ = CARRY((\PC|data_out\(6) & !\PC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datad => VCC,
	cin => \PC|Add0~27\,
	combout => \PC|Add0~28_combout\,
	cout => \PC|Add0~29\);

\PC|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~49_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[6]~34_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~28_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~28_combout\,
	datad => \IRX|D[6]~34_combout\,
	combout => \PC|Add0~49_combout\);

\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~49_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

\PC|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~30_combout\ = (\PC|data_out\(7) & (!\PC|Add0~29\)) # (!\PC|data_out\(7) & ((\PC|Add0~29\) # (GND)))
-- \PC|Add0~31\ = CARRY((!\PC|Add0~29\) # (!\PC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	datad => VCC,
	cin => \PC|Add0~29\,
	combout => \PC|Add0~30_combout\,
	cout => \PC|Add0~31\);

\PC|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~48_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[7]~30_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~30_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~30_combout\,
	datad => \IRX|D[7]~30_combout\,
	combout => \PC|Add0~48_combout\);

\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~48_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

\PC|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~32_combout\ = (\PC|data_out\(8) & (\PC|Add0~31\ $ (GND))) # (!\PC|data_out\(8) & (!\PC|Add0~31\ & VCC))
-- \PC|Add0~33\ = CARRY((\PC|data_out\(8) & !\PC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datad => VCC,
	cin => \PC|Add0~31\,
	combout => \PC|Add0~32_combout\,
	cout => \PC|Add0~33\);

\PC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[8]~7_combout\,
	asdata => \PC|Add0~32_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(8));

\PC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[9]~6_combout\,
	asdata => \PC|Add0~34_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(9));

\IRX|C[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[1]~28_combout\ = (\AUX|data_out\(9) & (((\PC|data_out\(9)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(9) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(9)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(9),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(9),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[1]~28_combout\);

\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[1]~6_combout\ & (\inst1|Mux29~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[1]~6_combout\,
	datab => \inst1|Mux29~0_combout\,
	datac => \inst1|Add0~4_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~24_combout\);

\inst1|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~24_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(1));

\IRX|D[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[1]~49_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(1)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(1),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[1]~49_combout\);

\BusAlta|PortR[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[1]~21_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[1]~30_combout\)) # (!\inst14|inst13|BD~q\ & ((\IRX|D[1]~50_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[1]~30_combout\,
	datab => \IRX|D[1]~50_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[1]~21_combout\);

\inst6|mem_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000001595",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\BusAlta|PortR[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[1]~22_combout\ = (\BusAlta|PortR[1]~21_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a1~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[1]~21_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[1]~21_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[1]~22_combout\);

\IRX|C[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[1]~29_combout\ = (\IRX|D[1]~49_combout\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[1]~22_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~49_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \BusAlta|PortR[1]~22_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|C[1]~29_combout\);

\IRX|C[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[1]~30_combout\ = ((\IRX|C[1]~27_combout\ & (\IRX|C[1]~28_combout\ & \IRX|C[1]~29_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[1]~27_combout\,
	datab => \IRX|C[1]~28_combout\,
	datac => \IRX|C[1]~29_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[1]~30_combout\);

\AUX|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~7_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(10))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(10),
	datab => \IRX|C[1]~30_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~7_combout\);

\AUX|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~7_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(9));

\AUX|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~8_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(9))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(9),
	datab => \IRX|C[0]~34_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~8_combout\);

\AUX|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~8_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(8));

\IRX|C[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[0]~32_combout\ = (\AUX|data_out\(8) & (((\PC|data_out\(8)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(8) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(8)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(8),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(8),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[0]~32_combout\);

\inst1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[0]~7_combout\ & (\inst1|Mux27~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[0]~7_combout\,
	datab => \inst1|Mux27~0_combout\,
	datac => \inst1|Add0~2_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~25_combout\);

\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~25_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

\IRX|D[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[0]~53_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Q\(0)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[0]~53_combout\);

\BusAlta|PortR[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[0]~23_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[0]~34_combout\)) # (!\inst14|inst13|BD~q\ & ((\IRX|D[0]~54_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[0]~34_combout\,
	datab => \IRX|D[0]~54_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[0]~23_combout\);

\inst6|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000002D2",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\BusAlta|PortR[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[0]~24_combout\ = (\BusAlta|PortR[0]~23_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[0]~23_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[0]~23_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[0]~24_combout\);

\IRX|C[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[0]~33_combout\ = (\IRX|D[0]~53_combout\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[0]~24_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~53_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \BusAlta|PortR[0]~24_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|C[0]~33_combout\);

\IRX|C[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[0]~34_combout\ = ((\IRX|C[0]~31_combout\ & (\IRX|C[0]~32_combout\ & \IRX|C[0]~33_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[0]~31_combout\,
	datab => \IRX|C[0]~32_combout\,
	datac => \IRX|C[0]~33_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[0]~34_combout\);

\ACCA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[0]~7_combout\,
	asdata => \IRX|C[0]~34_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(0));

\IRX|D[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[0]~51_combout\ = (\ACCA|data_out\(0) & ((\AUX|data_out\(0)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(0) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(0)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \AUX|data_out\(0),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[0]~51_combout\);

\PC|D[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[0]~7_combout\ = (\PC|data_out\(0)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[0]~7_combout\);

\IRX|D[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[0]~52_combout\ = (\IRX|D[0]~51_combout\ & (\PC|D[0]~7_combout\ & ((\ACCB|data_out\(0)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~51_combout\,
	datab => \PC|D[0]~7_combout\,
	datac => \ACCB|data_out\(0),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[0]~52_combout\);

\IRX|D[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[0]~62_combout\ = (\IRX|D[0]~53_combout\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[0]~53_combout\,
	datad => \BusAlta|PortR[0]~24_combout\,
	combout => \IRX|D[0]~62_combout\);

\IRX|D[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[0]~54_combout\ = (\IRX|D[0]~52_combout\ & ((\IRX|D[0]~62_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\IRX|D[0]~52_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~52_combout\,
	datab => \IRX|D[0]~62_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \IRX|D[0]~54_combout\);

\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[0]~54_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

\inst14|inst4|valor_interno[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[4]~17_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (!\inst14|inst4|valor_interno[3]~16\)) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & 
-- ((\inst14|inst4|valor_interno[3]~16\) # (GND)))
-- \inst14|inst4|valor_interno[4]~18\ = CARRY((!\inst14|inst4|valor_interno[3]~16\) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[3]~16\,
	combout => \inst14|inst4|valor_interno[4]~17_combout\,
	cout => \inst14|inst4|valor_interno[4]~18\);

\inst14|inst4|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[4]~17_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(4));

\inst14|inst5|$00000|auto_generated|result_node[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst8|valor_interno\(4))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (((\inst14|inst4|valor_interno\(4) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(4),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst4|valor_interno\(4),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\);

\inst14|inst9|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	combout => \inst14|inst9|Equal14~1_combout\);

\inst14|inst9|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (\inst14|inst9|Equal14~0_combout\ & (\inst14|inst9|Equal14~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datab => \inst14|inst9|Equal14~0_combout\,
	datac => \inst14|inst9|Equal14~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal14~2_combout\);

\inst14|inst13|nAS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\) # ((!\inst14|inst9|Equal11~3_combout\)))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst9|Equal14~2_combout\ & ((!\inst14|inst9|Equal11~3_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal14~2_combout\,
	datad => \inst14|inst9|Equal11~3_combout\,
	combout => \inst14|inst13|nAS~2_combout\);

\inst14|inst13|nAS~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|nAS~4_combout\ = (\inst14|inst9|data[26]~22_combout\ & (\inst14|inst9|data[73]~26_combout\ & (\inst14|inst9|data[73]~35_combout\ & \inst14|inst13|nAS~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst9|data[73]~26_combout\,
	datac => \inst14|inst9|data[73]~35_combout\,
	datad => \inst14|inst13|nAS~2_combout\,
	combout => \inst14|inst13|nAS~4_combout\);

\inst14|inst9|data[44]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~67_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|data[44]~67_combout\);

\inst14|inst9|data[44]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~68_combout\ = (\inst14|inst13|nAS~4_combout\ & ((\inst14|inst9|data[44]~67_combout\) # ((\inst14|inst13|prueba[4]~2_combout\ & \inst14|inst9|data[44]~101_combout\)))) # (!\inst14|inst13|nAS~4_combout\ & 
-- (\inst14|inst13|prueba[4]~2_combout\ & (\inst14|inst9|data[44]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~4_combout\,
	datab => \inst14|inst13|prueba[4]~2_combout\,
	datac => \inst14|inst9|data[44]~101_combout\,
	datad => \inst14|inst9|data[44]~67_combout\,
	combout => \inst14|inst9|data[44]~68_combout\);

\inst14|inst13|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[44]~68_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|RA\(0));

\AUX|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~4_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(12))) # (!\inst14|inst13|RA\(0) & (((\IRX|C[3]~19_combout\ & \IRX|C[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(12),
	datab => \inst14|inst13|RA\(0),
	datac => \IRX|C[3]~19_combout\,
	datad => \IRX|C[3]~21_combout\,
	combout => \AUX|data_out~4_combout\);

\AUX|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~5_combout\ = (\inst14|inst13|RA\(0) & (((\AUX|data_out~4_combout\)))) # (!\inst14|inst13|RA\(0) & (((\IRX|C[3]~18_combout\ & \AUX|data_out~4_combout\)) # (!\IRX|C[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \IRX|C[3]~18_combout\,
	datac => \IRX|C[7]~4_combout\,
	datad => \AUX|data_out~4_combout\,
	combout => \AUX|data_out~5_combout\);

\AUX|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~5_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(11));

\AUX|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AUX|data_out~6_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(11))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \IRX|C[2]~26_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~6_combout\);

\AUX|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~6_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(10));

\IRX|C[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[2]~24_combout\ = (\AUX|data_out\(10) & (((\PC|data_out\(10)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(10) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(10)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(10),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(10),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[2]~24_combout\);

\inst1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~23_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[2]~5_combout\ & (\inst1|Mux30~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[2]~5_combout\,
	datab => \inst1|Mux30~0_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~23_combout\);

\inst1|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~23_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(2));

\IRX|D[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[2]~45_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(2)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(2),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[2]~45_combout\);

\BusAlta|PortR[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[2]~19_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[2]~26_combout\)) # (!\inst14|inst13|BD~q\ & ((\IRX|D[2]~46_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[2]~26_combout\,
	datab => \IRX|D[2]~46_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[2]~19_combout\);

\inst6|mem_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000747",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\BusAlta|PortR[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[2]~20_combout\ = (\BusAlta|PortR[2]~19_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a2~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[2]~19_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[2]~19_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a2~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[2]~20_combout\);

\IRX|C[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[2]~25_combout\ = (\IRX|D[2]~45_combout\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[2]~20_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~45_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \BusAlta|PortR[2]~20_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|C[2]~25_combout\);

\IRX|C[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[2]~26_combout\ = ((\IRX|C[2]~23_combout\ & (\IRX|C[2]~24_combout\ & \IRX|C[2]~25_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[2]~23_combout\,
	datab => \IRX|C[2]~24_combout\,
	datac => \IRX|C[2]~25_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[2]~26_combout\);

\ACCA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[2]~5_combout\,
	asdata => \IRX|C[2]~26_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(2));

\IRX|D[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[2]~43_combout\ = (\ACCA|data_out\(2) & ((\AUX|data_out\(2)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(2) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(2)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \AUX|data_out\(2),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[2]~43_combout\);

\PC|D[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[2]~5_combout\ = (\PC|data_out\(2)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[2]~5_combout\);

\IRX|D[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[2]~44_combout\ = (\IRX|D[2]~43_combout\ & (\PC|D[2]~5_combout\ & ((\ACCB|data_out\(2)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~43_combout\,
	datab => \PC|D[2]~5_combout\,
	datac => \ACCB|data_out\(2),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[2]~44_combout\);

\IRX|D[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[2]~60_combout\ = (\IRX|D[2]~45_combout\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[2]~45_combout\,
	datad => \BusAlta|PortR[2]~20_combout\,
	combout => \IRX|D[2]~60_combout\);

\IRX|D[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[2]~46_combout\ = (\IRX|D[2]~44_combout\ & ((\IRX|D[2]~60_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\IRX|D[2]~44_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~44_combout\,
	datab => \IRX|D[2]~60_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \IRX|D[2]~46_combout\);

\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[2]~46_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

\inst14|inst4|valor_interno[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[5]~19_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & (\inst14|inst4|valor_interno[4]~18\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & 
-- (!\inst14|inst4|valor_interno[4]~18\ & VCC))
-- \inst14|inst4|valor_interno[5]~20\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & !\inst14|inst4|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[4]~18\,
	combout => \inst14|inst4|valor_interno[5]~19_combout\,
	cout => \inst14|inst4|valor_interno[5]~20\);

\inst14|inst4|valor_interno[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[6]~21_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & (!\inst14|inst4|valor_interno[5]~20\)) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & 
-- ((\inst14|inst4|valor_interno[5]~20\) # (GND)))
-- \inst14|inst4|valor_interno[6]~22\ = CARRY((!\inst14|inst4|valor_interno[5]~20\) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[5]~20\,
	combout => \inst14|inst4|valor_interno[6]~21_combout\,
	cout => \inst14|inst4|valor_interno[6]~22\);

\inst14|inst4|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[6]~21_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(6));

\inst14|inst5|$00000|auto_generated|result_node[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst8|valor_interno\(6))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (((\inst14|inst4|valor_interno\(6) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(6),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst4|valor_interno\(6),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\);

\inst14|inst9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	combout => \inst14|inst9|Equal0~2_combout\);

\inst14|inst9|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal0~3_combout\);

\inst14|inst9|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~4_combout\ = (\inst14|inst9|Equal0~2_combout\ & (\inst14|inst9|Equal0~3_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~2_combout\,
	datab => \inst14|inst9|Equal0~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	combout => \inst14|inst9|Equal0~4_combout\);

\inst14|inst9|data[73]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~27_combout\ = ((!\inst14|inst9|Equal3~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\) # (!\inst14|inst9|Equal0~4_combout\)))) # (!\inst14|inst9|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datab => \inst14|inst9|Equal0~4_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst9|Equal2~0_combout\,
	combout => \inst14|inst9|data[73]~27_combout\);

\inst14|inst9|data[76]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[76]~90_combout\ = (\inst14|inst9|data[26]~22_combout\ & (\inst14|inst9|Equal11~4_combout\ & (\inst14|inst9|data[73]~27_combout\ & \inst14|inst9|data[73]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst9|Equal11~4_combout\,
	datac => \inst14|inst9|data[73]~27_combout\,
	datad => \inst14|inst9|data[73]~99_combout\,
	combout => \inst14|inst9|data[76]~90_combout\);

\inst14|inst13|EB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[76]~90_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EB\(1));

\ACCB|C[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|C[7]~0_combout\ = (\ACCB|data_out\(7)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[7]~0_combout\);

\ACCB|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[7]~0_combout\ = (\inst14|inst13|EB\(1) & ((\ACCB|C[7]~0_combout\))) # (!\inst14|inst13|EB\(1) & (\IRX|D[7]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~30_combout\,
	datab => \ACCB|C[7]~0_combout\,
	datad => \inst14|inst13|EB\(1),
	combout => \ACCB|data_out[7]~0_combout\);

\ACCB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[7]~0_combout\,
	asdata => \IRX|C[7]~5_combout\,
	sload => \inst14|inst13|ALT_INV_EB\(0),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(7));

\IRX|C[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[7]~0_combout\ = (\ACCA|data_out\(7) & (((\ACCB|data_out\(7)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(7) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(7)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(7),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[7]~0_combout\);

\PC|data_out[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[15]~0_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[7]~5_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(15),
	datab => \IRX|C[7]~5_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[15]~0_combout\);

\PC|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~46_combout\ = \PC|data_out\(15) $ (\PC|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(15),
	cin => \PC|Add0~45\,
	combout => \PC|Add0~46_combout\);

\PC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[15]~0_combout\,
	asdata => \PC|Add0~46_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(15));

\IRX|C[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[7]~1_combout\ = (\AUX|data_out\(15) & (((\PC|data_out\(15)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(15) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(15)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(15),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[7]~1_combout\);

\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst14|inst13|UPA\(6) & (\ACCA|C[7]~0_combout\ & (\inst1|Mux35~0_combout\))) # (!\inst14|inst13|UPA\(6) & (((\inst1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datab => \inst1|Mux35~0_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst14|inst13|UPA\(6),
	combout => \inst1|Add0~18_combout\);

\inst1|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~18_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(2));

\IRX|D[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~27_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Banderas\(2)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(2),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[7]~27_combout\);

\BusAlta|PortR[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[7]~9_combout\ = ((\inst14|inst13|BD~q\ & (\IRX|C[7]~5_combout\)) # (!\inst14|inst13|BD~q\ & ((\IRX|D[7]~30_combout\)))) # (!\inst14|inst13|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[7]~5_combout\,
	datab => \IRX|D[7]~30_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nRW~q\,
	combout => \BusAlta|PortR[7]~9_combout\);

\inst6|mem_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000125",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_5va1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst6|MEM_WRITE~0_combout\,
	portare => VCC,
	clk0 => \ALT_INV_CLK~input_o\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\BusAlta|PortR[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR[7]~10_combout\ = (\BusAlta|PortR[7]~9_combout\ & ((\inst6|mem_rtl_0|auto_generated|ram_block1a7~portadataout\) # ((!\inst6|data[7]~en_q\)))) # (!\BusAlta|PortR[7]~9_combout\ & (((!\inst14|inst13|nRW~q\ & !\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusAlta|PortR[7]~9_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datac => \inst14|inst13|nRW~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \BusAlta|PortR[7]~10_combout\);

\IRX|C[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[7]~2_combout\ = (\IRX|D[7]~27_combout\ & ((\inst14|inst13|nRW~q\) # ((\BusAlta|PortR[7]~10_combout\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~27_combout\,
	datab => \inst14|inst13|nRW~q\,
	datac => \BusAlta|PortR[7]~10_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|C[7]~2_combout\);

\IRX|C[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|C[7]~5_combout\ = ((\IRX|C[7]~0_combout\ & (\IRX|C[7]~1_combout\ & \IRX|C[7]~2_combout\))) # (!\IRX|C[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[7]~0_combout\,
	datab => \IRX|C[7]~1_combout\,
	datac => \IRX|C[7]~2_combout\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[7]~5_combout\);

\ACCA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[7]~0_combout\,
	asdata => \IRX|C[7]~5_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(7));

\IRX|D[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~25_combout\ = (\ACCA|data_out\(7) & ((\AUX|data_out\(7)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(7) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(7)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \AUX|data_out\(7),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[7]~25_combout\);

\PC|D[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[7]~0_combout\ = (\PC|data_out\(7)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[7]~0_combout\);

\IRX|D[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~26_combout\ = (\IRX|D[7]~25_combout\ & (\PC|D[7]~0_combout\ & ((\ACCB|data_out\(7)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~25_combout\,
	datab => \PC|D[7]~0_combout\,
	datac => \ACCB|data_out\(7),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[7]~26_combout\);

\IRX|D[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~55_combout\ = (\IRX|D[7]~27_combout\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[7]~27_combout\,
	datad => \BusAlta|PortR[7]~10_combout\,
	combout => \IRX|D[7]~55_combout\);

\IRX|D[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[7]~30_combout\ = (\IRX|D[7]~26_combout\ & ((\IRX|D[7]~55_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\IRX|D[7]~26_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~26_combout\,
	datab => \IRX|D[7]~55_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \IRX|D[7]~30_combout\);

\inst8|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[7]~30_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(11));

\inst14|inst4|valor_interno[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[7]~23_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (\inst14|inst4|valor_interno[6]~22\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & 
-- (!\inst14|inst4|valor_interno[6]~22\ & VCC))
-- \inst14|inst4|valor_interno[7]~24\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & !\inst14|inst4|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[6]~22\,
	combout => \inst14|inst4|valor_interno[7]~23_combout\,
	cout => \inst14|inst4|valor_interno[7]~24\);

\inst14|inst4|valor_interno[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[8]~25_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (!\inst14|inst4|valor_interno[7]~24\)) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & 
-- ((\inst14|inst4|valor_interno[7]~24\) # (GND)))
-- \inst14|inst4|valor_interno[8]~26\ = CARRY((!\inst14|inst4|valor_interno[7]~24\) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[7]~24\,
	combout => \inst14|inst4|valor_interno[8]~25_combout\,
	cout => \inst14|inst4|valor_interno[8]~26\);

\inst14|inst4|valor_interno[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[9]~27_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst4|valor_interno[8]~26\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & 
-- (!\inst14|inst4|valor_interno[8]~26\ & VCC))
-- \inst14|inst4|valor_interno[9]~28\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & !\inst14|inst4|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[8]~26\,
	combout => \inst14|inst4|valor_interno[9]~27_combout\,
	cout => \inst14|inst4|valor_interno[9]~28\);

\inst14|inst4|valor_interno[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[10]~29_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (!\inst14|inst4|valor_interno[9]~28\)) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & 
-- ((\inst14|inst4|valor_interno[9]~28\) # (GND)))
-- \inst14|inst4|valor_interno[10]~30\ = CARRY((!\inst14|inst4|valor_interno[9]~28\) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[9]~28\,
	combout => \inst14|inst4|valor_interno[10]~29_combout\,
	cout => \inst14|inst4|valor_interno[10]~30\);

\inst14|inst4|valor_interno[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[11]~31_combout\ = \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ $ (!\inst14|inst4|valor_interno[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	cin => \inst14|inst4|valor_interno[10]~30\,
	combout => \inst14|inst4|valor_interno[11]~31_combout\);

\inst14|inst4|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[11]~31_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(11));

\inst14|inst5|$00000|auto_generated|result_node[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst8|valor_interno\(11))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (((\inst14|inst4|valor_interno\(11) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(11),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst4|valor_interno\(11),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\);

\inst14|inst9|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	combout => \inst14|inst9|Equal3~0_combout\);

\inst14|inst9|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ & (\inst14|inst9|Equal3~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	datab => \inst14|inst9|Equal3~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	combout => \inst14|inst9|Equal3~1_combout\);

\inst14|inst9|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~2_combout\ = (\inst14|inst9|Equal3~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal3~2_combout\);

\inst14|inst9|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~0_combout\ = (\inst14|inst9|Equal1~0_combout\ & \inst14|inst9|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|Equal4~0_combout\);

\inst14|inst9|data[72]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~78_combout\ = (\inst14|inst9|Equal4~0_combout\) # ((\inst14|inst9|Equal11~4_combout\) # ((\inst14|inst9|Equal12~0_combout\) # (!\inst14|inst9|data[46]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal4~0_combout\,
	datab => \inst14|inst9|Equal11~4_combout\,
	datac => \inst14|inst9|Equal12~0_combout\,
	datad => \inst14|inst9|data[46]~36_combout\,
	combout => \inst14|inst9|data[72]~78_combout\);

\inst14|inst9|data[72]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~56_combout\ = ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & ((!\inst14|inst9|Equal3~2_combout\))) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst9|Equal11~3_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst9|Equal11~3_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	combout => \inst14|inst9|data[72]~56_combout\);

\inst14|inst9|data[90]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~57_combout\ = (\inst14|inst9|data[46]~31_combout\ & (\inst14|inst9|data[72]~56_combout\ & !\inst14|inst9|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[46]~31_combout\,
	datab => \inst14|inst9|data[72]~56_combout\,
	datad => \inst14|inst9|Equal10~0_combout\,
	combout => \inst14|inst9|data[90]~57_combout\);

\inst14|inst9|data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~44_combout\ = (\inst14|inst13|nAS~3_combout\ & (\inst14|inst13|nAS~5_combout\ & (!\inst14|inst9|Equal32~0_combout\ & !\inst14|inst9|Equal33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nAS~3_combout\,
	datab => \inst14|inst13|nAS~5_combout\,
	datac => \inst14|inst9|Equal32~0_combout\,
	datad => \inst14|inst9|Equal33~0_combout\,
	combout => \inst14|inst9|data~44_combout\);

\inst14|inst9|data[72]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~51_combout\ = (\inst14|inst9|Equal7~0_combout\ & (!\inst14|inst9|Equal1~0_combout\ & ((!\inst14|inst9|Equal0~6_combout\)))) # (!\inst14|inst9|Equal7~0_combout\ & (((!\inst14|inst9|Equal0~6_combout\) # 
-- (!\inst14|inst9|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal3~2_combout\,
	datac => \inst14|inst9|Equal7~0_combout\,
	datad => \inst14|inst9|Equal0~6_combout\,
	combout => \inst14|inst9|data[72]~51_combout\);

\inst14|inst9|data[72]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~52_combout\ = (!\inst14|inst9|Equal14~2_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)) # (!\inst14|inst9|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal0~5_combout\,
	datad => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|data[72]~52_combout\);

\inst14|inst9|data[72]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~53_combout\ = (\inst14|inst9|data~44_combout\ & (\inst14|inst9|data[72]~51_combout\ & \inst14|inst9|data[72]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~44_combout\,
	datab => \inst14|inst9|data[72]~51_combout\,
	datac => \inst14|inst9|data[72]~52_combout\,
	combout => \inst14|inst9|data[72]~53_combout\);

\inst14|inst9|data[72]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~79_combout\ = (\inst14|inst9|Equal34~0_combout\ & (((!\inst14|inst9|Equal7~0_combout\ & !\inst14|inst9|Equal3~2_combout\)) # (!\inst14|inst9|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal34~0_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst9|Equal2~0_combout\,
	combout => \inst14|inst9|data[72]~79_combout\);

\inst14|inst9|data[72]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~80_combout\ = (\inst14|inst9|data[72]~78_combout\) # ((\inst14|inst9|data[90]~57_combout\ & (\inst14|inst9|data[72]~53_combout\ & \inst14|inst9|data[72]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~78_combout\,
	datab => \inst14|inst9|data[90]~57_combout\,
	datac => \inst14|inst9|data[72]~53_combout\,
	datad => \inst14|inst9|data[72]~79_combout\,
	combout => \inst14|inst9|data[72]~80_combout\);

\inst14|inst13|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[72]~80_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(0));

\ACCA|C[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[1]~6_combout\ = (\ACCA|data_out\(1)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[1]~6_combout\);

\ACCA|data_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[1]~6_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[1]~6_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[1]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~50_combout\,
	datab => \ACCA|C[1]~6_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[1]~6_combout\);

\ACCA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[1]~6_combout\,
	asdata => \IRX|C[1]~30_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(1));

\IRX|D[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[1]~47_combout\ = (\ACCA|data_out\(1) & ((\AUX|data_out\(1)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(1) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(1)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \AUX|data_out\(1),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[1]~47_combout\);

\PC|D[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[1]~6_combout\ = (\PC|data_out\(1)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(1),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[1]~6_combout\);

\IRX|D[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[1]~48_combout\ = (\IRX|D[1]~47_combout\ & (\PC|D[1]~6_combout\ & ((\ACCB|data_out\(1)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~47_combout\,
	datab => \PC|D[1]~6_combout\,
	datac => \ACCB|data_out\(1),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[1]~48_combout\);

\IRX|D[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[1]~61_combout\ = (\IRX|D[1]~49_combout\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[1]~49_combout\,
	datad => \BusAlta|PortR[1]~22_combout\,
	combout => \IRX|D[1]~61_combout\);

\IRX|D[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[1]~50_combout\ = (\IRX|D[1]~48_combout\ & ((\IRX|D[1]~61_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\IRX|D[1]~48_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~48_combout\,
	datab => \IRX|D[1]~61_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \IRX|D[1]~50_combout\);

\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[1]~50_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

\inst14|inst4|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[5]~19_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(5));

\inst14|inst5|$00000|auto_generated|result_node[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst8|valor_interno\(5))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (((\inst14|inst4|valor_interno\(5) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(5),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst4|valor_interno\(5),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\);

\inst14|inst9|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	combout => \inst14|inst9|Equal14~0_combout\);

\inst14|inst9|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal11~2_combout\);

\inst14|inst9|Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~3_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (\inst14|inst9|Equal14~0_combout\ & (\inst14|inst9|Equal11~2_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datab => \inst14|inst9|Equal14~0_combout\,
	datac => \inst14|inst9|Equal11~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	combout => \inst14|inst9|Equal11~3_combout\);

\inst14|inst9|data[73]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~102_combout\ = (\inst14|inst9|data[73]~82_combout\) # ((!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal11~3_combout\,
	datad => \inst14|inst9|data[73]~82_combout\,
	combout => \inst14|inst9|data[73]~102_combout\);

\inst14|inst13|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[73]~102_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(1));

\ACCA|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[4]~3_combout\ = (\ACCA|data_out\(4)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[4]~3_combout\);

\ACCA|data_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[4]~3_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[4]~3_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[4]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~42_combout\,
	datab => \ACCA|C[4]~3_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[4]~3_combout\);

\ACCA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[4]~3_combout\,
	asdata => \IRX|C[4]~17_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(4));

\IRX|D[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[4]~39_combout\ = (\ACCA|data_out\(4) & ((\AUX|data_out\(4)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(4) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(4)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \AUX|data_out\(4),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[4]~39_combout\);

\PC|D[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[4]~3_combout\ = (\PC|data_out\(4)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(4),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[4]~3_combout\);

\IRX|D[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[4]~40_combout\ = (\IRX|D[4]~39_combout\ & (\PC|D[4]~3_combout\ & ((\ACCB|data_out\(4)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~39_combout\,
	datab => \PC|D[4]~3_combout\,
	datac => \ACCB|data_out\(4),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[4]~40_combout\);

\IRX|D[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[4]~59_combout\ = (\IRX|D[4]~41_combout\ & ((\inst14|inst13|nRW~q\) # ((\inst14|inst13|BD~q\) # (\BusAlta|PortR[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nRW~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[4]~41_combout\,
	datad => \BusAlta|PortR[4]~16_combout\,
	combout => \IRX|D[4]~59_combout\);

\IRX|D[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \IRX|D[4]~42_combout\ = (\IRX|D[4]~40_combout\ & ((\IRX|D[4]~59_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\IRX|D[4]~40_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~40_combout\,
	datab => \IRX|D[4]~59_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \IRX|D[4]~42_combout\);

\inst8|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[4]~42_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(8));

\inst14|inst4|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[8]~25_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(8));

\inst14|inst5|$00000|auto_generated|result_node[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst8|valor_interno\(8))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (((\inst14|inst4|valor_interno\(8) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(8),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst4|valor_interno\(8),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\);

\inst14|inst9|Equal26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal26~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	combout => \inst14|inst9|Equal26~2_combout\);

\inst14|inst9|Equal34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal34~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (\inst14|inst9|Equal26~2_combout\ & (\inst14|inst9|Equal3~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datab => \inst14|inst9|Equal26~2_combout\,
	datac => \inst14|inst9|Equal3~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	combout => \inst14|inst9|Equal34~0_combout\);

\inst14|inst9|data[71]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~84_combout\ = (\inst14|inst9|Equal4~0_combout\) # ((\inst14|inst9|data[71]~83_combout\) # ((\inst14|inst9|Equal34~0_combout\ & \inst14|inst13|nAS~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal34~0_combout\,
	datab => \inst14|inst13|nAS~9_combout\,
	datac => \inst14|inst9|Equal4~0_combout\,
	datad => \inst14|inst9|data[71]~83_combout\,
	combout => \inst14|inst9|data[71]~84_combout\);

\inst14|inst13|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[71]~84_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWA~q\);

\ACCA|C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|C[3]~4_combout\ = (\ACCA|data_out\(3)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[3]~4_combout\);

\ACCA|data_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCA|data_out[3]~4_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[3]~4_combout\))) # (!\inst14|inst13|EA\(1) & (\inst1|Yupa[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~4_combout\,
	datab => \ACCA|C[3]~4_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[3]~4_combout\);

\ACCA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[3]~4_combout\,
	asdata => \IRX|C[3]~22_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(3));

\inst1|Yupa[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~1_combout\ = (\ACCA|data_out\(3) & ((\AUX|data_out\(3)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(3) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(3)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \AUX|data_out\(3),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[3]~1_combout\);

\PC|D[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|D[3]~4_combout\ = (\PC|data_out\(3)) # ((\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(3),
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|D[3]~4_combout\);

\inst1|Yupa[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~2_combout\ = (\inst1|Yupa[3]~1_combout\ & (\PC|D[3]~4_combout\ & ((\ACCB|data_out\(3)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~1_combout\,
	datab => \PC|D[3]~4_combout\,
	datac => \ACCB|data_out\(3),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[3]~2_combout\);

\BusAlta|PortR~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BusAlta|PortR~8_combout\ = (!\inst14|inst13|nRW~q\ & !\inst14|inst13|BD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|nRW~q\,
	datad => \inst14|inst13|BD~q\,
	combout => \BusAlta|PortR~8_combout\);

\inst1|Yupa[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~3_combout\ = (\inst1|Yupa_interno\(3) & ((\BusAlta|PortR[3]~18_combout\) # ((!\BusAlta|PortR~8_combout\)))) # (!\inst1|Yupa_interno\(3) & (!\inst14|inst13|nDUPA~q\ & ((\BusAlta|PortR[3]~18_combout\) # (!\BusAlta|PortR~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(3),
	datab => \BusAlta|PortR[3]~18_combout\,
	datac => \BusAlta|PortR~8_combout\,
	datad => \inst14|inst13|nDUPA~q\,
	combout => \inst1|Yupa[3]~3_combout\);

\inst1|Yupa[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~4_combout\ = (\inst1|Yupa[3]~2_combout\ & ((\inst1|Yupa[3]~3_combout\) # ((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\)))) # (!\inst1|Yupa[3]~2_combout\ & (((!\IRX|D[7]~29_combout\ & !\IRX|D[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~2_combout\,
	datab => \inst1|Yupa[3]~3_combout\,
	datac => \IRX|D[7]~29_combout\,
	datad => \IRX|D[7]~56_combout\,
	combout => \inst1|Yupa[3]~4_combout\);

\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \inst1|Yupa[3]~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

\inst14|inst4|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[7]~23_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(7));

\inst14|inst5|$00000|auto_generated|result_node[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst8|valor_interno\(7))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (((\inst14|inst4|valor_interno\(7) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(7),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst4|valor_interno\(7),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\);

\inst14|inst9|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal19~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (\inst14|inst9|Equal26~2_combout\ & (\inst14|inst9|Equal14~0_combout\ & \inst14|inst9|Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datab => \inst14|inst9|Equal26~2_combout\,
	datac => \inst14|inst9|Equal14~0_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|Equal19~0_combout\);

\inst14|inst9|data[90]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~54_combout\ = (\inst14|inst9|data[46]~36_combout\ & (\inst14|inst9|Equal36~0_combout\ & ((!\inst14|inst9|Equal33~1_combout\) # (!\inst14|inst9|Equal26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[46]~36_combout\,
	datab => \inst14|inst9|Equal36~0_combout\,
	datac => \inst14|inst9|Equal26~2_combout\,
	datad => \inst14|inst9|Equal33~1_combout\,
	combout => \inst14|inst9|data[90]~54_combout\);

\inst14|inst9|data[97]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~60_combout\ = (\inst14|inst9|data~44_combout\ & (\inst14|inst9|data[90]~54_combout\ & (!\inst14|inst9|Equal27~0_combout\ & !\inst14|inst9|Equal35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~44_combout\,
	datab => \inst14|inst9|data[90]~54_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	datad => \inst14|inst9|Equal35~1_combout\,
	combout => \inst14|inst9|data[97]~60_combout\);

\inst14|inst9|data[97]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~61_combout\ = (\inst14|inst9|data[97]~60_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal28~1_combout\ & \inst14|inst9|Equal35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst9|Equal28~1_combout\,
	datac => \inst14|inst9|Equal35~0_combout\,
	datad => \inst14|inst9|data[97]~60_combout\,
	combout => \inst14|inst9|data[97]~61_combout\);

\inst14|inst9|data[97]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~62_combout\ = (\inst14|inst9|data[72]~56_combout\ & (!\inst14|inst9|Equal10~0_combout\ & ((!\inst14|inst9|data[97]~61_combout\) # (!\inst14|inst13|prueba[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~56_combout\,
	datab => \inst14|inst9|Equal10~0_combout\,
	datac => \inst14|inst13|prueba[4]~2_combout\,
	datad => \inst14|inst9|data[97]~61_combout\,
	combout => \inst14|inst9|data[97]~62_combout\);

\inst14|inst9|data[78]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[78]~69_combout\ = ((\inst14|inst9|Equal19~0_combout\ & (\inst14|inst13|prueba[4]~1_combout\ & !\inst14|inst13|prueba[4]~2_combout\))) # (!\inst14|inst9|data[97]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal19~0_combout\,
	datab => \inst14|inst13|prueba[4]~1_combout\,
	datac => \inst14|inst13|prueba[4]~2_combout\,
	datad => \inst14|inst9|data[97]~62_combout\,
	combout => \inst14|inst9|data[78]~69_combout\);

\inst14|inst13|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[78]~69_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(0));

\inst14|inst5|$00000|auto_generated|result_node[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\ = (\inst14|inst13|instruccion\(0) & (\inst14|inst13|liga\(0) & !\inst14|inst13|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst13|liga\(0),
	datad => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\);

\inst14|inst4|valor_interno[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[0]~33_combout\ = !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst4|valor_interno[0]~33_combout\);

\inst14|inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[0]~33_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(0));

\inst14|inst5|$00000|auto_generated|result_node[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\)) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & ((\inst14|inst3|SELECTOR~4_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\)) # (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst4|valor_interno\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\,
	datab => \inst14|inst4|valor_interno\(0),
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\);

\inst14|inst9|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal1~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\) # ((\inst14|inst3|SELECTOR~4_combout\) # (!\inst14|inst4|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst14|inst4|valor_interno\(1),
	combout => \inst14|inst9|Equal1~0_combout\);

\inst14|inst9|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal1~1_combout\ = (\inst14|inst9|Equal1~0_combout\ & (\inst14|inst9|Equal0~4_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst9|Equal0~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	combout => \inst14|inst9|Equal1~1_combout\);

\inst14|inst13|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal1~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCRI~q\);

\inst8|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[6]~34_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(10));

\inst14|inst4|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[10]~29_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(10));

\inst14|inst5|$00000|auto_generated|result_node[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst8|valor_interno\(10))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (((\inst14|inst4|valor_interno\(10) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(10),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst4|valor_interno\(10),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\);

\inst14|inst9|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal7~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (\inst14|inst9|Equal3~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datab => \inst14|inst9|Equal3~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal7~0_combout\);

\inst14|inst9|data[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~22_combout\ = ((!\inst14|inst9|Equal7~0_combout\ & (!\inst14|inst9|Equal0~5_combout\ & !\inst14|inst9|Equal3~2_combout\))) # (!\inst14|inst9|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal7~0_combout\,
	datab => \inst14|inst9|Equal0~5_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst9|Equal1~0_combout\,
	combout => \inst14|inst9|data[26]~22_combout\);

\inst14|inst9|data[73]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~59_combout\ = (\inst14|inst9|data[26]~22_combout\ & \inst14|inst9|data[73]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst9|data[73]~26_combout\,
	combout => \inst14|inst9|data[73]~59_combout\);

\inst14|inst13|prueba[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[4]~1_combout\ = (\inst14|inst9|data[73]~59_combout\ & (\inst14|inst9|data[73]~35_combout\ & (\inst14|inst13|nAS~2_combout\ & \inst14|inst9|data[32]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~59_combout\,
	datab => \inst14|inst9|data[73]~35_combout\,
	datac => \inst14|inst13|nAS~2_combout\,
	datad => \inst14|inst9|data[32]~37_combout\,
	combout => \inst14|inst13|prueba[4]~1_combout\);

\inst14|inst9|data[97]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~63_combout\ = ((\inst14|inst13|prueba[4]~1_combout\ & !\inst14|inst13|prueba[4]~2_combout\)) # (!\inst14|inst9|data[97]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba[4]~1_combout\,
	datac => \inst14|inst13|prueba[4]~2_combout\,
	datad => \inst14|inst9|data[97]~62_combout\,
	combout => \inst14|inst9|data[97]~63_combout\);

\inst14|inst13|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[97]~63_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(4));

\inst14|inst3|SELECTOR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~2_combout\ = (\inst14|inst13|prueba\(0) & (!\inst14|inst13|prueba\(4) & ((\inst3|IRQ_flag~q\) # (\inst3|XIRQ_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \inst3|IRQ_flag~q\,
	datac => \inst3|XIRQ_flag~q\,
	datad => \inst14|inst13|prueba\(4),
	combout => \inst14|inst3|SELECTOR~2_combout\);

\inst14|inst3|SELECTOR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~3_combout\ = (\inst14|inst13|prueba\(4)) # ((!\AUX|data_out\(15) & (!\inst14|inst13|RA\(2) & !\inst14|inst13|RA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(4),
	datab => \AUX|data_out\(15),
	datac => \inst14|inst13|RA\(2),
	datad => \inst14|inst13|RA\(0),
	combout => \inst14|inst3|SELECTOR~3_combout\);

\inst14|inst3|SELECTOR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~4_combout\ = (\inst14|inst13|instruccion\(0) & ((\inst14|inst3|SELECTOR~2_combout\) # ((\inst14|inst3|SELECTOR~3_combout\ & !\inst14|inst13|prueba\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst3|SELECTOR~2_combout\,
	datac => \inst14|inst3|SELECTOR~3_combout\,
	datad => \inst14|inst13|prueba\(0),
	combout => \inst14|inst3|SELECTOR~4_combout\);

\inst14|inst3|SELECTOR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~5_combout\ = (\inst14|inst3|SELECTOR~4_combout\) # ((\inst14|inst13|instruccion\(1) & !\inst14|inst13|instruccion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst3|SELECTOR~5_combout\);

\inst14|inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[2]~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(2));

\inst14|inst5|$00000|auto_generated|result_node[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ = (\inst14|inst4|valor_interno\(2) & (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst4|valor_interno\(2),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\);

\inst14|inst9|Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal35~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst4|valor_interno\(1) & (\inst14|inst9|Equal33~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst4|valor_interno\(1),
	datac => \inst14|inst9|Equal33~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal35~1_combout\);

\inst14|inst9|data[90]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~55_combout\ = (\inst14|inst9|data[72]~53_combout\ & (\inst14|inst9|data[90]~54_combout\ & (!\inst14|inst9|Equal4~0_combout\ & !\inst14|inst9|Equal11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~53_combout\,
	datab => \inst14|inst9|data[90]~54_combout\,
	datac => \inst14|inst9|Equal4~0_combout\,
	datad => \inst14|inst9|Equal11~4_combout\,
	combout => \inst14|inst9|data[90]~55_combout\);

\inst14|inst9|data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~40_combout\ = (!\inst14|inst9|Equal12~0_combout\ & (((!\inst14|inst9|Equal7~0_combout\ & !\inst14|inst9|Equal3~2_combout\)) # (!\inst14|inst9|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal7~0_combout\,
	datab => \inst14|inst9|Equal3~2_combout\,
	datac => \inst14|inst9|Equal2~0_combout\,
	datad => \inst14|inst9|Equal12~0_combout\,
	combout => \inst14|inst9|data~40_combout\);

\inst14|inst9|data[90]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~58_combout\ = (\inst14|inst9|Equal35~1_combout\) # ((\inst14|inst9|data[90]~55_combout\) # ((!\inst14|inst9|data[90]~57_combout\) # (!\inst14|inst9|data~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal35~1_combout\,
	datab => \inst14|inst9|data[90]~55_combout\,
	datac => \inst14|inst9|data~40_combout\,
	datad => \inst14|inst9|data[90]~57_combout\,
	combout => \inst14|inst9|data[90]~58_combout\);

\inst14|inst13|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[90]~58_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(0));

\inst14|inst5|$00000|auto_generated|result_node[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ = (\inst14|inst4|valor_interno\(1) & (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst4|valor_interno\(1),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\);

\inst14|inst9|data[91]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~39_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\) # (((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)) # 
-- (!\inst14|inst9|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal0~4_combout\,
	combout => \inst14|inst9|data[91]~39_combout\);

\inst14|inst9|data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~41_combout\ = (\inst14|inst9|Equal18~1_combout\) # (!\inst14|inst9|data~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal18~1_combout\,
	datad => \inst14|inst9|data~40_combout\,
	combout => \inst14|inst9|data~41_combout\);

\inst14|inst9|data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~42_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (((!\inst14|inst9|Equal3~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst9|Equal7~0_combout\ & ((!\inst14|inst9|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|data~42_combout\);

\inst14|inst9|data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~43_combout\ = (\inst14|inst9|Equal6~0_combout\ & (!\inst14|inst9|Equal7~0_combout\ & ((!\inst14|inst9|Equal11~3_combout\) # (!\inst14|inst9|Equal0~6_combout\)))) # (!\inst14|inst9|Equal6~0_combout\ & 
-- (((!\inst14|inst9|Equal11~3_combout\) # (!\inst14|inst9|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal6~0_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	datac => \inst14|inst9|Equal0~6_combout\,
	datad => \inst14|inst9|Equal11~3_combout\,
	combout => \inst14|inst9|data~43_combout\);

\inst14|inst9|data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~45_combout\ = (\inst14|inst9|data[46]~36_combout\ & (\inst14|inst9|Equal35~1_combout\ & ((!\inst14|inst9|Equal33~1_combout\) # (!\inst14|inst9|Equal26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[46]~36_combout\,
	datab => \inst14|inst9|Equal35~1_combout\,
	datac => \inst14|inst9|Equal26~2_combout\,
	datad => \inst14|inst9|Equal33~1_combout\,
	combout => \inst14|inst9|data~45_combout\);

\inst14|inst9|data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~46_combout\ = (\inst14|inst9|data[37]~30_combout\ & (\inst14|inst9|data~44_combout\ & (\inst14|inst9|data~45_combout\ & !\inst14|inst9|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[37]~30_combout\,
	datab => \inst14|inst9|data~44_combout\,
	datac => \inst14|inst9|data~45_combout\,
	datad => \inst14|inst9|Equal20~0_combout\,
	combout => \inst14|inst9|data~46_combout\);

\inst14|inst9|data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~47_combout\ = (\inst14|inst9|data~42_combout\ & (\inst14|inst9|data~43_combout\ & ((\inst14|inst9|Equal27~0_combout\) # (\inst14|inst9|data~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~42_combout\,
	datab => \inst14|inst9|data~43_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	datad => \inst14|inst9|data~46_combout\,
	combout => \inst14|inst9|data~47_combout\);

\inst14|inst9|data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~48_combout\ = (!\inst14|inst9|Equal14~2_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # ((!\inst14|inst9|Equal11~3_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal11~3_combout\,
	datad => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|data~48_combout\);

\inst14|inst9|data[91]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~49_combout\ = (\inst14|inst9|data[91]~39_combout\ & ((\inst14|inst9|data~41_combout\) # ((\inst14|inst9|data~47_combout\ & \inst14|inst9|data~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[91]~39_combout\,
	datab => \inst14|inst9|data~41_combout\,
	datac => \inst14|inst9|data~47_combout\,
	datad => \inst14|inst9|data~48_combout\,
	combout => \inst14|inst9|data[91]~49_combout\);

\inst14|inst9|data[91]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~50_combout\ = (\inst14|inst9|data[91]~49_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst9|Equal0~5_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[91]~49_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal0~5_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|data[91]~50_combout\);

\inst14|inst13|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[91]~50_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(1));

\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[5]~38_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

\inst14|inst5|$00000|auto_generated|result_node[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ = (\inst3|XIRQ_flag~q\ & !\inst3|IRQ_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|XIRQ_flag~q\,
	datab => \inst3|IRQ_flag~q\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\);

\inst14|inst5|$00000|auto_generated|result_node[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\ = (\inst14|inst13|instruccion\(1) & ((\inst14|inst13|instruccion\(0) & ((\inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\))) # (!\inst14|inst13|instruccion\(0) & 
-- (\inst8|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datab => \inst8|valor_interno\(9),
	datac => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\);

\inst14|inst4|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[9]~27_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(9));

\inst14|inst5|$00000|auto_generated|result_node[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\)) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & ((\inst14|inst3|SELECTOR~4_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\)) # (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst4|valor_interno\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\,
	datab => \inst14|inst4|valor_interno\(9),
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\);

\inst14|inst9|data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~75_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\) # (((!\inst14|inst9|Equal1~0_combout\ & !\inst14|inst9|Equal2~0_combout\)) # (!\inst14|inst9|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal2~0_combout\,
	datad => \inst14|inst9|Equal0~4_combout\,
	combout => \inst14|inst9|data~75_combout\);

\inst14|inst9|data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~76_combout\ = ((\inst14|inst9|data~75_combout\ & \inst14|inst9|data~47_combout\)) # (!\inst14|inst9|data~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~75_combout\,
	datab => \inst14|inst9|data~47_combout\,
	datad => \inst14|inst9|data~40_combout\,
	combout => \inst14|inst9|data~76_combout\);

\inst14|inst13|CZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data~76_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CZ~q\);

\inst14|inst9|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal9~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|Equal9~2_combout\);

\inst14|inst9|data[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~71_combout\ = (\inst14|inst9|data[26]~22_combout\ & (\inst14|inst9|Equal9~2_combout\ & \inst14|inst9|data[73]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst9|Equal9~2_combout\,
	datac => \inst14|inst9|data[73]~70_combout\,
	combout => \inst14|inst9|data[14]~71_combout\);

\inst14|inst13|B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[14]~71_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B4~q\);

\inst1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|Add0~20_combout\) # (\inst1|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~20_combout\,
	datab => \inst1|Add0~21_combout\,
	combout => \inst1|WideOr0~0_combout\);

\inst1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~1_combout\ = (\inst1|Add0~22_combout\) # ((\inst1|Add0~23_combout\) # ((\inst1|Add0~24_combout\) # (\inst1|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|Add0~23_combout\,
	datac => \inst1|Add0~24_combout\,
	datad => \inst1|Add0~25_combout\,
	combout => \inst1|WideOr0~1_combout\);

\inst1|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~combout\ = (!\inst1|Add0~18_combout\ & (!\inst1|Add0~19_combout\ & (!\inst1|WideOr0~0_combout\ & !\inst1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datab => \inst1|Add0~19_combout\,
	datac => \inst1|WideOr0~0_combout\,
	datad => \inst1|WideOr0~1_combout\,
	combout => \inst1|WideOr0~combout\);

\inst1|Banderas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|WideOr0~combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(0));

\inst14|inst9|data[13]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[13]~72_combout\ = (\inst14|inst9|Equal2~0_combout\ & (\inst14|inst9|Equal3~2_combout\ & ((!\inst14|inst9|Equal0~5_combout\) # (!\inst14|inst9|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~0_combout\,
	datab => \inst14|inst9|Equal3~2_combout\,
	datac => \inst14|inst9|Equal0~6_combout\,
	datad => \inst14|inst9|Equal0~5_combout\,
	combout => \inst14|inst9|data[13]~72_combout\);

\inst14|inst9|data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~73_combout\ = (\inst14|inst9|data~42_combout\ & ((\inst14|inst9|Equal27~0_combout\) # (\inst14|inst9|data~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~42_combout\,
	datab => \inst14|inst9|Equal27~0_combout\,
	datac => \inst14|inst9|data~46_combout\,
	combout => \inst14|inst9|data~73_combout\);

\inst14|inst9|data[13]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[13]~74_combout\ = (\inst14|inst9|data[13]~72_combout\) # ((\inst14|inst9|data[91]~39_combout\ & (\inst14|inst9|data~73_combout\ & !\inst14|inst9|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[13]~72_combout\,
	datab => \inst14|inst9|data[91]~39_combout\,
	datac => \inst14|inst9|data~73_combout\,
	datad => \inst14|inst9|Equal9~2_combout\,
	combout => \inst14|inst9|data[13]~74_combout\);

\inst14|inst13|B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[13]~74_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B3~q\);

\inst5|inst10|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~0_combout\ = (!\ACCB|data_out\(3) & (!\ACCB|data_out\(2) & (!\ACCB|data_out\(1) & !\ACCB|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \ACCB|data_out\(2),
	datac => \ACCB|data_out\(1),
	datad => \ACCB|data_out\(0),
	combout => \inst5|inst10|output~0_combout\);

\inst5|inst10|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~1_combout\ = (!\ACCB|data_out\(7) & (!\ACCB|data_out\(6) & (!\ACCB|data_out\(5) & !\ACCB|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \ACCB|data_out\(6),
	datac => \ACCB|data_out\(5),
	datad => \ACCB|data_out\(4),
	combout => \inst5|inst10|output~1_combout\);

\inst5|inst10|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~2_combout\ = (\inst14|inst13|B4~q\ & ((\inst14|inst13|B3~q\) # ((\inst5|inst10|output~0_combout\ & \inst5|inst10|output~1_combout\)))) # (!\inst14|inst13|B4~q\ & (!\inst14|inst13|B3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \inst14|inst13|B3~q\,
	datac => \inst5|inst10|output~0_combout\,
	datad => \inst5|inst10|output~1_combout\,
	combout => \inst5|inst10|output~2_combout\);

\inst5|inst10|output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~3_combout\ = (\inst14|inst13|B3~q\ & (!\ACCA|data_out\(7) & (!\ACCA|data_out\(6) & !\ACCA|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B3~q\,
	datab => \ACCA|data_out\(7),
	datac => \ACCA|data_out\(6),
	datad => \ACCA|data_out\(5),
	combout => \inst5|inst10|output~3_combout\);

\inst5|inst10|output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~4_combout\ = (!\ACCA|data_out\(4) & (!\ACCA|data_out\(3) & (!\ACCA|data_out\(2) & !\ACCA|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \ACCA|data_out\(3),
	datac => \ACCA|data_out\(2),
	datad => \ACCA|data_out\(1),
	combout => \inst5|inst10|output~4_combout\);

\inst5|inst10|output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~5_combout\ = (\inst5|inst10|output~3_combout\ & (\inst5|inst10|output~4_combout\ & !\ACCA|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst10|output~3_combout\,
	datab => \inst5|inst10|output~4_combout\,
	datac => \ACCA|data_out\(0),
	combout => \inst5|inst10|output~5_combout\);

\inst5|inst10|output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~6_combout\ = (\inst5|inst10|output~5_combout\) # ((\inst5|inst10|output~2_combout\ & ((\inst14|inst13|B4~q\) # (\inst1|Banderas\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \inst1|Banderas\(0),
	datac => \inst5|inst10|output~2_combout\,
	datad => \inst5|inst10|output~5_combout\,
	combout => \inst5|inst10|output~6_combout\);

\inst5|inst2|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CZ~q\,
	d => \inst5|inst10|output~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|valor_interno~q\);

\inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~19_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(6));

\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~20_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~21_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~22_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~23_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~24_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

ww_Z <= \Z~output_o\;

ww_csnn <= \csnn~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AP_D(15) <= \AP_D[15]~output_o\;

ww_AP_D(14) <= \AP_D[14]~output_o\;

ww_AP_D(13) <= \AP_D[13]~output_o\;

ww_AP_D(12) <= \AP_D[12]~output_o\;

ww_AP_D(11) <= \AP_D[11]~output_o\;

ww_AP_D(10) <= \AP_D[10]~output_o\;

ww_AP_D(9) <= \AP_D[9]~output_o\;

ww_AP_D(8) <= \AP_D[8]~output_o\;

ww_AP_D(7) <= \AP_D[7]~output_o\;

ww_AP_D(6) <= \AP_D[6]~output_o\;

ww_AP_D(5) <= \AP_D[5]~output_o\;

ww_AP_D(4) <= \AP_D[4]~output_o\;

ww_AP_D(3) <= \AP_D[3]~output_o\;

ww_AP_D(2) <= \AP_D[2]~output_o\;

ww_AP_D(1) <= \AP_D[1]~output_o\;

ww_AP_D(0) <= \AP_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_Debug_Q(7) <= \Debug_Q[7]~output_o\;

ww_Debug_Q(6) <= \Debug_Q[6]~output_o\;

ww_Debug_Q(5) <= \Debug_Q[5]~output_o\;

ww_Debug_Q(4) <= \Debug_Q[4]~output_o\;

ww_Debug_Q(3) <= \Debug_Q[3]~output_o\;

ww_Debug_Q(2) <= \Debug_Q[2]~output_o\;

ww_Debug_Q(1) <= \Debug_Q[1]~output_o\;

ww_Debug_Q(0) <= \Debug_Q[0]~output_o\;

ww_Debug_Yupa(7) <= \Debug_Yupa[7]~output_o\;

ww_Debug_Yupa(6) <= \Debug_Yupa[6]~output_o\;

ww_Debug_Yupa(5) <= \Debug_Yupa[5]~output_o\;

ww_Debug_Yupa(4) <= \Debug_Yupa[4]~output_o\;

ww_Debug_Yupa(3) <= \Debug_Yupa[3]~output_o\;

ww_Debug_Yupa(2) <= \Debug_Yupa[2]~output_o\;

ww_Debug_Yupa(1) <= \Debug_Yupa[1]~output_o\;

ww_Debug_Yupa(0) <= \Debug_Yupa[0]~output_o\;

ww_Edo_Pres(11) <= \Edo_Pres[11]~output_o\;

ww_Edo_Pres(10) <= \Edo_Pres[10]~output_o\;

ww_Edo_Pres(9) <= \Edo_Pres[9]~output_o\;

ww_Edo_Pres(8) <= \Edo_Pres[8]~output_o\;

ww_Edo_Pres(7) <= \Edo_Pres[7]~output_o\;

ww_Edo_Pres(6) <= \Edo_Pres[6]~output_o\;

ww_Edo_Pres(5) <= \Edo_Pres[5]~output_o\;

ww_Edo_Pres(4) <= \Edo_Pres[4]~output_o\;

ww_Edo_Pres(3) <= \Edo_Pres[3]~output_o\;

ww_Edo_Pres(2) <= \Edo_Pres[2]~output_o\;

ww_Edo_Pres(1) <= \Edo_Pres[1]~output_o\;

ww_Edo_Pres(0) <= \Edo_Pres[0]~output_o\;

ww_IX(15) <= \IX[15]~output_o\;

ww_IX(14) <= \IX[14]~output_o\;

ww_IX(13) <= \IX[13]~output_o\;

ww_IX(12) <= \IX[12]~output_o\;

ww_IX(11) <= \IX[11]~output_o\;

ww_IX(10) <= \IX[10]~output_o\;

ww_IX(9) <= \IX[9]~output_o\;

ww_IX(8) <= \IX[8]~output_o\;

ww_IX(7) <= \IX[7]~output_o\;

ww_IX(6) <= \IX[6]~output_o\;

ww_IX(5) <= \IX[5]~output_o\;

ww_IX(4) <= \IX[4]~output_o\;

ww_IX(3) <= \IX[3]~output_o\;

ww_IX(2) <= \IX[2]~output_o\;

ww_IX(1) <= \IX[1]~output_o\;

ww_IX(0) <= \IX[0]~output_o\;

ww_PC_D(15) <= \PC_D[15]~output_o\;

ww_PC_D(14) <= \PC_D[14]~output_o\;

ww_PC_D(13) <= \PC_D[13]~output_o\;

ww_PC_D(12) <= \PC_D[12]~output_o\;

ww_PC_D(11) <= \PC_D[11]~output_o\;

ww_PC_D(10) <= \PC_D[10]~output_o\;

ww_PC_D(9) <= \PC_D[9]~output_o\;

ww_PC_D(8) <= \PC_D[8]~output_o\;

ww_PC_D(7) <= \PC_D[7]~output_o\;

ww_PC_D(6) <= \PC_D[6]~output_o\;

ww_PC_D(5) <= \PC_D[5]~output_o\;

ww_PC_D(4) <= \PC_D[4]~output_o\;

ww_PC_D(3) <= \PC_D[3]~output_o\;

ww_PC_D(2) <= \PC_D[2]~output_o\;

ww_PC_D(1) <= \PC_D[1]~output_o\;

ww_PC_D(0) <= \PC_D[0]~output_o\;

ww_X_D(15) <= \X_D[15]~output_o\;

ww_X_D(14) <= \X_D[14]~output_o\;

ww_X_D(13) <= \X_D[13]~output_o\;

ww_X_D(12) <= \X_D[12]~output_o\;

ww_X_D(11) <= \X_D[11]~output_o\;

ww_X_D(10) <= \X_D[10]~output_o\;

ww_X_D(9) <= \X_D[9]~output_o\;

ww_X_D(8) <= \X_D[8]~output_o\;

ww_X_D(7) <= \X_D[7]~output_o\;

ww_X_D(6) <= \X_D[6]~output_o\;

ww_X_D(5) <= \X_D[5]~output_o\;

ww_X_D(4) <= \X_D[4]~output_o\;

ww_X_D(3) <= \X_D[3]~output_o\;

ww_X_D(2) <= \X_D[2]~output_o\;

ww_X_D(1) <= \X_D[1]~output_o\;

ww_X_D(0) <= \X_D[0]~output_o\;
END structure;


