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

-- DATE "05/28/2024 17:38:59"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Led_Controler IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	en : IN std_logic;
	play_again : IN std_logic;
	bu_r1 : IN std_logic;
	bd_r1 : IN std_logic;
	bu_r2 : IN std_logic;
	bd_r2 : IN std_logic;
	syn_clr : IN std_logic;
	PIN_1 : OUT std_logic;
	PIN_2 : OUT std_logic;
	PIN_3 : OUT std_logic;
	PIN_4 : OUT std_logic;
	PIN_5 : OUT std_logic;
	PIN_6 : OUT std_logic;
	PIN_7 : OUT std_logic;
	PIN_8 : OUT std_logic;
	PIN_9 : OUT std_logic;
	PIN_10 : OUT std_logic;
	PIN_11 : OUT std_logic;
	PIN_12 : OUT std_logic;
	PIN_13 : OUT std_logic;
	PIN_14 : OUT std_logic;
	PIN_15 : OUT std_logic;
	PIN_16 : OUT std_logic;
	PIN_17 : OUT std_logic;
	PIN_18 : OUT std_logic;
	PIN_19 : OUT std_logic;
	PIN_20 : OUT std_logic;
	PIN_21 : OUT std_logic;
	PIN_22 : OUT std_logic;
	PIN_23 : OUT std_logic;
	PIN_24 : OUT std_logic;
	PIN_25 : OUT std_logic;
	PIN_26 : OUT std_logic;
	PIN_27 : OUT std_logic;
	PIN_28 : OUT std_logic;
	PIN_29 : OUT std_logic;
	PIN_30 : OUT std_logic;
	PIN_31 : OUT std_logic;
	PIN_32 : OUT std_logic;
	Score_p1 : OUT std_logic_vector(6 DOWNTO 0);
	Score_p2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Led_Controler;

-- Design Ports Information
-- en	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_1	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_2	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_3	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_4	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_5	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_6	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_7	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_8	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_9	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_10	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_11	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_12	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_13	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_14	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_15	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_16	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_17	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_18	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_19	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_20	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_21	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_22	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_23	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_24	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_25	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_26	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_27	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_28	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_29	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_30	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_31	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_32	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p1[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p1[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p1[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p1[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p1[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p1[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p1[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p2[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p2[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p2[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p2[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p2[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p2[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Score_p2[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- syn_clr	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- play_again	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bu_r1	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bd_r1	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bd_r2	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bu_r2	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Led_Controler IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_play_again : std_logic;
SIGNAL ww_bu_r1 : std_logic;
SIGNAL ww_bd_r1 : std_logic;
SIGNAL ww_bu_r2 : std_logic;
SIGNAL ww_bd_r2 : std_logic;
SIGNAL ww_syn_clr : std_logic;
SIGNAL ww_PIN_1 : std_logic;
SIGNAL ww_PIN_2 : std_logic;
SIGNAL ww_PIN_3 : std_logic;
SIGNAL ww_PIN_4 : std_logic;
SIGNAL ww_PIN_5 : std_logic;
SIGNAL ww_PIN_6 : std_logic;
SIGNAL ww_PIN_7 : std_logic;
SIGNAL ww_PIN_8 : std_logic;
SIGNAL ww_PIN_9 : std_logic;
SIGNAL ww_PIN_10 : std_logic;
SIGNAL ww_PIN_11 : std_logic;
SIGNAL ww_PIN_12 : std_logic;
SIGNAL ww_PIN_13 : std_logic;
SIGNAL ww_PIN_14 : std_logic;
SIGNAL ww_PIN_15 : std_logic;
SIGNAL ww_PIN_16 : std_logic;
SIGNAL ww_PIN_17 : std_logic;
SIGNAL ww_PIN_18 : std_logic;
SIGNAL ww_PIN_19 : std_logic;
SIGNAL ww_PIN_20 : std_logic;
SIGNAL ww_PIN_21 : std_logic;
SIGNAL ww_PIN_22 : std_logic;
SIGNAL ww_PIN_23 : std_logic;
SIGNAL ww_PIN_24 : std_logic;
SIGNAL ww_PIN_25 : std_logic;
SIGNAL ww_PIN_26 : std_logic;
SIGNAL ww_PIN_27 : std_logic;
SIGNAL ww_PIN_28 : std_logic;
SIGNAL ww_PIN_29 : std_logic;
SIGNAL ww_PIN_30 : std_logic;
SIGNAL ww_PIN_31 : std_logic;
SIGNAL ww_PIN_32 : std_logic;
SIGNAL ww_Score_p1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Score_p2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \contador_lectura|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador_clks_juego|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \en~input_o\ : std_logic;
SIGNAL \PIN_1~output_o\ : std_logic;
SIGNAL \PIN_2~output_o\ : std_logic;
SIGNAL \PIN_3~output_o\ : std_logic;
SIGNAL \PIN_4~output_o\ : std_logic;
SIGNAL \PIN_5~output_o\ : std_logic;
SIGNAL \PIN_6~output_o\ : std_logic;
SIGNAL \PIN_7~output_o\ : std_logic;
SIGNAL \PIN_8~output_o\ : std_logic;
SIGNAL \PIN_9~output_o\ : std_logic;
SIGNAL \PIN_10~output_o\ : std_logic;
SIGNAL \PIN_11~output_o\ : std_logic;
SIGNAL \PIN_12~output_o\ : std_logic;
SIGNAL \PIN_13~output_o\ : std_logic;
SIGNAL \PIN_14~output_o\ : std_logic;
SIGNAL \PIN_15~output_o\ : std_logic;
SIGNAL \PIN_16~output_o\ : std_logic;
SIGNAL \PIN_17~output_o\ : std_logic;
SIGNAL \PIN_18~output_o\ : std_logic;
SIGNAL \PIN_19~output_o\ : std_logic;
SIGNAL \PIN_20~output_o\ : std_logic;
SIGNAL \PIN_21~output_o\ : std_logic;
SIGNAL \PIN_22~output_o\ : std_logic;
SIGNAL \PIN_23~output_o\ : std_logic;
SIGNAL \PIN_24~output_o\ : std_logic;
SIGNAL \PIN_25~output_o\ : std_logic;
SIGNAL \PIN_26~output_o\ : std_logic;
SIGNAL \PIN_27~output_o\ : std_logic;
SIGNAL \PIN_28~output_o\ : std_logic;
SIGNAL \PIN_29~output_o\ : std_logic;
SIGNAL \PIN_30~output_o\ : std_logic;
SIGNAL \PIN_31~output_o\ : std_logic;
SIGNAL \PIN_32~output_o\ : std_logic;
SIGNAL \Score_p1[0]~output_o\ : std_logic;
SIGNAL \Score_p1[1]~output_o\ : std_logic;
SIGNAL \Score_p1[2]~output_o\ : std_logic;
SIGNAL \Score_p1[3]~output_o\ : std_logic;
SIGNAL \Score_p1[4]~output_o\ : std_logic;
SIGNAL \Score_p1[5]~output_o\ : std_logic;
SIGNAL \Score_p1[6]~output_o\ : std_logic;
SIGNAL \Score_p2[0]~output_o\ : std_logic;
SIGNAL \Score_p2[1]~output_o\ : std_logic;
SIGNAL \Score_p2[2]~output_o\ : std_logic;
SIGNAL \Score_p2[3]~output_o\ : std_logic;
SIGNAL \Score_p2[4]~output_o\ : std_logic;
SIGNAL \Score_p2[5]~output_o\ : std_logic;
SIGNAL \Score_p2[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \contador_print|temp[0]~23_combout\ : std_logic;
SIGNAL \syn_clr~input_o\ : std_logic;
SIGNAL \contador_print|temp[0]~24\ : std_logic;
SIGNAL \contador_print|temp[1]~25_combout\ : std_logic;
SIGNAL \contador_print|temp[1]~26\ : std_logic;
SIGNAL \contador_print|temp[2]~27_combout\ : std_logic;
SIGNAL \contador_print|temp[2]~28\ : std_logic;
SIGNAL \contador_print|temp[3]~29_combout\ : std_logic;
SIGNAL \contador_print|temp[3]~30\ : std_logic;
SIGNAL \contador_print|temp[4]~31_combout\ : std_logic;
SIGNAL \contador_print|temp[4]~32\ : std_logic;
SIGNAL \contador_print|temp[5]~33_combout\ : std_logic;
SIGNAL \contador_print|temp[5]~34\ : std_logic;
SIGNAL \contador_print|temp[6]~35_combout\ : std_logic;
SIGNAL \contador_print|temp[6]~36\ : std_logic;
SIGNAL \contador_print|temp[7]~37_combout\ : std_logic;
SIGNAL \contador_print|temp[7]~38\ : std_logic;
SIGNAL \contador_print|temp[8]~39_combout\ : std_logic;
SIGNAL \contador_print|temp[8]~40\ : std_logic;
SIGNAL \contador_print|temp[9]~41_combout\ : std_logic;
SIGNAL \contador_print|temp[9]~42\ : std_logic;
SIGNAL \contador_print|temp[10]~43_combout\ : std_logic;
SIGNAL \contador_print|temp[10]~44\ : std_logic;
SIGNAL \contador_print|temp[11]~45_combout\ : std_logic;
SIGNAL \contador_print|temp[11]~46\ : std_logic;
SIGNAL \contador_print|temp[12]~47_combout\ : std_logic;
SIGNAL \contador_print|temp[12]~48\ : std_logic;
SIGNAL \contador_print|temp[13]~49_combout\ : std_logic;
SIGNAL \contador_print|temp[13]~50\ : std_logic;
SIGNAL \contador_print|temp[14]~51_combout\ : std_logic;
SIGNAL \contador_print|temp[14]~52\ : std_logic;
SIGNAL \contador_print|temp[15]~53_combout\ : std_logic;
SIGNAL \contador_print|temp[15]~54\ : std_logic;
SIGNAL \contador_print|temp[16]~55_combout\ : std_logic;
SIGNAL \contador_print|temp[16]~56\ : std_logic;
SIGNAL \contador_print|temp[17]~57_combout\ : std_logic;
SIGNAL \contador_print|temp[17]~58\ : std_logic;
SIGNAL \contador_print|temp[18]~59_combout\ : std_logic;
SIGNAL \contador_print|temp[18]~60\ : std_logic;
SIGNAL \contador_print|temp[19]~61_combout\ : std_logic;
SIGNAL \contador_print|temp[19]~62\ : std_logic;
SIGNAL \contador_print|temp[20]~63_combout\ : std_logic;
SIGNAL \contador_print|temp[20]~64\ : std_logic;
SIGNAL \contador_print|temp[21]~65_combout\ : std_logic;
SIGNAL \contador_print|temp[21]~66\ : std_logic;
SIGNAL \contador_print|temp[22]~67_combout\ : std_logic;
SIGNAL \contador_print|Equal0~1_combout\ : std_logic;
SIGNAL \contador_print|Equal0~0_combout\ : std_logic;
SIGNAL \contador_print|Equal0~2_combout\ : std_logic;
SIGNAL \contador_print|Equal0~4_combout\ : std_logic;
SIGNAL \contador_print|LessThan0~0_combout\ : std_logic;
SIGNAL \contador_print|LessThan0~1_combout\ : std_logic;
SIGNAL \contador_print|count_next~0_combout\ : std_logic;
SIGNAL \contador_print|Equal0~3_combout\ : std_logic;
SIGNAL \contador_print|Equal0~5_combout\ : std_logic;
SIGNAL \contador_print|Equal0~6_combout\ : std_logic;
SIGNAL \contador_print|Equal0~7_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_69~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_70~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_71~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_71~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_72~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_72~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_73~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_74~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_74~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_75~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_75~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_76~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_77~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_77~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_78~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_78~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_79~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_79~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_80~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_80~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_81~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_81~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_82~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_83~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_83~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_84~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_85~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_85~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_86~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_86~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_87~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_88~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_88~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_89~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_89~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_90~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_90~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_91~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_91~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_92~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_93~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_94~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_94~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_95~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_95~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_96~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_97~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_97~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_98~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_99~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_99~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_100~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_101~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_101~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_102~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_102~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_103~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_103~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_104~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_104~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_105~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_105~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_106~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_106~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_107~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_108~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_108~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_109~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_110~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_110~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_111~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_112~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_113~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_114~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_115~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_116~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_117~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_117~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_118~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_119~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_120~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_121~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_122~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_123~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_124~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_125~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_126~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_127~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_128~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_1~0_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_1~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_2~0_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_2~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_3~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_3~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_4~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_5~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_5~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_6~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_6~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_7~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_7~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_8~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_9~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_9~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_10~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_10~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_11~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_11~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_12~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_12~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_13~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_14~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_14~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_15~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_16~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_16~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_17~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_17~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_18~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_18~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_19~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_20~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_20~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_21~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_21~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_22~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_22~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_23~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_23~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_24~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_25~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_25~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_26~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_26~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_27~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_28~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_29~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_29~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_30~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_30~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_31~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_31~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_32~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_32~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_33~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_33~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_34~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_34~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_35~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_35~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_36~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_37~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_37~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_38~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_39~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_40~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_41~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_41~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_42~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_42~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_43~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_44~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_45~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_45~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_46~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_46~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_47~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_48~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_49~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_49~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_50~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_51~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_52~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_53~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_54~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_55~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_56~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_57~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_58~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_59~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_60~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_61~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_62~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_63~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_64~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_65~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_66~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_66~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_67~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_67~q\ : std_logic;
SIGNAL \led_machine|pri_st.LED_68~feeder_combout\ : std_logic;
SIGNAL \led_machine|pri_st.LED_68~q\ : std_logic;
SIGNAL \led_machine|WideOr11~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr11~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr11~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr13~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr13~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr13~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr6~3_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~5_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~6_combout\ : std_logic;
SIGNAL \led_machine|WideOr6~4_combout\ : std_logic;
SIGNAL \led_machine|WideOr6~5_combout\ : std_logic;
SIGNAL \led_machine|WideOr6~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~7_combout\ : std_logic;
SIGNAL \led_machine|WideOr6~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~8_combout\ : std_logic;
SIGNAL \led_machine|WideOr6~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr35~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr23~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr23~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr35~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~6_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~3_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~7_combout\ : std_logic;
SIGNAL \led_machine|WideOr6~6_combout\ : std_logic;
SIGNAL \contador_lectura|temp[0]~23_combout\ : std_logic;
SIGNAL \contador_lectura|temp[0]~feeder_combout\ : std_logic;
SIGNAL \contador_lectura|temp[11]~46\ : std_logic;
SIGNAL \contador_lectura|temp[12]~47_combout\ : std_logic;
SIGNAL \contador_lectura|temp[12]~48\ : std_logic;
SIGNAL \contador_lectura|temp[13]~49_combout\ : std_logic;
SIGNAL \contador_lectura|temp[13]~50\ : std_logic;
SIGNAL \contador_lectura|temp[14]~51_combout\ : std_logic;
SIGNAL \contador_lectura|temp[14]~52\ : std_logic;
SIGNAL \contador_lectura|temp[15]~53_combout\ : std_logic;
SIGNAL \contador_lectura|temp[15]~54\ : std_logic;
SIGNAL \contador_lectura|temp[16]~55_combout\ : std_logic;
SIGNAL \contador_lectura|temp[16]~56\ : std_logic;
SIGNAL \contador_lectura|temp[17]~57_combout\ : std_logic;
SIGNAL \contador_lectura|temp[17]~58\ : std_logic;
SIGNAL \contador_lectura|temp[18]~59_combout\ : std_logic;
SIGNAL \contador_lectura|temp[18]~60\ : std_logic;
SIGNAL \contador_lectura|temp[19]~61_combout\ : std_logic;
SIGNAL \contador_lectura|temp[19]~62\ : std_logic;
SIGNAL \contador_lectura|temp[20]~63_combout\ : std_logic;
SIGNAL \contador_lectura|temp[20]~64\ : std_logic;
SIGNAL \contador_lectura|temp[21]~65_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[0]~23_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[10]~44\ : std_logic;
SIGNAL \contador_clks_juego|temp[11]~45_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[11]~46\ : std_logic;
SIGNAL \contador_clks_juego|temp[12]~47_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[12]~48\ : std_logic;
SIGNAL \contador_clks_juego|temp[13]~49_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[13]~50\ : std_logic;
SIGNAL \contador_clks_juego|temp[14]~51_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[14]~52\ : std_logic;
SIGNAL \contador_clks_juego|temp[15]~53_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[15]~54\ : std_logic;
SIGNAL \contador_clks_juego|temp[16]~55_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[16]~56\ : std_logic;
SIGNAL \contador_clks_juego|temp[17]~57_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[17]~58\ : std_logic;
SIGNAL \contador_clks_juego|temp[18]~59_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[18]~60\ : std_logic;
SIGNAL \contador_clks_juego|temp[19]~61_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[19]~62\ : std_logic;
SIGNAL \contador_clks_juego|temp[20]~63_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[20]~64\ : std_logic;
SIGNAL \contador_clks_juego|temp[21]~65_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[21]~66\ : std_logic;
SIGNAL \contador_clks_juego|temp[22]~67_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~0_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~1_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~8_combout\ : std_logic;
SIGNAL \contador_clks_juego|LessThan0~0_combout\ : std_logic;
SIGNAL \contador_clks_juego|LessThan0~1_combout\ : std_logic;
SIGNAL \contador_clks_juego|LessThan0~2_combout\ : std_logic;
SIGNAL \contador_clks_juego|LessThan0~3_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[0]~24\ : std_logic;
SIGNAL \contador_clks_juego|temp[1]~25_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[1]~26\ : std_logic;
SIGNAL \contador_clks_juego|temp[2]~27_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[2]~28\ : std_logic;
SIGNAL \contador_clks_juego|temp[3]~29_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[3]~30\ : std_logic;
SIGNAL \contador_clks_juego|temp[4]~31_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[4]~32\ : std_logic;
SIGNAL \contador_clks_juego|temp[5]~33_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[5]~34\ : std_logic;
SIGNAL \contador_clks_juego|temp[6]~35_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[6]~36\ : std_logic;
SIGNAL \contador_clks_juego|temp[7]~37_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[7]~38\ : std_logic;
SIGNAL \contador_clks_juego|temp[8]~39_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[8]~40\ : std_logic;
SIGNAL \contador_clks_juego|temp[9]~41_combout\ : std_logic;
SIGNAL \contador_clks_juego|temp[9]~42\ : std_logic;
SIGNAL \contador_clks_juego|temp[10]~43_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~3_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~2_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~4_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~5_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~6_combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~combout\ : std_logic;
SIGNAL \contador_clks_juego|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \bd_r2~input_o\ : std_logic;
SIGNAL \button_down_r2|sync1:resync[1]~feeder_combout\ : std_logic;
SIGNAL \button_down_r2|sync1:resync[1]~q\ : std_logic;
SIGNAL \button_down_r2|sync1:resync[2]~q\ : std_logic;
SIGNAL \button_down_r2|sync1:resync[3]~q\ : std_logic;
SIGNAL \button_down_r2|fall~0_combout\ : std_logic;
SIGNAL \button_down_r2|fall~q\ : std_logic;
SIGNAL \flipflop_led3r2|q[4]~12_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector7~0_combout\ : std_logic;
SIGNAL \bd_r1~input_o\ : std_logic;
SIGNAL \button_down_r1|sync1:resync[1]~q\ : std_logic;
SIGNAL \button_down_r1|sync1:resync[2]~q\ : std_logic;
SIGNAL \button_down_r1|sync1:resync[3]~q\ : std_logic;
SIGNAL \button_down_r1|fall~0_combout\ : std_logic;
SIGNAL \button_down_r1|fall~q\ : std_logic;
SIGNAL \flipflop_led3r1|q[4]~12_combout\ : std_logic;
SIGNAL \bu_r1~input_o\ : std_logic;
SIGNAL \button_up_r1|sync1:resync[1]~q\ : std_logic;
SIGNAL \button_up_r1|sync1:resync[2]~feeder_combout\ : std_logic;
SIGNAL \button_up_r1|sync1:resync[2]~q\ : std_logic;
SIGNAL \button_up_r1|sync1:resync[3]~q\ : std_logic;
SIGNAL \button_up_r1|fall~0_combout\ : std_logic;
SIGNAL \button_up_r1|fall~q\ : std_logic;
SIGNAL \flipflop_led3r1|q[4]~3_combout\ : std_logic;
SIGNAL \flipflop_led3r1|q[5]~5_cout\ : std_logic;
SIGNAL \flipflop_led3r1|q[5]~6_combout\ : std_logic;
SIGNAL \flipflop_led3r1|q[5]~7\ : std_logic;
SIGNAL \flipflop_led3r1|q[6]~8_combout\ : std_logic;
SIGNAL \flipflop_led1|q[0]~9\ : std_logic;
SIGNAL \flipflop_led1|q[1]~10_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector6~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector2~1_combout\ : std_logic;
SIGNAL \arriba_led1|up_wall~0_combout\ : std_logic;
SIGNAL \abajo_led1|down_wall~0_combout\ : std_logic;
SIGNAL \flipflop_led3r2|q[5]~5_cout\ : std_logic;
SIGNAL \flipflop_led3r2|q[5]~6_combout\ : std_logic;
SIGNAL \bu_r2~input_o\ : std_logic;
SIGNAL \button_up_r2|sync1:resync[1]~feeder_combout\ : std_logic;
SIGNAL \button_up_r2|sync1:resync[1]~q\ : std_logic;
SIGNAL \button_up_r2|sync1:resync[2]~q\ : std_logic;
SIGNAL \button_up_r2|sync1:resync[3]~q\ : std_logic;
SIGNAL \button_up_r2|fall~0_combout\ : std_logic;
SIGNAL \button_up_r2|fall~q\ : std_logic;
SIGNAL \flipflop_led3r2|q[5]~3_combout\ : std_logic;
SIGNAL \flipflop_led3r2|q[5]~7\ : std_logic;
SIGNAL \flipflop_led3r2|q[6]~8_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~1\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~3\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~5\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~7\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~9\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~11\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~12_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~13\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~14_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~10_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~8_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~0_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~2_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~4_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Add0~6_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Mux0~0_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Mux0~1_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_2|Mux0~2_combout\ : std_logic;
SIGNAL \Mux_1raquet1|Add1~1_combout\ : std_logic;
SIGNAL \Mux_1raquet1|Add1~0_combout\ : std_logic;
SIGNAL \Mux_1raquet1|Add1~2_combout\ : std_logic;
SIGNAL \flipflop_led1r1|q[5]~4_cout\ : std_logic;
SIGNAL \flipflop_led1r1|q[5]~5_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_1|Add0~1_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_1|Mux0~0_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_1|Mux0~1_combout\ : std_logic;
SIGNAL \flipflop_led1r1|q[5]~6\ : std_logic;
SIGNAL \flipflop_led1r1|q[6]~7_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_1|Add0~0_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_1|Mux0~0_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_1|Mux0~1_combout\ : std_logic;
SIGNAL \extremos_raqueta_1|Mux0~0_combout\ : std_logic;
SIGNAL \extremos_raqueta_1|Mux0~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal0~0_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~1\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~2_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~3\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~4_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~5\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~6_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Mux0~0_combout\ : std_logic;
SIGNAL \Mux_1raquet2|Add1~1_combout\ : std_logic;
SIGNAL \Mux_1raquet2|Add1~2_combout\ : std_logic;
SIGNAL \flipflop_led1r2|q[5]~4_cout\ : std_logic;
SIGNAL \flipflop_led1r2|q[5]~5_combout\ : std_logic;
SIGNAL \Mux_1raquet2|Add1~0_combout\ : std_logic;
SIGNAL \flipflop_led1r2|q[5]~6\ : std_logic;
SIGNAL \flipflop_led1r2|q[6]~7_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~7\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~9\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~11\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~12_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~0_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~10_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Mux0~1_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~13\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~14_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Mux0~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal0~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal7~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal1~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal4~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector2~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector2~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector2~3_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Down_right~q\ : std_logic;
SIGNAL \extremos_raqueta_2|Mux0~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal4~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|locombinacional~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|locombinacional~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector9~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|locombinacional~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|locombinacional~3_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector6~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector6~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Score_p1~q\ : std_logic;
SIGNAL \flipflop_led1|dff~0_combout\ : std_logic;
SIGNAL \flipflop_led2r1|q[5]~4_cout\ : std_logic;
SIGNAL \flipflop_led2r1|q[5]~5_combout\ : std_logic;
SIGNAL \flipflop_led2r1|q[5]~6\ : std_logic;
SIGNAL \flipflop_led2r1|q[6]~7_combout\ : std_logic;
SIGNAL \Medio_raqueta_1|Mux0~0_combout\ : std_logic;
SIGNAL \Medio_raqueta_1|Mux0~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal0~1_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_1|Add0~0_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_1|Mux0~3_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal10~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector4~1_combout\ : std_logic;
SIGNAL \izquierda_led1|Mux0~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal6~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector4~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector4~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Left_b~q\ : std_logic;
SIGNAL \FSM_bouncing|locombinacional~4_combout\ : std_logic;
SIGNAL \FSM_bouncing|locombinacional~5_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector3~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector11~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal1~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector11~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector11~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Up_left_trans~q\ : std_logic;
SIGNAL \FSM_bouncing|Selector3~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal0~3_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector3~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Up_left~q\ : std_logic;
SIGNAL \FSM_bouncing|Selector9~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector9~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector9~3_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Down_left_trans~q\ : std_logic;
SIGNAL \FSM_bouncing|Selector1~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector1~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Down_left~q\ : std_logic;
SIGNAL \FSM_bouncing|locombinacional~6_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector1~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector13~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector13~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Right_b_trans~q\ : std_logic;
SIGNAL \Mux_led1|Mux0~4_combout\ : std_logic;
SIGNAL \flipflop_led1|q[1]~11\ : std_logic;
SIGNAL \flipflop_led1|q[2]~13\ : std_logic;
SIGNAL \flipflop_led1|q[3]~14_combout\ : std_logic;
SIGNAL \flipflop_led1|q[3]~15\ : std_logic;
SIGNAL \flipflop_led1|q[4]~17\ : std_logic;
SIGNAL \flipflop_led1|q[5]~18_combout\ : std_logic;
SIGNAL \arriba_led1|up_wall~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector10~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector10~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector10~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector10~3_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Down_right_trans~q\ : std_logic;
SIGNAL \FSM_bouncing|WideOr1~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|WideOr1~combout\ : std_logic;
SIGNAL \FSM_bouncing|WideOr0~combout\ : std_logic;
SIGNAL \Mux_led1|Add1~0_combout\ : std_logic;
SIGNAL \flipflop_led1|q[5]~19\ : std_logic;
SIGNAL \flipflop_led1|q[6]~20_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_1|Add0~1_combout\ : std_logic;
SIGNAL \Corner_down_raqueta_1|Mux0~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal6~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector8~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector8~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector8~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Up_right_trans~q\ : std_logic;
SIGNAL \FSM_bouncing|Selector0~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector0~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Up_right~q\ : std_logic;
SIGNAL \FSM_bouncing|WideOr2~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|WideOr2~combout\ : std_logic;
SIGNAL \flipflop_led1|q[2]~12_combout\ : std_logic;
SIGNAL \derecha_led1|Mux0~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Equal5~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector5~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector5~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Right_b~q\ : std_logic;
SIGNAL \FSM_bouncing|WideOr0~0_combout\ : std_logic;
SIGNAL \Mux_led1|Add1~1_combout\ : std_logic;
SIGNAL \flipflop_led1|q[4]~16_combout\ : std_logic;
SIGNAL \Corner_up_raqueta_2|Add0~8_combout\ : std_logic;
SIGNAL \extremos_raqueta_2|Mux0~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector7~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Score_p2~q\ : std_logic;
SIGNAL \flipflop_player2|q[0]~0_combout\ : std_logic;
SIGNAL \flipflop_player2|q[1]~1_combout\ : std_logic;
SIGNAL \flipflop_player2|q[1]~feeder_combout\ : std_logic;
SIGNAL \flipflop_player2|q[2]~2_combout\ : std_logic;
SIGNAL \flipflop_player2|q[3]~3_combout\ : std_logic;
SIGNAL \flipflop_player2|q[3]~4_combout\ : std_logic;
SIGNAL \flipflop_player1|q[0]~0_combout\ : std_logic;
SIGNAL \flipflop_player1|q[1]~1_combout\ : std_logic;
SIGNAL \flipflop_player1|q[2]~2_combout\ : std_logic;
SIGNAL \flipflop_player1|q[2]~feeder_combout\ : std_logic;
SIGNAL \flipflop_player1|q[3]~3_combout\ : std_logic;
SIGNAL \flipflop_player1|q[3]~4_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \winner_timer[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \winner_timer[0]~32\ : std_logic;
SIGNAL \winner_timer[1]~33_combout\ : std_logic;
SIGNAL \winner_timer[1]~34\ : std_logic;
SIGNAL \winner_timer[2]~35_combout\ : std_logic;
SIGNAL \winner_timer[2]~36\ : std_logic;
SIGNAL \winner_timer[3]~37_combout\ : std_logic;
SIGNAL \winner_timer[3]~38\ : std_logic;
SIGNAL \winner_timer[4]~39_combout\ : std_logic;
SIGNAL \winner_timer[4]~40\ : std_logic;
SIGNAL \winner_timer[5]~41_combout\ : std_logic;
SIGNAL \winner_timer[5]~42\ : std_logic;
SIGNAL \winner_timer[6]~43_combout\ : std_logic;
SIGNAL \winner_timer[6]~44\ : std_logic;
SIGNAL \winner_timer[7]~45_combout\ : std_logic;
SIGNAL \winner_timer[7]~46\ : std_logic;
SIGNAL \winner_timer[8]~47_combout\ : std_logic;
SIGNAL \winner_timer[8]~48\ : std_logic;
SIGNAL \winner_timer[9]~49_combout\ : std_logic;
SIGNAL \winner_timer[9]~50\ : std_logic;
SIGNAL \winner_timer[10]~51_combout\ : std_logic;
SIGNAL \winner_timer[10]~52\ : std_logic;
SIGNAL \winner_timer[11]~53_combout\ : std_logic;
SIGNAL \winner_timer[11]~54\ : std_logic;
SIGNAL \winner_timer[12]~55_combout\ : std_logic;
SIGNAL \winner_timer[12]~56\ : std_logic;
SIGNAL \winner_timer[13]~57_combout\ : std_logic;
SIGNAL \winner_timer[13]~58\ : std_logic;
SIGNAL \winner_timer[14]~59_combout\ : std_logic;
SIGNAL \winner_timer[14]~60\ : std_logic;
SIGNAL \winner_timer[15]~61_combout\ : std_logic;
SIGNAL \winner_timer[15]~62\ : std_logic;
SIGNAL \winner_timer[16]~63_combout\ : std_logic;
SIGNAL \winner_timer[16]~64\ : std_logic;
SIGNAL \winner_timer[17]~65_combout\ : std_logic;
SIGNAL \winner_timer[17]~66\ : std_logic;
SIGNAL \winner_timer[18]~67_combout\ : std_logic;
SIGNAL \winner_timer[18]~68\ : std_logic;
SIGNAL \winner_timer[19]~69_combout\ : std_logic;
SIGNAL \winner_timer[19]~70\ : std_logic;
SIGNAL \winner_timer[20]~71_combout\ : std_logic;
SIGNAL \winner_timer[20]~72\ : std_logic;
SIGNAL \winner_timer[21]~73_combout\ : std_logic;
SIGNAL \winner_timer[21]~74\ : std_logic;
SIGNAL \winner_timer[22]~75_combout\ : std_logic;
SIGNAL \winner_timer[22]~76\ : std_logic;
SIGNAL \winner_timer[23]~77_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \winner_timer[23]~78\ : std_logic;
SIGNAL \winner_timer[24]~79_combout\ : std_logic;
SIGNAL \winner_timer[24]~80\ : std_logic;
SIGNAL \winner_timer[25]~81_combout\ : std_logic;
SIGNAL \winner_timer[25]~82\ : std_logic;
SIGNAL \winner_timer[26]~83_combout\ : std_logic;
SIGNAL \winner_timer[26]~84\ : std_logic;
SIGNAL \winner_timer[27]~85_combout\ : std_logic;
SIGNAL \winner_timer[27]~86\ : std_logic;
SIGNAL \winner_timer[28]~87_combout\ : std_logic;
SIGNAL \winner_timer[28]~88\ : std_logic;
SIGNAL \winner_timer[29]~89_combout\ : std_logic;
SIGNAL \winner_timer[29]~90\ : std_logic;
SIGNAL \winner_timer[30]~91_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \winner~0_combout\ : std_logic;
SIGNAL \winner~q\ : std_logic;
SIGNAL \flipflop_led1r1|dff~0_combout\ : std_logic;
SIGNAL \flipflop_led2r2|q[5]~4_cout\ : std_logic;
SIGNAL \flipflop_led2r2|q[5]~5_combout\ : std_logic;
SIGNAL \flipflop_led2r2|q[5]~6\ : std_logic;
SIGNAL \flipflop_led2r2|q[6]~7_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~1\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~3\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~5\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~7\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~9\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~11\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~13\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~14_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~12_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~6_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~0_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~2_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~4_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Mux0~0_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~10_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Add0~8_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Mux0~1_combout\ : std_logic;
SIGNAL \Medio_raqueta_2|Mux0~2_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector12~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|Selector12~1_combout\ : std_logic;
SIGNAL \FSM_bouncing|pri_st.Left_b_trans~q\ : std_logic;
SIGNAL \FSM_bouncing|WideOr3~1_combout\ : std_logic;
SIGNAL \flipflop_rebotes|q[0]~18_combout\ : std_logic;
SIGNAL \flipflop_rebotes|q[1]~6_combout\ : std_logic;
SIGNAL \FSM_bouncing|WideOr3~0_combout\ : std_logic;
SIGNAL \FSM_bouncing|WideOr3~combout\ : std_logic;
SIGNAL \flipflop_rebotes|q[1]~7\ : std_logic;
SIGNAL \flipflop_rebotes|q[2]~8_combout\ : std_logic;
SIGNAL \flipflop_rebotes|q[2]~9\ : std_logic;
SIGNAL \flipflop_rebotes|q[3]~10_combout\ : std_logic;
SIGNAL \flipflop_rebotes|q[3]~11\ : std_logic;
SIGNAL \flipflop_rebotes|q[4]~12_combout\ : std_logic;
SIGNAL \flipflop_rebotes|q[4]~13\ : std_logic;
SIGNAL \flipflop_rebotes|q[5]~14_combout\ : std_logic;
SIGNAL \flipflop_rebotes|q[5]~15\ : std_logic;
SIGNAL \flipflop_rebotes|q[6]~16_combout\ : std_logic;
SIGNAL \Mux_velocidades|LessThan1~0_combout\ : std_logic;
SIGNAL \Mux_velocidades|LessThan4~0_combout\ : std_logic;
SIGNAL \Mux_velocidades|velocidad[19]~0_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~10_combout\ : std_logic;
SIGNAL \Mux_velocidades|velocidad[22]~3_combout\ : std_logic;
SIGNAL \contador_lectura|temp[21]~66\ : std_logic;
SIGNAL \contador_lectura|temp[22]~67_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~11_combout\ : std_logic;
SIGNAL \Mux_velocidades|velocidad[19]~2_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~1_combout\ : std_logic;
SIGNAL \Mux_velocidades|LessThan1~1_combout\ : std_logic;
SIGNAL \Mux_velocidades|LessThan4~1_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~0_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~12_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~13_combout\ : std_logic;
SIGNAL \Mux_velocidades|WideNor0~combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~2_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~1_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~0_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~5_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~3_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~8_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~4_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~6_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~7_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~8_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~9_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~10_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~11_combout\ : std_logic;
SIGNAL \contador_lectura|LessThan0~14_combout\ : std_logic;
SIGNAL \contador_lectura|temp[0]~24\ : std_logic;
SIGNAL \contador_lectura|temp[1]~25_combout\ : std_logic;
SIGNAL \contador_lectura|temp[1]~26\ : std_logic;
SIGNAL \contador_lectura|temp[2]~27_combout\ : std_logic;
SIGNAL \contador_lectura|temp[2]~28\ : std_logic;
SIGNAL \contador_lectura|temp[3]~29_combout\ : std_logic;
SIGNAL \contador_lectura|temp[3]~30\ : std_logic;
SIGNAL \contador_lectura|temp[4]~31_combout\ : std_logic;
SIGNAL \contador_lectura|temp[4]~32\ : std_logic;
SIGNAL \contador_lectura|temp[5]~33_combout\ : std_logic;
SIGNAL \contador_lectura|temp[5]~34\ : std_logic;
SIGNAL \contador_lectura|temp[6]~35_combout\ : std_logic;
SIGNAL \contador_lectura|temp[6]~36\ : std_logic;
SIGNAL \contador_lectura|temp[7]~37_combout\ : std_logic;
SIGNAL \contador_lectura|temp[7]~38\ : std_logic;
SIGNAL \contador_lectura|temp[8]~39_combout\ : std_logic;
SIGNAL \contador_lectura|temp[8]~40\ : std_logic;
SIGNAL \contador_lectura|temp[9]~41_combout\ : std_logic;
SIGNAL \contador_lectura|temp[9]~42\ : std_logic;
SIGNAL \contador_lectura|temp[10]~43_combout\ : std_logic;
SIGNAL \contador_lectura|temp[10]~44\ : std_logic;
SIGNAL \contador_lectura|temp[11]~45_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~9_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~2_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~3_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~4_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~5_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~6_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~7_combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~combout\ : std_logic;
SIGNAL \contador_lectura|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \flipflop_led1|q[0]~8_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~4_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~3_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~3_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~5_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~4_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~5_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr5~8_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~15_combout\ : std_logic;
SIGNAL \led_machine|WideOr26~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr26~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~9_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~10_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~11_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~6_combout\ : std_logic;
SIGNAL \led_machine|WideOr3~12_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~7_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~8_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~9_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~4_combout\ : std_logic;
SIGNAL \led_machine|WideOr4~10_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~16_combout\ : std_logic;
SIGNAL \led_machine|WideOr7~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr7~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr7~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr19~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr19~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr19~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr15~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr15~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr15~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr1~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr21~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr21~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr2~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr9~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr9~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr9~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr17~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr17~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr17~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr2~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr16~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr8~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr16~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr8~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr0~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr20~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr20~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr20~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr12~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr12~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr12~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr1~1_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~17_combout\ : std_logic;
SIGNAL \flipflop_led1|q[6]~21\ : std_logic;
SIGNAL \flipflop_led1|q[7]~22_combout\ : std_logic;
SIGNAL \led_machine|WideOr10~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr10~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr10~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr18~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr18~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr18~2_combout\ : std_logic;
SIGNAL \led_machine|WideOr0~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr0~2_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~18_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~9_combout\ : std_logic;
SIGNAL \flipflop_led2r2|q[6]~8\ : std_logic;
SIGNAL \flipflop_led2r2|q[7]~9_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~10_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~8_combout\ : std_logic;
SIGNAL \led_machine|Equal4~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~12_combout\ : std_logic;
SIGNAL \flipflop_led3r2|q[6]~9\ : std_logic;
SIGNAL \flipflop_led3r2|q[7]~10_combout\ : std_logic;
SIGNAL \flipflop_led1r2|q[6]~8\ : std_logic;
SIGNAL \flipflop_led1r2|q[7]~9_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~11_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~13_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~14_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~19_combout\ : std_logic;
SIGNAL \play_again~input_o\ : std_logic;
SIGNAL \button_play_again|sync1:resync[1]~feeder_combout\ : std_logic;
SIGNAL \button_play_again|sync1:resync[1]~q\ : std_logic;
SIGNAL \button_play_again|sync1:resync[2]~feeder_combout\ : std_logic;
SIGNAL \button_play_again|sync1:resync[2]~q\ : std_logic;
SIGNAL \button_play_again|sync1:resync[3]~feeder_combout\ : std_logic;
SIGNAL \button_play_again|sync1:resync[3]~q\ : std_logic;
SIGNAL \button_play_again|fall~0_combout\ : std_logic;
SIGNAL \button_play_again|fall~q\ : std_logic;
SIGNAL \FSM_impresion|next_st~0_combout\ : std_logic;
SIGNAL \FSM_impresion|pri_st~q\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[0]~21_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[1]~7_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[1]~8\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[2]~9_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[2]~10\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[3]~11_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[3]~12\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[4]~13_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[4]~14\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[5]~15_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[5]~16\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[6]~17_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[6]~18\ : std_logic;
SIGNAL \Vecto_to_RAM|current_address[7]~19_combout\ : std_logic;
SIGNAL \RAM|Decoder0~12_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|Mux0~0_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|Mux0~1_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|Mux0~2_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|Mux0~3_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|Mux0~4_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|Mux0~5_combout\ : std_logic;
SIGNAL \Vecto_to_RAM|Mux0~6_combout\ : std_logic;
SIGNAL \RAM|array_reg[91]~36_combout\ : std_logic;
SIGNAL \RAM|Decoder0~7_combout\ : std_logic;
SIGNAL \RAM|array_reg[19]~50_combout\ : std_logic;
SIGNAL \RAM|Decoder0~9_combout\ : std_logic;
SIGNAL \RAM|array_reg[3]~53_combout\ : std_logic;
SIGNAL \RAM|Decoder0~6_combout\ : std_logic;
SIGNAL \RAM|array_reg[35]~51_combout\ : std_logic;
SIGNAL \RAM|Decoder0~8_combout\ : std_logic;
SIGNAL \RAM|array_reg[51]~52_combout\ : std_logic;
SIGNAL \RAM|Mux0~27_combout\ : std_logic;
SIGNAL \RAM|Mux0~28_combout\ : std_logic;
SIGNAL \RAM|Decoder0~13_combout\ : std_logic;
SIGNAL \RAM|array_reg[87]~41_combout\ : std_logic;
SIGNAL \RAM|array_reg[55]~44_combout\ : std_logic;
SIGNAL \RAM|array_reg[23]~43_combout\ : std_logic;
SIGNAL \RAM|Mux0~22_combout\ : std_logic;
SIGNAL \RAM|array_reg[39]~42_combout\ : std_logic;
SIGNAL \RAM|array_reg[7]~45_combout\ : std_logic;
SIGNAL \RAM|Mux0~23_combout\ : std_logic;
SIGNAL \RAM|Decoder0~3_combout\ : std_logic;
SIGNAL \RAM|array_reg[63]~48_combout\ : std_logic;
SIGNAL \RAM|Decoder0~1_combout\ : std_logic;
SIGNAL \RAM|array_reg[31]~47_combout\ : std_logic;
SIGNAL \RAM|Mux0~24_combout\ : std_logic;
SIGNAL \RAM|Decoder0~4_combout\ : std_logic;
SIGNAL \RAM|array_reg[15]~49_combout\ : std_logic;
SIGNAL \RAM|Decoder0~2_combout\ : std_logic;
SIGNAL \RAM|array_reg[47]~46_combout\ : std_logic;
SIGNAL \RAM|Mux0~25_combout\ : std_logic;
SIGNAL \RAM|Mux0~26_combout\ : std_logic;
SIGNAL \RAM|array_reg[43]~38_combout\ : std_logic;
SIGNAL \RAM|array_reg[59]~39_combout\ : std_logic;
SIGNAL \RAM|Mux0~20_combout\ : std_logic;
SIGNAL \RAM|array_reg[27]~37_combout\ : std_logic;
SIGNAL \RAM|array_reg[11]~40_combout\ : std_logic;
SIGNAL \RAM|Mux0~21_combout\ : std_logic;
SIGNAL \RAM|Mux0~29_combout\ : std_logic;
SIGNAL \RAM|Decoder0~11_combout\ : std_logic;
SIGNAL \RAM|array_reg[90]~23_combout\ : std_logic;
SIGNAL \RAM|array_reg[42]~25_combout\ : std_logic;
SIGNAL \RAM|array_reg[58]~26_combout\ : std_logic;
SIGNAL \RAM|Mux0~12_combout\ : std_logic;
SIGNAL \RAM|array_reg[10]~27_combout\ : std_logic;
SIGNAL \RAM|array_reg[26]~24_combout\ : std_logic;
SIGNAL \RAM|Mux0~13_combout\ : std_logic;
SIGNAL \RAM|Decoder0~10_combout\ : std_logic;
SIGNAL \RAM|array_reg[86]~18_combout\ : std_logic;
SIGNAL \RAM|array_reg[46]~28_combout\ : std_logic;
SIGNAL \RAM|array_reg[14]~31_combout\ : std_logic;
SIGNAL \RAM|array_reg[62]~30_combout\ : std_logic;
SIGNAL \RAM|array_reg[30]~29_combout\ : std_logic;
SIGNAL \RAM|Mux0~14_combout\ : std_logic;
SIGNAL \RAM|Mux0~15_combout\ : std_logic;
SIGNAL \RAM|Mux0~16_combout\ : std_logic;
SIGNAL \RAM|array_reg[22]~20_combout\ : std_logic;
SIGNAL \RAM|array_reg[54]~21_combout\ : std_logic;
SIGNAL \RAM|Mux0~10_combout\ : std_logic;
SIGNAL \RAM|array_reg[38]~19_combout\ : std_logic;
SIGNAL \RAM|array_reg[6]~22_combout\ : std_logic;
SIGNAL \RAM|Mux0~11_combout\ : std_logic;
SIGNAL \RAM|array_reg[2]~35_combout\ : std_logic;
SIGNAL \RAM|array_reg[18]~32_combout\ : std_logic;
SIGNAL \RAM|array_reg[34]~33_combout\ : std_logic;
SIGNAL \RAM|array_reg[50]~34_combout\ : std_logic;
SIGNAL \RAM|Mux0~17_combout\ : std_logic;
SIGNAL \RAM|Mux0~18_combout\ : std_logic;
SIGNAL \RAM|Mux0~19_combout\ : std_logic;
SIGNAL \RAM|Mux0~30_combout\ : std_logic;
SIGNAL \RAM|Decoder0~15_combout\ : std_logic;
SIGNAL \RAM|array_reg[88]~59_combout\ : std_logic;
SIGNAL \RAM|array_reg[16]~68_combout\ : std_logic;
SIGNAL \RAM|array_reg[0]~71_combout\ : std_logic;
SIGNAL \RAM|array_reg[32]~69_combout\ : std_logic;
SIGNAL \RAM|array_reg[48]~70_combout\ : std_logic;
SIGNAL \RAM|Mux0~38_combout\ : std_logic;
SIGNAL \RAM|Mux0~39_combout\ : std_logic;
SIGNAL \RAM|Decoder0~14_combout\ : std_logic;
SIGNAL \RAM|array_reg[84]~54_combout\ : std_logic;
SIGNAL \RAM|array_reg[36]~55_combout\ : std_logic;
SIGNAL \RAM|array_reg[4]~58_combout\ : std_logic;
SIGNAL \RAM|array_reg[52]~57_combout\ : std_logic;
SIGNAL \RAM|array_reg[20]~56_combout\ : std_logic;
SIGNAL \RAM|Mux0~31_combout\ : std_logic;
SIGNAL \RAM|Mux0~32_combout\ : std_logic;
SIGNAL \RAM|array_reg[24]~60_combout\ : std_logic;
SIGNAL \RAM|array_reg[8]~63_combout\ : std_logic;
SIGNAL \RAM|array_reg[56]~62_combout\ : std_logic;
SIGNAL \RAM|array_reg[40]~61_combout\ : std_logic;
SIGNAL \RAM|Mux0~33_combout\ : std_logic;
SIGNAL \RAM|Mux0~34_combout\ : std_logic;
SIGNAL \RAM|array_reg[12]~67_combout\ : std_logic;
SIGNAL \RAM|array_reg[44]~64_combout\ : std_logic;
SIGNAL \RAM|array_reg[60]~66_combout\ : std_logic;
SIGNAL \RAM|array_reg[28]~65_combout\ : std_logic;
SIGNAL \RAM|Mux0~35_combout\ : std_logic;
SIGNAL \RAM|Mux0~36_combout\ : std_logic;
SIGNAL \RAM|Mux0~37_combout\ : std_logic;
SIGNAL \RAM|Mux0~40_combout\ : std_logic;
SIGNAL \RAM|Decoder0~5_combout\ : std_logic;
SIGNAL \RAM|array_reg[85]~5_combout\ : std_logic;
SIGNAL \RAM|array_reg[5]~9_combout\ : std_logic;
SIGNAL \RAM|array_reg[21]~7_combout\ : std_logic;
SIGNAL \RAM|array_reg[53]~8_combout\ : std_logic;
SIGNAL \RAM|Mux0~2_combout\ : std_logic;
SIGNAL \RAM|array_reg[37]~6_combout\ : std_logic;
SIGNAL \RAM|Mux0~3_combout\ : std_logic;
SIGNAL \RAM|array_reg[13]~13_combout\ : std_logic;
SIGNAL \RAM|array_reg[45]~10_combout\ : std_logic;
SIGNAL \RAM|array_reg[29]~11_combout\ : std_logic;
SIGNAL \RAM|array_reg[61]~12_combout\ : std_logic;
SIGNAL \RAM|Mux0~4_combout\ : std_logic;
SIGNAL \RAM|Mux0~5_combout\ : std_logic;
SIGNAL \RAM|Mux0~6_combout\ : std_logic;
SIGNAL \RAM|Decoder0~0_combout\ : std_logic;
SIGNAL \RAM|array_reg[89]~0_combout\ : std_logic;
SIGNAL \RAM|array_reg[1]~17_combout\ : std_logic;
SIGNAL \RAM|array_reg[49]~16_combout\ : std_logic;
SIGNAL \RAM|array_reg[33]~15_combout\ : std_logic;
SIGNAL \RAM|Mux0~7_combout\ : std_logic;
SIGNAL \RAM|array_reg[17]~14_combout\ : std_logic;
SIGNAL \RAM|Mux0~8_combout\ : std_logic;
SIGNAL \RAM|array_reg[41]~2_combout\ : std_logic;
SIGNAL \RAM|array_reg[57]~3_combout\ : std_logic;
SIGNAL \RAM|Mux0~0_combout\ : std_logic;
SIGNAL \RAM|array_reg[25]~1_combout\ : std_logic;
SIGNAL \RAM|array_reg[9]~4_combout\ : std_logic;
SIGNAL \RAM|Mux0~1_combout\ : std_logic;
SIGNAL \RAM|Mux0~9_combout\ : std_logic;
SIGNAL \RAM|Mux0~41_combout\ : std_logic;
SIGNAL \RAM|Decoder0~20_combout\ : std_logic;
SIGNAL \RAM|array_reg[119]~106_combout\ : std_logic;
SIGNAL \RAM|array_reg[117]~105_combout\ : std_logic;
SIGNAL \RAM|Mux0~62_combout\ : std_logic;
SIGNAL \RAM|array_reg[118]~104_combout\ : std_logic;
SIGNAL \RAM|array_reg[116]~107_combout\ : std_logic;
SIGNAL \RAM|Mux0~63_combout\ : std_logic;
SIGNAL \RAM|array_reg[115]~118_combout\ : std_logic;
SIGNAL \RAM|array_reg[114]~117_combout\ : std_logic;
SIGNAL \RAM|Mux0~69_combout\ : std_logic;
SIGNAL \RAM|array_reg[112]~119_combout\ : std_logic;
SIGNAL \RAM|array_reg[113]~116_combout\ : std_logic;
SIGNAL \RAM|Mux0~70_combout\ : std_logic;
SIGNAL \RAM|Decoder0~21_combout\ : std_logic;
SIGNAL \RAM|array_reg[126]~112_combout\ : std_logic;
SIGNAL \RAM|array_reg[124]~115_combout\ : std_logic;
SIGNAL \RAM|array_reg[125]~113_combout\ : std_logic;
SIGNAL \RAM|array_reg[127]~114_combout\ : std_logic;
SIGNAL \RAM|Mux0~66_combout\ : std_logic;
SIGNAL \RAM|Mux0~67_combout\ : std_logic;
SIGNAL \RAM|array_reg[120]~111_combout\ : std_logic;
SIGNAL \RAM|array_reg[121]~108_combout\ : std_logic;
SIGNAL \RAM|array_reg[122]~109_combout\ : std_logic;
SIGNAL \RAM|array_reg[123]~110_combout\ : std_logic;
SIGNAL \RAM|Mux0~64_combout\ : std_logic;
SIGNAL \RAM|Mux0~65_combout\ : std_logic;
SIGNAL \RAM|Mux0~68_combout\ : std_logic;
SIGNAL \RAM|Mux0~71_combout\ : std_logic;
SIGNAL \RAM|Decoder0~19_combout\ : std_logic;
SIGNAL \RAM|array_reg[102]~92_combout\ : std_logic;
SIGNAL \RAM|array_reg[101]~93_combout\ : std_logic;
SIGNAL \RAM|array_reg[103]~94_combout\ : std_logic;
SIGNAL \RAM|Mux0~54_combout\ : std_logic;
SIGNAL \RAM|array_reg[100]~95_combout\ : std_logic;
SIGNAL \RAM|Mux0~55_combout\ : std_logic;
SIGNAL \RAM|Decoder0~18_combout\ : std_logic;
SIGNAL \RAM|array_reg[110]~96_combout\ : std_logic;
SIGNAL \RAM|array_reg[108]~99_combout\ : std_logic;
SIGNAL \RAM|array_reg[109]~97_combout\ : std_logic;
SIGNAL \RAM|array_reg[111]~98_combout\ : std_logic;
SIGNAL \RAM|Mux0~56_combout\ : std_logic;
SIGNAL \RAM|Mux0~57_combout\ : std_logic;
SIGNAL \RAM|Mux0~58_combout\ : std_logic;
SIGNAL \RAM|array_reg[99]~102_combout\ : std_logic;
SIGNAL \RAM|array_reg[98]~101_combout\ : std_logic;
SIGNAL \RAM|Mux0~59_combout\ : std_logic;
SIGNAL \RAM|array_reg[96]~103_combout\ : std_logic;
SIGNAL \RAM|array_reg[97]~100_combout\ : std_logic;
SIGNAL \RAM|Mux0~60_combout\ : std_logic;
SIGNAL \RAM|array_reg[105]~88_combout\ : std_logic;
SIGNAL \RAM|array_reg[106]~89_combout\ : std_logic;
SIGNAL \RAM|array_reg[107]~90_combout\ : std_logic;
SIGNAL \RAM|Mux0~52_combout\ : std_logic;
SIGNAL \RAM|array_reg[104]~91_combout\ : std_logic;
SIGNAL \RAM|Mux0~53_combout\ : std_logic;
SIGNAL \RAM|Mux0~61_combout\ : std_logic;
SIGNAL \RAM|Mux0~72_combout\ : std_logic;
SIGNAL \RAM|Decoder0~17_combout\ : std_logic;
SIGNAL \RAM|array_reg[87]~80_combout\ : std_logic;
SIGNAL \RAM|Decoder0~16_combout\ : std_logic;
SIGNAL \RAM|array_reg[95]~82_combout\ : std_logic;
SIGNAL \RAM|array_reg[91]~81_combout\ : std_logic;
SIGNAL \RAM|Mux0~46_combout\ : std_logic;
SIGNAL \RAM|array_reg[83]~83_combout\ : std_logic;
SIGNAL \RAM|Mux0~47_combout\ : std_logic;
SIGNAL \RAM|array_reg[85]~76_combout\ : std_logic;
SIGNAL \RAM|array_reg[81]~79_combout\ : std_logic;
SIGNAL \RAM|array_reg[93]~78_combout\ : std_logic;
SIGNAL \RAM|array_reg[89]~77_combout\ : std_logic;
SIGNAL \RAM|Mux0~44_combout\ : std_logic;
SIGNAL \RAM|Mux0~45_combout\ : std_logic;
SIGNAL \RAM|Mux0~48_combout\ : std_logic;
SIGNAL \RAM|array_reg[82]~75_combout\ : std_logic;
SIGNAL \RAM|array_reg[86]~73_combout\ : std_logic;
SIGNAL \RAM|array_reg[94]~74_combout\ : std_logic;
SIGNAL \RAM|Mux0~42_combout\ : std_logic;
SIGNAL \RAM|array_reg[90]~72_combout\ : std_logic;
SIGNAL \RAM|Mux0~43_combout\ : std_logic;
SIGNAL \RAM|array_reg[80]~87_combout\ : std_logic;
SIGNAL \RAM|array_reg[92]~86_combout\ : std_logic;
SIGNAL \RAM|array_reg[84]~85_combout\ : std_logic;
SIGNAL \RAM|Mux0~49_combout\ : std_logic;
SIGNAL \RAM|array_reg[88]~84_combout\ : std_logic;
SIGNAL \RAM|Mux0~50_combout\ : std_logic;
SIGNAL \RAM|Mux0~51_combout\ : std_logic;
SIGNAL \RAM|Decoder0~23_combout\ : std_logic;
SIGNAL \RAM|array_reg[77]~128_combout\ : std_logic;
SIGNAL \RAM|array_reg[79]~130_combout\ : std_logic;
SIGNAL \RAM|array_reg[78]~129_combout\ : std_logic;
SIGNAL \RAM|Mux0~77_combout\ : std_logic;
SIGNAL \RAM|array_reg[76]~131_combout\ : std_logic;
SIGNAL \RAM|Mux0~78_combout\ : std_logic;
SIGNAL \RAM|array_reg[72]~127_combout\ : std_logic;
SIGNAL \RAM|array_reg[73]~125_combout\ : std_logic;
SIGNAL \RAM|array_reg[75]~126_combout\ : std_logic;
SIGNAL \RAM|Mux0~75_combout\ : std_logic;
SIGNAL \RAM|array_reg[74]~124_combout\ : std_logic;
SIGNAL \RAM|Mux0~76_combout\ : std_logic;
SIGNAL \RAM|Mux0~79_combout\ : std_logic;
SIGNAL \RAM|Decoder0~22_combout\ : std_logic;
SIGNAL \RAM|array_reg[69]~120_combout\ : std_logic;
SIGNAL \RAM|array_reg[68]~123_combout\ : std_logic;
SIGNAL \RAM|array_reg[70]~121_combout\ : std_logic;
SIGNAL \RAM|array_reg[71]~122_combout\ : std_logic;
SIGNAL \RAM|Mux0~73_combout\ : std_logic;
SIGNAL \RAM|Mux0~74_combout\ : std_logic;
SIGNAL \RAM|array_reg[66]~132_combout\ : std_logic;
SIGNAL \RAM|array_reg[67]~134_combout\ : std_logic;
SIGNAL \RAM|array_reg[65]~133_combout\ : std_logic;
SIGNAL \RAM|Mux0~80_combout\ : std_logic;
SIGNAL \RAM|array_reg[64]~135_combout\ : std_logic;
SIGNAL \RAM|Mux0~81_combout\ : std_logic;
SIGNAL \RAM|Mux0~82_combout\ : std_logic;
SIGNAL \RAM|Mux0~83_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~0_combout\ : std_logic;
SIGNAL \led_machine|Equal1~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~1_combout\ : std_logic;
SIGNAL \flipflop_led2r1|q[6]~8\ : std_logic;
SIGNAL \flipflop_led2r1|q[7]~9_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~2_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~3_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~5_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~4_combout\ : std_logic;
SIGNAL \flipflop_led1r1|q[6]~8\ : std_logic;
SIGNAL \flipflop_led1r1|q[7]~9_combout\ : std_logic;
SIGNAL \flipflop_led3r1|q[6]~9\ : std_logic;
SIGNAL \flipflop_led3r1|q[7]~10_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~6_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~7_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~20_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_3_def~21_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_4_def~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr14~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr14~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr14~combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_6_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_10_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_11_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_13_def~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr8~2_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_15_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_16_def~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr21~2_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_19_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_20_def~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr22~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr22~1_combout\ : std_logic;
SIGNAL \led_machine|WideOr22~combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_22_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_26_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_27_def~0_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_29_def~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr16~2_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_31_def~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr38~0_combout\ : std_logic;
SIGNAL \led_machine|WideOr38~1_combout\ : std_logic;
SIGNAL \FSM_impresion|PIN_32_def~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|Mux6~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|Mux5~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|Mux4~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|Mux3~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|Mux2~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|Mux1~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|Mux0~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|Mux6~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|Mux5~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|Mux4~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|Mux3~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|Mux2~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|Mux1~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|Mux0~0_combout\ : std_logic;
SIGNAL \contador_lectura|temp\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \contador_clks_juego|temp\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \flipflop_player2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL winner_timer : std_logic_vector(30 DOWNTO 0);
SIGNAL \flipflop_led1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \flipflop_led1r1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \flipflop_led2r1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \flipflop_led3r1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \flipflop_led1r2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \flipflop_led2r2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \flipflop_led3r2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \contador_print|temp\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \flipflop_player1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flipflop_rebotes|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux_velocidades|velocidad\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Vecto_to_RAM|current_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|array_reg\ : std_logic_vector(0 TO 255);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \flipflop_led1|ALT_INV_dff~0_combout\ : std_logic;
SIGNAL \flipflop_led1r1|ALT_INV_dff~0_combout\ : std_logic;
SIGNAL \Puntaje_player2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Puntaje_player1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_en <= en;
ww_play_again <= play_again;
ww_bu_r1 <= bu_r1;
ww_bd_r1 <= bd_r1;
ww_bu_r2 <= bu_r2;
ww_bd_r2 <= bd_r2;
ww_syn_clr <= syn_clr;
PIN_1 <= ww_PIN_1;
PIN_2 <= ww_PIN_2;
PIN_3 <= ww_PIN_3;
PIN_4 <= ww_PIN_4;
PIN_5 <= ww_PIN_5;
PIN_6 <= ww_PIN_6;
PIN_7 <= ww_PIN_7;
PIN_8 <= ww_PIN_8;
PIN_9 <= ww_PIN_9;
PIN_10 <= ww_PIN_10;
PIN_11 <= ww_PIN_11;
PIN_12 <= ww_PIN_12;
PIN_13 <= ww_PIN_13;
PIN_14 <= ww_PIN_14;
PIN_15 <= ww_PIN_15;
PIN_16 <= ww_PIN_16;
PIN_17 <= ww_PIN_17;
PIN_18 <= ww_PIN_18;
PIN_19 <= ww_PIN_19;
PIN_20 <= ww_PIN_20;
PIN_21 <= ww_PIN_21;
PIN_22 <= ww_PIN_22;
PIN_23 <= ww_PIN_23;
PIN_24 <= ww_PIN_24;
PIN_25 <= ww_PIN_25;
PIN_26 <= ww_PIN_26;
PIN_27 <= ww_PIN_27;
PIN_28 <= ww_PIN_28;
PIN_29 <= ww_PIN_29;
PIN_30 <= ww_PIN_30;
PIN_31 <= ww_PIN_31;
PIN_32 <= ww_PIN_32;
Score_p1 <= ww_Score_p1;
Score_p2 <= ww_Score_p2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\contador_lectura|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \contador_lectura|Equal0~combout\);

\contador_clks_juego|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \contador_clks_juego|Equal0~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\flipflop_led1|ALT_INV_dff~0_combout\ <= NOT \flipflop_led1|dff~0_combout\;
\flipflop_led1r1|ALT_INV_dff~0_combout\ <= NOT \flipflop_led1r1|dff~0_combout\;
\Puntaje_player2|ALT_INV_Mux0~0_combout\ <= NOT \Puntaje_player2|Mux0~0_combout\;
\Puntaje_player1|ALT_INV_Mux0~0_combout\ <= NOT \Puntaje_player1|Mux0~0_combout\;

-- Location: IOOBUF_X28_Y0_N16
\PIN_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr11~2_combout\,
	devoe => ww_devoe,
	o => \PIN_1~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\PIN_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr13~2_combout\,
	devoe => ww_devoe,
	o => \PIN_2~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\PIN_3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_3_def~21_combout\,
	devoe => ww_devoe,
	o => \PIN_3~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\PIN_4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_4_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_4~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\PIN_5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr14~combout\,
	devoe => ww_devoe,
	o => \PIN_5~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\PIN_6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_6_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_6~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\PIN_7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr12~2_combout\,
	devoe => ww_devoe,
	o => \PIN_7~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\PIN_8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr9~2_combout\,
	devoe => ww_devoe,
	o => \PIN_8~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\PIN_9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr7~2_combout\,
	devoe => ww_devoe,
	o => \PIN_9~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\PIN_10~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_10_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_10~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\PIN_11~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_11_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_11~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\PIN_12~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr10~2_combout\,
	devoe => ww_devoe,
	o => \PIN_12~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\PIN_13~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_13_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_13~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\PIN_14~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr8~2_combout\,
	devoe => ww_devoe,
	o => \PIN_14~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\PIN_15~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_15_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_15~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\PIN_16~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_16_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_16~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\PIN_17~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr19~2_combout\,
	devoe => ww_devoe,
	o => \PIN_17~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\PIN_18~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr21~2_combout\,
	devoe => ww_devoe,
	o => \PIN_18~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\PIN_19~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_19_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_19~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\PIN_20~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_20_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_20~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\PIN_21~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr22~combout\,
	devoe => ww_devoe,
	o => \PIN_21~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\PIN_22~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_22_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_22~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\PIN_23~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => \PIN_23~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\PIN_24~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr17~2_combout\,
	devoe => ww_devoe,
	o => \PIN_24~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\PIN_25~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr15~2_combout\,
	devoe => ww_devoe,
	o => \PIN_25~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\PIN_26~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_26_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_26~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\PIN_27~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_27_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_27~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\PIN_28~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr18~2_combout\,
	devoe => ww_devoe,
	o => \PIN_28~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\PIN_29~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_29_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_29~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\PIN_30~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_machine|WideOr16~2_combout\,
	devoe => ww_devoe,
	o => \PIN_30~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\PIN_31~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_31_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_31~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\PIN_32~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_impresion|PIN_32_def~0_combout\,
	devoe => ww_devoe,
	o => \PIN_32~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\Score_p1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Score_p1[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\Score_p1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Score_p1[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\Score_p1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Score_p1[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\Score_p1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Score_p1[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\Score_p1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Score_p1[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\Score_p1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Score_p1[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\Score_p1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Score_p1[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Score_p2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Score_p2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Score_p2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Score_p2[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Score_p2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Score_p2[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Score_p2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Score_p2[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Score_p2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Score_p2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Score_p2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Score_p2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\Score_p2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Puntaje_player2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Score_p2[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X0_Y27_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X22_Y12_N10
\contador_print|temp[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[0]~23_combout\ = \contador_print|temp\(0) $ (VCC)
-- \contador_print|temp[0]~24\ = CARRY(\contador_print|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(0),
	datad => VCC,
	combout => \contador_print|temp[0]~23_combout\,
	cout => \contador_print|temp[0]~24\);

-- Location: IOIBUF_X0_Y24_N1
\syn_clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_syn_clr,
	o => \syn_clr~input_o\);

-- Location: LCCOMB_X22_Y12_N12
\contador_print|temp[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[1]~25_combout\ = (\contador_print|temp\(1) & (!\contador_print|temp[0]~24\)) # (!\contador_print|temp\(1) & ((\contador_print|temp[0]~24\) # (GND)))
-- \contador_print|temp[1]~26\ = CARRY((!\contador_print|temp[0]~24\) # (!\contador_print|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(1),
	datad => VCC,
	cin => \contador_print|temp[0]~24\,
	combout => \contador_print|temp[1]~25_combout\,
	cout => \contador_print|temp[1]~26\);

-- Location: FF_X22_Y12_N13
\contador_print|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(1));

-- Location: LCCOMB_X22_Y12_N14
\contador_print|temp[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[2]~27_combout\ = (\contador_print|temp\(2) & (\contador_print|temp[1]~26\ $ (GND))) # (!\contador_print|temp\(2) & (!\contador_print|temp[1]~26\ & VCC))
-- \contador_print|temp[2]~28\ = CARRY((\contador_print|temp\(2) & !\contador_print|temp[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(2),
	datad => VCC,
	cin => \contador_print|temp[1]~26\,
	combout => \contador_print|temp[2]~27_combout\,
	cout => \contador_print|temp[2]~28\);

-- Location: FF_X22_Y12_N15
\contador_print|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[2]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(2));

-- Location: LCCOMB_X22_Y12_N16
\contador_print|temp[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[3]~29_combout\ = (\contador_print|temp\(3) & (!\contador_print|temp[2]~28\)) # (!\contador_print|temp\(3) & ((\contador_print|temp[2]~28\) # (GND)))
-- \contador_print|temp[3]~30\ = CARRY((!\contador_print|temp[2]~28\) # (!\contador_print|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(3),
	datad => VCC,
	cin => \contador_print|temp[2]~28\,
	combout => \contador_print|temp[3]~29_combout\,
	cout => \contador_print|temp[3]~30\);

-- Location: FF_X22_Y12_N17
\contador_print|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[3]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(3));

-- Location: LCCOMB_X22_Y12_N18
\contador_print|temp[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[4]~31_combout\ = (\contador_print|temp\(4) & (\contador_print|temp[3]~30\ $ (GND))) # (!\contador_print|temp\(4) & (!\contador_print|temp[3]~30\ & VCC))
-- \contador_print|temp[4]~32\ = CARRY((\contador_print|temp\(4) & !\contador_print|temp[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(4),
	datad => VCC,
	cin => \contador_print|temp[3]~30\,
	combout => \contador_print|temp[4]~31_combout\,
	cout => \contador_print|temp[4]~32\);

-- Location: FF_X22_Y12_N19
\contador_print|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[4]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(4));

-- Location: LCCOMB_X22_Y12_N20
\contador_print|temp[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[5]~33_combout\ = (\contador_print|temp\(5) & (!\contador_print|temp[4]~32\)) # (!\contador_print|temp\(5) & ((\contador_print|temp[4]~32\) # (GND)))
-- \contador_print|temp[5]~34\ = CARRY((!\contador_print|temp[4]~32\) # (!\contador_print|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(5),
	datad => VCC,
	cin => \contador_print|temp[4]~32\,
	combout => \contador_print|temp[5]~33_combout\,
	cout => \contador_print|temp[5]~34\);

-- Location: FF_X22_Y12_N21
\contador_print|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[5]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(5));

-- Location: LCCOMB_X22_Y12_N22
\contador_print|temp[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[6]~35_combout\ = (\contador_print|temp\(6) & (\contador_print|temp[5]~34\ $ (GND))) # (!\contador_print|temp\(6) & (!\contador_print|temp[5]~34\ & VCC))
-- \contador_print|temp[6]~36\ = CARRY((\contador_print|temp\(6) & !\contador_print|temp[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(6),
	datad => VCC,
	cin => \contador_print|temp[5]~34\,
	combout => \contador_print|temp[6]~35_combout\,
	cout => \contador_print|temp[6]~36\);

-- Location: FF_X22_Y12_N23
\contador_print|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[6]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(6));

-- Location: LCCOMB_X22_Y12_N24
\contador_print|temp[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[7]~37_combout\ = (\contador_print|temp\(7) & (!\contador_print|temp[6]~36\)) # (!\contador_print|temp\(7) & ((\contador_print|temp[6]~36\) # (GND)))
-- \contador_print|temp[7]~38\ = CARRY((!\contador_print|temp[6]~36\) # (!\contador_print|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(7),
	datad => VCC,
	cin => \contador_print|temp[6]~36\,
	combout => \contador_print|temp[7]~37_combout\,
	cout => \contador_print|temp[7]~38\);

-- Location: FF_X22_Y12_N25
\contador_print|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[7]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(7));

-- Location: LCCOMB_X22_Y12_N26
\contador_print|temp[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[8]~39_combout\ = (\contador_print|temp\(8) & (\contador_print|temp[7]~38\ $ (GND))) # (!\contador_print|temp\(8) & (!\contador_print|temp[7]~38\ & VCC))
-- \contador_print|temp[8]~40\ = CARRY((\contador_print|temp\(8) & !\contador_print|temp[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(8),
	datad => VCC,
	cin => \contador_print|temp[7]~38\,
	combout => \contador_print|temp[8]~39_combout\,
	cout => \contador_print|temp[8]~40\);

-- Location: FF_X22_Y12_N27
\contador_print|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[8]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(8));

-- Location: LCCOMB_X22_Y12_N28
\contador_print|temp[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[9]~41_combout\ = (\contador_print|temp\(9) & (!\contador_print|temp[8]~40\)) # (!\contador_print|temp\(9) & ((\contador_print|temp[8]~40\) # (GND)))
-- \contador_print|temp[9]~42\ = CARRY((!\contador_print|temp[8]~40\) # (!\contador_print|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(9),
	datad => VCC,
	cin => \contador_print|temp[8]~40\,
	combout => \contador_print|temp[9]~41_combout\,
	cout => \contador_print|temp[9]~42\);

-- Location: FF_X22_Y12_N29
\contador_print|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[9]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(9));

-- Location: LCCOMB_X22_Y12_N30
\contador_print|temp[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[10]~43_combout\ = (\contador_print|temp\(10) & (\contador_print|temp[9]~42\ $ (GND))) # (!\contador_print|temp\(10) & (!\contador_print|temp[9]~42\ & VCC))
-- \contador_print|temp[10]~44\ = CARRY((\contador_print|temp\(10) & !\contador_print|temp[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(10),
	datad => VCC,
	cin => \contador_print|temp[9]~42\,
	combout => \contador_print|temp[10]~43_combout\,
	cout => \contador_print|temp[10]~44\);

-- Location: FF_X22_Y12_N31
\contador_print|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[10]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(10));

-- Location: LCCOMB_X22_Y11_N0
\contador_print|temp[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[11]~45_combout\ = (\contador_print|temp\(11) & (!\contador_print|temp[10]~44\)) # (!\contador_print|temp\(11) & ((\contador_print|temp[10]~44\) # (GND)))
-- \contador_print|temp[11]~46\ = CARRY((!\contador_print|temp[10]~44\) # (!\contador_print|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(11),
	datad => VCC,
	cin => \contador_print|temp[10]~44\,
	combout => \contador_print|temp[11]~45_combout\,
	cout => \contador_print|temp[11]~46\);

-- Location: FF_X22_Y11_N1
\contador_print|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[11]~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(11));

-- Location: LCCOMB_X22_Y11_N2
\contador_print|temp[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[12]~47_combout\ = (\contador_print|temp\(12) & (\contador_print|temp[11]~46\ $ (GND))) # (!\contador_print|temp\(12) & (!\contador_print|temp[11]~46\ & VCC))
-- \contador_print|temp[12]~48\ = CARRY((\contador_print|temp\(12) & !\contador_print|temp[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(12),
	datad => VCC,
	cin => \contador_print|temp[11]~46\,
	combout => \contador_print|temp[12]~47_combout\,
	cout => \contador_print|temp[12]~48\);

-- Location: FF_X22_Y11_N3
\contador_print|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[12]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(12));

-- Location: LCCOMB_X22_Y11_N4
\contador_print|temp[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[13]~49_combout\ = (\contador_print|temp\(13) & (!\contador_print|temp[12]~48\)) # (!\contador_print|temp\(13) & ((\contador_print|temp[12]~48\) # (GND)))
-- \contador_print|temp[13]~50\ = CARRY((!\contador_print|temp[12]~48\) # (!\contador_print|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(13),
	datad => VCC,
	cin => \contador_print|temp[12]~48\,
	combout => \contador_print|temp[13]~49_combout\,
	cout => \contador_print|temp[13]~50\);

-- Location: FF_X22_Y11_N5
\contador_print|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[13]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(13));

-- Location: LCCOMB_X22_Y11_N6
\contador_print|temp[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[14]~51_combout\ = (\contador_print|temp\(14) & (\contador_print|temp[13]~50\ $ (GND))) # (!\contador_print|temp\(14) & (!\contador_print|temp[13]~50\ & VCC))
-- \contador_print|temp[14]~52\ = CARRY((\contador_print|temp\(14) & !\contador_print|temp[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(14),
	datad => VCC,
	cin => \contador_print|temp[13]~50\,
	combout => \contador_print|temp[14]~51_combout\,
	cout => \contador_print|temp[14]~52\);

-- Location: FF_X22_Y11_N7
\contador_print|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[14]~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(14));

-- Location: LCCOMB_X22_Y11_N8
\contador_print|temp[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[15]~53_combout\ = (\contador_print|temp\(15) & (!\contador_print|temp[14]~52\)) # (!\contador_print|temp\(15) & ((\contador_print|temp[14]~52\) # (GND)))
-- \contador_print|temp[15]~54\ = CARRY((!\contador_print|temp[14]~52\) # (!\contador_print|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(15),
	datad => VCC,
	cin => \contador_print|temp[14]~52\,
	combout => \contador_print|temp[15]~53_combout\,
	cout => \contador_print|temp[15]~54\);

-- Location: FF_X22_Y11_N9
\contador_print|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[15]~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(15));

-- Location: LCCOMB_X22_Y11_N10
\contador_print|temp[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[16]~55_combout\ = (\contador_print|temp\(16) & (\contador_print|temp[15]~54\ $ (GND))) # (!\contador_print|temp\(16) & (!\contador_print|temp[15]~54\ & VCC))
-- \contador_print|temp[16]~56\ = CARRY((\contador_print|temp\(16) & !\contador_print|temp[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(16),
	datad => VCC,
	cin => \contador_print|temp[15]~54\,
	combout => \contador_print|temp[16]~55_combout\,
	cout => \contador_print|temp[16]~56\);

-- Location: FF_X22_Y11_N11
\contador_print|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[16]~55_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(16));

-- Location: LCCOMB_X22_Y11_N12
\contador_print|temp[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[17]~57_combout\ = (\contador_print|temp\(17) & (!\contador_print|temp[16]~56\)) # (!\contador_print|temp\(17) & ((\contador_print|temp[16]~56\) # (GND)))
-- \contador_print|temp[17]~58\ = CARRY((!\contador_print|temp[16]~56\) # (!\contador_print|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(17),
	datad => VCC,
	cin => \contador_print|temp[16]~56\,
	combout => \contador_print|temp[17]~57_combout\,
	cout => \contador_print|temp[17]~58\);

-- Location: FF_X22_Y11_N13
\contador_print|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[17]~57_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(17));

-- Location: LCCOMB_X22_Y11_N14
\contador_print|temp[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[18]~59_combout\ = (\contador_print|temp\(18) & (\contador_print|temp[17]~58\ $ (GND))) # (!\contador_print|temp\(18) & (!\contador_print|temp[17]~58\ & VCC))
-- \contador_print|temp[18]~60\ = CARRY((\contador_print|temp\(18) & !\contador_print|temp[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(18),
	datad => VCC,
	cin => \contador_print|temp[17]~58\,
	combout => \contador_print|temp[18]~59_combout\,
	cout => \contador_print|temp[18]~60\);

-- Location: FF_X22_Y11_N15
\contador_print|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[18]~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(18));

-- Location: LCCOMB_X22_Y11_N16
\contador_print|temp[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[19]~61_combout\ = (\contador_print|temp\(19) & (!\contador_print|temp[18]~60\)) # (!\contador_print|temp\(19) & ((\contador_print|temp[18]~60\) # (GND)))
-- \contador_print|temp[19]~62\ = CARRY((!\contador_print|temp[18]~60\) # (!\contador_print|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(19),
	datad => VCC,
	cin => \contador_print|temp[18]~60\,
	combout => \contador_print|temp[19]~61_combout\,
	cout => \contador_print|temp[19]~62\);

-- Location: FF_X22_Y11_N17
\contador_print|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[19]~61_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(19));

-- Location: LCCOMB_X22_Y11_N18
\contador_print|temp[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[20]~63_combout\ = (\contador_print|temp\(20) & (\contador_print|temp[19]~62\ $ (GND))) # (!\contador_print|temp\(20) & (!\contador_print|temp[19]~62\ & VCC))
-- \contador_print|temp[20]~64\ = CARRY((\contador_print|temp\(20) & !\contador_print|temp[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(20),
	datad => VCC,
	cin => \contador_print|temp[19]~62\,
	combout => \contador_print|temp[20]~63_combout\,
	cout => \contador_print|temp[20]~64\);

-- Location: FF_X22_Y11_N19
\contador_print|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[20]~63_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(20));

-- Location: LCCOMB_X22_Y11_N20
\contador_print|temp[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[21]~65_combout\ = (\contador_print|temp\(21) & (!\contador_print|temp[20]~64\)) # (!\contador_print|temp\(21) & ((\contador_print|temp[20]~64\) # (GND)))
-- \contador_print|temp[21]~66\ = CARRY((!\contador_print|temp[20]~64\) # (!\contador_print|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(21),
	datad => VCC,
	cin => \contador_print|temp[20]~64\,
	combout => \contador_print|temp[21]~65_combout\,
	cout => \contador_print|temp[21]~66\);

-- Location: FF_X22_Y11_N21
\contador_print|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[21]~65_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(21));

-- Location: LCCOMB_X22_Y11_N22
\contador_print|temp[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|temp[22]~67_combout\ = \contador_print|temp\(22) $ (!\contador_print|temp[21]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(22),
	cin => \contador_print|temp[21]~66\,
	combout => \contador_print|temp[22]~67_combout\);

-- Location: FF_X22_Y11_N23
\contador_print|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[22]~67_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(22));

-- Location: LCCOMB_X22_Y11_N26
\contador_print|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~1_combout\ = (!\contador_print|temp\(17) & (!\contador_print|temp\(20) & (!\contador_print|temp\(18) & !\contador_print|temp\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(17),
	datab => \contador_print|temp\(20),
	datac => \contador_print|temp\(18),
	datad => \contador_print|temp\(19),
	combout => \contador_print|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y11_N28
\contador_print|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~0_combout\ = (!\contador_print|temp\(16) & (!\contador_print|temp\(13) & (!\contador_print|temp\(15) & !\contador_print|temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(16),
	datab => \contador_print|temp\(13),
	datac => \contador_print|temp\(15),
	datad => \contador_print|temp\(14),
	combout => \contador_print|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y11_N24
\contador_print|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~2_combout\ = (!\contador_print|temp\(22) & (!\contador_print|temp\(21) & (\contador_print|Equal0~1_combout\ & \contador_print|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(22),
	datab => \contador_print|temp\(21),
	datac => \contador_print|Equal0~1_combout\,
	datad => \contador_print|Equal0~0_combout\,
	combout => \contador_print|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y12_N6
\contador_print|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~4_combout\ = (\contador_print|temp\(7) & (\contador_print|temp\(8) & \contador_print|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|temp\(7),
	datac => \contador_print|temp\(8),
	datad => \contador_print|temp\(9),
	combout => \contador_print|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y11_N2
\contador_print|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|LessThan0~0_combout\ = (!\contador_print|temp\(6) & (!\contador_print|temp\(4) & (!\contador_print|temp\(3) & !\contador_print|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(6),
	datab => \contador_print|temp\(4),
	datac => \contador_print|temp\(3),
	datad => \contador_print|temp\(5),
	combout => \contador_print|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y11_N4
\contador_print|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|LessThan0~1_combout\ = (!\contador_print|temp\(11) & (!\contador_print|temp\(10) & ((\contador_print|LessThan0~0_combout\) # (!\contador_print|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(11),
	datab => \contador_print|temp\(10),
	datac => \contador_print|Equal0~4_combout\,
	datad => \contador_print|LessThan0~0_combout\,
	combout => \contador_print|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y11_N30
\contador_print|count_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|count_next~0_combout\ = (\syn_clr~input_o\) # (((\contador_print|temp\(12) & !\contador_print|LessThan0~1_combout\)) # (!\contador_print|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_clr~input_o\,
	datab => \contador_print|temp\(12),
	datac => \contador_print|Equal0~2_combout\,
	datad => \contador_print|LessThan0~1_combout\,
	combout => \contador_print|count_next~0_combout\);

-- Location: FF_X22_Y12_N11
\contador_print|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_print|temp[0]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_print|count_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_print|temp\(0));

-- Location: LCCOMB_X22_Y12_N8
\contador_print|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~3_combout\ = (!\contador_print|temp\(0) & (!\contador_print|temp\(5) & (!\contador_print|temp\(6) & !\contador_print|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(0),
	datab => \contador_print|temp\(5),
	datac => \contador_print|temp\(6),
	datad => \contador_print|temp\(4),
	combout => \contador_print|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y12_N4
\contador_print|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~5_combout\ = (!\contador_print|temp\(10) & (!\contador_print|temp\(2) & (!\contador_print|temp\(11) & \contador_print|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(10),
	datab => \contador_print|temp\(2),
	datac => \contador_print|temp\(11),
	datad => \contador_print|temp\(3),
	combout => \contador_print|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y12_N2
\contador_print|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~6_combout\ = (\contador_print|temp\(12) & (!\contador_print|temp\(1) & (\contador_print|Equal0~5_combout\ & \contador_print|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_print|temp\(12),
	datab => \contador_print|temp\(1),
	datac => \contador_print|Equal0~5_combout\,
	datad => \contador_print|Equal0~4_combout\,
	combout => \contador_print|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y12_N0
\contador_print|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_print|Equal0~7_combout\ = (\contador_print|Equal0~3_combout\ & (\contador_print|Equal0~6_combout\ & \contador_print|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_print|Equal0~3_combout\,
	datac => \contador_print|Equal0~6_combout\,
	datad => \contador_print|Equal0~2_combout\,
	combout => \contador_print|Equal0~7_combout\);

-- Location: FF_X23_Y12_N11
\led_machine|pri_st.LED_69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_68~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_69~q\);

-- Location: FF_X21_Y13_N19
\led_machine|pri_st.LED_70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_69~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_70~q\);

-- Location: LCCOMB_X21_Y13_N0
\led_machine|pri_st.LED_71~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_71~feeder_combout\ = \led_machine|pri_st.LED_70~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_70~q\,
	combout => \led_machine|pri_st.LED_71~feeder_combout\);

-- Location: FF_X21_Y13_N1
\led_machine|pri_st.LED_71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_71~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_71~q\);

-- Location: LCCOMB_X21_Y13_N28
\led_machine|pri_st.LED_72~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_72~feeder_combout\ = \led_machine|pri_st.LED_71~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_71~q\,
	combout => \led_machine|pri_st.LED_72~feeder_combout\);

-- Location: FF_X21_Y13_N29
\led_machine|pri_st.LED_72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_72~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_72~q\);

-- Location: FF_X21_Y12_N7
\led_machine|pri_st.LED_73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_72~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_73~q\);

-- Location: LCCOMB_X21_Y12_N2
\led_machine|pri_st.LED_74~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_74~feeder_combout\ = \led_machine|pri_st.LED_73~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_73~q\,
	combout => \led_machine|pri_st.LED_74~feeder_combout\);

-- Location: FF_X21_Y12_N3
\led_machine|pri_st.LED_74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_74~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_74~q\);

-- Location: LCCOMB_X21_Y12_N14
\led_machine|pri_st.LED_75~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_75~feeder_combout\ = \led_machine|pri_st.LED_74~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_74~q\,
	combout => \led_machine|pri_st.LED_75~feeder_combout\);

-- Location: FF_X21_Y12_N15
\led_machine|pri_st.LED_75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_75~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_75~q\);

-- Location: FF_X21_Y12_N25
\led_machine|pri_st.LED_76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_75~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_76~q\);

-- Location: LCCOMB_X21_Y11_N18
\led_machine|pri_st.LED_77~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_77~feeder_combout\ = \led_machine|pri_st.LED_76~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_76~q\,
	combout => \led_machine|pri_st.LED_77~feeder_combout\);

-- Location: FF_X21_Y11_N19
\led_machine|pri_st.LED_77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_77~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_77~q\);

-- Location: LCCOMB_X21_Y11_N10
\led_machine|pri_st.LED_78~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_78~feeder_combout\ = \led_machine|pri_st.LED_77~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_77~q\,
	combout => \led_machine|pri_st.LED_78~feeder_combout\);

-- Location: FF_X21_Y11_N11
\led_machine|pri_st.LED_78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_78~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_78~q\);

-- Location: LCCOMB_X21_Y11_N0
\led_machine|pri_st.LED_79~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_79~feeder_combout\ = \led_machine|pri_st.LED_78~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_78~q\,
	combout => \led_machine|pri_st.LED_79~feeder_combout\);

-- Location: FF_X21_Y11_N1
\led_machine|pri_st.LED_79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_79~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_79~q\);

-- Location: LCCOMB_X24_Y12_N2
\led_machine|pri_st.LED_80~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_80~feeder_combout\ = \led_machine|pri_st.LED_79~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_79~q\,
	combout => \led_machine|pri_st.LED_80~feeder_combout\);

-- Location: FF_X24_Y12_N3
\led_machine|pri_st.LED_80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_80~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_80~q\);

-- Location: LCCOMB_X24_Y12_N30
\led_machine|pri_st.LED_81~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_81~feeder_combout\ = \led_machine|pri_st.LED_80~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_80~q\,
	combout => \led_machine|pri_st.LED_81~feeder_combout\);

-- Location: FF_X24_Y12_N31
\led_machine|pri_st.LED_81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_81~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_81~q\);

-- Location: FF_X23_Y12_N7
\led_machine|pri_st.LED_82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_81~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_82~q\);

-- Location: LCCOMB_X23_Y12_N14
\led_machine|pri_st.LED_83~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_83~feeder_combout\ = \led_machine|pri_st.LED_82~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_82~q\,
	combout => \led_machine|pri_st.LED_83~feeder_combout\);

-- Location: FF_X23_Y12_N15
\led_machine|pri_st.LED_83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_83~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_83~q\);

-- Location: FF_X23_Y12_N19
\led_machine|pri_st.LED_84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_83~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_84~q\);

-- Location: LCCOMB_X24_Y12_N24
\led_machine|pri_st.LED_85~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_85~feeder_combout\ = \led_machine|pri_st.LED_84~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_84~q\,
	combout => \led_machine|pri_st.LED_85~feeder_combout\);

-- Location: FF_X24_Y12_N25
\led_machine|pri_st.LED_85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_85~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_85~q\);

-- Location: LCCOMB_X21_Y13_N14
\led_machine|pri_st.LED_86~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_86~feeder_combout\ = \led_machine|pri_st.LED_85~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|pri_st.LED_85~q\,
	combout => \led_machine|pri_st.LED_86~feeder_combout\);

-- Location: FF_X21_Y13_N15
\led_machine|pri_st.LED_86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_86~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_86~q\);

-- Location: FF_X21_Y13_N17
\led_machine|pri_st.LED_87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_86~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_87~q\);

-- Location: LCCOMB_X21_Y13_N6
\led_machine|pri_st.LED_88~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_88~feeder_combout\ = \led_machine|pri_st.LED_87~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_87~q\,
	combout => \led_machine|pri_st.LED_88~feeder_combout\);

-- Location: FF_X21_Y13_N7
\led_machine|pri_st.LED_88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_88~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_88~q\);

-- Location: LCCOMB_X21_Y12_N0
\led_machine|pri_st.LED_89~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_89~feeder_combout\ = \led_machine|pri_st.LED_88~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_88~q\,
	combout => \led_machine|pri_st.LED_89~feeder_combout\);

-- Location: FF_X21_Y12_N1
\led_machine|pri_st.LED_89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_89~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_89~q\);

-- Location: LCCOMB_X21_Y12_N10
\led_machine|pri_st.LED_90~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_90~feeder_combout\ = \led_machine|pri_st.LED_89~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_89~q\,
	combout => \led_machine|pri_st.LED_90~feeder_combout\);

-- Location: FF_X21_Y12_N11
\led_machine|pri_st.LED_90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_90~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_90~q\);

-- Location: LCCOMB_X21_Y12_N8
\led_machine|pri_st.LED_91~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_91~feeder_combout\ = \led_machine|pri_st.LED_90~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_90~q\,
	combout => \led_machine|pri_st.LED_91~feeder_combout\);

-- Location: FF_X21_Y12_N9
\led_machine|pri_st.LED_91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_91~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_91~q\);

-- Location: FF_X21_Y12_N17
\led_machine|pri_st.LED_92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_91~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_92~q\);

-- Location: FF_X21_Y11_N21
\led_machine|pri_st.LED_93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_92~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_93~q\);

-- Location: LCCOMB_X21_Y11_N28
\led_machine|pri_st.LED_94~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_94~feeder_combout\ = \led_machine|pri_st.LED_93~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_93~q\,
	combout => \led_machine|pri_st.LED_94~feeder_combout\);

-- Location: FF_X21_Y11_N29
\led_machine|pri_st.LED_94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_94~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_94~q\);

-- Location: LCCOMB_X21_Y11_N26
\led_machine|pri_st.LED_95~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_95~feeder_combout\ = \led_machine|pri_st.LED_94~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_94~q\,
	combout => \led_machine|pri_st.LED_95~feeder_combout\);

-- Location: FF_X21_Y11_N27
\led_machine|pri_st.LED_95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_95~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_95~q\);

-- Location: FF_X21_Y11_N17
\led_machine|pri_st.LED_96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_95~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_96~q\);

-- Location: LCCOMB_X23_Y12_N4
\led_machine|pri_st.LED_97~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_97~feeder_combout\ = \led_machine|pri_st.LED_96~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_96~q\,
	combout => \led_machine|pri_st.LED_97~feeder_combout\);

-- Location: FF_X23_Y12_N5
\led_machine|pri_st.LED_97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_97~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_97~q\);

-- Location: FF_X23_Y12_N1
\led_machine|pri_st.LED_98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_97~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_98~q\);

-- Location: LCCOMB_X23_Y12_N20
\led_machine|pri_st.LED_99~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_99~feeder_combout\ = \led_machine|pri_st.LED_98~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_98~q\,
	combout => \led_machine|pri_st.LED_99~feeder_combout\);

-- Location: FF_X23_Y12_N21
\led_machine|pri_st.LED_99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_99~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_99~q\);

-- Location: FF_X23_Y12_N31
\led_machine|pri_st.LED_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_99~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_100~q\);

-- Location: LCCOMB_X24_Y12_N0
\led_machine|pri_st.LED_101~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_101~feeder_combout\ = \led_machine|pri_st.LED_100~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|pri_st.LED_100~q\,
	combout => \led_machine|pri_st.LED_101~feeder_combout\);

-- Location: FF_X24_Y12_N1
\led_machine|pri_st.LED_101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_101~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_101~q\);

-- Location: LCCOMB_X21_Y13_N2
\led_machine|pri_st.LED_102~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_102~feeder_combout\ = \led_machine|pri_st.LED_101~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_101~q\,
	combout => \led_machine|pri_st.LED_102~feeder_combout\);

-- Location: FF_X21_Y13_N3
\led_machine|pri_st.LED_102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_102~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_102~q\);

-- Location: LCCOMB_X22_Y13_N2
\led_machine|pri_st.LED_103~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_103~feeder_combout\ = \led_machine|pri_st.LED_102~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_102~q\,
	combout => \led_machine|pri_st.LED_103~feeder_combout\);

-- Location: FF_X22_Y13_N3
\led_machine|pri_st.LED_103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_103~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_103~q\);

-- Location: LCCOMB_X21_Y13_N26
\led_machine|pri_st.LED_104~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_104~feeder_combout\ = \led_machine|pri_st.LED_103~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_103~q\,
	combout => \led_machine|pri_st.LED_104~feeder_combout\);

-- Location: FF_X21_Y13_N27
\led_machine|pri_st.LED_104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_104~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_104~q\);

-- Location: LCCOMB_X21_Y12_N18
\led_machine|pri_st.LED_105~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_105~feeder_combout\ = \led_machine|pri_st.LED_104~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_104~q\,
	combout => \led_machine|pri_st.LED_105~feeder_combout\);

-- Location: FF_X21_Y12_N19
\led_machine|pri_st.LED_105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_105~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_105~q\);

-- Location: LCCOMB_X21_Y12_N26
\led_machine|pri_st.LED_106~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_106~feeder_combout\ = \led_machine|pri_st.LED_105~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_105~q\,
	combout => \led_machine|pri_st.LED_106~feeder_combout\);

-- Location: FF_X21_Y12_N27
\led_machine|pri_st.LED_106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_106~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_106~q\);

-- Location: FF_X21_Y12_N29
\led_machine|pri_st.LED_107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_106~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_107~q\);

-- Location: LCCOMB_X21_Y12_N12
\led_machine|pri_st.LED_108~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_108~feeder_combout\ = \led_machine|pri_st.LED_107~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_107~q\,
	combout => \led_machine|pri_st.LED_108~feeder_combout\);

-- Location: FF_X21_Y12_N13
\led_machine|pri_st.LED_108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_108~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_108~q\);

-- Location: FF_X21_Y11_N13
\led_machine|pri_st.LED_109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_108~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_109~q\);

-- Location: LCCOMB_X21_Y11_N14
\led_machine|pri_st.LED_110~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_110~feeder_combout\ = \led_machine|pri_st.LED_109~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_109~q\,
	combout => \led_machine|pri_st.LED_110~feeder_combout\);

-- Location: FF_X21_Y11_N15
\led_machine|pri_st.LED_110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_110~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_110~q\);

-- Location: FF_X21_Y11_N31
\led_machine|pri_st.LED_111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_110~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_111~q\);

-- Location: FF_X21_Y11_N25
\led_machine|pri_st.LED_112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_111~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_112~q\);

-- Location: FF_X23_Y12_N3
\led_machine|pri_st.LED_113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_112~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_113~q\);

-- Location: FF_X23_Y12_N27
\led_machine|pri_st.LED_114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_113~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_114~q\);

-- Location: FF_X23_Y12_N23
\led_machine|pri_st.LED_115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_114~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_115~q\);

-- Location: FF_X23_Y12_N13
\led_machine|pri_st.LED_116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_115~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_116~q\);

-- Location: LCCOMB_X24_Y12_N10
\led_machine|pri_st.LED_117~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_117~feeder_combout\ = \led_machine|pri_st.LED_116~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_116~q\,
	combout => \led_machine|pri_st.LED_117~feeder_combout\);

-- Location: FF_X24_Y12_N11
\led_machine|pri_st.LED_117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_117~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_117~q\);

-- Location: FF_X21_Y13_N9
\led_machine|pri_st.LED_118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_117~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_118~q\);

-- Location: FF_X21_Y13_N23
\led_machine|pri_st.LED_119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_118~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_119~q\);

-- Location: FF_X21_Y13_N31
\led_machine|pri_st.LED_120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_119~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_120~q\);

-- Location: FF_X21_Y12_N5
\led_machine|pri_st.LED_121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_120~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_121~q\);

-- Location: FF_X21_Y12_N31
\led_machine|pri_st.LED_122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_121~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_122~q\);

-- Location: FF_X21_Y12_N23
\led_machine|pri_st.LED_123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_122~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_123~q\);

-- Location: FF_X21_Y12_N21
\led_machine|pri_st.LED_124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_123~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_124~q\);

-- Location: FF_X21_Y11_N5
\led_machine|pri_st.LED_125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_124~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_125~q\);

-- Location: FF_X21_Y11_N9
\led_machine|pri_st.LED_126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_125~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_126~q\);

-- Location: FF_X21_Y11_N23
\led_machine|pri_st.LED_127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_126~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_127~q\);

-- Location: FF_X21_Y11_N7
\led_machine|pri_st.LED_128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_127~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_128~q\);

-- Location: LCCOMB_X24_Y12_N18
\led_machine|pri_st.LED_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_1~0_combout\ = !\led_machine|pri_st.LED_128~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_128~q\,
	combout => \led_machine|pri_st.LED_1~0_combout\);

-- Location: FF_X24_Y12_N19
\led_machine|pri_st.LED_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_1~q\);

-- Location: LCCOMB_X20_Y12_N24
\led_machine|pri_st.LED_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_2~0_combout\ = !\led_machine|pri_st.LED_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_1~q\,
	combout => \led_machine|pri_st.LED_2~0_combout\);

-- Location: FF_X20_Y12_N25
\led_machine|pri_st.LED_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_2~q\);

-- Location: LCCOMB_X20_Y12_N22
\led_machine|pri_st.LED_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_3~feeder_combout\ = \led_machine|pri_st.LED_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_2~q\,
	combout => \led_machine|pri_st.LED_3~feeder_combout\);

-- Location: FF_X20_Y12_N23
\led_machine|pri_st.LED_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_3~q\);

-- Location: FF_X20_Y12_N3
\led_machine|pri_st.LED_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_4~q\);

-- Location: LCCOMB_X21_Y10_N20
\led_machine|pri_st.LED_5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_5~feeder_combout\ = \led_machine|pri_st.LED_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_4~q\,
	combout => \led_machine|pri_st.LED_5~feeder_combout\);

-- Location: FF_X21_Y10_N21
\led_machine|pri_st.LED_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_5~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_5~q\);

-- Location: LCCOMB_X21_Y10_N18
\led_machine|pri_st.LED_6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_6~feeder_combout\ = \led_machine|pri_st.LED_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_5~q\,
	combout => \led_machine|pri_st.LED_6~feeder_combout\);

-- Location: FF_X21_Y10_N19
\led_machine|pri_st.LED_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_6~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_6~q\);

-- Location: LCCOMB_X21_Y10_N4
\led_machine|pri_st.LED_7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_7~feeder_combout\ = \led_machine|pri_st.LED_6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_6~q\,
	combout => \led_machine|pri_st.LED_7~feeder_combout\);

-- Location: FF_X21_Y10_N5
\led_machine|pri_st.LED_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_7~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_7~q\);

-- Location: FF_X21_Y10_N11
\led_machine|pri_st.LED_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_7~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_8~q\);

-- Location: LCCOMB_X24_Y12_N8
\led_machine|pri_st.LED_9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_9~feeder_combout\ = \led_machine|pri_st.LED_8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_8~q\,
	combout => \led_machine|pri_st.LED_9~feeder_combout\);

-- Location: FF_X24_Y12_N9
\led_machine|pri_st.LED_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_9~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_9~q\);

-- Location: LCCOMB_X22_Y10_N20
\led_machine|pri_st.LED_10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_10~feeder_combout\ = \led_machine|pri_st.LED_9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_9~q\,
	combout => \led_machine|pri_st.LED_10~feeder_combout\);

-- Location: FF_X22_Y10_N21
\led_machine|pri_st.LED_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_10~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_10~q\);

-- Location: LCCOMB_X22_Y10_N24
\led_machine|pri_st.LED_11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_11~feeder_combout\ = \led_machine|pri_st.LED_10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_10~q\,
	combout => \led_machine|pri_st.LED_11~feeder_combout\);

-- Location: FF_X22_Y10_N25
\led_machine|pri_st.LED_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_11~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_11~q\);

-- Location: LCCOMB_X22_Y10_N22
\led_machine|pri_st.LED_12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_12~feeder_combout\ = \led_machine|pri_st.LED_11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_11~q\,
	combout => \led_machine|pri_st.LED_12~feeder_combout\);

-- Location: FF_X22_Y10_N23
\led_machine|pri_st.LED_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_12~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_12~q\);

-- Location: FF_X22_Y10_N7
\led_machine|pri_st.LED_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_12~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_13~q\);

-- Location: LCCOMB_X22_Y13_N8
\led_machine|pri_st.LED_14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_14~feeder_combout\ = \led_machine|pri_st.LED_13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_13~q\,
	combout => \led_machine|pri_st.LED_14~feeder_combout\);

-- Location: FF_X22_Y13_N9
\led_machine|pri_st.LED_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_14~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_14~q\);

-- Location: FF_X22_Y13_N21
\led_machine|pri_st.LED_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_14~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_15~q\);

-- Location: LCCOMB_X22_Y13_N10
\led_machine|pri_st.LED_16~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_16~feeder_combout\ = \led_machine|pri_st.LED_15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_15~q\,
	combout => \led_machine|pri_st.LED_16~feeder_combout\);

-- Location: FF_X22_Y13_N11
\led_machine|pri_st.LED_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_16~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_16~q\);

-- Location: LCCOMB_X24_Y12_N12
\led_machine|pri_st.LED_17~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_17~feeder_combout\ = \led_machine|pri_st.LED_16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_16~q\,
	combout => \led_machine|pri_st.LED_17~feeder_combout\);

-- Location: FF_X24_Y12_N13
\led_machine|pri_st.LED_17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_17~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_17~q\);

-- Location: LCCOMB_X20_Y12_N14
\led_machine|pri_st.LED_18~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_18~feeder_combout\ = \led_machine|pri_st.LED_17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_17~q\,
	combout => \led_machine|pri_st.LED_18~feeder_combout\);

-- Location: FF_X20_Y12_N15
\led_machine|pri_st.LED_18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_18~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_18~q\);

-- Location: FF_X20_Y12_N17
\led_machine|pri_st.LED_19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_18~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_19~q\);

-- Location: LCCOMB_X20_Y12_N26
\led_machine|pri_st.LED_20~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_20~feeder_combout\ = \led_machine|pri_st.LED_19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_19~q\,
	combout => \led_machine|pri_st.LED_20~feeder_combout\);

-- Location: FF_X20_Y12_N27
\led_machine|pri_st.LED_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_20~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_20~q\);

-- Location: LCCOMB_X24_Y12_N22
\led_machine|pri_st.LED_21~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_21~feeder_combout\ = \led_machine|pri_st.LED_20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_20~q\,
	combout => \led_machine|pri_st.LED_21~feeder_combout\);

-- Location: FF_X24_Y12_N23
\led_machine|pri_st.LED_21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_21~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_21~q\);

-- Location: LCCOMB_X21_Y10_N12
\led_machine|pri_st.LED_22~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_22~feeder_combout\ = \led_machine|pri_st.LED_21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_21~q\,
	combout => \led_machine|pri_st.LED_22~feeder_combout\);

-- Location: FF_X21_Y10_N13
\led_machine|pri_st.LED_22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_22~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_22~q\);

-- Location: LCCOMB_X21_Y10_N30
\led_machine|pri_st.LED_23~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_23~feeder_combout\ = \led_machine|pri_st.LED_22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_22~q\,
	combout => \led_machine|pri_st.LED_23~feeder_combout\);

-- Location: FF_X21_Y10_N31
\led_machine|pri_st.LED_23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_23~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_23~q\);

-- Location: FF_X21_Y10_N25
\led_machine|pri_st.LED_24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_23~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_24~q\);

-- Location: LCCOMB_X24_Y12_N20
\led_machine|pri_st.LED_25~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_25~feeder_combout\ = \led_machine|pri_st.LED_24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_24~q\,
	combout => \led_machine|pri_st.LED_25~feeder_combout\);

-- Location: FF_X24_Y12_N21
\led_machine|pri_st.LED_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_25~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_25~q\);

-- Location: LCCOMB_X22_Y10_N26
\led_machine|pri_st.LED_26~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_26~feeder_combout\ = \led_machine|pri_st.LED_25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_25~q\,
	combout => \led_machine|pri_st.LED_26~feeder_combout\);

-- Location: FF_X22_Y10_N27
\led_machine|pri_st.LED_26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_26~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_26~q\);

-- Location: FF_X22_Y10_N31
\led_machine|pri_st.LED_27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_26~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_27~q\);

-- Location: FF_X22_Y10_N13
\led_machine|pri_st.LED_28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_27~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_28~q\);

-- Location: LCCOMB_X22_Y10_N16
\led_machine|pri_st.LED_29~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_29~feeder_combout\ = \led_machine|pri_st.LED_28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_28~q\,
	combout => \led_machine|pri_st.LED_29~feeder_combout\);

-- Location: FF_X22_Y10_N17
\led_machine|pri_st.LED_29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_29~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_29~q\);

-- Location: LCCOMB_X22_Y13_N0
\led_machine|pri_st.LED_30~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_30~feeder_combout\ = \led_machine|pri_st.LED_29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_29~q\,
	combout => \led_machine|pri_st.LED_30~feeder_combout\);

-- Location: FF_X22_Y13_N1
\led_machine|pri_st.LED_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_30~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_30~q\);

-- Location: LCCOMB_X22_Y13_N18
\led_machine|pri_st.LED_31~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_31~feeder_combout\ = \led_machine|pri_st.LED_30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_30~q\,
	combout => \led_machine|pri_st.LED_31~feeder_combout\);

-- Location: FF_X22_Y13_N19
\led_machine|pri_st.LED_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_31~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_31~q\);

-- Location: LCCOMB_X22_Y13_N24
\led_machine|pri_st.LED_32~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_32~feeder_combout\ = \led_machine|pri_st.LED_31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_31~q\,
	combout => \led_machine|pri_st.LED_32~feeder_combout\);

-- Location: FF_X22_Y13_N25
\led_machine|pri_st.LED_32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_32~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_32~q\);

-- Location: LCCOMB_X21_Y13_N10
\led_machine|pri_st.LED_33~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_33~feeder_combout\ = \led_machine|pri_st.LED_32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_32~q\,
	combout => \led_machine|pri_st.LED_33~feeder_combout\);

-- Location: FF_X21_Y13_N11
\led_machine|pri_st.LED_33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_33~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_33~q\);

-- Location: LCCOMB_X20_Y12_N18
\led_machine|pri_st.LED_34~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_34~feeder_combout\ = \led_machine|pri_st.LED_33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_33~q\,
	combout => \led_machine|pri_st.LED_34~feeder_combout\);

-- Location: FF_X20_Y12_N19
\led_machine|pri_st.LED_34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_34~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_34~q\);

-- Location: LCCOMB_X20_Y12_N30
\led_machine|pri_st.LED_35~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_35~feeder_combout\ = \led_machine|pri_st.LED_34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_34~q\,
	combout => \led_machine|pri_st.LED_35~feeder_combout\);

-- Location: FF_X20_Y12_N31
\led_machine|pri_st.LED_35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_35~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_35~q\);

-- Location: FF_X20_Y12_N7
\led_machine|pri_st.LED_36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_35~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_36~q\);

-- Location: LCCOMB_X21_Y10_N26
\led_machine|pri_st.LED_37~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_37~feeder_combout\ = \led_machine|pri_st.LED_36~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_36~q\,
	combout => \led_machine|pri_st.LED_37~feeder_combout\);

-- Location: FF_X21_Y10_N27
\led_machine|pri_st.LED_37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_37~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_37~q\);

-- Location: FF_X21_Y10_N17
\led_machine|pri_st.LED_38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_37~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_38~q\);

-- Location: FF_X21_Y10_N3
\led_machine|pri_st.LED_39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_38~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_39~q\);

-- Location: FF_X21_Y10_N1
\led_machine|pri_st.LED_40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_39~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_40~q\);

-- Location: LCCOMB_X21_Y10_N28
\led_machine|pri_st.LED_41~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_41~feeder_combout\ = \led_machine|pri_st.LED_40~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_40~q\,
	combout => \led_machine|pri_st.LED_41~feeder_combout\);

-- Location: FF_X21_Y10_N29
\led_machine|pri_st.LED_41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_41~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_41~q\);

-- Location: LCCOMB_X22_Y10_N14
\led_machine|pri_st.LED_42~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_42~feeder_combout\ = \led_machine|pri_st.LED_41~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_41~q\,
	combout => \led_machine|pri_st.LED_42~feeder_combout\);

-- Location: FF_X22_Y10_N15
\led_machine|pri_st.LED_42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_42~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_42~q\);

-- Location: FF_X22_Y10_N11
\led_machine|pri_st.LED_43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_42~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_43~q\);

-- Location: FF_X22_Y10_N1
\led_machine|pri_st.LED_44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_43~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_44~q\);

-- Location: LCCOMB_X22_Y10_N18
\led_machine|pri_st.LED_45~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_45~feeder_combout\ = \led_machine|pri_st.LED_44~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_44~q\,
	combout => \led_machine|pri_st.LED_45~feeder_combout\);

-- Location: FF_X22_Y10_N19
\led_machine|pri_st.LED_45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_45~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_45~q\);

-- Location: LCCOMB_X22_Y13_N26
\led_machine|pri_st.LED_46~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_46~feeder_combout\ = \led_machine|pri_st.LED_45~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_45~q\,
	combout => \led_machine|pri_st.LED_46~feeder_combout\);

-- Location: FF_X22_Y13_N27
\led_machine|pri_st.LED_46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_46~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_46~q\);

-- Location: FF_X22_Y13_N15
\led_machine|pri_st.LED_47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_46~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_47~q\);

-- Location: FF_X22_Y13_N17
\led_machine|pri_st.LED_48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_47~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_48~q\);

-- Location: LCCOMB_X21_Y13_N24
\led_machine|pri_st.LED_49~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_49~feeder_combout\ = \led_machine|pri_st.LED_48~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_48~q\,
	combout => \led_machine|pri_st.LED_49~feeder_combout\);

-- Location: FF_X21_Y13_N25
\led_machine|pri_st.LED_49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_49~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_49~q\);

-- Location: FF_X20_Y12_N9
\led_machine|pri_st.LED_50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_49~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_50~q\);

-- Location: FF_X20_Y12_N5
\led_machine|pri_st.LED_51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_50~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_51~q\);

-- Location: FF_X20_Y12_N29
\led_machine|pri_st.LED_52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_51~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_52~q\);

-- Location: FF_X21_Y10_N9
\led_machine|pri_st.LED_53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_52~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_53~q\);

-- Location: FF_X21_Y10_N15
\led_machine|pri_st.LED_54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_53~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_54~q\);

-- Location: FF_X21_Y10_N23
\led_machine|pri_st.LED_55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_54~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_55~q\);

-- Location: FF_X21_Y10_N7
\led_machine|pri_st.LED_56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_55~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_56~q\);

-- Location: FF_X22_Y10_N9
\led_machine|pri_st.LED_57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_56~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_57~q\);

-- Location: FF_X22_Y10_N5
\led_machine|pri_st.LED_58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_57~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_58~q\);

-- Location: FF_X22_Y10_N3
\led_machine|pri_st.LED_59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_58~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_59~q\);

-- Location: FF_X22_Y10_N29
\led_machine|pri_st.LED_60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_59~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_60~q\);

-- Location: FF_X22_Y13_N23
\led_machine|pri_st.LED_61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_60~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_61~q\);

-- Location: FF_X22_Y13_N5
\led_machine|pri_st.LED_62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_61~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_62~q\);

-- Location: FF_X22_Y13_N31
\led_machine|pri_st.LED_63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_62~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_63~q\);

-- Location: FF_X22_Y13_N7
\led_machine|pri_st.LED_64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_63~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_64~q\);

-- Location: FF_X23_Y12_N29
\led_machine|pri_st.LED_65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_machine|pri_st.LED_64~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_65~q\);

-- Location: LCCOMB_X23_Y12_N24
\led_machine|pri_st.LED_66~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_66~feeder_combout\ = \led_machine|pri_st.LED_65~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_65~q\,
	combout => \led_machine|pri_st.LED_66~feeder_combout\);

-- Location: FF_X23_Y12_N25
\led_machine|pri_st.LED_66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_66~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_66~q\);

-- Location: LCCOMB_X23_Y12_N8
\led_machine|pri_st.LED_67~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_67~feeder_combout\ = \led_machine|pri_st.LED_66~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_66~q\,
	combout => \led_machine|pri_st.LED_67~feeder_combout\);

-- Location: FF_X23_Y12_N9
\led_machine|pri_st.LED_67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_67~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_67~q\);

-- Location: LCCOMB_X23_Y12_N16
\led_machine|pri_st.LED_68~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|pri_st.LED_68~feeder_combout\ = \led_machine|pri_st.LED_67~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_machine|pri_st.LED_67~q\,
	combout => \led_machine|pri_st.LED_68~feeder_combout\);

-- Location: FF_X23_Y12_N17
\led_machine|pri_st.LED_68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_machine|pri_st.LED_68~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \contador_print|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_machine|pri_st.LED_68~q\);

-- Location: LCCOMB_X23_Y12_N28
\led_machine|WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr11~0_combout\ = (!\led_machine|pri_st.LED_68~q\ & (!\led_machine|pri_st.LED_67~q\ & (!\led_machine|pri_st.LED_65~q\ & !\led_machine|pri_st.LED_66~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_68~q\,
	datab => \led_machine|pri_st.LED_67~q\,
	datac => \led_machine|pri_st.LED_65~q\,
	datad => \led_machine|pri_st.LED_66~q\,
	combout => \led_machine|WideOr11~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\led_machine|WideOr11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr11~1_combout\ = (!\led_machine|pri_st.LED_72~q\ & (!\led_machine|pri_st.LED_71~q\ & (!\led_machine|pri_st.LED_69~q\ & !\led_machine|pri_st.LED_70~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_72~q\,
	datab => \led_machine|pri_st.LED_71~q\,
	datac => \led_machine|pri_st.LED_69~q\,
	datad => \led_machine|pri_st.LED_70~q\,
	combout => \led_machine|WideOr11~1_combout\);

-- Location: LCCOMB_X21_Y8_N20
\led_machine|WideOr11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr11~2_combout\ = (\led_machine|WideOr11~0_combout\ & \led_machine|WideOr11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr11~0_combout\,
	datad => \led_machine|WideOr11~1_combout\,
	combout => \led_machine|WideOr11~2_combout\);

-- Location: LCCOMB_X21_Y13_N20
\led_machine|WideOr13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr13~1_combout\ = (!\led_machine|pri_st.LED_103~q\ & (!\led_machine|pri_st.LED_102~q\ & (!\led_machine|pri_st.LED_104~q\ & !\led_machine|pri_st.LED_101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_103~q\,
	datab => \led_machine|pri_st.LED_102~q\,
	datac => \led_machine|pri_st.LED_104~q\,
	datad => \led_machine|pri_st.LED_101~q\,
	combout => \led_machine|WideOr13~1_combout\);

-- Location: LCCOMB_X23_Y12_N30
\led_machine|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr13~0_combout\ = (!\led_machine|pri_st.LED_99~q\ & (!\led_machine|pri_st.LED_97~q\ & (!\led_machine|pri_st.LED_100~q\ & !\led_machine|pri_st.LED_98~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_99~q\,
	datab => \led_machine|pri_st.LED_97~q\,
	datac => \led_machine|pri_st.LED_100~q\,
	datad => \led_machine|pri_st.LED_98~q\,
	combout => \led_machine|WideOr13~0_combout\);

-- Location: LCCOMB_X21_Y7_N20
\led_machine|WideOr13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr13~2_combout\ = (\led_machine|WideOr13~1_combout\ & \led_machine|WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|WideOr13~1_combout\,
	datad => \led_machine|WideOr13~0_combout\,
	combout => \led_machine|WideOr13~2_combout\);

-- Location: LCCOMB_X22_Y13_N14
\led_machine|WideOr6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr6~3_combout\ = (!\led_machine|pri_st.LED_63~q\ & (!\led_machine|pri_st.LED_31~q\ & (!\led_machine|pri_st.LED_47~q\ & !\led_machine|pri_st.LED_15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_63~q\,
	datab => \led_machine|pri_st.LED_31~q\,
	datac => \led_machine|pri_st.LED_47~q\,
	datad => \led_machine|pri_st.LED_15~q\,
	combout => \led_machine|WideOr6~3_combout\);

-- Location: LCCOMB_X22_Y10_N2
\led_machine|WideOr4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~5_combout\ = (!\led_machine|pri_st.LED_27~q\ & (!\led_machine|pri_st.LED_43~q\ & (!\led_machine|pri_st.LED_59~q\ & !\led_machine|pri_st.LED_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_27~q\,
	datab => \led_machine|pri_st.LED_43~q\,
	datac => \led_machine|pri_st.LED_59~q\,
	datad => \led_machine|pri_st.LED_11~q\,
	combout => \led_machine|WideOr4~5_combout\);

-- Location: LCCOMB_X21_Y12_N22
\led_machine|WideOr4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~6_combout\ = (!\led_machine|pri_st.LED_75~q\ & (!\led_machine|pri_st.LED_91~q\ & (!\led_machine|pri_st.LED_123~q\ & !\led_machine|pri_st.LED_107~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_75~q\,
	datab => \led_machine|pri_st.LED_91~q\,
	datac => \led_machine|pri_st.LED_123~q\,
	datad => \led_machine|pri_st.LED_107~q\,
	combout => \led_machine|WideOr4~6_combout\);

-- Location: LCCOMB_X21_Y11_N30
\led_machine|WideOr6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr6~4_combout\ = (!\led_machine|pri_st.LED_127~q\ & (!\led_machine|pri_st.LED_95~q\ & (!\led_machine|pri_st.LED_111~q\ & !\led_machine|pri_st.LED_79~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_127~q\,
	datab => \led_machine|pri_st.LED_95~q\,
	datac => \led_machine|pri_st.LED_111~q\,
	datad => \led_machine|pri_st.LED_79~q\,
	combout => \led_machine|WideOr6~4_combout\);

-- Location: LCCOMB_X19_Y11_N6
\led_machine|WideOr6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr6~5_combout\ = (((!\led_machine|WideOr6~4_combout\) # (!\led_machine|WideOr4~6_combout\)) # (!\led_machine|WideOr4~5_combout\)) # (!\led_machine|WideOr6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~3_combout\,
	datab => \led_machine|WideOr4~5_combout\,
	datac => \led_machine|WideOr4~6_combout\,
	datad => \led_machine|WideOr6~4_combout\,
	combout => \led_machine|WideOr6~5_combout\);

-- Location: LCCOMB_X20_Y12_N4
\led_machine|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr6~0_combout\ = (!\led_machine|pri_st.LED_35~q\ & (!\led_machine|pri_st.LED_3~q\ & (!\led_machine|pri_st.LED_51~q\ & !\led_machine|pri_st.LED_19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_35~q\,
	datab => \led_machine|pri_st.LED_3~q\,
	datac => \led_machine|pri_st.LED_51~q\,
	datad => \led_machine|pri_st.LED_19~q\,
	combout => \led_machine|WideOr6~0_combout\);

-- Location: LCCOMB_X21_Y10_N22
\led_machine|WideOr3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~7_combout\ = (!\led_machine|pri_st.LED_23~q\ & (!\led_machine|pri_st.LED_7~q\ & (!\led_machine|pri_st.LED_55~q\ & !\led_machine|pri_st.LED_39~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_23~q\,
	datab => \led_machine|pri_st.LED_7~q\,
	datac => \led_machine|pri_st.LED_55~q\,
	datad => \led_machine|pri_st.LED_39~q\,
	combout => \led_machine|WideOr3~7_combout\);

-- Location: LCCOMB_X23_Y12_N22
\led_machine|WideOr6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr6~1_combout\ = (!\led_machine|pri_st.LED_99~q\ & (!\led_machine|pri_st.LED_83~q\ & (!\led_machine|pri_st.LED_115~q\ & !\led_machine|pri_st.LED_67~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_99~q\,
	datab => \led_machine|pri_st.LED_83~q\,
	datac => \led_machine|pri_st.LED_115~q\,
	datad => \led_machine|pri_st.LED_67~q\,
	combout => \led_machine|WideOr6~1_combout\);

-- Location: LCCOMB_X21_Y13_N22
\led_machine|WideOr3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~8_combout\ = (!\led_machine|pri_st.LED_103~q\ & (!\led_machine|pri_st.LED_87~q\ & (!\led_machine|pri_st.LED_119~q\ & !\led_machine|pri_st.LED_71~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_103~q\,
	datab => \led_machine|pri_st.LED_87~q\,
	datac => \led_machine|pri_st.LED_119~q\,
	datad => \led_machine|pri_st.LED_71~q\,
	combout => \led_machine|WideOr3~8_combout\);

-- Location: LCCOMB_X20_Y11_N24
\led_machine|WideOr6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr6~2_combout\ = (((!\led_machine|WideOr3~8_combout\) # (!\led_machine|WideOr6~1_combout\)) # (!\led_machine|WideOr3~7_combout\)) # (!\led_machine|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~0_combout\,
	datab => \led_machine|WideOr3~7_combout\,
	datac => \led_machine|WideOr6~1_combout\,
	datad => \led_machine|WideOr3~8_combout\,
	combout => \led_machine|WideOr6~2_combout\);

-- Location: LCCOMB_X22_Y13_N22
\led_machine|WideOr35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr35~0_combout\ = (!\led_machine|pri_st.LED_13~q\ & (!\led_machine|pri_st.LED_29~q\ & (!\led_machine|pri_st.LED_61~q\ & !\led_machine|pri_st.LED_45~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_13~q\,
	datab => \led_machine|pri_st.LED_29~q\,
	datac => \led_machine|pri_st.LED_61~q\,
	datad => \led_machine|pri_st.LED_45~q\,
	combout => \led_machine|WideOr35~0_combout\);

-- Location: LCCOMB_X20_Y12_N0
\led_machine|WideOr23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr23~0_combout\ = (!\led_machine|pri_st.LED_17~q\ & (!\led_machine|pri_st.LED_33~q\ & (!\led_machine|pri_st.LED_49~q\ & \led_machine|pri_st.LED_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_17~q\,
	datab => \led_machine|pri_st.LED_33~q\,
	datac => \led_machine|pri_st.LED_49~q\,
	datad => \led_machine|pri_st.LED_1~q\,
	combout => \led_machine|WideOr23~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\led_machine|WideOr23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr23~1_combout\ = (!\led_machine|pri_st.LED_81~q\ & (!\led_machine|pri_st.LED_97~q\ & (!\led_machine|pri_st.LED_113~q\ & !\led_machine|pri_st.LED_65~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_81~q\,
	datab => \led_machine|pri_st.LED_97~q\,
	datac => \led_machine|pri_st.LED_113~q\,
	datad => \led_machine|pri_st.LED_65~q\,
	combout => \led_machine|WideOr23~1_combout\);

-- Location: LCCOMB_X21_Y11_N4
\led_machine|WideOr35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr35~1_combout\ = (!\led_machine|pri_st.LED_109~q\ & (!\led_machine|pri_st.LED_77~q\ & (!\led_machine|pri_st.LED_125~q\ & !\led_machine|pri_st.LED_93~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_109~q\,
	datab => \led_machine|pri_st.LED_77~q\,
	datac => \led_machine|pri_st.LED_125~q\,
	datad => \led_machine|pri_st.LED_93~q\,
	combout => \led_machine|WideOr35~1_combout\);

-- Location: LCCOMB_X19_Y11_N26
\led_machine|WideOr5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~6_combout\ = (\led_machine|WideOr35~0_combout\ & (\led_machine|WideOr23~0_combout\ & (\led_machine|WideOr23~1_combout\ & \led_machine|WideOr35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr35~0_combout\,
	datab => \led_machine|WideOr23~0_combout\,
	datac => \led_machine|WideOr23~1_combout\,
	datad => \led_machine|WideOr35~1_combout\,
	combout => \led_machine|WideOr5~6_combout\);

-- Location: LCCOMB_X22_Y10_N8
\led_machine|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~0_combout\ = (!\led_machine|pri_st.LED_9~q\ & (!\led_machine|pri_st.LED_41~q\ & (!\led_machine|pri_st.LED_57~q\ & !\led_machine|pri_st.LED_25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_9~q\,
	datab => \led_machine|pri_st.LED_41~q\,
	datac => \led_machine|pri_st.LED_57~q\,
	datad => \led_machine|pri_st.LED_25~q\,
	combout => \led_machine|WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y10_N8
\led_machine|WideOr3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~2_combout\ = (!\led_machine|pri_st.LED_37~q\ & (!\led_machine|pri_st.LED_21~q\ & (!\led_machine|pri_st.LED_53~q\ & !\led_machine|pri_st.LED_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_37~q\,
	datab => \led_machine|pri_st.LED_21~q\,
	datac => \led_machine|pri_st.LED_53~q\,
	datad => \led_machine|pri_st.LED_5~q\,
	combout => \led_machine|WideOr3~2_combout\);

-- Location: LCCOMB_X21_Y12_N4
\led_machine|WideOr4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~1_combout\ = (!\led_machine|pri_st.LED_105~q\ & (!\led_machine|pri_st.LED_89~q\ & (!\led_machine|pri_st.LED_121~q\ & !\led_machine|pri_st.LED_73~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_105~q\,
	datab => \led_machine|pri_st.LED_89~q\,
	datac => \led_machine|pri_st.LED_121~q\,
	datad => \led_machine|pri_st.LED_73~q\,
	combout => \led_machine|WideOr4~1_combout\);

-- Location: LCCOMB_X21_Y13_N4
\led_machine|WideOr3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~3_combout\ = (!\led_machine|pri_st.LED_69~q\ & (!\led_machine|pri_st.LED_117~q\ & (!\led_machine|pri_st.LED_85~q\ & !\led_machine|pri_st.LED_101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_69~q\,
	datab => \led_machine|pri_st.LED_117~q\,
	datac => \led_machine|pri_st.LED_85~q\,
	datad => \led_machine|pri_st.LED_101~q\,
	combout => \led_machine|WideOr3~3_combout\);

-- Location: LCCOMB_X20_Y11_N6
\led_machine|WideOr5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~7_combout\ = (\led_machine|WideOr4~0_combout\ & (\led_machine|WideOr3~2_combout\ & (\led_machine|WideOr4~1_combout\ & \led_machine|WideOr3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~0_combout\,
	datab => \led_machine|WideOr3~2_combout\,
	datac => \led_machine|WideOr4~1_combout\,
	datad => \led_machine|WideOr3~3_combout\,
	combout => \led_machine|WideOr5~7_combout\);

-- Location: LCCOMB_X19_Y11_N16
\led_machine|WideOr6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr6~6_combout\ = (\led_machine|WideOr6~5_combout\) # ((\led_machine|WideOr6~2_combout\) # ((!\led_machine|WideOr5~7_combout\) # (!\led_machine|WideOr5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~5_combout\,
	datab => \led_machine|WideOr6~2_combout\,
	datac => \led_machine|WideOr5~6_combout\,
	datad => \led_machine|WideOr5~7_combout\,
	combout => \led_machine|WideOr6~6_combout\);

-- Location: LCCOMB_X29_Y20_N10
\contador_lectura|temp[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[0]~23_combout\ = \contador_lectura|temp\(0) $ (VCC)
-- \contador_lectura|temp[0]~24\ = CARRY(\contador_lectura|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(0),
	datad => VCC,
	combout => \contador_lectura|temp[0]~23_combout\,
	cout => \contador_lectura|temp[0]~24\);

-- Location: LCCOMB_X29_Y20_N6
\contador_lectura|temp[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[0]~feeder_combout\ = \contador_lectura|temp[0]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp[0]~23_combout\,
	combout => \contador_lectura|temp[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y19_N0
\contador_lectura|temp[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[11]~45_combout\ = (\contador_lectura|temp\(11) & (!\contador_lectura|temp[10]~44\)) # (!\contador_lectura|temp\(11) & ((\contador_lectura|temp[10]~44\) # (GND)))
-- \contador_lectura|temp[11]~46\ = CARRY((!\contador_lectura|temp[10]~44\) # (!\contador_lectura|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(11),
	datad => VCC,
	cin => \contador_lectura|temp[10]~44\,
	combout => \contador_lectura|temp[11]~45_combout\,
	cout => \contador_lectura|temp[11]~46\);

-- Location: LCCOMB_X29_Y19_N2
\contador_lectura|temp[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[12]~47_combout\ = (\contador_lectura|temp\(12) & (\contador_lectura|temp[11]~46\ $ (GND))) # (!\contador_lectura|temp\(12) & (!\contador_lectura|temp[11]~46\ & VCC))
-- \contador_lectura|temp[12]~48\ = CARRY((\contador_lectura|temp\(12) & !\contador_lectura|temp[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(12),
	datad => VCC,
	cin => \contador_lectura|temp[11]~46\,
	combout => \contador_lectura|temp[12]~47_combout\,
	cout => \contador_lectura|temp[12]~48\);

-- Location: FF_X29_Y19_N3
\contador_lectura|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[12]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(12));

-- Location: LCCOMB_X29_Y19_N4
\contador_lectura|temp[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[13]~49_combout\ = (\contador_lectura|temp\(13) & (!\contador_lectura|temp[12]~48\)) # (!\contador_lectura|temp\(13) & ((\contador_lectura|temp[12]~48\) # (GND)))
-- \contador_lectura|temp[13]~50\ = CARRY((!\contador_lectura|temp[12]~48\) # (!\contador_lectura|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(13),
	datad => VCC,
	cin => \contador_lectura|temp[12]~48\,
	combout => \contador_lectura|temp[13]~49_combout\,
	cout => \contador_lectura|temp[13]~50\);

-- Location: FF_X29_Y19_N5
\contador_lectura|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[13]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(13));

-- Location: LCCOMB_X29_Y19_N6
\contador_lectura|temp[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[14]~51_combout\ = (\contador_lectura|temp\(14) & (\contador_lectura|temp[13]~50\ $ (GND))) # (!\contador_lectura|temp\(14) & (!\contador_lectura|temp[13]~50\ & VCC))
-- \contador_lectura|temp[14]~52\ = CARRY((\contador_lectura|temp\(14) & !\contador_lectura|temp[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(14),
	datad => VCC,
	cin => \contador_lectura|temp[13]~50\,
	combout => \contador_lectura|temp[14]~51_combout\,
	cout => \contador_lectura|temp[14]~52\);

-- Location: FF_X29_Y19_N7
\contador_lectura|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[14]~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(14));

-- Location: LCCOMB_X29_Y19_N8
\contador_lectura|temp[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[15]~53_combout\ = (\contador_lectura|temp\(15) & (!\contador_lectura|temp[14]~52\)) # (!\contador_lectura|temp\(15) & ((\contador_lectura|temp[14]~52\) # (GND)))
-- \contador_lectura|temp[15]~54\ = CARRY((!\contador_lectura|temp[14]~52\) # (!\contador_lectura|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(15),
	datad => VCC,
	cin => \contador_lectura|temp[14]~52\,
	combout => \contador_lectura|temp[15]~53_combout\,
	cout => \contador_lectura|temp[15]~54\);

-- Location: FF_X29_Y19_N9
\contador_lectura|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[15]~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(15));

-- Location: LCCOMB_X29_Y19_N10
\contador_lectura|temp[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[16]~55_combout\ = (\contador_lectura|temp\(16) & (\contador_lectura|temp[15]~54\ $ (GND))) # (!\contador_lectura|temp\(16) & (!\contador_lectura|temp[15]~54\ & VCC))
-- \contador_lectura|temp[16]~56\ = CARRY((\contador_lectura|temp\(16) & !\contador_lectura|temp[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(16),
	datad => VCC,
	cin => \contador_lectura|temp[15]~54\,
	combout => \contador_lectura|temp[16]~55_combout\,
	cout => \contador_lectura|temp[16]~56\);

-- Location: FF_X29_Y19_N11
\contador_lectura|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[16]~55_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(16));

-- Location: LCCOMB_X29_Y19_N12
\contador_lectura|temp[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[17]~57_combout\ = (\contador_lectura|temp\(17) & (!\contador_lectura|temp[16]~56\)) # (!\contador_lectura|temp\(17) & ((\contador_lectura|temp[16]~56\) # (GND)))
-- \contador_lectura|temp[17]~58\ = CARRY((!\contador_lectura|temp[16]~56\) # (!\contador_lectura|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(17),
	datad => VCC,
	cin => \contador_lectura|temp[16]~56\,
	combout => \contador_lectura|temp[17]~57_combout\,
	cout => \contador_lectura|temp[17]~58\);

-- Location: FF_X29_Y19_N13
\contador_lectura|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[17]~57_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(17));

-- Location: LCCOMB_X29_Y19_N14
\contador_lectura|temp[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[18]~59_combout\ = (\contador_lectura|temp\(18) & (\contador_lectura|temp[17]~58\ $ (GND))) # (!\contador_lectura|temp\(18) & (!\contador_lectura|temp[17]~58\ & VCC))
-- \contador_lectura|temp[18]~60\ = CARRY((\contador_lectura|temp\(18) & !\contador_lectura|temp[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(18),
	datad => VCC,
	cin => \contador_lectura|temp[17]~58\,
	combout => \contador_lectura|temp[18]~59_combout\,
	cout => \contador_lectura|temp[18]~60\);

-- Location: FF_X29_Y19_N15
\contador_lectura|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[18]~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(18));

-- Location: LCCOMB_X29_Y19_N16
\contador_lectura|temp[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[19]~61_combout\ = (\contador_lectura|temp\(19) & (!\contador_lectura|temp[18]~60\)) # (!\contador_lectura|temp\(19) & ((\contador_lectura|temp[18]~60\) # (GND)))
-- \contador_lectura|temp[19]~62\ = CARRY((!\contador_lectura|temp[18]~60\) # (!\contador_lectura|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(19),
	datad => VCC,
	cin => \contador_lectura|temp[18]~60\,
	combout => \contador_lectura|temp[19]~61_combout\,
	cout => \contador_lectura|temp[19]~62\);

-- Location: FF_X29_Y19_N17
\contador_lectura|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[19]~61_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(19));

-- Location: LCCOMB_X29_Y19_N18
\contador_lectura|temp[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[20]~63_combout\ = (\contador_lectura|temp\(20) & (\contador_lectura|temp[19]~62\ $ (GND))) # (!\contador_lectura|temp\(20) & (!\contador_lectura|temp[19]~62\ & VCC))
-- \contador_lectura|temp[20]~64\ = CARRY((\contador_lectura|temp\(20) & !\contador_lectura|temp[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(20),
	datad => VCC,
	cin => \contador_lectura|temp[19]~62\,
	combout => \contador_lectura|temp[20]~63_combout\,
	cout => \contador_lectura|temp[20]~64\);

-- Location: FF_X29_Y19_N19
\contador_lectura|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[20]~63_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(20));

-- Location: LCCOMB_X29_Y19_N20
\contador_lectura|temp[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[21]~65_combout\ = (\contador_lectura|temp\(21) & (!\contador_lectura|temp[20]~64\)) # (!\contador_lectura|temp\(21) & ((\contador_lectura|temp[20]~64\) # (GND)))
-- \contador_lectura|temp[21]~66\ = CARRY((!\contador_lectura|temp[20]~64\) # (!\contador_lectura|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(21),
	datad => VCC,
	cin => \contador_lectura|temp[20]~64\,
	combout => \contador_lectura|temp[21]~65_combout\,
	cout => \contador_lectura|temp[21]~66\);

-- Location: FF_X29_Y19_N21
\contador_lectura|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[21]~65_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(21));

-- Location: LCCOMB_X23_Y18_N10
\contador_clks_juego|temp[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[0]~23_combout\ = \contador_clks_juego|temp\(0) $ (VCC)
-- \contador_clks_juego|temp[0]~24\ = CARRY(\contador_clks_juego|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(0),
	datad => VCC,
	combout => \contador_clks_juego|temp[0]~23_combout\,
	cout => \contador_clks_juego|temp[0]~24\);

-- Location: LCCOMB_X23_Y18_N30
\contador_clks_juego|temp[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[10]~43_combout\ = (\contador_clks_juego|temp\(10) & (\contador_clks_juego|temp[9]~42\ $ (GND))) # (!\contador_clks_juego|temp\(10) & (!\contador_clks_juego|temp[9]~42\ & VCC))
-- \contador_clks_juego|temp[10]~44\ = CARRY((\contador_clks_juego|temp\(10) & !\contador_clks_juego|temp[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(10),
	datad => VCC,
	cin => \contador_clks_juego|temp[9]~42\,
	combout => \contador_clks_juego|temp[10]~43_combout\,
	cout => \contador_clks_juego|temp[10]~44\);

-- Location: LCCOMB_X23_Y17_N0
\contador_clks_juego|temp[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[11]~45_combout\ = (\contador_clks_juego|temp\(11) & (!\contador_clks_juego|temp[10]~44\)) # (!\contador_clks_juego|temp\(11) & ((\contador_clks_juego|temp[10]~44\) # (GND)))
-- \contador_clks_juego|temp[11]~46\ = CARRY((!\contador_clks_juego|temp[10]~44\) # (!\contador_clks_juego|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(11),
	datad => VCC,
	cin => \contador_clks_juego|temp[10]~44\,
	combout => \contador_clks_juego|temp[11]~45_combout\,
	cout => \contador_clks_juego|temp[11]~46\);

-- Location: FF_X23_Y17_N1
\contador_clks_juego|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[11]~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(11));

-- Location: LCCOMB_X23_Y17_N2
\contador_clks_juego|temp[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[12]~47_combout\ = (\contador_clks_juego|temp\(12) & (\contador_clks_juego|temp[11]~46\ $ (GND))) # (!\contador_clks_juego|temp\(12) & (!\contador_clks_juego|temp[11]~46\ & VCC))
-- \contador_clks_juego|temp[12]~48\ = CARRY((\contador_clks_juego|temp\(12) & !\contador_clks_juego|temp[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(12),
	datad => VCC,
	cin => \contador_clks_juego|temp[11]~46\,
	combout => \contador_clks_juego|temp[12]~47_combout\,
	cout => \contador_clks_juego|temp[12]~48\);

-- Location: FF_X23_Y17_N3
\contador_clks_juego|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[12]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(12));

-- Location: LCCOMB_X23_Y17_N4
\contador_clks_juego|temp[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[13]~49_combout\ = (\contador_clks_juego|temp\(13) & (!\contador_clks_juego|temp[12]~48\)) # (!\contador_clks_juego|temp\(13) & ((\contador_clks_juego|temp[12]~48\) # (GND)))
-- \contador_clks_juego|temp[13]~50\ = CARRY((!\contador_clks_juego|temp[12]~48\) # (!\contador_clks_juego|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(13),
	datad => VCC,
	cin => \contador_clks_juego|temp[12]~48\,
	combout => \contador_clks_juego|temp[13]~49_combout\,
	cout => \contador_clks_juego|temp[13]~50\);

-- Location: FF_X23_Y17_N5
\contador_clks_juego|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[13]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(13));

-- Location: LCCOMB_X23_Y17_N6
\contador_clks_juego|temp[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[14]~51_combout\ = (\contador_clks_juego|temp\(14) & (\contador_clks_juego|temp[13]~50\ $ (GND))) # (!\contador_clks_juego|temp\(14) & (!\contador_clks_juego|temp[13]~50\ & VCC))
-- \contador_clks_juego|temp[14]~52\ = CARRY((\contador_clks_juego|temp\(14) & !\contador_clks_juego|temp[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(14),
	datad => VCC,
	cin => \contador_clks_juego|temp[13]~50\,
	combout => \contador_clks_juego|temp[14]~51_combout\,
	cout => \contador_clks_juego|temp[14]~52\);

-- Location: FF_X23_Y17_N7
\contador_clks_juego|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[14]~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(14));

-- Location: LCCOMB_X23_Y17_N8
\contador_clks_juego|temp[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[15]~53_combout\ = (\contador_clks_juego|temp\(15) & (!\contador_clks_juego|temp[14]~52\)) # (!\contador_clks_juego|temp\(15) & ((\contador_clks_juego|temp[14]~52\) # (GND)))
-- \contador_clks_juego|temp[15]~54\ = CARRY((!\contador_clks_juego|temp[14]~52\) # (!\contador_clks_juego|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(15),
	datad => VCC,
	cin => \contador_clks_juego|temp[14]~52\,
	combout => \contador_clks_juego|temp[15]~53_combout\,
	cout => \contador_clks_juego|temp[15]~54\);

-- Location: FF_X23_Y17_N9
\contador_clks_juego|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[15]~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(15));

-- Location: LCCOMB_X23_Y17_N10
\contador_clks_juego|temp[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[16]~55_combout\ = (\contador_clks_juego|temp\(16) & (\contador_clks_juego|temp[15]~54\ $ (GND))) # (!\contador_clks_juego|temp\(16) & (!\contador_clks_juego|temp[15]~54\ & VCC))
-- \contador_clks_juego|temp[16]~56\ = CARRY((\contador_clks_juego|temp\(16) & !\contador_clks_juego|temp[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(16),
	datad => VCC,
	cin => \contador_clks_juego|temp[15]~54\,
	combout => \contador_clks_juego|temp[16]~55_combout\,
	cout => \contador_clks_juego|temp[16]~56\);

-- Location: FF_X23_Y17_N11
\contador_clks_juego|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[16]~55_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(16));

-- Location: LCCOMB_X23_Y17_N12
\contador_clks_juego|temp[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[17]~57_combout\ = (\contador_clks_juego|temp\(17) & (!\contador_clks_juego|temp[16]~56\)) # (!\contador_clks_juego|temp\(17) & ((\contador_clks_juego|temp[16]~56\) # (GND)))
-- \contador_clks_juego|temp[17]~58\ = CARRY((!\contador_clks_juego|temp[16]~56\) # (!\contador_clks_juego|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(17),
	datad => VCC,
	cin => \contador_clks_juego|temp[16]~56\,
	combout => \contador_clks_juego|temp[17]~57_combout\,
	cout => \contador_clks_juego|temp[17]~58\);

-- Location: FF_X23_Y17_N13
\contador_clks_juego|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[17]~57_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(17));

-- Location: LCCOMB_X23_Y17_N14
\contador_clks_juego|temp[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[18]~59_combout\ = (\contador_clks_juego|temp\(18) & (\contador_clks_juego|temp[17]~58\ $ (GND))) # (!\contador_clks_juego|temp\(18) & (!\contador_clks_juego|temp[17]~58\ & VCC))
-- \contador_clks_juego|temp[18]~60\ = CARRY((\contador_clks_juego|temp\(18) & !\contador_clks_juego|temp[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(18),
	datad => VCC,
	cin => \contador_clks_juego|temp[17]~58\,
	combout => \contador_clks_juego|temp[18]~59_combout\,
	cout => \contador_clks_juego|temp[18]~60\);

-- Location: FF_X23_Y17_N15
\contador_clks_juego|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[18]~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(18));

-- Location: LCCOMB_X23_Y17_N16
\contador_clks_juego|temp[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[19]~61_combout\ = (\contador_clks_juego|temp\(19) & (!\contador_clks_juego|temp[18]~60\)) # (!\contador_clks_juego|temp\(19) & ((\contador_clks_juego|temp[18]~60\) # (GND)))
-- \contador_clks_juego|temp[19]~62\ = CARRY((!\contador_clks_juego|temp[18]~60\) # (!\contador_clks_juego|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(19),
	datad => VCC,
	cin => \contador_clks_juego|temp[18]~60\,
	combout => \contador_clks_juego|temp[19]~61_combout\,
	cout => \contador_clks_juego|temp[19]~62\);

-- Location: FF_X23_Y17_N17
\contador_clks_juego|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[19]~61_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(19));

-- Location: LCCOMB_X23_Y17_N18
\contador_clks_juego|temp[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[20]~63_combout\ = (\contador_clks_juego|temp\(20) & (\contador_clks_juego|temp[19]~62\ $ (GND))) # (!\contador_clks_juego|temp\(20) & (!\contador_clks_juego|temp[19]~62\ & VCC))
-- \contador_clks_juego|temp[20]~64\ = CARRY((\contador_clks_juego|temp\(20) & !\contador_clks_juego|temp[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(20),
	datad => VCC,
	cin => \contador_clks_juego|temp[19]~62\,
	combout => \contador_clks_juego|temp[20]~63_combout\,
	cout => \contador_clks_juego|temp[20]~64\);

-- Location: FF_X23_Y17_N19
\contador_clks_juego|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[20]~63_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(20));

-- Location: LCCOMB_X23_Y17_N20
\contador_clks_juego|temp[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[21]~65_combout\ = (\contador_clks_juego|temp\(21) & (!\contador_clks_juego|temp[20]~64\)) # (!\contador_clks_juego|temp\(21) & ((\contador_clks_juego|temp[20]~64\) # (GND)))
-- \contador_clks_juego|temp[21]~66\ = CARRY((!\contador_clks_juego|temp[20]~64\) # (!\contador_clks_juego|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(21),
	datad => VCC,
	cin => \contador_clks_juego|temp[20]~64\,
	combout => \contador_clks_juego|temp[21]~65_combout\,
	cout => \contador_clks_juego|temp[21]~66\);

-- Location: FF_X23_Y17_N21
\contador_clks_juego|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[21]~65_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(21));

-- Location: LCCOMB_X23_Y17_N22
\contador_clks_juego|temp[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[22]~67_combout\ = \contador_clks_juego|temp\(22) $ (!\contador_clks_juego|temp[21]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(22),
	cin => \contador_clks_juego|temp[21]~66\,
	combout => \contador_clks_juego|temp[22]~67_combout\);

-- Location: FF_X23_Y17_N23
\contador_clks_juego|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[22]~67_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(22));

-- Location: LCCOMB_X23_Y17_N28
\contador_clks_juego|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~0_combout\ = (\contador_clks_juego|temp\(14) & (\contador_clks_juego|temp\(13) & (\contador_clks_juego|temp\(15) & \contador_clks_juego|temp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(14),
	datab => \contador_clks_juego|temp\(13),
	datac => \contador_clks_juego|temp\(15),
	datad => \contador_clks_juego|temp\(16),
	combout => \contador_clks_juego|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\contador_clks_juego|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~1_combout\ = (\contador_clks_juego|temp\(17) & \contador_clks_juego|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(17),
	datad => \contador_clks_juego|Equal0~0_combout\,
	combout => \contador_clks_juego|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y18_N2
\contador_clks_juego|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~8_combout\ = (\contador_clks_juego|temp\(6) & \contador_clks_juego|temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_clks_juego|temp\(6),
	datad => \contador_clks_juego|temp\(5),
	combout => \contador_clks_juego|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y18_N4
\contador_clks_juego|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|LessThan0~0_combout\ = (!\contador_clks_juego|temp\(7) & (!\contador_clks_juego|temp\(9) & (!\contador_clks_juego|temp\(8) & !\contador_clks_juego|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(7),
	datab => \contador_clks_juego|temp\(9),
	datac => \contador_clks_juego|temp\(8),
	datad => \contador_clks_juego|Equal0~8_combout\,
	combout => \contador_clks_juego|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\contador_clks_juego|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|LessThan0~1_combout\ = (!\contador_clks_juego|temp\(12) & (((\contador_clks_juego|LessThan0~0_combout\) # (!\contador_clks_juego|temp\(11))) # (!\contador_clks_juego|temp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(10),
	datab => \contador_clks_juego|temp\(11),
	datac => \contador_clks_juego|LessThan0~0_combout\,
	datad => \contador_clks_juego|temp\(12),
	combout => \contador_clks_juego|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y17_N24
\contador_clks_juego|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|LessThan0~2_combout\ = (!\contador_clks_juego|temp\(18) & (!\contador_clks_juego|temp\(19) & ((\contador_clks_juego|LessThan0~1_combout\) # (!\contador_clks_juego|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~1_combout\,
	datab => \contador_clks_juego|temp\(18),
	datac => \contador_clks_juego|temp\(19),
	datad => \contador_clks_juego|LessThan0~1_combout\,
	combout => \contador_clks_juego|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y17_N26
\contador_clks_juego|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|LessThan0~3_combout\ = (\contador_clks_juego|temp\(22) & ((\contador_clks_juego|temp\(21)) # ((\contador_clks_juego|temp\(20) & !\contador_clks_juego|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(21),
	datab => \contador_clks_juego|temp\(20),
	datac => \contador_clks_juego|temp\(22),
	datad => \contador_clks_juego|LessThan0~2_combout\,
	combout => \contador_clks_juego|LessThan0~3_combout\);

-- Location: FF_X24_Y18_N15
\contador_clks_juego|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clks_juego|temp[0]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(0));

-- Location: LCCOMB_X23_Y18_N12
\contador_clks_juego|temp[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[1]~25_combout\ = (\contador_clks_juego|temp\(1) & (!\contador_clks_juego|temp[0]~24\)) # (!\contador_clks_juego|temp\(1) & ((\contador_clks_juego|temp[0]~24\) # (GND)))
-- \contador_clks_juego|temp[1]~26\ = CARRY((!\contador_clks_juego|temp[0]~24\) # (!\contador_clks_juego|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(1),
	datad => VCC,
	cin => \contador_clks_juego|temp[0]~24\,
	combout => \contador_clks_juego|temp[1]~25_combout\,
	cout => \contador_clks_juego|temp[1]~26\);

-- Location: FF_X24_Y18_N25
\contador_clks_juego|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \contador_clks_juego|temp[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(1));

-- Location: LCCOMB_X23_Y18_N14
\contador_clks_juego|temp[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[2]~27_combout\ = (\contador_clks_juego|temp\(2) & (\contador_clks_juego|temp[1]~26\ $ (GND))) # (!\contador_clks_juego|temp\(2) & (!\contador_clks_juego|temp[1]~26\ & VCC))
-- \contador_clks_juego|temp[2]~28\ = CARRY((\contador_clks_juego|temp\(2) & !\contador_clks_juego|temp[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(2),
	datad => VCC,
	cin => \contador_clks_juego|temp[1]~26\,
	combout => \contador_clks_juego|temp[2]~27_combout\,
	cout => \contador_clks_juego|temp[2]~28\);

-- Location: FF_X23_Y18_N15
\contador_clks_juego|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[2]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(2));

-- Location: LCCOMB_X23_Y18_N16
\contador_clks_juego|temp[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[3]~29_combout\ = (\contador_clks_juego|temp\(3) & (!\contador_clks_juego|temp[2]~28\)) # (!\contador_clks_juego|temp\(3) & ((\contador_clks_juego|temp[2]~28\) # (GND)))
-- \contador_clks_juego|temp[3]~30\ = CARRY((!\contador_clks_juego|temp[2]~28\) # (!\contador_clks_juego|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(3),
	datad => VCC,
	cin => \contador_clks_juego|temp[2]~28\,
	combout => \contador_clks_juego|temp[3]~29_combout\,
	cout => \contador_clks_juego|temp[3]~30\);

-- Location: FF_X23_Y18_N17
\contador_clks_juego|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[3]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(3));

-- Location: LCCOMB_X23_Y18_N18
\contador_clks_juego|temp[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[4]~31_combout\ = (\contador_clks_juego|temp\(4) & (\contador_clks_juego|temp[3]~30\ $ (GND))) # (!\contador_clks_juego|temp\(4) & (!\contador_clks_juego|temp[3]~30\ & VCC))
-- \contador_clks_juego|temp[4]~32\ = CARRY((\contador_clks_juego|temp\(4) & !\contador_clks_juego|temp[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(4),
	datad => VCC,
	cin => \contador_clks_juego|temp[3]~30\,
	combout => \contador_clks_juego|temp[4]~31_combout\,
	cout => \contador_clks_juego|temp[4]~32\);

-- Location: FF_X23_Y18_N19
\contador_clks_juego|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[4]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(4));

-- Location: LCCOMB_X23_Y18_N20
\contador_clks_juego|temp[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[5]~33_combout\ = (\contador_clks_juego|temp\(5) & (!\contador_clks_juego|temp[4]~32\)) # (!\contador_clks_juego|temp\(5) & ((\contador_clks_juego|temp[4]~32\) # (GND)))
-- \contador_clks_juego|temp[5]~34\ = CARRY((!\contador_clks_juego|temp[4]~32\) # (!\contador_clks_juego|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(5),
	datad => VCC,
	cin => \contador_clks_juego|temp[4]~32\,
	combout => \contador_clks_juego|temp[5]~33_combout\,
	cout => \contador_clks_juego|temp[5]~34\);

-- Location: FF_X23_Y18_N21
\contador_clks_juego|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[5]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(5));

-- Location: LCCOMB_X23_Y18_N22
\contador_clks_juego|temp[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[6]~35_combout\ = (\contador_clks_juego|temp\(6) & (\contador_clks_juego|temp[5]~34\ $ (GND))) # (!\contador_clks_juego|temp\(6) & (!\contador_clks_juego|temp[5]~34\ & VCC))
-- \contador_clks_juego|temp[6]~36\ = CARRY((\contador_clks_juego|temp\(6) & !\contador_clks_juego|temp[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(6),
	datad => VCC,
	cin => \contador_clks_juego|temp[5]~34\,
	combout => \contador_clks_juego|temp[6]~35_combout\,
	cout => \contador_clks_juego|temp[6]~36\);

-- Location: FF_X23_Y18_N23
\contador_clks_juego|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[6]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(6));

-- Location: LCCOMB_X23_Y18_N24
\contador_clks_juego|temp[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[7]~37_combout\ = (\contador_clks_juego|temp\(7) & (!\contador_clks_juego|temp[6]~36\)) # (!\contador_clks_juego|temp\(7) & ((\contador_clks_juego|temp[6]~36\) # (GND)))
-- \contador_clks_juego|temp[7]~38\ = CARRY((!\contador_clks_juego|temp[6]~36\) # (!\contador_clks_juego|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(7),
	datad => VCC,
	cin => \contador_clks_juego|temp[6]~36\,
	combout => \contador_clks_juego|temp[7]~37_combout\,
	cout => \contador_clks_juego|temp[7]~38\);

-- Location: FF_X23_Y18_N25
\contador_clks_juego|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[7]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(7));

-- Location: LCCOMB_X23_Y18_N26
\contador_clks_juego|temp[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[8]~39_combout\ = (\contador_clks_juego|temp\(8) & (\contador_clks_juego|temp[7]~38\ $ (GND))) # (!\contador_clks_juego|temp\(8) & (!\contador_clks_juego|temp[7]~38\ & VCC))
-- \contador_clks_juego|temp[8]~40\ = CARRY((\contador_clks_juego|temp\(8) & !\contador_clks_juego|temp[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(8),
	datad => VCC,
	cin => \contador_clks_juego|temp[7]~38\,
	combout => \contador_clks_juego|temp[8]~39_combout\,
	cout => \contador_clks_juego|temp[8]~40\);

-- Location: FF_X23_Y18_N27
\contador_clks_juego|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[8]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(8));

-- Location: LCCOMB_X23_Y18_N28
\contador_clks_juego|temp[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|temp[9]~41_combout\ = (\contador_clks_juego|temp\(9) & (!\contador_clks_juego|temp[8]~40\)) # (!\contador_clks_juego|temp\(9) & ((\contador_clks_juego|temp[8]~40\) # (GND)))
-- \contador_clks_juego|temp[9]~42\ = CARRY((!\contador_clks_juego|temp[8]~40\) # (!\contador_clks_juego|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|temp\(9),
	datad => VCC,
	cin => \contador_clks_juego|temp[8]~40\,
	combout => \contador_clks_juego|temp[9]~41_combout\,
	cout => \contador_clks_juego|temp[9]~42\);

-- Location: FF_X23_Y18_N29
\contador_clks_juego|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[9]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(9));

-- Location: FF_X23_Y18_N31
\contador_clks_juego|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_clks_juego|temp[10]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_clks_juego|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_clks_juego|temp\(10));

-- Location: LCCOMB_X23_Y18_N0
\contador_clks_juego|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~3_combout\ = (\contador_clks_juego|temp\(10) & (\contador_clks_juego|temp\(5) & (\contador_clks_juego|temp\(6) & \contador_clks_juego|temp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(10),
	datab => \contador_clks_juego|temp\(5),
	datac => \contador_clks_juego|temp\(6),
	datad => \contador_clks_juego|temp\(11),
	combout => \contador_clks_juego|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y18_N28
\contador_clks_juego|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~2_combout\ = (!\contador_clks_juego|temp\(8) & (!\contador_clks_juego|temp\(7) & (!\contador_clks_juego|temp\(0) & !\contador_clks_juego|temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(8),
	datab => \contador_clks_juego|temp\(7),
	datac => \contador_clks_juego|temp\(0),
	datad => \contador_clks_juego|temp\(9),
	combout => \contador_clks_juego|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y18_N20
\contador_clks_juego|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~4_combout\ = (!\contador_clks_juego|temp\(2) & (!\contador_clks_juego|temp\(1) & (!\contador_clks_juego|temp\(19) & !\contador_clks_juego|temp\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(2),
	datab => \contador_clks_juego|temp\(1),
	datac => \contador_clks_juego|temp\(19),
	datad => \contador_clks_juego|temp\(18),
	combout => \contador_clks_juego|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y18_N8
\contador_clks_juego|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~5_combout\ = (!\contador_clks_juego|temp\(4) & (!\contador_clks_juego|temp\(3) & (!\contador_clks_juego|temp\(12) & \contador_clks_juego|temp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(4),
	datab => \contador_clks_juego|temp\(3),
	datac => \contador_clks_juego|temp\(12),
	datad => \contador_clks_juego|temp\(20),
	combout => \contador_clks_juego|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y18_N10
\contador_clks_juego|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~6_combout\ = (!\contador_clks_juego|temp\(21) & (\contador_clks_juego|Equal0~4_combout\ & (\contador_clks_juego|temp\(22) & \contador_clks_juego|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|temp\(21),
	datab => \contador_clks_juego|Equal0~4_combout\,
	datac => \contador_clks_juego|temp\(22),
	datad => \contador_clks_juego|Equal0~5_combout\,
	combout => \contador_clks_juego|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y18_N30
\contador_clks_juego|Equal0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_clks_juego|Equal0~combout\ = LCELL((\contador_clks_juego|Equal0~3_combout\ & (\contador_clks_juego|Equal0~2_combout\ & (\contador_clks_juego|Equal0~1_combout\ & \contador_clks_juego|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~3_combout\,
	datab => \contador_clks_juego|Equal0~2_combout\,
	datac => \contador_clks_juego|Equal0~1_combout\,
	datad => \contador_clks_juego|Equal0~6_combout\,
	combout => \contador_clks_juego|Equal0~combout\);

-- Location: CLKCTRL_G14
\contador_clks_juego|Equal0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \contador_clks_juego|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \contador_clks_juego|Equal0~clkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N29
\bd_r2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bd_r2,
	o => \bd_r2~input_o\);

-- Location: LCCOMB_X26_Y15_N16
\button_down_r2|sync1:resync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_down_r2|sync1:resync[1]~feeder_combout\ = \bd_r2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bd_r2~input_o\,
	combout => \button_down_r2|sync1:resync[1]~feeder_combout\);

-- Location: FF_X26_Y15_N17
\button_down_r2|sync1:resync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_down_r2|sync1:resync[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r2|sync1:resync[1]~q\);

-- Location: FF_X27_Y15_N9
\button_down_r2|sync1:resync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \button_down_r2|sync1:resync[1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r2|sync1:resync[2]~q\);

-- Location: FF_X27_Y15_N7
\button_down_r2|sync1:resync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \button_down_r2|sync1:resync[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r2|sync1:resync[3]~q\);

-- Location: LCCOMB_X27_Y15_N4
\button_down_r2|fall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_down_r2|fall~0_combout\ = (\button_down_r2|sync1:resync[3]~q\ & !\button_down_r2|sync1:resync[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_down_r2|sync1:resync[3]~q\,
	datac => \button_down_r2|sync1:resync[2]~q\,
	combout => \button_down_r2|fall~0_combout\);

-- Location: FF_X27_Y15_N5
\button_down_r2|fall\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_down_r2|fall~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r2|fall~q\);

-- Location: LCCOMB_X27_Y15_N22
\flipflop_led3r2|q[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r2|q[4]~12_combout\ = !\flipflop_led3r2|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipflop_led3r2|q\(4),
	combout => \flipflop_led3r2|q[4]~12_combout\);

-- Location: LCCOMB_X26_Y18_N16
\FSM_bouncing|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector7~0_combout\ = (!\contador_clks_juego|Equal0~combout\ & \FSM_bouncing|pri_st.Score_p2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_clks_juego|Equal0~combout\,
	datad => \FSM_bouncing|pri_st.Score_p2~q\,
	combout => \FSM_bouncing|Selector7~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\bd_r1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bd_r1,
	o => \bd_r1~input_o\);

-- Location: FF_X28_Y16_N23
\button_down_r1|sync1:resync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \bd_r1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r1|sync1:resync[1]~q\);

-- Location: FF_X28_Y16_N31
\button_down_r1|sync1:resync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \button_down_r1|sync1:resync[1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r1|sync1:resync[2]~q\);

-- Location: FF_X28_Y16_N13
\button_down_r1|sync1:resync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \button_down_r1|sync1:resync[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r1|sync1:resync[3]~q\);

-- Location: LCCOMB_X28_Y16_N16
\button_down_r1|fall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_down_r1|fall~0_combout\ = (!\button_down_r1|sync1:resync[2]~q\ & \button_down_r1|sync1:resync[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_down_r1|sync1:resync[2]~q\,
	datad => \button_down_r1|sync1:resync[3]~q\,
	combout => \button_down_r1|fall~0_combout\);

-- Location: FF_X28_Y16_N17
\button_down_r1|fall\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_down_r1|fall~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_down_r1|fall~q\);

-- Location: LCCOMB_X26_Y16_N26
\flipflop_led3r1|q[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r1|q[4]~12_combout\ = !\flipflop_led3r1|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipflop_led3r1|q\(4),
	combout => \flipflop_led3r1|q[4]~12_combout\);

-- Location: IOIBUF_X21_Y0_N15
\bu_r1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bu_r1,
	o => \bu_r1~input_o\);

-- Location: FF_X28_Y16_N11
\button_up_r1|sync1:resync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \bu_r1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r1|sync1:resync[1]~q\);

-- Location: LCCOMB_X28_Y16_N8
\button_up_r1|sync1:resync[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_up_r1|sync1:resync[2]~feeder_combout\ = \button_up_r1|sync1:resync[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_up_r1|sync1:resync[1]~q\,
	combout => \button_up_r1|sync1:resync[2]~feeder_combout\);

-- Location: FF_X28_Y16_N9
\button_up_r1|sync1:resync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_up_r1|sync1:resync[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r1|sync1:resync[2]~q\);

-- Location: FF_X28_Y16_N15
\button_up_r1|sync1:resync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \button_up_r1|sync1:resync[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r1|sync1:resync[3]~q\);

-- Location: LCCOMB_X28_Y16_N20
\button_up_r1|fall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_up_r1|fall~0_combout\ = (!\button_up_r1|sync1:resync[2]~q\ & \button_up_r1|sync1:resync[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_up_r1|sync1:resync[2]~q\,
	datad => \button_up_r1|sync1:resync[3]~q\,
	combout => \button_up_r1|fall~0_combout\);

-- Location: FF_X28_Y16_N21
\button_up_r1|fall\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_up_r1|fall~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r1|fall~q\);

-- Location: LCCOMB_X28_Y16_N14
\flipflop_led3r1|q[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r1|q[4]~3_combout\ = \button_up_r1|fall~q\ $ (\button_down_r1|fall~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_up_r1|fall~q\,
	datad => \button_down_r1|fall~q\,
	combout => \flipflop_led3r1|q[4]~3_combout\);

-- Location: FF_X27_Y16_N21
\flipflop_led3r1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \flipflop_led3r1|q[4]~12_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	sload => VCC,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r1|q\(4));

-- Location: LCCOMB_X28_Y16_N0
\flipflop_led3r1|q[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r1|q[5]~5_cout\ = CARRY(\flipflop_led3r1|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led3r1|q\(4),
	datad => VCC,
	cout => \flipflop_led3r1|q[5]~5_cout\);

-- Location: LCCOMB_X28_Y16_N2
\flipflop_led3r1|q[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r1|q[5]~6_combout\ = (\flipflop_led3r1|q\(5) & ((\button_down_r1|fall~q\ & (!\flipflop_led3r1|q[5]~5_cout\)) # (!\button_down_r1|fall~q\ & (\flipflop_led3r1|q[5]~5_cout\ & VCC)))) # (!\flipflop_led3r1|q\(5) & ((\button_down_r1|fall~q\ & 
-- ((\flipflop_led3r1|q[5]~5_cout\) # (GND))) # (!\button_down_r1|fall~q\ & (!\flipflop_led3r1|q[5]~5_cout\))))
-- \flipflop_led3r1|q[5]~7\ = CARRY((\flipflop_led3r1|q\(5) & (\button_down_r1|fall~q\ & !\flipflop_led3r1|q[5]~5_cout\)) # (!\flipflop_led3r1|q\(5) & ((\button_down_r1|fall~q\) # (!\flipflop_led3r1|q[5]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(5),
	datab => \button_down_r1|fall~q\,
	datad => VCC,
	cin => \flipflop_led3r1|q[5]~5_cout\,
	combout => \flipflop_led3r1|q[5]~6_combout\,
	cout => \flipflop_led3r1|q[5]~7\);

-- Location: FF_X28_Y16_N3
\flipflop_led3r1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led3r1|q[5]~6_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r1|q\(5));

-- Location: LCCOMB_X28_Y16_N4
\flipflop_led3r1|q[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r1|q[6]~8_combout\ = (\flipflop_led3r1|q\(6) & ((\button_down_r1|fall~q\ & (\flipflop_led3r1|q[5]~7\ & VCC)) # (!\button_down_r1|fall~q\ & (!\flipflop_led3r1|q[5]~7\)))) # (!\flipflop_led3r1|q\(6) & ((\button_down_r1|fall~q\ & 
-- (!\flipflop_led3r1|q[5]~7\)) # (!\button_down_r1|fall~q\ & ((\flipflop_led3r1|q[5]~7\) # (GND)))))
-- \flipflop_led3r1|q[6]~9\ = CARRY((\flipflop_led3r1|q\(6) & (!\button_down_r1|fall~q\ & !\flipflop_led3r1|q[5]~7\)) # (!\flipflop_led3r1|q\(6) & ((!\flipflop_led3r1|q[5]~7\) # (!\button_down_r1|fall~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(6),
	datab => \button_down_r1|fall~q\,
	datad => VCC,
	cin => \flipflop_led3r1|q[5]~7\,
	combout => \flipflop_led3r1|q[6]~8_combout\,
	cout => \flipflop_led3r1|q[6]~9\);

-- Location: FF_X28_Y16_N5
\flipflop_led3r1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led3r1|q[6]~8_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r1|q\(6));

-- Location: LCCOMB_X27_Y18_N4
\flipflop_led1|q[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[0]~8_combout\ = \flipflop_led1|q\(0) $ (VCC)
-- \flipflop_led1|q[0]~9\ = CARRY(\flipflop_led1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(0),
	datad => VCC,
	combout => \flipflop_led1|q[0]~8_combout\,
	cout => \flipflop_led1|q[0]~9\);

-- Location: LCCOMB_X27_Y18_N6
\flipflop_led1|q[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[1]~10_combout\ = (\flipflop_led1|q\(1) & ((\FSM_bouncing|WideOr2~combout\ & (!\flipflop_led1|q[0]~9\)) # (!\FSM_bouncing|WideOr2~combout\ & (\flipflop_led1|q[0]~9\ & VCC)))) # (!\flipflop_led1|q\(1) & ((\FSM_bouncing|WideOr2~combout\ & 
-- ((\flipflop_led1|q[0]~9\) # (GND))) # (!\FSM_bouncing|WideOr2~combout\ & (!\flipflop_led1|q[0]~9\))))
-- \flipflop_led1|q[1]~11\ = CARRY((\flipflop_led1|q\(1) & (\FSM_bouncing|WideOr2~combout\ & !\flipflop_led1|q[0]~9\)) # (!\flipflop_led1|q\(1) & ((\FSM_bouncing|WideOr2~combout\) # (!\flipflop_led1|q[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(1),
	datab => \FSM_bouncing|WideOr2~combout\,
	datad => VCC,
	cin => \flipflop_led1|q[0]~9\,
	combout => \flipflop_led1|q[1]~10_combout\,
	cout => \flipflop_led1|q[1]~11\);

-- Location: LCCOMB_X24_Y19_N8
\FSM_bouncing|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector6~0_combout\ = (!\contador_clks_juego|Equal0~combout\ & \FSM_bouncing|pri_st.Score_p1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_clks_juego|Equal0~combout\,
	datad => \FSM_bouncing|pri_st.Score_p1~q\,
	combout => \FSM_bouncing|Selector6~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\FSM_bouncing|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector2~1_combout\ = (\FSM_bouncing|pri_st.Down_right_trans~q\ & \contador_clks_juego|Equal0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_bouncing|pri_st.Down_right_trans~q\,
	datad => \contador_clks_juego|Equal0~combout\,
	combout => \FSM_bouncing|Selector2~1_combout\);

-- Location: LCCOMB_X27_Y17_N16
\arriba_led1|up_wall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \arriba_led1|up_wall~0_combout\ = (\flipflop_led1|q\(0) & ((\flipflop_led1|q\(3)) # ((!\flipflop_led1|q\(2)) # (!\flipflop_led1|q\(1))))) # (!\flipflop_led1|q\(0) & (((\flipflop_led1|q\(1)) # (\flipflop_led1|q\(2))) # (!\flipflop_led1|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(0),
	datab => \flipflop_led1|q\(3),
	datac => \flipflop_led1|q\(1),
	datad => \flipflop_led1|q\(2),
	combout => \arriba_led1|up_wall~0_combout\);

-- Location: LCCOMB_X27_Y17_N30
\abajo_led1|down_wall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abajo_led1|down_wall~0_combout\ = (\flipflop_led1|q\(4)) # (((\flipflop_led1|q\(5)) # (!\arriba_led1|up_wall~0_combout\)) # (!\flipflop_led1|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(4),
	datab => \flipflop_led1|q\(6),
	datac => \flipflop_led1|q\(5),
	datad => \arriba_led1|up_wall~0_combout\,
	combout => \abajo_led1|down_wall~0_combout\);

-- Location: LCCOMB_X28_Y15_N0
\flipflop_led3r2|q[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r2|q[5]~5_cout\ = CARRY(\flipflop_led3r2|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led3r2|q\(4),
	datad => VCC,
	cout => \flipflop_led3r2|q[5]~5_cout\);

-- Location: LCCOMB_X28_Y15_N2
\flipflop_led3r2|q[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r2|q[5]~6_combout\ = (\button_down_r2|fall~q\ & ((\flipflop_led3r2|q\(5) & (!\flipflop_led3r2|q[5]~5_cout\)) # (!\flipflop_led3r2|q\(5) & ((\flipflop_led3r2|q[5]~5_cout\) # (GND))))) # (!\button_down_r2|fall~q\ & ((\flipflop_led3r2|q\(5) & 
-- (\flipflop_led3r2|q[5]~5_cout\ & VCC)) # (!\flipflop_led3r2|q\(5) & (!\flipflop_led3r2|q[5]~5_cout\))))
-- \flipflop_led3r2|q[5]~7\ = CARRY((\button_down_r2|fall~q\ & ((!\flipflop_led3r2|q[5]~5_cout\) # (!\flipflop_led3r2|q\(5)))) # (!\button_down_r2|fall~q\ & (!\flipflop_led3r2|q\(5) & !\flipflop_led3r2|q[5]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r2|fall~q\,
	datab => \flipflop_led3r2|q\(5),
	datad => VCC,
	cin => \flipflop_led3r2|q[5]~5_cout\,
	combout => \flipflop_led3r2|q[5]~6_combout\,
	cout => \flipflop_led3r2|q[5]~7\);

-- Location: IOIBUF_X1_Y0_N1
\bu_r2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bu_r2,
	o => \bu_r2~input_o\);

-- Location: LCCOMB_X27_Y15_N0
\button_up_r2|sync1:resync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_up_r2|sync1:resync[1]~feeder_combout\ = \bu_r2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bu_r2~input_o\,
	combout => \button_up_r2|sync1:resync[1]~feeder_combout\);

-- Location: FF_X27_Y15_N1
\button_up_r2|sync1:resync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_up_r2|sync1:resync[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r2|sync1:resync[1]~q\);

-- Location: FF_X27_Y15_N25
\button_up_r2|sync1:resync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \button_up_r2|sync1:resync[1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r2|sync1:resync[2]~q\);

-- Location: FF_X27_Y15_N3
\button_up_r2|sync1:resync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \button_up_r2|sync1:resync[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r2|sync1:resync[3]~q\);

-- Location: LCCOMB_X27_Y15_N18
\button_up_r2|fall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_up_r2|fall~0_combout\ = (\button_up_r2|sync1:resync[3]~q\ & !\button_up_r2|sync1:resync[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_up_r2|sync1:resync[3]~q\,
	datac => \button_up_r2|sync1:resync[2]~q\,
	combout => \button_up_r2|fall~0_combout\);

-- Location: FF_X27_Y15_N19
\button_up_r2|fall\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_up_r2|fall~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_up_r2|fall~q\);

-- Location: LCCOMB_X27_Y15_N2
\flipflop_led3r2|q[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r2|q[5]~3_combout\ = \button_up_r2|fall~q\ $ (\button_down_r2|fall~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_up_r2|fall~q\,
	datad => \button_down_r2|fall~q\,
	combout => \flipflop_led3r2|q[5]~3_combout\);

-- Location: FF_X28_Y15_N3
\flipflop_led3r2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led3r2|q[5]~6_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r2|q\(5));

-- Location: LCCOMB_X28_Y15_N4
\flipflop_led3r2|q[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r2|q[6]~8_combout\ = (\flipflop_led3r2|q\(6) & ((\button_down_r2|fall~q\ & (\flipflop_led3r2|q[5]~7\ & VCC)) # (!\button_down_r2|fall~q\ & (!\flipflop_led3r2|q[5]~7\)))) # (!\flipflop_led3r2|q\(6) & ((\button_down_r2|fall~q\ & 
-- (!\flipflop_led3r2|q[5]~7\)) # (!\button_down_r2|fall~q\ & ((\flipflop_led3r2|q[5]~7\) # (GND)))))
-- \flipflop_led3r2|q[6]~9\ = CARRY((\flipflop_led3r2|q\(6) & (!\button_down_r2|fall~q\ & !\flipflop_led3r2|q[5]~7\)) # (!\flipflop_led3r2|q\(6) & ((!\flipflop_led3r2|q[5]~7\) # (!\button_down_r2|fall~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r2|q\(6),
	datab => \button_down_r2|fall~q\,
	datad => VCC,
	cin => \flipflop_led3r2|q[5]~7\,
	combout => \flipflop_led3r2|q[6]~8_combout\,
	cout => \flipflop_led3r2|q[6]~9\);

-- Location: FF_X28_Y15_N5
\flipflop_led3r2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led3r2|q[6]~8_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r2|q\(6));

-- Location: LCCOMB_X27_Y17_N0
\Corner_down_raqueta_2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~0_combout\ = \flipflop_led1|q\(0) $ (VCC)
-- \Corner_down_raqueta_2|Add0~1\ = CARRY(\flipflop_led1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(0),
	datad => VCC,
	combout => \Corner_down_raqueta_2|Add0~0_combout\,
	cout => \Corner_down_raqueta_2|Add0~1\);

-- Location: LCCOMB_X27_Y17_N2
\Corner_down_raqueta_2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~2_combout\ = (\flipflop_led1|q\(1) & (!\Corner_down_raqueta_2|Add0~1\)) # (!\flipflop_led1|q\(1) & ((\Corner_down_raqueta_2|Add0~1\) # (GND)))
-- \Corner_down_raqueta_2|Add0~3\ = CARRY((!\Corner_down_raqueta_2|Add0~1\) # (!\flipflop_led1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(1),
	datad => VCC,
	cin => \Corner_down_raqueta_2|Add0~1\,
	combout => \Corner_down_raqueta_2|Add0~2_combout\,
	cout => \Corner_down_raqueta_2|Add0~3\);

-- Location: LCCOMB_X27_Y17_N4
\Corner_down_raqueta_2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~4_combout\ = (\flipflop_led1|q\(2) & (\Corner_down_raqueta_2|Add0~3\ $ (GND))) # (!\flipflop_led1|q\(2) & (!\Corner_down_raqueta_2|Add0~3\ & VCC))
-- \Corner_down_raqueta_2|Add0~5\ = CARRY((\flipflop_led1|q\(2) & !\Corner_down_raqueta_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(2),
	datad => VCC,
	cin => \Corner_down_raqueta_2|Add0~3\,
	combout => \Corner_down_raqueta_2|Add0~4_combout\,
	cout => \Corner_down_raqueta_2|Add0~5\);

-- Location: LCCOMB_X27_Y17_N6
\Corner_down_raqueta_2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~6_combout\ = (\flipflop_led1|q\(3) & ((\Corner_down_raqueta_2|Add0~5\) # (GND))) # (!\flipflop_led1|q\(3) & (!\Corner_down_raqueta_2|Add0~5\))
-- \Corner_down_raqueta_2|Add0~7\ = CARRY((\flipflop_led1|q\(3)) # (!\Corner_down_raqueta_2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(3),
	datad => VCC,
	cin => \Corner_down_raqueta_2|Add0~5\,
	combout => \Corner_down_raqueta_2|Add0~6_combout\,
	cout => \Corner_down_raqueta_2|Add0~7\);

-- Location: LCCOMB_X27_Y17_N8
\Corner_down_raqueta_2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~8_combout\ = ((\flipflop_led1|q\(4) $ (\flipflop_led3r2|q\(4) $ (!\Corner_down_raqueta_2|Add0~7\)))) # (GND)
-- \Corner_down_raqueta_2|Add0~9\ = CARRY((\flipflop_led1|q\(4) & (!\flipflop_led3r2|q\(4) & !\Corner_down_raqueta_2|Add0~7\)) # (!\flipflop_led1|q\(4) & ((!\Corner_down_raqueta_2|Add0~7\) # (!\flipflop_led3r2|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(4),
	datab => \flipflop_led3r2|q\(4),
	datad => VCC,
	cin => \Corner_down_raqueta_2|Add0~7\,
	combout => \Corner_down_raqueta_2|Add0~8_combout\,
	cout => \Corner_down_raqueta_2|Add0~9\);

-- Location: LCCOMB_X27_Y17_N10
\Corner_down_raqueta_2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~10_combout\ = (\flipflop_led1|q\(5) & ((\flipflop_led3r2|q\(5) & ((\Corner_down_raqueta_2|Add0~9\) # (GND))) # (!\flipflop_led3r2|q\(5) & (!\Corner_down_raqueta_2|Add0~9\)))) # (!\flipflop_led1|q\(5) & ((\flipflop_led3r2|q\(5) 
-- & (!\Corner_down_raqueta_2|Add0~9\)) # (!\flipflop_led3r2|q\(5) & (\Corner_down_raqueta_2|Add0~9\ & VCC))))
-- \Corner_down_raqueta_2|Add0~11\ = CARRY((\flipflop_led1|q\(5) & ((\flipflop_led3r2|q\(5)) # (!\Corner_down_raqueta_2|Add0~9\))) # (!\flipflop_led1|q\(5) & (\flipflop_led3r2|q\(5) & !\Corner_down_raqueta_2|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(5),
	datab => \flipflop_led3r2|q\(5),
	datad => VCC,
	cin => \Corner_down_raqueta_2|Add0~9\,
	combout => \Corner_down_raqueta_2|Add0~10_combout\,
	cout => \Corner_down_raqueta_2|Add0~11\);

-- Location: LCCOMB_X27_Y17_N12
\Corner_down_raqueta_2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~12_combout\ = ((\flipflop_led1|q\(6) $ (\flipflop_led3r2|q\(6) $ (!\Corner_down_raqueta_2|Add0~11\)))) # (GND)
-- \Corner_down_raqueta_2|Add0~13\ = CARRY((\flipflop_led1|q\(6) & ((\flipflop_led3r2|q\(6)) # (!\Corner_down_raqueta_2|Add0~11\))) # (!\flipflop_led1|q\(6) & (\flipflop_led3r2|q\(6) & !\Corner_down_raqueta_2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(6),
	datab => \flipflop_led3r2|q\(6),
	datad => VCC,
	cin => \Corner_down_raqueta_2|Add0~11\,
	combout => \Corner_down_raqueta_2|Add0~12_combout\,
	cout => \Corner_down_raqueta_2|Add0~13\);

-- Location: LCCOMB_X27_Y17_N14
\Corner_down_raqueta_2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Add0~14_combout\ = \Corner_down_raqueta_2|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corner_down_raqueta_2|Add0~13\,
	combout => \Corner_down_raqueta_2|Add0~14_combout\);

-- Location: LCCOMB_X27_Y17_N20
\Corner_down_raqueta_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Mux0~0_combout\ = (\Corner_down_raqueta_2|Add0~0_combout\ & (\Corner_down_raqueta_2|Add0~2_combout\ & (\Corner_down_raqueta_2|Add0~4_combout\ & \Corner_down_raqueta_2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_down_raqueta_2|Add0~0_combout\,
	datab => \Corner_down_raqueta_2|Add0~2_combout\,
	datac => \Corner_down_raqueta_2|Add0~4_combout\,
	datad => \Corner_down_raqueta_2|Add0~6_combout\,
	combout => \Corner_down_raqueta_2|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y17_N18
\Corner_down_raqueta_2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Mux0~1_combout\ = (!\Corner_down_raqueta_2|Add0~8_combout\ & \Corner_down_raqueta_2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corner_down_raqueta_2|Add0~8_combout\,
	datad => \Corner_down_raqueta_2|Mux0~0_combout\,
	combout => \Corner_down_raqueta_2|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y17_N28
\Corner_down_raqueta_2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_2|Mux0~2_combout\ = (!\Corner_down_raqueta_2|Add0~12_combout\ & (\Corner_down_raqueta_2|Add0~14_combout\ & (!\Corner_down_raqueta_2|Add0~10_combout\ & \Corner_down_raqueta_2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_down_raqueta_2|Add0~12_combout\,
	datab => \Corner_down_raqueta_2|Add0~14_combout\,
	datac => \Corner_down_raqueta_2|Add0~10_combout\,
	datad => \Corner_down_raqueta_2|Mux0~1_combout\,
	combout => \Corner_down_raqueta_2|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y16_N10
\Mux_1raquet1|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_1raquet1|Add1~1_combout\ = (\button_down_r1|fall~q\ & ((\flipflop_led3r1|q\(4)))) # (!\button_down_r1|fall~q\ & (!\flipflop_led1r1|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r1|fall~q\,
	datab => \flipflop_led1r1|q\(5),
	datad => \flipflop_led3r1|q\(4),
	combout => \Mux_1raquet1|Add1~1_combout\);

-- Location: LCCOMB_X28_Y16_N12
\Mux_1raquet1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_1raquet1|Add1~0_combout\ = (!\flipflop_led1r1|q\(5)) # (!\button_down_r1|fall~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_down_r1|fall~q\,
	datad => \flipflop_led1r1|q\(5),
	combout => \Mux_1raquet1|Add1~0_combout\);

-- Location: LCCOMB_X28_Y16_N30
\Mux_1raquet1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_1raquet1|Add1~2_combout\ = (!\button_down_r1|fall~q\ & \flipflop_led3r1|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_down_r1|fall~q\,
	datad => \flipflop_led3r1|q\(4),
	combout => \Mux_1raquet1|Add1~2_combout\);

-- Location: LCCOMB_X28_Y16_N22
\flipflop_led1r1|q[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r1|q[5]~4_cout\ = CARRY((\Mux_1raquet1|Add1~2_combout\ & !\button_down_r1|fall~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_1raquet1|Add1~2_combout\,
	datab => \button_down_r1|fall~q\,
	datad => VCC,
	cout => \flipflop_led1r1|q[5]~4_cout\);

-- Location: LCCOMB_X28_Y16_N24
\flipflop_led1r1|q[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r1|q[5]~5_combout\ = ((\Mux_1raquet1|Add1~1_combout\ $ (\Mux_1raquet1|Add1~0_combout\ $ (!\flipflop_led1r1|q[5]~4_cout\)))) # (GND)
-- \flipflop_led1r1|q[5]~6\ = CARRY((\Mux_1raquet1|Add1~1_combout\ & (!\Mux_1raquet1|Add1~0_combout\ & !\flipflop_led1r1|q[5]~4_cout\)) # (!\Mux_1raquet1|Add1~1_combout\ & ((!\flipflop_led1r1|q[5]~4_cout\) # (!\Mux_1raquet1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_1raquet1|Add1~1_combout\,
	datab => \Mux_1raquet1|Add1~0_combout\,
	datad => VCC,
	cin => \flipflop_led1r1|q[5]~4_cout\,
	combout => \flipflop_led1r1|q[5]~5_combout\,
	cout => \flipflop_led1r1|q[5]~6\);

-- Location: FF_X28_Y16_N25
\flipflop_led1r1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led1r1|q[5]~5_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1r1|q\(5));

-- Location: LCCOMB_X28_Y16_N18
\Corner_up_raqueta_1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_1|Add0~1_combout\ = \flipflop_led1r1|q\(5) $ (\flipflop_led1|q\(5) $ (((!\flipflop_led1|q\(4)) # (!\flipflop_led3r1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(4),
	datab => \flipflop_led1r1|q\(5),
	datac => \flipflop_led1|q\(4),
	datad => \flipflop_led1|q\(5),
	combout => \Corner_up_raqueta_1|Add0~1_combout\);

-- Location: LCCOMB_X27_Y16_N24
\Corner_down_raqueta_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_1|Mux0~0_combout\ = (\flipflop_led1|q\(0) & (\flipflop_led1|q\(3) & (!\flipflop_led1|q\(1) & !\flipflop_led1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(0),
	datab => \flipflop_led1|q\(3),
	datac => \flipflop_led1|q\(1),
	datad => \flipflop_led1|q\(2),
	combout => \Corner_down_raqueta_1|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y16_N14
\Corner_down_raqueta_1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_1|Mux0~1_combout\ = (\Corner_down_raqueta_1|Mux0~0_combout\ & (\flipflop_led3r1|q\(4) $ (!\flipflop_led1|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(4),
	datac => \flipflop_led1|q\(4),
	datad => \Corner_down_raqueta_1|Mux0~0_combout\,
	combout => \Corner_down_raqueta_1|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y16_N26
\flipflop_led1r1|q[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r1|q[6]~7_combout\ = ((\flipflop_led1r1|q\(6) $ (\button_down_r1|fall~q\ $ (\flipflop_led1r1|q[5]~6\)))) # (GND)
-- \flipflop_led1r1|q[6]~8\ = CARRY((\flipflop_led1r1|q\(6) & ((!\flipflop_led1r1|q[5]~6\) # (!\button_down_r1|fall~q\))) # (!\flipflop_led1r1|q\(6) & (!\button_down_r1|fall~q\ & !\flipflop_led1r1|q[5]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1r1|q\(6),
	datab => \button_down_r1|fall~q\,
	datad => VCC,
	cin => \flipflop_led1r1|q[5]~6\,
	combout => \flipflop_led1r1|q[6]~7_combout\,
	cout => \flipflop_led1r1|q[6]~8\);

-- Location: FF_X28_Y16_N27
\flipflop_led1r1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led1r1|q[6]~7_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1r1|q\(6));

-- Location: LCCOMB_X26_Y16_N10
\Corner_up_raqueta_1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_1|Add0~0_combout\ = (\flipflop_led1r1|q\(5) & (((!\flipflop_led1|q\(5)) # (!\flipflop_led1|q\(4))) # (!\flipflop_led3r1|q\(4)))) # (!\flipflop_led1r1|q\(5) & (!\flipflop_led1|q\(5) & ((!\flipflop_led1|q\(4)) # 
-- (!\flipflop_led3r1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(4),
	datab => \flipflop_led1|q\(4),
	datac => \flipflop_led1r1|q\(5),
	datad => \flipflop_led1|q\(5),
	combout => \Corner_up_raqueta_1|Add0~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Corner_up_raqueta_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_1|Mux0~0_combout\ = (\flipflop_led1|q\(6) & (\flipflop_led1r1|q\(6) & !\Corner_up_raqueta_1|Add0~0_combout\)) # (!\flipflop_led1|q\(6) & (\flipflop_led1r1|q\(6) $ (!\Corner_up_raqueta_1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(6),
	datac => \flipflop_led1r1|q\(6),
	datad => \Corner_up_raqueta_1|Add0~0_combout\,
	combout => \Corner_up_raqueta_1|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y16_N4
\Corner_up_raqueta_1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_1|Mux0~1_combout\ = (!\Corner_up_raqueta_1|Add0~1_combout\ & (\Corner_down_raqueta_1|Mux0~1_combout\ & \Corner_up_raqueta_1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corner_up_raqueta_1|Add0~1_combout\,
	datac => \Corner_down_raqueta_1|Mux0~1_combout\,
	datad => \Corner_up_raqueta_1|Mux0~0_combout\,
	combout => \Corner_up_raqueta_1|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y16_N14
\extremos_raqueta_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \extremos_raqueta_1|Mux0~0_combout\ = (\flipflop_led1|q\(6) & (\flipflop_led1r1|q\(6) $ (!\Corner_up_raqueta_1|Add0~0_combout\))) # (!\flipflop_led1|q\(6) & (!\flipflop_led1r1|q\(6) & \Corner_up_raqueta_1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(6),
	datac => \flipflop_led1r1|q\(6),
	datad => \Corner_up_raqueta_1|Add0~0_combout\,
	combout => \extremos_raqueta_1|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y16_N12
\extremos_raqueta_1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \extremos_raqueta_1|Mux0~1_combout\ = (\extremos_raqueta_1|Mux0~0_combout\ & (\Corner_down_raqueta_1|Mux0~0_combout\ & (\flipflop_led3r1|q\(4) $ (\flipflop_led1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(4),
	datab => \flipflop_led1|q\(4),
	datac => \extremos_raqueta_1|Mux0~0_combout\,
	datad => \Corner_down_raqueta_1|Mux0~0_combout\,
	combout => \extremos_raqueta_1|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y16_N26
\FSM_bouncing|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal0~0_combout\ = (\arriba_led1|up_wall~0_combout\ & (!\Corner_up_raqueta_1|Mux0~1_combout\ & (\FSM_bouncing|Equal6~0_combout\ & !\extremos_raqueta_1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arriba_led1|up_wall~0_combout\,
	datab => \Corner_up_raqueta_1|Mux0~1_combout\,
	datac => \FSM_bouncing|Equal6~0_combout\,
	datad => \extremos_raqueta_1|Mux0~1_combout\,
	combout => \FSM_bouncing|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y18_N4
\Corner_up_raqueta_2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~0_combout\ = \flipflop_led1|q\(0) $ (VCC)
-- \Corner_up_raqueta_2|Add0~1\ = CARRY(\flipflop_led1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(0),
	datad => VCC,
	combout => \Corner_up_raqueta_2|Add0~0_combout\,
	cout => \Corner_up_raqueta_2|Add0~1\);

-- Location: LCCOMB_X28_Y18_N6
\Corner_up_raqueta_2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~2_combout\ = (\flipflop_led1|q\(1) & (!\Corner_up_raqueta_2|Add0~1\)) # (!\flipflop_led1|q\(1) & ((\Corner_up_raqueta_2|Add0~1\) # (GND)))
-- \Corner_up_raqueta_2|Add0~3\ = CARRY((!\Corner_up_raqueta_2|Add0~1\) # (!\flipflop_led1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(1),
	datad => VCC,
	cin => \Corner_up_raqueta_2|Add0~1\,
	combout => \Corner_up_raqueta_2|Add0~2_combout\,
	cout => \Corner_up_raqueta_2|Add0~3\);

-- Location: LCCOMB_X28_Y18_N8
\Corner_up_raqueta_2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~4_combout\ = (\flipflop_led1|q\(2) & (\Corner_up_raqueta_2|Add0~3\ $ (GND))) # (!\flipflop_led1|q\(2) & (!\Corner_up_raqueta_2|Add0~3\ & VCC))
-- \Corner_up_raqueta_2|Add0~5\ = CARRY((\flipflop_led1|q\(2) & !\Corner_up_raqueta_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(2),
	datad => VCC,
	cin => \Corner_up_raqueta_2|Add0~3\,
	combout => \Corner_up_raqueta_2|Add0~4_combout\,
	cout => \Corner_up_raqueta_2|Add0~5\);

-- Location: LCCOMB_X28_Y18_N10
\Corner_up_raqueta_2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~6_combout\ = (\flipflop_led1|q\(3) & ((\Corner_up_raqueta_2|Add0~5\) # (GND))) # (!\flipflop_led1|q\(3) & (!\Corner_up_raqueta_2|Add0~5\))
-- \Corner_up_raqueta_2|Add0~7\ = CARRY((\flipflop_led1|q\(3)) # (!\Corner_up_raqueta_2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(3),
	datad => VCC,
	cin => \Corner_up_raqueta_2|Add0~5\,
	combout => \Corner_up_raqueta_2|Add0~6_combout\,
	cout => \Corner_up_raqueta_2|Add0~7\);

-- Location: LCCOMB_X28_Y18_N26
\Corner_up_raqueta_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Mux0~0_combout\ = (\Corner_up_raqueta_2|Add0~2_combout\ & (\Corner_up_raqueta_2|Add0~4_combout\ & \Corner_up_raqueta_2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_up_raqueta_2|Add0~2_combout\,
	datac => \Corner_up_raqueta_2|Add0~4_combout\,
	datad => \Corner_up_raqueta_2|Add0~6_combout\,
	combout => \Corner_up_raqueta_2|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y15_N8
\Mux_1raquet2|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_1raquet2|Add1~1_combout\ = (\button_down_r2|fall~q\ & (\flipflop_led3r2|q\(4))) # (!\button_down_r2|fall~q\ & ((!\flipflop_led1r2|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r2|q\(4),
	datab => \button_down_r2|fall~q\,
	datad => \flipflop_led1r2|q\(5),
	combout => \Mux_1raquet2|Add1~1_combout\);

-- Location: LCCOMB_X27_Y15_N20
\Mux_1raquet2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_1raquet2|Add1~2_combout\ = (\flipflop_led3r2|q\(4) & !\button_down_r2|fall~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipflop_led3r2|q\(4),
	datad => \button_down_r2|fall~q\,
	combout => \Mux_1raquet2|Add1~2_combout\);

-- Location: LCCOMB_X27_Y15_N24
\flipflop_led1r2|q[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r2|q[5]~4_cout\ = CARRY((!\button_down_r2|fall~q\ & \Mux_1raquet2|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r2|fall~q\,
	datab => \Mux_1raquet2|Add1~2_combout\,
	datad => VCC,
	cout => \flipflop_led1r2|q[5]~4_cout\);

-- Location: LCCOMB_X27_Y15_N26
\flipflop_led1r2|q[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r2|q[5]~5_combout\ = ((\Mux_1raquet2|Add1~0_combout\ $ (\Mux_1raquet2|Add1~1_combout\ $ (!\flipflop_led1r2|q[5]~4_cout\)))) # (GND)
-- \flipflop_led1r2|q[5]~6\ = CARRY((\Mux_1raquet2|Add1~0_combout\ & (!\Mux_1raquet2|Add1~1_combout\ & !\flipflop_led1r2|q[5]~4_cout\)) # (!\Mux_1raquet2|Add1~0_combout\ & ((!\flipflop_led1r2|q[5]~4_cout\) # (!\Mux_1raquet2|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_1raquet2|Add1~0_combout\,
	datab => \Mux_1raquet2|Add1~1_combout\,
	datad => VCC,
	cin => \flipflop_led1r2|q[5]~4_cout\,
	combout => \flipflop_led1r2|q[5]~5_combout\,
	cout => \flipflop_led1r2|q[5]~6\);

-- Location: FF_X27_Y15_N27
\flipflop_led1r2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led1r2|q[5]~5_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1r2|q\(5));

-- Location: LCCOMB_X27_Y15_N6
\Mux_1raquet2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_1raquet2|Add1~0_combout\ = (!\flipflop_led1r2|q\(5)) # (!\button_down_r2|fall~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_down_r2|fall~q\,
	datad => \flipflop_led1r2|q\(5),
	combout => \Mux_1raquet2|Add1~0_combout\);

-- Location: LCCOMB_X27_Y15_N28
\flipflop_led1r2|q[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r2|q[6]~7_combout\ = ((\button_down_r2|fall~q\ $ (\flipflop_led1r2|q\(6) $ (\flipflop_led1r2|q[5]~6\)))) # (GND)
-- \flipflop_led1r2|q[6]~8\ = CARRY((\button_down_r2|fall~q\ & (\flipflop_led1r2|q\(6) & !\flipflop_led1r2|q[5]~6\)) # (!\button_down_r2|fall~q\ & ((\flipflop_led1r2|q\(6)) # (!\flipflop_led1r2|q[5]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r2|fall~q\,
	datab => \flipflop_led1r2|q\(6),
	datad => VCC,
	cin => \flipflop_led1r2|q[5]~6\,
	combout => \flipflop_led1r2|q[6]~7_combout\,
	cout => \flipflop_led1r2|q[6]~8\);

-- Location: FF_X27_Y15_N29
\flipflop_led1r2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led1r2|q[6]~7_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1r2|q\(6));

-- Location: LCCOMB_X28_Y18_N12
\Corner_up_raqueta_2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~8_combout\ = ((\flipflop_led3r2|q\(4) $ (\flipflop_led1|q\(4) $ (!\Corner_up_raqueta_2|Add0~7\)))) # (GND)
-- \Corner_up_raqueta_2|Add0~9\ = CARRY((\flipflop_led3r2|q\(4) & (!\flipflop_led1|q\(4) & !\Corner_up_raqueta_2|Add0~7\)) # (!\flipflop_led3r2|q\(4) & ((!\Corner_up_raqueta_2|Add0~7\) # (!\flipflop_led1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r2|q\(4),
	datab => \flipflop_led1|q\(4),
	datad => VCC,
	cin => \Corner_up_raqueta_2|Add0~7\,
	combout => \Corner_up_raqueta_2|Add0~8_combout\,
	cout => \Corner_up_raqueta_2|Add0~9\);

-- Location: LCCOMB_X28_Y18_N14
\Corner_up_raqueta_2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~10_combout\ = (\flipflop_led1r2|q\(5) & ((\flipflop_led1|q\(5) & (!\Corner_up_raqueta_2|Add0~9\)) # (!\flipflop_led1|q\(5) & (\Corner_up_raqueta_2|Add0~9\ & VCC)))) # (!\flipflop_led1r2|q\(5) & ((\flipflop_led1|q\(5) & 
-- ((\Corner_up_raqueta_2|Add0~9\) # (GND))) # (!\flipflop_led1|q\(5) & (!\Corner_up_raqueta_2|Add0~9\))))
-- \Corner_up_raqueta_2|Add0~11\ = CARRY((\flipflop_led1r2|q\(5) & (\flipflop_led1|q\(5) & !\Corner_up_raqueta_2|Add0~9\)) # (!\flipflop_led1r2|q\(5) & ((\flipflop_led1|q\(5)) # (!\Corner_up_raqueta_2|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1r2|q\(5),
	datab => \flipflop_led1|q\(5),
	datad => VCC,
	cin => \Corner_up_raqueta_2|Add0~9\,
	combout => \Corner_up_raqueta_2|Add0~10_combout\,
	cout => \Corner_up_raqueta_2|Add0~11\);

-- Location: LCCOMB_X28_Y18_N16
\Corner_up_raqueta_2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~12_combout\ = ((\flipflop_led1r2|q\(6) $ (\flipflop_led1|q\(6) $ (\Corner_up_raqueta_2|Add0~11\)))) # (GND)
-- \Corner_up_raqueta_2|Add0~13\ = CARRY((\flipflop_led1r2|q\(6) & (\flipflop_led1|q\(6) & !\Corner_up_raqueta_2|Add0~11\)) # (!\flipflop_led1r2|q\(6) & ((\flipflop_led1|q\(6)) # (!\Corner_up_raqueta_2|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1r2|q\(6),
	datab => \flipflop_led1|q\(6),
	datad => VCC,
	cin => \Corner_up_raqueta_2|Add0~11\,
	combout => \Corner_up_raqueta_2|Add0~12_combout\,
	cout => \Corner_up_raqueta_2|Add0~13\);

-- Location: LCCOMB_X28_Y18_N22
\Corner_up_raqueta_2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Mux0~1_combout\ = (\Corner_up_raqueta_2|Add0~0_combout\ & (\Corner_up_raqueta_2|Add0~10_combout\ & !\Corner_up_raqueta_2|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corner_up_raqueta_2|Add0~0_combout\,
	datac => \Corner_up_raqueta_2|Add0~10_combout\,
	datad => \Corner_up_raqueta_2|Add0~8_combout\,
	combout => \Corner_up_raqueta_2|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y18_N18
\Corner_up_raqueta_2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Add0~14_combout\ = \Corner_up_raqueta_2|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corner_up_raqueta_2|Add0~13\,
	combout => \Corner_up_raqueta_2|Add0~14_combout\);

-- Location: LCCOMB_X28_Y18_N20
\Corner_up_raqueta_2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_up_raqueta_2|Mux0~2_combout\ = (\Corner_up_raqueta_2|Mux0~0_combout\ & (\Corner_up_raqueta_2|Add0~12_combout\ & (\Corner_up_raqueta_2|Mux0~1_combout\ & !\Corner_up_raqueta_2|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_up_raqueta_2|Mux0~0_combout\,
	datab => \Corner_up_raqueta_2|Add0~12_combout\,
	datac => \Corner_up_raqueta_2|Mux0~1_combout\,
	datad => \Corner_up_raqueta_2|Add0~14_combout\,
	combout => \Corner_up_raqueta_2|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y19_N18
\FSM_bouncing|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal0~2_combout\ = (!\Medio_raqueta_2|Mux0~2_combout\ & (!\Corner_down_raqueta_2|Mux0~2_combout\ & (\FSM_bouncing|Equal0~0_combout\ & !\Corner_up_raqueta_2|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Medio_raqueta_2|Mux0~2_combout\,
	datab => \Corner_down_raqueta_2|Mux0~2_combout\,
	datac => \FSM_bouncing|Equal0~0_combout\,
	datad => \Corner_up_raqueta_2|Mux0~2_combout\,
	combout => \FSM_bouncing|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y19_N8
\FSM_bouncing|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal7~0_combout\ = (!\abajo_led1|down_wall~0_combout\ & (!\extremos_raqueta_2|Mux0~1_combout\ & \FSM_bouncing|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abajo_led1|down_wall~0_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|Equal0~2_combout\,
	combout => \FSM_bouncing|Equal7~0_combout\);

-- Location: LCCOMB_X28_Y18_N30
\FSM_bouncing|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal1~0_combout\ = ((\flipflop_led1|q\(4) & ((\flipflop_led1|q\(6)) # (!\flipflop_led1|q\(5)))) # (!\flipflop_led1|q\(4) & ((\flipflop_led1|q\(5)) # (!\flipflop_led1|q\(6))))) # (!\arriba_led1|up_wall~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(4),
	datab => \flipflop_led1|q\(5),
	datac => \flipflop_led1|q\(6),
	datad => \arriba_led1|up_wall~0_combout\,
	combout => \FSM_bouncing|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y19_N0
\FSM_bouncing|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal4~1_combout\ = (\FSM_bouncing|Equal0~0_combout\ & (!\Corner_down_raqueta_2|Mux0~2_combout\ & !\Corner_up_raqueta_2|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal0~0_combout\,
	datab => \Corner_down_raqueta_2|Mux0~2_combout\,
	datad => \Corner_up_raqueta_2|Mux0~2_combout\,
	combout => \FSM_bouncing|Equal4~1_combout\);

-- Location: LCCOMB_X27_Y19_N26
\FSM_bouncing|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector2~0_combout\ = ((\Medio_raqueta_2|Mux0~2_combout\ $ (!\extremos_raqueta_2|Mux0~1_combout\)) # (!\FSM_bouncing|Equal4~1_combout\)) # (!\FSM_bouncing|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Medio_raqueta_2|Mux0~2_combout\,
	datab => \FSM_bouncing|Equal1~0_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|Equal4~1_combout\,
	combout => \FSM_bouncing|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y19_N4
\FSM_bouncing|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector2~2_combout\ = (\FSM_bouncing|Selector2~0_combout\ & ((\extremos_raqueta_2|Mux0~1_combout\) # (!\derecha_led1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \derecha_led1|Mux0~0_combout\,
	datab => \extremos_raqueta_2|Mux0~1_combout\,
	datac => \FSM_bouncing|Selector2~0_combout\,
	combout => \FSM_bouncing|Selector2~2_combout\);

-- Location: LCCOMB_X27_Y19_N20
\FSM_bouncing|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector2~3_combout\ = (\FSM_bouncing|Selector2~1_combout\) # ((!\FSM_bouncing|Equal7~0_combout\ & (\FSM_bouncing|Selector2~2_combout\ & \FSM_bouncing|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Selector2~1_combout\,
	datab => \FSM_bouncing|Equal7~0_combout\,
	datac => \FSM_bouncing|Selector2~2_combout\,
	datad => \FSM_bouncing|Selector9~0_combout\,
	combout => \FSM_bouncing|Selector2~3_combout\);

-- Location: FF_X27_Y19_N21
\FSM_bouncing|pri_st.Down_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector2~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Down_right~q\);

-- Location: LCCOMB_X28_Y18_N28
\extremos_raqueta_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \extremos_raqueta_2|Mux0~0_combout\ = (\Corner_up_raqueta_2|Add0~0_combout\ & ((\Corner_up_raqueta_2|Add0~12_combout\ & (\Corner_up_raqueta_2|Add0~10_combout\ & !\Corner_up_raqueta_2|Add0~14_combout\)) # (!\Corner_up_raqueta_2|Add0~12_combout\ & 
-- (!\Corner_up_raqueta_2|Add0~10_combout\ & \Corner_up_raqueta_2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_up_raqueta_2|Add0~0_combout\,
	datab => \Corner_up_raqueta_2|Add0~12_combout\,
	datac => \Corner_up_raqueta_2|Add0~10_combout\,
	datad => \Corner_up_raqueta_2|Add0~14_combout\,
	combout => \extremos_raqueta_2|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y18_N0
\FSM_bouncing|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal4~0_combout\ = (\FSM_bouncing|Equal1~0_combout\ & (((!\extremos_raqueta_2|Mux0~0_combout\) # (!\Corner_up_raqueta_2|Mux0~0_combout\)) # (!\Corner_up_raqueta_2|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal1~0_combout\,
	datab => \Corner_up_raqueta_2|Add0~8_combout\,
	datac => \Corner_up_raqueta_2|Mux0~0_combout\,
	datad => \extremos_raqueta_2|Mux0~0_combout\,
	combout => \FSM_bouncing|Equal4~0_combout\);

-- Location: LCCOMB_X28_Y19_N6
\FSM_bouncing|locombinacional~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|locombinacional~0_combout\ = (\Corner_up_raqueta_2|Mux0~2_combout\ & (((\FSM_bouncing|Equal4~0_combout\)))) # (!\Corner_up_raqueta_2|Mux0~2_combout\ & (!\abajo_led1|down_wall~0_combout\ & ((\extremos_raqueta_2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abajo_led1|down_wall~0_combout\,
	datab => \FSM_bouncing|Equal4~0_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \Corner_up_raqueta_2|Mux0~2_combout\,
	combout => \FSM_bouncing|locombinacional~0_combout\);

-- Location: LCCOMB_X28_Y19_N12
\FSM_bouncing|locombinacional~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|locombinacional~1_combout\ = (\FSM_bouncing|Equal0~0_combout\ & (!\Medio_raqueta_2|Mux0~2_combout\ & (!\Corner_down_raqueta_2|Mux0~2_combout\ & \FSM_bouncing|locombinacional~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal0~0_combout\,
	datab => \Medio_raqueta_2|Mux0~2_combout\,
	datac => \Corner_down_raqueta_2|Mux0~2_combout\,
	datad => \FSM_bouncing|locombinacional~0_combout\,
	combout => \FSM_bouncing|locombinacional~1_combout\);

-- Location: LCCOMB_X28_Y19_N26
\FSM_bouncing|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector9~0_combout\ = (\FSM_bouncing|pri_st.Down_right~q\ & !\FSM_bouncing|locombinacional~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_bouncing|pri_st.Down_right~q\,
	datad => \FSM_bouncing|locombinacional~1_combout\,
	combout => \FSM_bouncing|Selector9~0_combout\);

-- Location: LCCOMB_X28_Y19_N0
\FSM_bouncing|locombinacional~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|locombinacional~2_combout\ = (\Corner_down_raqueta_2|Mux0~2_combout\ & (((\FSM_bouncing|Equal4~0_combout\)))) # (!\Corner_down_raqueta_2|Mux0~2_combout\ & (!\arriba_led1|up_wall~1_combout\ & (\extremos_raqueta_2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arriba_led1|up_wall~1_combout\,
	datab => \Corner_down_raqueta_2|Mux0~2_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|Equal4~0_combout\,
	combout => \FSM_bouncing|locombinacional~2_combout\);

-- Location: LCCOMB_X28_Y19_N10
\FSM_bouncing|locombinacional~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|locombinacional~3_combout\ = (!\Corner_up_raqueta_2|Mux0~2_combout\ & (\FSM_bouncing|Equal0~0_combout\ & (!\Medio_raqueta_2|Mux0~2_combout\ & \FSM_bouncing|locombinacional~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_up_raqueta_2|Mux0~2_combout\,
	datab => \FSM_bouncing|Equal0~0_combout\,
	datac => \Medio_raqueta_2|Mux0~2_combout\,
	datad => \FSM_bouncing|locombinacional~2_combout\,
	combout => \FSM_bouncing|locombinacional~3_combout\);

-- Location: LCCOMB_X28_Y19_N16
\FSM_bouncing|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector6~1_combout\ = (!\FSM_bouncing|pri_st.Right_b~q\ & ((\FSM_bouncing|pri_st.Up_right~q\) # (\FSM_bouncing|locombinacional~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_bouncing|pri_st.Right_b~q\,
	datac => \FSM_bouncing|pri_st.Up_right~q\,
	datad => \FSM_bouncing|locombinacional~3_combout\,
	combout => \FSM_bouncing|Selector6~1_combout\);

-- Location: LCCOMB_X28_Y19_N24
\FSM_bouncing|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector6~2_combout\ = (\FSM_bouncing|Selector6~0_combout\) # ((\FSM_bouncing|Equal5~0_combout\ & ((\FSM_bouncing|Selector9~0_combout\) # (!\FSM_bouncing|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Selector6~0_combout\,
	datab => \FSM_bouncing|Equal5~0_combout\,
	datac => \FSM_bouncing|Selector9~0_combout\,
	datad => \FSM_bouncing|Selector6~1_combout\,
	combout => \FSM_bouncing|Selector6~2_combout\);

-- Location: FF_X28_Y19_N25
\FSM_bouncing|pri_st.Score_p1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector6~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Score_p1~q\);

-- Location: LCCOMB_X27_Y18_N24
\flipflop_led1|dff~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|dff~0_combout\ = (\winner~q\) # ((\FSM_bouncing|pri_st.Score_p2~q\) # (\FSM_bouncing|pri_st.Score_p1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \winner~q\,
	datac => \FSM_bouncing|pri_st.Score_p2~q\,
	datad => \FSM_bouncing|pri_st.Score_p1~q\,
	combout => \flipflop_led1|dff~0_combout\);

-- Location: LCCOMB_X26_Y16_N16
\flipflop_led2r1|q[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r1|q[5]~4_cout\ = CARRY(!\flipflop_led3r1|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(4),
	datad => VCC,
	cout => \flipflop_led2r1|q[5]~4_cout\);

-- Location: LCCOMB_X26_Y16_N18
\flipflop_led2r1|q[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r1|q[5]~5_combout\ = ((\button_down_r1|fall~q\ $ (\flipflop_led2r1|q\(5) $ (!\flipflop_led2r1|q[5]~4_cout\)))) # (GND)
-- \flipflop_led2r1|q[5]~6\ = CARRY((\button_down_r1|fall~q\ & ((\flipflop_led2r1|q\(5)) # (!\flipflop_led2r1|q[5]~4_cout\))) # (!\button_down_r1|fall~q\ & (\flipflop_led2r1|q\(5) & !\flipflop_led2r1|q[5]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r1|fall~q\,
	datab => \flipflop_led2r1|q\(5),
	datad => VCC,
	cin => \flipflop_led2r1|q[5]~4_cout\,
	combout => \flipflop_led2r1|q[5]~5_combout\,
	cout => \flipflop_led2r1|q[5]~6\);

-- Location: FF_X26_Y16_N19
\flipflop_led2r1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led2r1|q[5]~5_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led2r1|q\(5));

-- Location: LCCOMB_X26_Y16_N20
\flipflop_led2r1|q[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r1|q[6]~7_combout\ = ((\button_down_r1|fall~q\ $ (\flipflop_led2r1|q\(6) $ (\flipflop_led2r1|q[5]~6\)))) # (GND)
-- \flipflop_led2r1|q[6]~8\ = CARRY((\button_down_r1|fall~q\ & (\flipflop_led2r1|q\(6) & !\flipflop_led2r1|q[5]~6\)) # (!\button_down_r1|fall~q\ & ((\flipflop_led2r1|q\(6)) # (!\flipflop_led2r1|q[5]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r1|fall~q\,
	datab => \flipflop_led2r1|q\(6),
	datad => VCC,
	cin => \flipflop_led2r1|q[5]~6\,
	combout => \flipflop_led2r1|q[6]~7_combout\,
	cout => \flipflop_led2r1|q[6]~8\);

-- Location: FF_X26_Y16_N21
\flipflop_led2r1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led2r1|q[6]~7_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led2r1|q\(6));

-- Location: LCCOMB_X26_Y16_N4
\Medio_raqueta_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_1|Mux0~0_combout\ = (\flipflop_led1|q\(6) & (\flipflop_led2r1|q\(6) & (\flipflop_led2r1|q\(5) $ (!\flipflop_led1|q\(5))))) # (!\flipflop_led1|q\(6) & (!\flipflop_led2r1|q\(6) & (\flipflop_led2r1|q\(5) $ (!\flipflop_led1|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(6),
	datab => \flipflop_led2r1|q\(5),
	datac => \flipflop_led2r1|q\(6),
	datad => \flipflop_led1|q\(5),
	combout => \Medio_raqueta_1|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y16_N16
\Medio_raqueta_1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_1|Mux0~1_combout\ = (\Medio_raqueta_1|Mux0~0_combout\ & (\Corner_down_raqueta_1|Mux0~0_combout\ & (\flipflop_led3r1|q\(4) $ (!\flipflop_led1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(4),
	datab => \flipflop_led1|q\(4),
	datac => \Medio_raqueta_1|Mux0~0_combout\,
	datad => \Corner_down_raqueta_1|Mux0~0_combout\,
	combout => \Medio_raqueta_1|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y18_N8
\FSM_bouncing|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal0~1_combout\ = (!\extremos_raqueta_1|Mux0~1_combout\ & ((\Corner_up_raqueta_1|Add0~1_combout\) # ((!\Corner_down_raqueta_1|Mux0~1_combout\) # (!\Corner_up_raqueta_1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_up_raqueta_1|Add0~1_combout\,
	datab => \Corner_up_raqueta_1|Mux0~0_combout\,
	datac => \Corner_down_raqueta_1|Mux0~1_combout\,
	datad => \extremos_raqueta_1|Mux0~1_combout\,
	combout => \FSM_bouncing|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y16_N20
\Corner_down_raqueta_1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_1|Add0~0_combout\ = \flipflop_led3r1|q\(5) $ (\flipflop_led1|q\(5) $ (((!\flipflop_led3r1|q\(4)) # (!\flipflop_led1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(5),
	datab => \flipflop_led1|q\(4),
	datac => \flipflop_led3r1|q\(4),
	datad => \flipflop_led1|q\(5),
	combout => \Corner_down_raqueta_1|Add0~0_combout\);

-- Location: LCCOMB_X27_Y16_N28
\Corner_down_raqueta_1|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_1|Mux0~3_combout\ = (!\Corner_down_raqueta_1|Add0~0_combout\ & (\Corner_down_raqueta_1|Mux0~1_combout\ & \Corner_down_raqueta_1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corner_down_raqueta_1|Add0~0_combout\,
	datac => \Corner_down_raqueta_1|Mux0~1_combout\,
	datad => \Corner_down_raqueta_1|Mux0~2_combout\,
	combout => \Corner_down_raqueta_1|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y18_N18
\FSM_bouncing|Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal10~0_combout\ = (\Medio_raqueta_1|Mux0~1_combout\ & (\FSM_bouncing|Equal0~1_combout\ & (\FSM_bouncing|Equal4~0_combout\ & !\Corner_down_raqueta_1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Medio_raqueta_1|Mux0~1_combout\,
	datab => \FSM_bouncing|Equal0~1_combout\,
	datac => \FSM_bouncing|Equal4~0_combout\,
	datad => \Corner_down_raqueta_1|Mux0~3_combout\,
	combout => \FSM_bouncing|Equal10~0_combout\);

-- Location: LCCOMB_X26_Y18_N6
\FSM_bouncing|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector4~1_combout\ = (\FSM_bouncing|pri_st.Left_b_trans~q\) # (\FSM_bouncing|pri_st.Score_p1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_bouncing|pri_st.Left_b_trans~q\,
	datad => \FSM_bouncing|pri_st.Score_p1~q\,
	combout => \FSM_bouncing|Selector4~1_combout\);

-- Location: LCCOMB_X26_Y18_N30
\izquierda_led1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \izquierda_led1|Mux0~0_combout\ = (!\flipflop_led1|q\(2) & (!\flipflop_led1|q\(0) & (\flipflop_led1|q\(3) & !\flipflop_led1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(2),
	datab => \flipflop_led1|q\(0),
	datac => \flipflop_led1|q\(3),
	datad => \flipflop_led1|q\(1),
	combout => \izquierda_led1|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y18_N22
\FSM_bouncing|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal6~1_combout\ = (\FSM_bouncing|Equal6~0_combout\ & (\FSM_bouncing|Equal4~0_combout\ & \extremos_raqueta_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal6~0_combout\,
	datac => \FSM_bouncing|Equal4~0_combout\,
	datad => \extremos_raqueta_1|Mux0~1_combout\,
	combout => \FSM_bouncing|Equal6~1_combout\);

-- Location: LCCOMB_X26_Y18_N20
\FSM_bouncing|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector4~0_combout\ = (!\FSM_bouncing|Equal6~1_combout\ & (!\FSM_bouncing|Equal10~0_combout\ & ((\extremos_raqueta_2|Mux0~1_combout\) # (!\izquierda_led1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \izquierda_led1|Mux0~0_combout\,
	datab => \extremos_raqueta_2|Mux0~1_combout\,
	datac => \FSM_bouncing|Equal6~1_combout\,
	datad => \FSM_bouncing|Equal10~0_combout\,
	combout => \FSM_bouncing|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y18_N30
\FSM_bouncing|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector4~2_combout\ = (\contador_clks_juego|Equal0~combout\ & ((\FSM_bouncing|Selector4~1_combout\) # ((\FSM_bouncing|pri_st.Left_b~q\ & \FSM_bouncing|Selector4~0_combout\)))) # (!\contador_clks_juego|Equal0~combout\ & 
-- (((\FSM_bouncing|pri_st.Left_b~q\ & \FSM_bouncing|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~combout\,
	datab => \FSM_bouncing|Selector4~1_combout\,
	datac => \FSM_bouncing|pri_st.Left_b~q\,
	datad => \FSM_bouncing|Selector4~0_combout\,
	combout => \FSM_bouncing|Selector4~2_combout\);

-- Location: FF_X27_Y18_N31
\FSM_bouncing|pri_st.Left_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector4~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Left_b~q\);

-- Location: LCCOMB_X27_Y16_N18
\FSM_bouncing|locombinacional~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|locombinacional~4_combout\ = (!\extremos_raqueta_1|Mux0~1_combout\ & (!\Corner_up_raqueta_1|Mux0~1_combout\ & (\FSM_bouncing|Equal1~0_combout\ & \Corner_down_raqueta_1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extremos_raqueta_1|Mux0~1_combout\,
	datab => \Corner_up_raqueta_1|Mux0~1_combout\,
	datac => \FSM_bouncing|Equal1~0_combout\,
	datad => \Corner_down_raqueta_1|Mux0~3_combout\,
	combout => \FSM_bouncing|locombinacional~4_combout\);

-- Location: LCCOMB_X27_Y16_N12
\FSM_bouncing|locombinacional~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|locombinacional~5_combout\ = (\FSM_bouncing|locombinacional~4_combout\) # ((\extremos_raqueta_1|Mux0~1_combout\ & (!\Corner_down_raqueta_1|Mux0~3_combout\ & !\arriba_led1|up_wall~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extremos_raqueta_1|Mux0~1_combout\,
	datab => \Corner_down_raqueta_1|Mux0~3_combout\,
	datac => \arriba_led1|up_wall~1_combout\,
	datad => \FSM_bouncing|locombinacional~4_combout\,
	combout => \FSM_bouncing|locombinacional~5_combout\);

-- Location: LCCOMB_X27_Y16_N6
\FSM_bouncing|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector3~0_combout\ = (\FSM_bouncing|pri_st.Up_left~q\ & ((\Medio_raqueta_1|Mux0~1_combout\) # ((\extremos_raqueta_2|Mux0~1_combout\) # (!\FSM_bouncing|locombinacional~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Up_left~q\,
	datab => \Medio_raqueta_1|Mux0~1_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|locombinacional~5_combout\,
	combout => \FSM_bouncing|Selector3~0_combout\);

-- Location: LCCOMB_X28_Y19_N8
\FSM_bouncing|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector11~1_combout\ = (\contador_clks_juego|Equal0~combout\ & (\FSM_bouncing|pri_st.Down_right~q\ & ((\FSM_bouncing|locombinacional~1_combout\)))) # (!\contador_clks_juego|Equal0~combout\ & ((\FSM_bouncing|pri_st.Up_left_trans~q\) # 
-- ((\FSM_bouncing|pri_st.Down_right~q\ & \FSM_bouncing|locombinacional~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~combout\,
	datab => \FSM_bouncing|pri_st.Down_right~q\,
	datac => \FSM_bouncing|pri_st.Up_left_trans~q\,
	datad => \FSM_bouncing|locombinacional~1_combout\,
	combout => \FSM_bouncing|Selector11~1_combout\);

-- Location: LCCOMB_X28_Y19_N28
\FSM_bouncing|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal1~1_combout\ = (\FSM_bouncing|Equal1~0_combout\ & (\extremos_raqueta_2|Mux0~1_combout\ & \FSM_bouncing|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal1~0_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|Equal0~2_combout\,
	combout => \FSM_bouncing|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y19_N2
\FSM_bouncing|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector11~0_combout\ = (\FSM_bouncing|Equal1~1_combout\ & ((\FSM_bouncing|pri_st.Right_b~q\) # (!\FSM_bouncing|pri_st.Up_right~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_bouncing|pri_st.Right_b~q\,
	datac => \FSM_bouncing|pri_st.Up_right~q\,
	datad => \FSM_bouncing|Equal1~1_combout\,
	combout => \FSM_bouncing|Selector11~0_combout\);

-- Location: LCCOMB_X28_Y19_N20
\FSM_bouncing|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector11~2_combout\ = (\FSM_bouncing|Selector11~1_combout\) # ((\FSM_bouncing|Selector11~0_combout\) # ((\FSM_bouncing|pri_st.Down_left~q\ & \FSM_bouncing|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Down_left~q\,
	datab => \FSM_bouncing|Selector11~1_combout\,
	datac => \FSM_bouncing|Equal7~0_combout\,
	datad => \FSM_bouncing|Selector11~0_combout\,
	combout => \FSM_bouncing|Selector11~2_combout\);

-- Location: FF_X28_Y19_N21
\FSM_bouncing|pri_st.Up_left_trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector11~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Up_left_trans~q\);

-- Location: LCCOMB_X27_Y16_N8
\FSM_bouncing|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector3~1_combout\ = (\contador_clks_juego|Equal0~combout\ & \FSM_bouncing|pri_st.Up_left_trans~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|Equal0~combout\,
	datac => \FSM_bouncing|pri_st.Up_left_trans~q\,
	combout => \FSM_bouncing|Selector3~1_combout\);

-- Location: LCCOMB_X27_Y19_N6
\FSM_bouncing|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal0~3_combout\ = (!\arriba_led1|up_wall~1_combout\ & (!\extremos_raqueta_2|Mux0~1_combout\ & \FSM_bouncing|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arriba_led1|up_wall~1_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|Equal0~2_combout\,
	combout => \FSM_bouncing|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y16_N22
\FSM_bouncing|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector3~2_combout\ = (\FSM_bouncing|Selector3~1_combout\) # ((\FSM_bouncing|Selector3~0_combout\ & (\FSM_bouncing|Selector4~0_combout\ & !\FSM_bouncing|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Selector3~0_combout\,
	datab => \FSM_bouncing|Selector3~1_combout\,
	datac => \FSM_bouncing|Selector4~0_combout\,
	datad => \FSM_bouncing|Equal0~3_combout\,
	combout => \FSM_bouncing|Selector3~2_combout\);

-- Location: FF_X27_Y16_N23
\FSM_bouncing|pri_st.Up_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector3~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Up_left~q\);

-- Location: LCCOMB_X28_Y19_N22
\FSM_bouncing|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector9~2_combout\ = (\FSM_bouncing|pri_st.Up_left~q\ & (!\arriba_led1|up_wall~1_combout\ & (!\extremos_raqueta_2|Mux0~1_combout\ & \FSM_bouncing|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Up_left~q\,
	datab => \arriba_led1|up_wall~1_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|Equal0~2_combout\,
	combout => \FSM_bouncing|Selector9~2_combout\);

-- Location: LCCOMB_X28_Y19_N4
\FSM_bouncing|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector9~1_combout\ = (\contador_clks_juego|Equal0~combout\ & (((!\FSM_bouncing|pri_st.Up_right~q\ & \FSM_bouncing|locombinacional~3_combout\)))) # (!\contador_clks_juego|Equal0~combout\ & ((\FSM_bouncing|pri_st.Down_left_trans~q\) # 
-- ((!\FSM_bouncing|pri_st.Up_right~q\ & \FSM_bouncing|locombinacional~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~combout\,
	datab => \FSM_bouncing|pri_st.Down_left_trans~q\,
	datac => \FSM_bouncing|pri_st.Up_right~q\,
	datad => \FSM_bouncing|locombinacional~3_combout\,
	combout => \FSM_bouncing|Selector9~1_combout\);

-- Location: LCCOMB_X28_Y19_N30
\FSM_bouncing|Selector9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector9~3_combout\ = (\FSM_bouncing|Selector9~2_combout\) # ((\FSM_bouncing|Selector9~1_combout\) # ((\FSM_bouncing|Selector9~0_combout\ & \FSM_bouncing|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Selector9~2_combout\,
	datab => \FSM_bouncing|Selector9~1_combout\,
	datac => \FSM_bouncing|Selector9~0_combout\,
	datad => \FSM_bouncing|Equal1~1_combout\,
	combout => \FSM_bouncing|Selector9~3_combout\);

-- Location: FF_X28_Y19_N31
\FSM_bouncing|pri_st.Down_left_trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector9~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Down_left_trans~q\);

-- Location: LCCOMB_X26_Y18_N4
\FSM_bouncing|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector1~1_combout\ = (\contador_clks_juego|Equal0~combout\ & \FSM_bouncing|pri_st.Down_left_trans~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~combout\,
	datad => \FSM_bouncing|pri_st.Down_left_trans~q\,
	combout => \FSM_bouncing|Selector1~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\FSM_bouncing|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector1~2_combout\ = (\FSM_bouncing|Selector1~1_combout\) # ((\FSM_bouncing|Selector1~0_combout\ & (\FSM_bouncing|Selector4~0_combout\ & !\FSM_bouncing|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Selector1~0_combout\,
	datab => \FSM_bouncing|Selector4~0_combout\,
	datac => \FSM_bouncing|Selector1~1_combout\,
	datad => \FSM_bouncing|Equal7~0_combout\,
	combout => \FSM_bouncing|Selector1~2_combout\);

-- Location: FF_X26_Y18_N25
\FSM_bouncing|pri_st.Down_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector1~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Down_left~q\);

-- Location: LCCOMB_X26_Y18_N10
\FSM_bouncing|locombinacional~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|locombinacional~6_combout\ = (\FSM_bouncing|Equal1~0_combout\ & ((\Corner_up_raqueta_1|Mux0~1_combout\) # ((!\abajo_led1|down_wall~0_combout\ & \extremos_raqueta_1|Mux0~1_combout\)))) # (!\FSM_bouncing|Equal1~0_combout\ & 
-- (!\abajo_led1|down_wall~0_combout\ & ((\extremos_raqueta_1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal1~0_combout\,
	datab => \abajo_led1|down_wall~0_combout\,
	datac => \Corner_up_raqueta_1|Mux0~1_combout\,
	datad => \extremos_raqueta_1|Mux0~1_combout\,
	combout => \FSM_bouncing|locombinacional~6_combout\);

-- Location: LCCOMB_X26_Y18_N0
\FSM_bouncing|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector1~0_combout\ = (\FSM_bouncing|pri_st.Down_left~q\ & (((\extremos_raqueta_2|Mux0~1_combout\) # (!\FSM_bouncing|locombinacional~6_combout\)) # (!\FSM_bouncing|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal6~0_combout\,
	datab => \FSM_bouncing|pri_st.Down_left~q\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|locombinacional~6_combout\,
	combout => \FSM_bouncing|Selector1~0_combout\);

-- Location: LCCOMB_X27_Y19_N2
\FSM_bouncing|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector13~0_combout\ = (\FSM_bouncing|pri_st.Left_b~q\) # ((\FSM_bouncing|Selector1~0_combout\) # (\FSM_bouncing|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_bouncing|pri_st.Left_b~q\,
	datac => \FSM_bouncing|Selector1~0_combout\,
	datad => \FSM_bouncing|Selector3~0_combout\,
	combout => \FSM_bouncing|Selector13~0_combout\);

-- Location: LCCOMB_X27_Y19_N22
\FSM_bouncing|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector13~1_combout\ = (\FSM_bouncing|Equal10~0_combout\ & ((\FSM_bouncing|Selector13~0_combout\) # ((!\contador_clks_juego|Equal0~combout\ & \FSM_bouncing|pri_st.Right_b_trans~q\)))) # (!\FSM_bouncing|Equal10~0_combout\ & 
-- (!\contador_clks_juego|Equal0~combout\ & (\FSM_bouncing|pri_st.Right_b_trans~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal10~0_combout\,
	datab => \contador_clks_juego|Equal0~combout\,
	datac => \FSM_bouncing|pri_st.Right_b_trans~q\,
	datad => \FSM_bouncing|Selector13~0_combout\,
	combout => \FSM_bouncing|Selector13~1_combout\);

-- Location: FF_X27_Y19_N23
\FSM_bouncing|pri_st.Right_b_trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector13~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Right_b_trans~q\);

-- Location: LCCOMB_X27_Y18_N22
\Mux_led1|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_led1|Mux0~4_combout\ = ((!\FSM_bouncing|pri_st.Right_b_trans~q\ & (!\FSM_bouncing|WideOr0~0_combout\ & !\FSM_bouncing|pri_st.Left_b_trans~q\))) # (!\FSM_bouncing|WideOr1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Right_b_trans~q\,
	datab => \FSM_bouncing|WideOr0~0_combout\,
	datac => \FSM_bouncing|pri_st.Left_b_trans~q\,
	datad => \FSM_bouncing|WideOr1~combout\,
	combout => \Mux_led1|Mux0~4_combout\);

-- Location: FF_X27_Y18_N7
\flipflop_led1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[1]~10_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(1));

-- Location: LCCOMB_X27_Y18_N8
\flipflop_led1|q[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[2]~12_combout\ = ((\flipflop_led1|q\(2) $ (\FSM_bouncing|WideOr2~combout\ $ (\flipflop_led1|q[1]~11\)))) # (GND)
-- \flipflop_led1|q[2]~13\ = CARRY((\flipflop_led1|q\(2) & ((!\flipflop_led1|q[1]~11\) # (!\FSM_bouncing|WideOr2~combout\))) # (!\flipflop_led1|q\(2) & (!\FSM_bouncing|WideOr2~combout\ & !\flipflop_led1|q[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(2),
	datab => \FSM_bouncing|WideOr2~combout\,
	datad => VCC,
	cin => \flipflop_led1|q[1]~11\,
	combout => \flipflop_led1|q[2]~12_combout\,
	cout => \flipflop_led1|q[2]~13\);

-- Location: LCCOMB_X27_Y18_N10
\flipflop_led1|q[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[3]~14_combout\ = ((\flipflop_led1|q\(3) $ (\FSM_bouncing|WideOr2~combout\ $ (!\flipflop_led1|q[2]~13\)))) # (GND)
-- \flipflop_led1|q[3]~15\ = CARRY((\flipflop_led1|q\(3) & ((\FSM_bouncing|WideOr2~combout\) # (!\flipflop_led1|q[2]~13\))) # (!\flipflop_led1|q\(3) & (\FSM_bouncing|WideOr2~combout\ & !\flipflop_led1|q[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(3),
	datab => \FSM_bouncing|WideOr2~combout\,
	datad => VCC,
	cin => \flipflop_led1|q[2]~13\,
	combout => \flipflop_led1|q[3]~14_combout\,
	cout => \flipflop_led1|q[3]~15\);

-- Location: FF_X27_Y18_N11
\flipflop_led1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[3]~14_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(3));

-- Location: LCCOMB_X27_Y18_N12
\flipflop_led1|q[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[4]~16_combout\ = (\flipflop_led1|q\(4) & ((\Mux_led1|Add1~1_combout\ & (!\flipflop_led1|q[3]~15\)) # (!\Mux_led1|Add1~1_combout\ & (\flipflop_led1|q[3]~15\ & VCC)))) # (!\flipflop_led1|q\(4) & ((\Mux_led1|Add1~1_combout\ & 
-- ((\flipflop_led1|q[3]~15\) # (GND))) # (!\Mux_led1|Add1~1_combout\ & (!\flipflop_led1|q[3]~15\))))
-- \flipflop_led1|q[4]~17\ = CARRY((\flipflop_led1|q\(4) & (\Mux_led1|Add1~1_combout\ & !\flipflop_led1|q[3]~15\)) # (!\flipflop_led1|q\(4) & ((\Mux_led1|Add1~1_combout\) # (!\flipflop_led1|q[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(4),
	datab => \Mux_led1|Add1~1_combout\,
	datad => VCC,
	cin => \flipflop_led1|q[3]~15\,
	combout => \flipflop_led1|q[4]~16_combout\,
	cout => \flipflop_led1|q[4]~17\);

-- Location: LCCOMB_X27_Y18_N14
\flipflop_led1|q[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[5]~18_combout\ = ((\Mux_led1|Add1~0_combout\ $ (\flipflop_led1|q\(5) $ (\flipflop_led1|q[4]~17\)))) # (GND)
-- \flipflop_led1|q[5]~19\ = CARRY((\Mux_led1|Add1~0_combout\ & (\flipflop_led1|q\(5) & !\flipflop_led1|q[4]~17\)) # (!\Mux_led1|Add1~0_combout\ & ((\flipflop_led1|q\(5)) # (!\flipflop_led1|q[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_led1|Add1~0_combout\,
	datab => \flipflop_led1|q\(5),
	datad => VCC,
	cin => \flipflop_led1|q[4]~17\,
	combout => \flipflop_led1|q[5]~18_combout\,
	cout => \flipflop_led1|q[5]~19\);

-- Location: FF_X27_Y18_N15
\flipflop_led1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[5]~18_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(5));

-- Location: LCCOMB_X27_Y17_N26
\arriba_led1|up_wall~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \arriba_led1|up_wall~1_combout\ = (\flipflop_led1|q\(6)) # (((!\arriba_led1|up_wall~0_combout\) # (!\flipflop_led1|q\(5))) # (!\flipflop_led1|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(6),
	datab => \flipflop_led1|q\(4),
	datac => \flipflop_led1|q\(5),
	datad => \arriba_led1|up_wall~0_combout\,
	combout => \arriba_led1|up_wall~1_combout\);

-- Location: LCCOMB_X26_Y19_N0
\FSM_bouncing|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector10~0_combout\ = (!\arriba_led1|up_wall~1_combout\ & (!\FSM_bouncing|pri_st.Up_right~q\ & (!\extremos_raqueta_2|Mux0~1_combout\ & \FSM_bouncing|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arriba_led1|up_wall~1_combout\,
	datab => \FSM_bouncing|pri_st.Up_right~q\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|Equal0~2_combout\,
	combout => \FSM_bouncing|Selector10~0_combout\);

-- Location: LCCOMB_X27_Y16_N2
\FSM_bouncing|Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector10~1_combout\ = (\FSM_bouncing|pri_st.Up_left~q\ & (!\Medio_raqueta_1|Mux0~1_combout\ & (!\extremos_raqueta_2|Mux0~1_combout\ & \FSM_bouncing|locombinacional~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Up_left~q\,
	datab => \Medio_raqueta_1|Mux0~1_combout\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|locombinacional~5_combout\,
	combout => \FSM_bouncing|Selector10~1_combout\);

-- Location: LCCOMB_X26_Y19_N2
\FSM_bouncing|Selector10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector10~2_combout\ = (\FSM_bouncing|Selector10~1_combout\) # ((\FSM_bouncing|Equal6~1_combout\ & ((\FSM_bouncing|pri_st.Down_left~q\) # (\FSM_bouncing|pri_st.Left_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Down_left~q\,
	datab => \FSM_bouncing|pri_st.Left_b~q\,
	datac => \FSM_bouncing|Equal6~1_combout\,
	datad => \FSM_bouncing|Selector10~1_combout\,
	combout => \FSM_bouncing|Selector10~2_combout\);

-- Location: LCCOMB_X26_Y19_N14
\FSM_bouncing|Selector10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector10~3_combout\ = (\FSM_bouncing|Selector10~0_combout\) # ((\FSM_bouncing|Selector10~2_combout\) # ((!\contador_clks_juego|Equal0~combout\ & \FSM_bouncing|pri_st.Down_right_trans~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~combout\,
	datab => \FSM_bouncing|Selector10~0_combout\,
	datac => \FSM_bouncing|pri_st.Down_right_trans~q\,
	datad => \FSM_bouncing|Selector10~2_combout\,
	combout => \FSM_bouncing|Selector10~3_combout\);

-- Location: FF_X26_Y19_N15
\FSM_bouncing|pri_st.Down_right_trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector10~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Down_right_trans~q\);

-- Location: LCCOMB_X27_Y18_N2
\FSM_bouncing|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr1~0_combout\ = (\FSM_bouncing|pri_st.Score_p1~q\) # ((\FSM_bouncing|pri_st.Score_p2~q\) # ((\FSM_bouncing|pri_st.Down_right~q\) # (\FSM_bouncing|pri_st.Up_left~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Score_p1~q\,
	datab => \FSM_bouncing|pri_st.Score_p2~q\,
	datac => \FSM_bouncing|pri_st.Down_right~q\,
	datad => \FSM_bouncing|pri_st.Up_left~q\,
	combout => \FSM_bouncing|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y18_N0
\FSM_bouncing|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr1~combout\ = (\FSM_bouncing|pri_st.Down_right_trans~q\) # ((\FSM_bouncing|pri_st.Up_left_trans~q\) # (\FSM_bouncing|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_bouncing|pri_st.Down_right_trans~q\,
	datac => \FSM_bouncing|pri_st.Up_left_trans~q\,
	datad => \FSM_bouncing|WideOr1~0_combout\,
	combout => \FSM_bouncing|WideOr1~combout\);

-- Location: LCCOMB_X26_Y18_N12
\FSM_bouncing|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr0~combout\ = (\FSM_bouncing|pri_st.Left_b_trans~q\) # ((\FSM_bouncing|pri_st.Right_b_trans~q\) # (\FSM_bouncing|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Left_b_trans~q\,
	datac => \FSM_bouncing|pri_st.Right_b_trans~q\,
	datad => \FSM_bouncing|WideOr0~0_combout\,
	combout => \FSM_bouncing|WideOr0~combout\);

-- Location: LCCOMB_X27_Y18_N26
\Mux_led1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_led1|Add1~0_combout\ = (\FSM_bouncing|WideOr1~combout\ & (!\FSM_bouncing|WideOr2~combout\ & !\FSM_bouncing|WideOr0~combout\)) # (!\FSM_bouncing|WideOr1~combout\ & (\FSM_bouncing|WideOr2~combout\ $ (\FSM_bouncing|WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_bouncing|WideOr1~combout\,
	datac => \FSM_bouncing|WideOr2~combout\,
	datad => \FSM_bouncing|WideOr0~combout\,
	combout => \Mux_led1|Add1~0_combout\);

-- Location: LCCOMB_X27_Y18_N16
\flipflop_led1|q[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[6]~20_combout\ = ((\Mux_led1|Add1~0_combout\ $ (\flipflop_led1|q\(6) $ (!\flipflop_led1|q[5]~19\)))) # (GND)
-- \flipflop_led1|q[6]~21\ = CARRY((\Mux_led1|Add1~0_combout\ & ((\flipflop_led1|q\(6)) # (!\flipflop_led1|q[5]~19\))) # (!\Mux_led1|Add1~0_combout\ & (\flipflop_led1|q\(6) & !\flipflop_led1|q[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_led1|Add1~0_combout\,
	datab => \flipflop_led1|q\(6),
	datad => VCC,
	cin => \flipflop_led1|q[5]~19\,
	combout => \flipflop_led1|q[6]~20_combout\,
	cout => \flipflop_led1|q[6]~21\);

-- Location: FF_X27_Y18_N17
\flipflop_led1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[6]~20_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(6));

-- Location: LCCOMB_X27_Y16_N0
\Corner_down_raqueta_1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_1|Add0~1_combout\ = (\flipflop_led3r1|q\(5) & (!\flipflop_led1|q\(5) & ((!\flipflop_led3r1|q\(4)) # (!\flipflop_led1|q\(4))))) # (!\flipflop_led3r1|q\(5) & (((!\flipflop_led1|q\(5)) # (!\flipflop_led3r1|q\(4))) # 
-- (!\flipflop_led1|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(5),
	datab => \flipflop_led1|q\(4),
	datac => \flipflop_led3r1|q\(4),
	datad => \flipflop_led1|q\(5),
	combout => \Corner_down_raqueta_1|Add0~1_combout\);

-- Location: LCCOMB_X27_Y16_N10
\Corner_down_raqueta_1|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Corner_down_raqueta_1|Mux0~2_combout\ = (\flipflop_led3r1|q\(6) & (\flipflop_led1|q\(6) $ (\Corner_down_raqueta_1|Add0~1_combout\))) # (!\flipflop_led3r1|q\(6) & (\flipflop_led1|q\(6) & \Corner_down_raqueta_1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(6),
	datac => \flipflop_led1|q\(6),
	datad => \Corner_down_raqueta_1|Add0~1_combout\,
	combout => \Corner_down_raqueta_1|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y16_N30
\FSM_bouncing|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal6~0_combout\ = (!\Medio_raqueta_1|Mux0~1_combout\ & (((\Corner_down_raqueta_1|Add0~0_combout\) # (!\Corner_down_raqueta_1|Mux0~1_combout\)) # (!\Corner_down_raqueta_1|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_down_raqueta_1|Mux0~2_combout\,
	datab => \Corner_down_raqueta_1|Add0~0_combout\,
	datac => \Corner_down_raqueta_1|Mux0~1_combout\,
	datad => \Medio_raqueta_1|Mux0~1_combout\,
	combout => \FSM_bouncing|Equal6~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\FSM_bouncing|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector8~0_combout\ = (\FSM_bouncing|Equal6~0_combout\ & (\FSM_bouncing|pri_st.Down_left~q\ & (!\extremos_raqueta_2|Mux0~1_combout\ & \FSM_bouncing|locombinacional~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal6~0_combout\,
	datab => \FSM_bouncing|pri_st.Down_left~q\,
	datac => \extremos_raqueta_2|Mux0~1_combout\,
	datad => \FSM_bouncing|locombinacional~6_combout\,
	combout => \FSM_bouncing|Selector8~0_combout\);

-- Location: LCCOMB_X27_Y19_N28
\FSM_bouncing|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector8~1_combout\ = (\contador_clks_juego|Equal0~combout\ & (\FSM_bouncing|pri_st.Up_left~q\ & ((\FSM_bouncing|Equal6~1_combout\)))) # (!\contador_clks_juego|Equal0~combout\ & ((\FSM_bouncing|pri_st.Up_right_trans~q\) # 
-- ((\FSM_bouncing|pri_st.Up_left~q\ & \FSM_bouncing|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~combout\,
	datab => \FSM_bouncing|pri_st.Up_left~q\,
	datac => \FSM_bouncing|pri_st.Up_right_trans~q\,
	datad => \FSM_bouncing|Equal6~1_combout\,
	combout => \FSM_bouncing|Selector8~1_combout\);

-- Location: LCCOMB_X27_Y19_N14
\FSM_bouncing|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector8~2_combout\ = (\FSM_bouncing|Selector8~0_combout\) # ((\FSM_bouncing|Selector8~1_combout\) # ((\FSM_bouncing|pri_st.Down_right~q\ & \FSM_bouncing|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Selector8~0_combout\,
	datab => \FSM_bouncing|pri_st.Down_right~q\,
	datac => \FSM_bouncing|Equal7~0_combout\,
	datad => \FSM_bouncing|Selector8~1_combout\,
	combout => \FSM_bouncing|Selector8~2_combout\);

-- Location: FF_X27_Y19_N15
\FSM_bouncing|pri_st.Up_right_trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector8~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Up_right_trans~q\);

-- Location: LCCOMB_X27_Y19_N10
\FSM_bouncing|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector0~0_combout\ = (!\FSM_bouncing|pri_st.Up_right~q\ & (!\FSM_bouncing|locombinacional~3_combout\ & !\FSM_bouncing|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Up_right~q\,
	datac => \FSM_bouncing|locombinacional~3_combout\,
	datad => \FSM_bouncing|Equal0~3_combout\,
	combout => \FSM_bouncing|Selector0~0_combout\);

-- Location: LCCOMB_X27_Y19_N30
\FSM_bouncing|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector0~1_combout\ = (\contador_clks_juego|Equal0~combout\ & (!\FSM_bouncing|pri_st.Up_right_trans~q\ & ((!\FSM_bouncing|Selector0~0_combout\) # (!\FSM_bouncing|Selector2~2_combout\)))) # (!\contador_clks_juego|Equal0~combout\ & 
-- (((!\FSM_bouncing|Selector0~0_combout\) # (!\FSM_bouncing|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clks_juego|Equal0~combout\,
	datab => \FSM_bouncing|pri_st.Up_right_trans~q\,
	datac => \FSM_bouncing|Selector2~2_combout\,
	datad => \FSM_bouncing|Selector0~0_combout\,
	combout => \FSM_bouncing|Selector0~1_combout\);

-- Location: FF_X27_Y19_N31
\FSM_bouncing|pri_st.Up_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Up_right~q\);

-- Location: LCCOMB_X27_Y19_N12
\FSM_bouncing|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr2~0_combout\ = (\FSM_bouncing|pri_st.Right_b_trans~q\) # ((\FSM_bouncing|pri_st.Down_right~q\) # ((\FSM_bouncing|pri_st.Up_right_trans~q\) # (\FSM_bouncing|pri_st.Down_right_trans~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Right_b_trans~q\,
	datab => \FSM_bouncing|pri_st.Down_right~q\,
	datac => \FSM_bouncing|pri_st.Up_right_trans~q\,
	datad => \FSM_bouncing|pri_st.Down_right_trans~q\,
	combout => \FSM_bouncing|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y19_N16
\FSM_bouncing|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr2~combout\ = (\FSM_bouncing|pri_st.Right_b~q\) # ((\FSM_bouncing|pri_st.Score_p2~q\) # ((\FSM_bouncing|WideOr2~0_combout\) # (!\FSM_bouncing|pri_st.Up_right~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Right_b~q\,
	datab => \FSM_bouncing|pri_st.Score_p2~q\,
	datac => \FSM_bouncing|pri_st.Up_right~q\,
	datad => \FSM_bouncing|WideOr2~0_combout\,
	combout => \FSM_bouncing|WideOr2~combout\);

-- Location: FF_X27_Y18_N9
\flipflop_led1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[2]~12_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(2));

-- Location: LCCOMB_X26_Y18_N14
\derecha_led1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \derecha_led1|Mux0~0_combout\ = (\flipflop_led1|q\(2) & (!\flipflop_led1|q\(3) & (\flipflop_led1|q\(0) & \flipflop_led1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(2),
	datab => \flipflop_led1|q\(3),
	datac => \flipflop_led1|q\(0),
	datad => \flipflop_led1|q\(1),
	combout => \derecha_led1|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y18_N24
\FSM_bouncing|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Equal5~0_combout\ = (\derecha_led1|Mux0~0_combout\ & (((!\extremos_raqueta_2|Mux0~0_combout\) # (!\Corner_up_raqueta_2|Mux0~0_combout\)) # (!\Corner_up_raqueta_2|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_up_raqueta_2|Add0~8_combout\,
	datab => \derecha_led1|Mux0~0_combout\,
	datac => \Corner_up_raqueta_2|Mux0~0_combout\,
	datad => \extremos_raqueta_2|Mux0~0_combout\,
	combout => \FSM_bouncing|Equal5~0_combout\);

-- Location: LCCOMB_X26_Y19_N6
\FSM_bouncing|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector5~0_combout\ = (\contador_clks_juego|Equal0~combout\ & ((\FSM_bouncing|pri_st.Score_p2~q\) # (\FSM_bouncing|pri_st.Right_b_trans~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_clks_juego|Equal0~combout\,
	datac => \FSM_bouncing|pri_st.Score_p2~q\,
	datad => \FSM_bouncing|pri_st.Right_b_trans~q\,
	combout => \FSM_bouncing|Selector5~0_combout\);

-- Location: LCCOMB_X26_Y19_N12
\FSM_bouncing|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector5~1_combout\ = (\FSM_bouncing|Selector5~0_combout\) # ((!\FSM_bouncing|Equal5~0_combout\ & (\FSM_bouncing|pri_st.Right_b~q\ & \FSM_bouncing|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Equal5~0_combout\,
	datab => \FSM_bouncing|Selector5~0_combout\,
	datac => \FSM_bouncing|pri_st.Right_b~q\,
	datad => \FSM_bouncing|Selector2~0_combout\,
	combout => \FSM_bouncing|Selector5~1_combout\);

-- Location: FF_X26_Y19_N13
\FSM_bouncing|pri_st.Right_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector5~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Right_b~q\);

-- Location: LCCOMB_X27_Y18_N28
\FSM_bouncing|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr0~0_combout\ = (\FSM_bouncing|pri_st.Right_b~q\) # ((\FSM_bouncing|pri_st.Left_b~q\) # ((\FSM_bouncing|pri_st.Score_p2~q\) # (\FSM_bouncing|pri_st.Score_p1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Right_b~q\,
	datab => \FSM_bouncing|pri_st.Left_b~q\,
	datac => \FSM_bouncing|pri_st.Score_p2~q\,
	datad => \FSM_bouncing|pri_st.Score_p1~q\,
	combout => \FSM_bouncing|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y18_N20
\Mux_led1|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_led1|Add1~1_combout\ = \FSM_bouncing|WideOr2~combout\ $ (((\FSM_bouncing|WideOr0~0_combout\) # ((\FSM_bouncing|pri_st.Right_b_trans~q\) # (\FSM_bouncing|pri_st.Left_b_trans~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|WideOr0~0_combout\,
	datab => \FSM_bouncing|pri_st.Right_b_trans~q\,
	datac => \FSM_bouncing|WideOr2~combout\,
	datad => \FSM_bouncing|pri_st.Left_b_trans~q\,
	combout => \Mux_led1|Add1~1_combout\);

-- Location: FF_X27_Y18_N13
\flipflop_led1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[4]~16_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(4));

-- Location: LCCOMB_X28_Y18_N2
\extremos_raqueta_2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \extremos_raqueta_2|Mux0~1_combout\ = (\Corner_up_raqueta_2|Add0~8_combout\ & (\Corner_up_raqueta_2|Mux0~0_combout\ & \extremos_raqueta_2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corner_up_raqueta_2|Add0~8_combout\,
	datac => \Corner_up_raqueta_2|Mux0~0_combout\,
	datad => \extremos_raqueta_2|Mux0~0_combout\,
	combout => \extremos_raqueta_2|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y19_N24
\FSM_bouncing|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector7~1_combout\ = (\FSM_bouncing|Selector7~0_combout\) # ((!\extremos_raqueta_2|Mux0~1_combout\ & (\izquierda_led1|Mux0~0_combout\ & \FSM_bouncing|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|Selector7~0_combout\,
	datab => \extremos_raqueta_2|Mux0~1_combout\,
	datac => \izquierda_led1|Mux0~0_combout\,
	datad => \FSM_bouncing|Selector13~0_combout\,
	combout => \FSM_bouncing|Selector7~1_combout\);

-- Location: FF_X27_Y19_N25
\FSM_bouncing|pri_st.Score_p2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector7~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Score_p2~q\);

-- Location: LCCOMB_X28_Y20_N4
\flipflop_player2|q[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player2|q[0]~0_combout\ = \FSM_bouncing|pri_st.Score_p2~q\ $ (\flipflop_player2|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_bouncing|pri_st.Score_p2~q\,
	datad => \flipflop_player2|q\(0),
	combout => \flipflop_player2|q[0]~0_combout\);

-- Location: FF_X28_Y20_N17
\flipflop_player2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \flipflop_player2|q[0]~0_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player2|q\(0));

-- Location: LCCOMB_X28_Y20_N12
\flipflop_player2|q[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player2|q[1]~1_combout\ = \flipflop_player2|q\(1) $ (((\FSM_bouncing|pri_st.Score_p2~q\ & \flipflop_player2|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(1),
	datab => \FSM_bouncing|pri_st.Score_p2~q\,
	datad => \flipflop_player2|q\(0),
	combout => \flipflop_player2|q[1]~1_combout\);

-- Location: LCCOMB_X28_Y20_N18
\flipflop_player2|q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player2|q[1]~feeder_combout\ = \flipflop_player2|q[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipflop_player2|q[1]~1_combout\,
	combout => \flipflop_player2|q[1]~feeder_combout\);

-- Location: FF_X28_Y20_N19
\flipflop_player2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_player2|q[1]~feeder_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player2|q\(1));

-- Location: LCCOMB_X28_Y20_N22
\flipflop_player2|q[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player2|q[2]~2_combout\ = \flipflop_player2|q\(2) $ (((\flipflop_player2|q\(0) & (\FSM_bouncing|pri_st.Score_p2~q\ & \flipflop_player2|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(2),
	datab => \flipflop_player2|q\(0),
	datac => \FSM_bouncing|pri_st.Score_p2~q\,
	datad => \flipflop_player2|q\(1),
	combout => \flipflop_player2|q[2]~2_combout\);

-- Location: FF_X28_Y20_N13
\flipflop_player2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \flipflop_player2|q[2]~2_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player2|q\(2));

-- Location: LCCOMB_X28_Y20_N16
\flipflop_player2|q[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player2|q[3]~3_combout\ = (!\flipflop_player2|q\(2)) # (!\flipflop_player2|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipflop_player2|q\(0),
	datad => \flipflop_player2|q\(2),
	combout => \flipflop_player2|q[3]~3_combout\);

-- Location: LCCOMB_X28_Y20_N2
\flipflop_player2|q[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player2|q[3]~4_combout\ = \flipflop_player2|q\(3) $ (((\flipflop_player2|q\(1) & (\FSM_bouncing|pri_st.Score_p2~q\ & !\flipflop_player2|q[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(1),
	datab => \FSM_bouncing|pri_st.Score_p2~q\,
	datac => \flipflop_player2|q\(3),
	datad => \flipflop_player2|q[3]~3_combout\,
	combout => \flipflop_player2|q[3]~4_combout\);

-- Location: FF_X28_Y20_N3
\flipflop_player2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_player2|q[3]~4_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player2|q\(3));

-- Location: LCCOMB_X28_Y20_N30
\flipflop_player1|q[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player1|q[0]~0_combout\ = \FSM_bouncing|pri_st.Score_p1~q\ $ (\flipflop_player1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_bouncing|pri_st.Score_p1~q\,
	datad => \flipflop_player1|q\(0),
	combout => \flipflop_player1|q[0]~0_combout\);

-- Location: FF_X28_Y20_N25
\flipflop_player1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \flipflop_player1|q[0]~0_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player1|q\(0));

-- Location: LCCOMB_X28_Y20_N8
\flipflop_player1|q[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player1|q[1]~1_combout\ = \flipflop_player1|q\(1) $ (((\FSM_bouncing|pri_st.Score_p1~q\ & \flipflop_player1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_player1|q\(1),
	datac => \FSM_bouncing|pri_st.Score_p1~q\,
	datad => \flipflop_player1|q\(0),
	combout => \flipflop_player1|q[1]~1_combout\);

-- Location: FF_X28_Y20_N15
\flipflop_player1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \flipflop_player1|q[1]~1_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player1|q\(1));

-- Location: LCCOMB_X28_Y20_N6
\flipflop_player1|q[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player1|q[2]~2_combout\ = \flipflop_player1|q\(2) $ (((\flipflop_player1|q\(0) & (\flipflop_player1|q\(1) & \FSM_bouncing|pri_st.Score_p1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(2),
	datac => \flipflop_player1|q\(1),
	datad => \FSM_bouncing|pri_st.Score_p1~q\,
	combout => \flipflop_player1|q[2]~2_combout\);

-- Location: LCCOMB_X28_Y20_N28
\flipflop_player1|q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player1|q[2]~feeder_combout\ = \flipflop_player1|q[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flipflop_player1|q[2]~2_combout\,
	combout => \flipflop_player1|q[2]~feeder_combout\);

-- Location: FF_X28_Y20_N29
\flipflop_player1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_player1|q[2]~feeder_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player1|q\(2));

-- Location: LCCOMB_X28_Y20_N24
\flipflop_player1|q[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player1|q[3]~3_combout\ = (\flipflop_player1|q\(1) & (\flipflop_player1|q\(2) & (\flipflop_player1|q\(0) & \FSM_bouncing|pri_st.Score_p1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(1),
	datab => \flipflop_player1|q\(2),
	datac => \flipflop_player1|q\(0),
	datad => \FSM_bouncing|pri_st.Score_p1~q\,
	combout => \flipflop_player1|q[3]~3_combout\);

-- Location: LCCOMB_X28_Y20_N26
\flipflop_player1|q[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_player1|q[3]~4_combout\ = \flipflop_player1|q\(3) $ (\flipflop_player1|q[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q[3]~3_combout\,
	combout => \flipflop_player1|q[3]~4_combout\);

-- Location: FF_X28_Y20_N27
\flipflop_player1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_player1|q[3]~4_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_player1|q\(3));

-- Location: LCCOMB_X28_Y20_N20
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\flipflop_player1|q\(3) & ((\flipflop_player1|q\(1)) # (\flipflop_player1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(3),
	datac => \flipflop_player1|q\(1),
	datad => \flipflop_player1|q\(2),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X28_Y20_N10
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\process_0~0_combout\) # ((\flipflop_player2|q\(3) & ((\flipflop_player2|q\(2)) # (\flipflop_player2|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(2),
	datab => \flipflop_player2|q\(1),
	datac => \flipflop_player2|q\(3),
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X23_Y20_N2
\winner_timer[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[0]~31_combout\ = winner_timer(0) $ (VCC)
-- \winner_timer[0]~32\ = CARRY(winner_timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(0),
	datad => VCC,
	combout => \winner_timer[0]~31_combout\,
	cout => \winner_timer[0]~32\);

-- Location: LCCOMB_X24_Y19_N10
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X23_Y20_N3
\winner_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[0]~31_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(0));

-- Location: LCCOMB_X23_Y20_N4
\winner_timer[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[1]~33_combout\ = (winner_timer(1) & (\winner_timer[0]~32\ & VCC)) # (!winner_timer(1) & (!\winner_timer[0]~32\))
-- \winner_timer[1]~34\ = CARRY((!winner_timer(1) & !\winner_timer[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(1),
	datad => VCC,
	cin => \winner_timer[0]~32\,
	combout => \winner_timer[1]~33_combout\,
	cout => \winner_timer[1]~34\);

-- Location: FF_X23_Y20_N5
\winner_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[1]~33_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(1));

-- Location: LCCOMB_X23_Y20_N6
\winner_timer[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[2]~35_combout\ = (winner_timer(2) & ((GND) # (!\winner_timer[1]~34\))) # (!winner_timer(2) & (\winner_timer[1]~34\ $ (GND)))
-- \winner_timer[2]~36\ = CARRY((winner_timer(2)) # (!\winner_timer[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(2),
	datad => VCC,
	cin => \winner_timer[1]~34\,
	combout => \winner_timer[2]~35_combout\,
	cout => \winner_timer[2]~36\);

-- Location: FF_X23_Y20_N7
\winner_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[2]~35_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(2));

-- Location: LCCOMB_X23_Y20_N8
\winner_timer[3]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[3]~37_combout\ = (winner_timer(3) & (\winner_timer[2]~36\ & VCC)) # (!winner_timer(3) & (!\winner_timer[2]~36\))
-- \winner_timer[3]~38\ = CARRY((!winner_timer(3) & !\winner_timer[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(3),
	datad => VCC,
	cin => \winner_timer[2]~36\,
	combout => \winner_timer[3]~37_combout\,
	cout => \winner_timer[3]~38\);

-- Location: FF_X23_Y20_N9
\winner_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[3]~37_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(3));

-- Location: LCCOMB_X23_Y20_N10
\winner_timer[4]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[4]~39_combout\ = (winner_timer(4) & ((GND) # (!\winner_timer[3]~38\))) # (!winner_timer(4) & (\winner_timer[3]~38\ $ (GND)))
-- \winner_timer[4]~40\ = CARRY((winner_timer(4)) # (!\winner_timer[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(4),
	datad => VCC,
	cin => \winner_timer[3]~38\,
	combout => \winner_timer[4]~39_combout\,
	cout => \winner_timer[4]~40\);

-- Location: FF_X23_Y20_N11
\winner_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[4]~39_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(4));

-- Location: LCCOMB_X23_Y20_N12
\winner_timer[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[5]~41_combout\ = (winner_timer(5) & (\winner_timer[4]~40\ & VCC)) # (!winner_timer(5) & (!\winner_timer[4]~40\))
-- \winner_timer[5]~42\ = CARRY((!winner_timer(5) & !\winner_timer[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(5),
	datad => VCC,
	cin => \winner_timer[4]~40\,
	combout => \winner_timer[5]~41_combout\,
	cout => \winner_timer[5]~42\);

-- Location: FF_X23_Y20_N13
\winner_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[5]~41_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(5));

-- Location: LCCOMB_X23_Y20_N14
\winner_timer[6]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[6]~43_combout\ = (winner_timer(6) & ((GND) # (!\winner_timer[5]~42\))) # (!winner_timer(6) & (\winner_timer[5]~42\ $ (GND)))
-- \winner_timer[6]~44\ = CARRY((winner_timer(6)) # (!\winner_timer[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(6),
	datad => VCC,
	cin => \winner_timer[5]~42\,
	combout => \winner_timer[6]~43_combout\,
	cout => \winner_timer[6]~44\);

-- Location: FF_X23_Y20_N15
\winner_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[6]~43_combout\,
	asdata => \process_0~1_combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(6));

-- Location: LCCOMB_X23_Y20_N16
\winner_timer[7]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[7]~45_combout\ = (winner_timer(7) & (\winner_timer[6]~44\ & VCC)) # (!winner_timer(7) & (!\winner_timer[6]~44\))
-- \winner_timer[7]~46\ = CARRY((!winner_timer(7) & !\winner_timer[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(7),
	datad => VCC,
	cin => \winner_timer[6]~44\,
	combout => \winner_timer[7]~45_combout\,
	cout => \winner_timer[7]~46\);

-- Location: FF_X23_Y20_N17
\winner_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[7]~45_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(7));

-- Location: LCCOMB_X23_Y20_N18
\winner_timer[8]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[8]~47_combout\ = (winner_timer(8) & ((GND) # (!\winner_timer[7]~46\))) # (!winner_timer(8) & (\winner_timer[7]~46\ $ (GND)))
-- \winner_timer[8]~48\ = CARRY((winner_timer(8)) # (!\winner_timer[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(8),
	datad => VCC,
	cin => \winner_timer[7]~46\,
	combout => \winner_timer[8]~47_combout\,
	cout => \winner_timer[8]~48\);

-- Location: FF_X23_Y20_N19
\winner_timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[8]~47_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(8));

-- Location: LCCOMB_X23_Y20_N20
\winner_timer[9]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[9]~49_combout\ = (winner_timer(9) & (\winner_timer[8]~48\ & VCC)) # (!winner_timer(9) & (!\winner_timer[8]~48\))
-- \winner_timer[9]~50\ = CARRY((!winner_timer(9) & !\winner_timer[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(9),
	datad => VCC,
	cin => \winner_timer[8]~48\,
	combout => \winner_timer[9]~49_combout\,
	cout => \winner_timer[9]~50\);

-- Location: FF_X23_Y20_N21
\winner_timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[9]~49_combout\,
	asdata => \process_0~1_combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(9));

-- Location: LCCOMB_X23_Y20_N22
\winner_timer[10]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[10]~51_combout\ = (winner_timer(10) & ((GND) # (!\winner_timer[9]~50\))) # (!winner_timer(10) & (\winner_timer[9]~50\ $ (GND)))
-- \winner_timer[10]~52\ = CARRY((winner_timer(10)) # (!\winner_timer[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(10),
	datad => VCC,
	cin => \winner_timer[9]~50\,
	combout => \winner_timer[10]~51_combout\,
	cout => \winner_timer[10]~52\);

-- Location: FF_X23_Y20_N23
\winner_timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[10]~51_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(10));

-- Location: LCCOMB_X23_Y20_N24
\winner_timer[11]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[11]~53_combout\ = (winner_timer(11) & (\winner_timer[10]~52\ & VCC)) # (!winner_timer(11) & (!\winner_timer[10]~52\))
-- \winner_timer[11]~54\ = CARRY((!winner_timer(11) & !\winner_timer[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(11),
	datad => VCC,
	cin => \winner_timer[10]~52\,
	combout => \winner_timer[11]~53_combout\,
	cout => \winner_timer[11]~54\);

-- Location: FF_X23_Y20_N25
\winner_timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[11]~53_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(11));

-- Location: LCCOMB_X23_Y20_N26
\winner_timer[12]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[12]~55_combout\ = (winner_timer(12) & ((GND) # (!\winner_timer[11]~54\))) # (!winner_timer(12) & (\winner_timer[11]~54\ $ (GND)))
-- \winner_timer[12]~56\ = CARRY((winner_timer(12)) # (!\winner_timer[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(12),
	datad => VCC,
	cin => \winner_timer[11]~54\,
	combout => \winner_timer[12]~55_combout\,
	cout => \winner_timer[12]~56\);

-- Location: FF_X23_Y20_N27
\winner_timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[12]~55_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(12));

-- Location: LCCOMB_X23_Y20_N28
\winner_timer[13]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[13]~57_combout\ = (winner_timer(13) & (\winner_timer[12]~56\ & VCC)) # (!winner_timer(13) & (!\winner_timer[12]~56\))
-- \winner_timer[13]~58\ = CARRY((!winner_timer(13) & !\winner_timer[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(13),
	datad => VCC,
	cin => \winner_timer[12]~56\,
	combout => \winner_timer[13]~57_combout\,
	cout => \winner_timer[13]~58\);

-- Location: FF_X23_Y20_N29
\winner_timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[13]~57_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(13));

-- Location: LCCOMB_X23_Y20_N30
\winner_timer[14]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[14]~59_combout\ = (winner_timer(14) & ((GND) # (!\winner_timer[13]~58\))) # (!winner_timer(14) & (\winner_timer[13]~58\ $ (GND)))
-- \winner_timer[14]~60\ = CARRY((winner_timer(14)) # (!\winner_timer[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(14),
	datad => VCC,
	cin => \winner_timer[13]~58\,
	combout => \winner_timer[14]~59_combout\,
	cout => \winner_timer[14]~60\);

-- Location: FF_X23_Y20_N31
\winner_timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[14]~59_combout\,
	asdata => \process_0~1_combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(14));

-- Location: LCCOMB_X23_Y19_N0
\winner_timer[15]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[15]~61_combout\ = (winner_timer(15) & (\winner_timer[14]~60\ & VCC)) # (!winner_timer(15) & (!\winner_timer[14]~60\))
-- \winner_timer[15]~62\ = CARRY((!winner_timer(15) & !\winner_timer[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(15),
	datad => VCC,
	cin => \winner_timer[14]~60\,
	combout => \winner_timer[15]~61_combout\,
	cout => \winner_timer[15]~62\);

-- Location: FF_X23_Y19_N1
\winner_timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[15]~61_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(15));

-- Location: LCCOMB_X23_Y19_N2
\winner_timer[16]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[16]~63_combout\ = (winner_timer(16) & ((GND) # (!\winner_timer[15]~62\))) # (!winner_timer(16) & (\winner_timer[15]~62\ $ (GND)))
-- \winner_timer[16]~64\ = CARRY((winner_timer(16)) # (!\winner_timer[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(16),
	datad => VCC,
	cin => \winner_timer[15]~62\,
	combout => \winner_timer[16]~63_combout\,
	cout => \winner_timer[16]~64\);

-- Location: FF_X23_Y19_N3
\winner_timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[16]~63_combout\,
	asdata => \process_0~1_combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(16));

-- Location: LCCOMB_X23_Y19_N4
\winner_timer[17]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[17]~65_combout\ = (winner_timer(17) & (\winner_timer[16]~64\ & VCC)) # (!winner_timer(17) & (!\winner_timer[16]~64\))
-- \winner_timer[17]~66\ = CARRY((!winner_timer(17) & !\winner_timer[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(17),
	datad => VCC,
	cin => \winner_timer[16]~64\,
	combout => \winner_timer[17]~65_combout\,
	cout => \winner_timer[17]~66\);

-- Location: FF_X23_Y19_N5
\winner_timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[17]~65_combout\,
	asdata => \process_0~1_combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(17));

-- Location: LCCOMB_X23_Y19_N6
\winner_timer[18]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[18]~67_combout\ = (winner_timer(18) & ((GND) # (!\winner_timer[17]~66\))) # (!winner_timer(18) & (\winner_timer[17]~66\ $ (GND)))
-- \winner_timer[18]~68\ = CARRY((winner_timer(18)) # (!\winner_timer[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(18),
	datad => VCC,
	cin => \winner_timer[17]~66\,
	combout => \winner_timer[18]~67_combout\,
	cout => \winner_timer[18]~68\);

-- Location: FF_X23_Y19_N7
\winner_timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[18]~67_combout\,
	asdata => \process_0~1_combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(18));

-- Location: LCCOMB_X23_Y19_N8
\winner_timer[19]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[19]~69_combout\ = (winner_timer(19) & (\winner_timer[18]~68\ & VCC)) # (!winner_timer(19) & (!\winner_timer[18]~68\))
-- \winner_timer[19]~70\ = CARRY((!winner_timer(19) & !\winner_timer[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(19),
	datad => VCC,
	cin => \winner_timer[18]~68\,
	combout => \winner_timer[19]~69_combout\,
	cout => \winner_timer[19]~70\);

-- Location: FF_X23_Y19_N9
\winner_timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[19]~69_combout\,
	asdata => \process_0~1_combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(19));

-- Location: LCCOMB_X23_Y19_N10
\winner_timer[20]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[20]~71_combout\ = (winner_timer(20) & ((GND) # (!\winner_timer[19]~70\))) # (!winner_timer(20) & (\winner_timer[19]~70\ $ (GND)))
-- \winner_timer[20]~72\ = CARRY((winner_timer(20)) # (!\winner_timer[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(20),
	datad => VCC,
	cin => \winner_timer[19]~70\,
	combout => \winner_timer[20]~71_combout\,
	cout => \winner_timer[20]~72\);

-- Location: FF_X23_Y19_N11
\winner_timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[20]~71_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(20));

-- Location: LCCOMB_X23_Y19_N12
\winner_timer[21]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[21]~73_combout\ = (winner_timer(21) & (\winner_timer[20]~72\ & VCC)) # (!winner_timer(21) & (!\winner_timer[20]~72\))
-- \winner_timer[21]~74\ = CARRY((!winner_timer(21) & !\winner_timer[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(21),
	datad => VCC,
	cin => \winner_timer[20]~72\,
	combout => \winner_timer[21]~73_combout\,
	cout => \winner_timer[21]~74\);

-- Location: FF_X23_Y19_N13
\winner_timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[21]~73_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(21));

-- Location: LCCOMB_X23_Y19_N14
\winner_timer[22]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[22]~75_combout\ = (winner_timer(22) & ((GND) # (!\winner_timer[21]~74\))) # (!winner_timer(22) & (\winner_timer[21]~74\ $ (GND)))
-- \winner_timer[22]~76\ = CARRY((winner_timer(22)) # (!\winner_timer[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(22),
	datad => VCC,
	cin => \winner_timer[21]~74\,
	combout => \winner_timer[22]~75_combout\,
	cout => \winner_timer[22]~76\);

-- Location: FF_X23_Y19_N15
\winner_timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[22]~75_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(22));

-- Location: LCCOMB_X23_Y19_N16
\winner_timer[23]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[23]~77_combout\ = (winner_timer(23) & (\winner_timer[22]~76\ & VCC)) # (!winner_timer(23) & (!\winner_timer[22]~76\))
-- \winner_timer[23]~78\ = CARRY((!winner_timer(23) & !\winner_timer[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(23),
	datad => VCC,
	cin => \winner_timer[22]~76\,
	combout => \winner_timer[23]~77_combout\,
	cout => \winner_timer[23]~78\);

-- Location: FF_X23_Y19_N17
\winner_timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[23]~77_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(23));

-- Location: LCCOMB_X22_Y20_N26
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (winner_timer(22)) # ((winner_timer(21)) # ((winner_timer(23)) # (winner_timer(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(22),
	datab => winner_timer(21),
	datac => winner_timer(23),
	datad => winner_timer(20),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y20_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (winner_timer(17)) # ((winner_timer(16)) # ((winner_timer(19)) # (winner_timer(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(17),
	datab => winner_timer(16),
	datac => winner_timer(19),
	datad => winner_timer(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y20_N22
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (winner_timer(7)) # ((winner_timer(4)) # ((winner_timer(5)) # (winner_timer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(7),
	datab => winner_timer(4),
	datac => winner_timer(5),
	datad => winner_timer(6),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y20_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (winner_timer(1)) # ((winner_timer(0)) # ((winner_timer(3)) # (winner_timer(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(1),
	datab => winner_timer(0),
	datac => winner_timer(3),
	datad => winner_timer(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (winner_timer(10)) # ((winner_timer(9)) # ((winner_timer(11)) # (winner_timer(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(10),
	datab => winner_timer(9),
	datac => winner_timer(11),
	datad => winner_timer(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y20_N20
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (winner_timer(12)) # ((winner_timer(13)) # ((winner_timer(14)) # (winner_timer(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(12),
	datab => winner_timer(13),
	datac => winner_timer(14),
	datad => winner_timer(15),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y20_N30
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~0_combout\) # ((\LessThan0~2_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y19_N18
\winner_timer[24]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[24]~79_combout\ = (winner_timer(24) & ((GND) # (!\winner_timer[23]~78\))) # (!winner_timer(24) & (\winner_timer[23]~78\ $ (GND)))
-- \winner_timer[24]~80\ = CARRY((winner_timer(24)) # (!\winner_timer[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(24),
	datad => VCC,
	cin => \winner_timer[23]~78\,
	combout => \winner_timer[24]~79_combout\,
	cout => \winner_timer[24]~80\);

-- Location: FF_X23_Y19_N19
\winner_timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[24]~79_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(24));

-- Location: LCCOMB_X23_Y19_N20
\winner_timer[25]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[25]~81_combout\ = (winner_timer(25) & (\winner_timer[24]~80\ & VCC)) # (!winner_timer(25) & (!\winner_timer[24]~80\))
-- \winner_timer[25]~82\ = CARRY((!winner_timer(25) & !\winner_timer[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(25),
	datad => VCC,
	cin => \winner_timer[24]~80\,
	combout => \winner_timer[25]~81_combout\,
	cout => \winner_timer[25]~82\);

-- Location: FF_X23_Y19_N21
\winner_timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[25]~81_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(25));

-- Location: LCCOMB_X23_Y19_N22
\winner_timer[26]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[26]~83_combout\ = (winner_timer(26) & ((GND) # (!\winner_timer[25]~82\))) # (!winner_timer(26) & (\winner_timer[25]~82\ $ (GND)))
-- \winner_timer[26]~84\ = CARRY((winner_timer(26)) # (!\winner_timer[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(26),
	datad => VCC,
	cin => \winner_timer[25]~82\,
	combout => \winner_timer[26]~83_combout\,
	cout => \winner_timer[26]~84\);

-- Location: FF_X23_Y19_N23
\winner_timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[26]~83_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(26));

-- Location: LCCOMB_X23_Y19_N24
\winner_timer[27]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[27]~85_combout\ = (winner_timer(27) & (\winner_timer[26]~84\ & VCC)) # (!winner_timer(27) & (!\winner_timer[26]~84\))
-- \winner_timer[27]~86\ = CARRY((!winner_timer(27) & !\winner_timer[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(27),
	datad => VCC,
	cin => \winner_timer[26]~84\,
	combout => \winner_timer[27]~85_combout\,
	cout => \winner_timer[27]~86\);

-- Location: FF_X23_Y19_N25
\winner_timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[27]~85_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(27));

-- Location: LCCOMB_X23_Y19_N26
\winner_timer[28]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[28]~87_combout\ = (winner_timer(28) & ((GND) # (!\winner_timer[27]~86\))) # (!winner_timer(28) & (\winner_timer[27]~86\ $ (GND)))
-- \winner_timer[28]~88\ = CARRY((winner_timer(28)) # (!\winner_timer[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(28),
	datad => VCC,
	cin => \winner_timer[27]~86\,
	combout => \winner_timer[28]~87_combout\,
	cout => \winner_timer[28]~88\);

-- Location: FF_X23_Y19_N27
\winner_timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[28]~87_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(28));

-- Location: LCCOMB_X23_Y19_N28
\winner_timer[29]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[29]~89_combout\ = (winner_timer(29) & (\winner_timer[28]~88\ & VCC)) # (!winner_timer(29) & (!\winner_timer[28]~88\))
-- \winner_timer[29]~90\ = CARRY((!winner_timer(29) & !\winner_timer[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => winner_timer(29),
	datad => VCC,
	cin => \winner_timer[28]~88\,
	combout => \winner_timer[29]~89_combout\,
	cout => \winner_timer[29]~90\);

-- Location: FF_X23_Y19_N29
\winner_timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[29]~89_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(29));

-- Location: LCCOMB_X23_Y19_N30
\winner_timer[30]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner_timer[30]~91_combout\ = winner_timer(30) $ (\winner_timer[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(30),
	cin => \winner_timer[29]~90\,
	combout => \winner_timer[30]~91_combout\);

-- Location: FF_X23_Y19_N31
\winner_timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner_timer[30]~91_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => winner_timer(30));

-- Location: LCCOMB_X22_Y20_N24
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (winner_timer(27)) # ((winner_timer(24)) # ((winner_timer(26)) # (winner_timer(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(27),
	datab => winner_timer(24),
	datac => winner_timer(26),
	datad => winner_timer(25),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y20_N2
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (winner_timer(30)) # ((winner_timer(29)) # ((winner_timer(28)) # (\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => winner_timer(30),
	datab => winner_timer(29),
	datac => winner_timer(28),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X22_Y20_N0
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~6_combout\) # ((\LessThan0~5_combout\) # ((\LessThan0~4_combout\) # (\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X28_Y20_N0
\winner~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \winner~0_combout\ = (\process_0~1_combout\) # (\LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datad => \LessThan0~9_combout\,
	combout => \winner~0_combout\);

-- Location: FF_X28_Y20_N1
winner : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \winner~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \winner~q\);

-- Location: LCCOMB_X28_Y20_N14
\flipflop_led1r1|dff~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r1|dff~0_combout\ = (\rst~input_o\) # (\winner~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \winner~q\,
	combout => \flipflop_led1r1|dff~0_combout\);

-- Location: FF_X27_Y15_N23
\flipflop_led3r2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led3r2|q[4]~12_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r2|q\(4));

-- Location: LCCOMB_X27_Y15_N10
\flipflop_led2r2|q[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r2|q[5]~4_cout\ = CARRY(!\flipflop_led3r2|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led3r2|q\(4),
	datad => VCC,
	cout => \flipflop_led2r2|q[5]~4_cout\);

-- Location: LCCOMB_X27_Y15_N12
\flipflop_led2r2|q[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r2|q[5]~5_combout\ = ((\flipflop_led2r2|q\(5) $ (\button_down_r2|fall~q\ $ (!\flipflop_led2r2|q[5]~4_cout\)))) # (GND)
-- \flipflop_led2r2|q[5]~6\ = CARRY((\flipflop_led2r2|q\(5) & ((\button_down_r2|fall~q\) # (!\flipflop_led2r2|q[5]~4_cout\))) # (!\flipflop_led2r2|q\(5) & (\button_down_r2|fall~q\ & !\flipflop_led2r2|q[5]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led2r2|q\(5),
	datab => \button_down_r2|fall~q\,
	datad => VCC,
	cin => \flipflop_led2r2|q[5]~4_cout\,
	combout => \flipflop_led2r2|q[5]~5_combout\,
	cout => \flipflop_led2r2|q[5]~6\);

-- Location: FF_X27_Y15_N13
\flipflop_led2r2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led2r2|q[5]~5_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led2r2|q\(5));

-- Location: LCCOMB_X27_Y15_N14
\flipflop_led2r2|q[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r2|q[6]~7_combout\ = ((\button_down_r2|fall~q\ $ (\flipflop_led2r2|q\(6) $ (\flipflop_led2r2|q[5]~6\)))) # (GND)
-- \flipflop_led2r2|q[6]~8\ = CARRY((\button_down_r2|fall~q\ & (\flipflop_led2r2|q\(6) & !\flipflop_led2r2|q[5]~6\)) # (!\button_down_r2|fall~q\ & ((\flipflop_led2r2|q\(6)) # (!\flipflop_led2r2|q[5]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r2|fall~q\,
	datab => \flipflop_led2r2|q\(6),
	datad => VCC,
	cin => \flipflop_led2r2|q[5]~6\,
	combout => \flipflop_led2r2|q[6]~7_combout\,
	cout => \flipflop_led2r2|q[6]~8\);

-- Location: FF_X27_Y15_N15
\flipflop_led2r2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led2r2|q[6]~7_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led2r2|q\(6));

-- Location: LCCOMB_X26_Y19_N16
\Medio_raqueta_2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~0_combout\ = \flipflop_led1|q\(0) $ (VCC)
-- \Medio_raqueta_2|Add0~1\ = CARRY(\flipflop_led1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(0),
	datad => VCC,
	combout => \Medio_raqueta_2|Add0~0_combout\,
	cout => \Medio_raqueta_2|Add0~1\);

-- Location: LCCOMB_X26_Y19_N18
\Medio_raqueta_2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~2_combout\ = (\flipflop_led1|q\(1) & (!\Medio_raqueta_2|Add0~1\)) # (!\flipflop_led1|q\(1) & ((\Medio_raqueta_2|Add0~1\) # (GND)))
-- \Medio_raqueta_2|Add0~3\ = CARRY((!\Medio_raqueta_2|Add0~1\) # (!\flipflop_led1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(1),
	datad => VCC,
	cin => \Medio_raqueta_2|Add0~1\,
	combout => \Medio_raqueta_2|Add0~2_combout\,
	cout => \Medio_raqueta_2|Add0~3\);

-- Location: LCCOMB_X26_Y19_N20
\Medio_raqueta_2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~4_combout\ = (\flipflop_led1|q\(2) & (\Medio_raqueta_2|Add0~3\ $ (GND))) # (!\flipflop_led1|q\(2) & (!\Medio_raqueta_2|Add0~3\ & VCC))
-- \Medio_raqueta_2|Add0~5\ = CARRY((\flipflop_led1|q\(2) & !\Medio_raqueta_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(2),
	datad => VCC,
	cin => \Medio_raqueta_2|Add0~3\,
	combout => \Medio_raqueta_2|Add0~4_combout\,
	cout => \Medio_raqueta_2|Add0~5\);

-- Location: LCCOMB_X26_Y19_N22
\Medio_raqueta_2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~6_combout\ = (\flipflop_led1|q\(3) & ((\Medio_raqueta_2|Add0~5\) # (GND))) # (!\flipflop_led1|q\(3) & (!\Medio_raqueta_2|Add0~5\))
-- \Medio_raqueta_2|Add0~7\ = CARRY((\flipflop_led1|q\(3)) # (!\Medio_raqueta_2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(3),
	datad => VCC,
	cin => \Medio_raqueta_2|Add0~5\,
	combout => \Medio_raqueta_2|Add0~6_combout\,
	cout => \Medio_raqueta_2|Add0~7\);

-- Location: LCCOMB_X26_Y19_N24
\Medio_raqueta_2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~8_combout\ = ((\flipflop_led1|q\(4) $ (\flipflop_led3r2|q\(4) $ (\Medio_raqueta_2|Add0~7\)))) # (GND)
-- \Medio_raqueta_2|Add0~9\ = CARRY((\flipflop_led1|q\(4) & (\flipflop_led3r2|q\(4) & !\Medio_raqueta_2|Add0~7\)) # (!\flipflop_led1|q\(4) & ((\flipflop_led3r2|q\(4)) # (!\Medio_raqueta_2|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(4),
	datab => \flipflop_led3r2|q\(4),
	datad => VCC,
	cin => \Medio_raqueta_2|Add0~7\,
	combout => \Medio_raqueta_2|Add0~8_combout\,
	cout => \Medio_raqueta_2|Add0~9\);

-- Location: LCCOMB_X26_Y19_N26
\Medio_raqueta_2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~10_combout\ = (\flipflop_led1|q\(5) & ((\flipflop_led2r2|q\(5) & (!\Medio_raqueta_2|Add0~9\)) # (!\flipflop_led2r2|q\(5) & ((\Medio_raqueta_2|Add0~9\) # (GND))))) # (!\flipflop_led1|q\(5) & ((\flipflop_led2r2|q\(5) & 
-- (\Medio_raqueta_2|Add0~9\ & VCC)) # (!\flipflop_led2r2|q\(5) & (!\Medio_raqueta_2|Add0~9\))))
-- \Medio_raqueta_2|Add0~11\ = CARRY((\flipflop_led1|q\(5) & ((!\Medio_raqueta_2|Add0~9\) # (!\flipflop_led2r2|q\(5)))) # (!\flipflop_led1|q\(5) & (!\flipflop_led2r2|q\(5) & !\Medio_raqueta_2|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(5),
	datab => \flipflop_led2r2|q\(5),
	datad => VCC,
	cin => \Medio_raqueta_2|Add0~9\,
	combout => \Medio_raqueta_2|Add0~10_combout\,
	cout => \Medio_raqueta_2|Add0~11\);

-- Location: LCCOMB_X26_Y19_N28
\Medio_raqueta_2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~12_combout\ = ((\flipflop_led2r2|q\(6) $ (\flipflop_led1|q\(6) $ (\Medio_raqueta_2|Add0~11\)))) # (GND)
-- \Medio_raqueta_2|Add0~13\ = CARRY((\flipflop_led2r2|q\(6) & (\flipflop_led1|q\(6) & !\Medio_raqueta_2|Add0~11\)) # (!\flipflop_led2r2|q\(6) & ((\flipflop_led1|q\(6)) # (!\Medio_raqueta_2|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led2r2|q\(6),
	datab => \flipflop_led1|q\(6),
	datad => VCC,
	cin => \Medio_raqueta_2|Add0~11\,
	combout => \Medio_raqueta_2|Add0~12_combout\,
	cout => \Medio_raqueta_2|Add0~13\);

-- Location: LCCOMB_X26_Y19_N30
\Medio_raqueta_2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Add0~14_combout\ = \Medio_raqueta_2|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Medio_raqueta_2|Add0~13\,
	combout => \Medio_raqueta_2|Add0~14_combout\);

-- Location: LCCOMB_X26_Y19_N4
\Medio_raqueta_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Mux0~0_combout\ = (\Medio_raqueta_2|Add0~6_combout\ & (\Medio_raqueta_2|Add0~0_combout\ & (\Medio_raqueta_2|Add0~2_combout\ & \Medio_raqueta_2|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Medio_raqueta_2|Add0~6_combout\,
	datab => \Medio_raqueta_2|Add0~0_combout\,
	datac => \Medio_raqueta_2|Add0~2_combout\,
	datad => \Medio_raqueta_2|Add0~4_combout\,
	combout => \Medio_raqueta_2|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y19_N10
\Medio_raqueta_2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Mux0~1_combout\ = (\Medio_raqueta_2|Add0~10_combout\ & \Medio_raqueta_2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Medio_raqueta_2|Add0~10_combout\,
	datad => \Medio_raqueta_2|Add0~8_combout\,
	combout => \Medio_raqueta_2|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y19_N8
\Medio_raqueta_2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Medio_raqueta_2|Mux0~2_combout\ = (!\Medio_raqueta_2|Add0~14_combout\ & (\Medio_raqueta_2|Add0~12_combout\ & (\Medio_raqueta_2|Mux0~0_combout\ & \Medio_raqueta_2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Medio_raqueta_2|Add0~14_combout\,
	datab => \Medio_raqueta_2|Add0~12_combout\,
	datac => \Medio_raqueta_2|Mux0~0_combout\,
	datad => \Medio_raqueta_2|Mux0~1_combout\,
	combout => \Medio_raqueta_2|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y19_N18
\FSM_bouncing|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector12~0_combout\ = (\FSM_bouncing|Equal4~0_combout\ & (\FSM_bouncing|Equal4~1_combout\ & ((\FSM_bouncing|pri_st.Down_right~q\) # (!\FSM_bouncing|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Down_right~q\,
	datab => \FSM_bouncing|Equal4~0_combout\,
	datac => \FSM_bouncing|Equal4~1_combout\,
	datad => \FSM_bouncing|Selector6~1_combout\,
	combout => \FSM_bouncing|Selector12~0_combout\);

-- Location: LCCOMB_X28_Y19_N14
\FSM_bouncing|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|Selector12~1_combout\ = (\Medio_raqueta_2|Mux0~2_combout\ & ((\FSM_bouncing|Selector12~0_combout\) # ((!\contador_clks_juego|Equal0~combout\ & \FSM_bouncing|pri_st.Left_b_trans~q\)))) # (!\Medio_raqueta_2|Mux0~2_combout\ & 
-- (!\contador_clks_juego|Equal0~combout\ & (\FSM_bouncing|pri_st.Left_b_trans~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Medio_raqueta_2|Mux0~2_combout\,
	datab => \contador_clks_juego|Equal0~combout\,
	datac => \FSM_bouncing|pri_st.Left_b_trans~q\,
	datad => \FSM_bouncing|Selector12~0_combout\,
	combout => \FSM_bouncing|Selector12~1_combout\);

-- Location: FF_X28_Y19_N15
\FSM_bouncing|pri_st.Left_b_trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_bouncing|Selector12~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_bouncing|pri_st.Left_b_trans~q\);

-- Location: LCCOMB_X29_Y19_N30
\FSM_bouncing|WideOr3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr3~1_combout\ = (\FSM_bouncing|pri_st.Down_left_trans~q\) # ((\FSM_bouncing|pri_st.Down_right_trans~q\) # ((\FSM_bouncing|pri_st.Up_right_trans~q\) # (\FSM_bouncing|pri_st.Right_b_trans~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Down_left_trans~q\,
	datab => \FSM_bouncing|pri_st.Down_right_trans~q\,
	datac => \FSM_bouncing|pri_st.Up_right_trans~q\,
	datad => \FSM_bouncing|pri_st.Right_b_trans~q\,
	combout => \FSM_bouncing|WideOr3~1_combout\);

-- Location: LCCOMB_X30_Y18_N30
\flipflop_rebotes|q[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_rebotes|q[0]~18_combout\ = \flipflop_rebotes|q\(0) $ (((\FSM_bouncing|pri_st.Left_b_trans~q\) # ((\FSM_bouncing|pri_st.Up_left_trans~q\) # (\FSM_bouncing|WideOr3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(0),
	datab => \FSM_bouncing|pri_st.Left_b_trans~q\,
	datac => \FSM_bouncing|pri_st.Up_left_trans~q\,
	datad => \FSM_bouncing|WideOr3~1_combout\,
	combout => \flipflop_rebotes|q[0]~18_combout\);

-- Location: FF_X29_Y18_N3
\flipflop_rebotes|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	asdata => \flipflop_rebotes|q[0]~18_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_rebotes|q\(0));

-- Location: LCCOMB_X29_Y18_N6
\flipflop_rebotes|q[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_rebotes|q[1]~6_combout\ = (\flipflop_rebotes|q\(1) & (\flipflop_rebotes|q\(0) $ (VCC))) # (!\flipflop_rebotes|q\(1) & (\flipflop_rebotes|q\(0) & VCC))
-- \flipflop_rebotes|q[1]~7\ = CARRY((\flipflop_rebotes|q\(1) & \flipflop_rebotes|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(1),
	datab => \flipflop_rebotes|q\(0),
	datad => VCC,
	combout => \flipflop_rebotes|q[1]~6_combout\,
	cout => \flipflop_rebotes|q[1]~7\);

-- Location: LCCOMB_X29_Y18_N18
\FSM_bouncing|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr3~0_combout\ = (\FSM_bouncing|pri_st.Down_left_trans~q\) # ((\FSM_bouncing|pri_st.Left_b_trans~q\) # (\FSM_bouncing|pri_st.Up_left_trans~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_bouncing|pri_st.Down_left_trans~q\,
	datac => \FSM_bouncing|pri_st.Left_b_trans~q\,
	datad => \FSM_bouncing|pri_st.Up_left_trans~q\,
	combout => \FSM_bouncing|WideOr3~0_combout\);

-- Location: LCCOMB_X29_Y18_N20
\FSM_bouncing|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_bouncing|WideOr3~combout\ = (\FSM_bouncing|pri_st.Right_b_trans~q\) # ((\FSM_bouncing|pri_st.Down_right_trans~q\) # ((\FSM_bouncing|pri_st.Up_right_trans~q\) # (\FSM_bouncing|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_bouncing|pri_st.Right_b_trans~q\,
	datab => \FSM_bouncing|pri_st.Down_right_trans~q\,
	datac => \FSM_bouncing|pri_st.Up_right_trans~q\,
	datad => \FSM_bouncing|WideOr3~0_combout\,
	combout => \FSM_bouncing|WideOr3~combout\);

-- Location: FF_X29_Y18_N7
\flipflop_rebotes|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~combout\,
	d => \flipflop_rebotes|q[1]~6_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \FSM_bouncing|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_rebotes|q\(1));

-- Location: LCCOMB_X29_Y18_N8
\flipflop_rebotes|q[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_rebotes|q[2]~8_combout\ = (\flipflop_rebotes|q\(2) & (!\flipflop_rebotes|q[1]~7\)) # (!\flipflop_rebotes|q\(2) & ((\flipflop_rebotes|q[1]~7\) # (GND)))
-- \flipflop_rebotes|q[2]~9\ = CARRY((!\flipflop_rebotes|q[1]~7\) # (!\flipflop_rebotes|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(2),
	datad => VCC,
	cin => \flipflop_rebotes|q[1]~7\,
	combout => \flipflop_rebotes|q[2]~8_combout\,
	cout => \flipflop_rebotes|q[2]~9\);

-- Location: FF_X29_Y18_N9
\flipflop_rebotes|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~combout\,
	d => \flipflop_rebotes|q[2]~8_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \FSM_bouncing|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_rebotes|q\(2));

-- Location: LCCOMB_X29_Y18_N10
\flipflop_rebotes|q[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_rebotes|q[3]~10_combout\ = (\flipflop_rebotes|q\(3) & (\flipflop_rebotes|q[2]~9\ $ (GND))) # (!\flipflop_rebotes|q\(3) & (!\flipflop_rebotes|q[2]~9\ & VCC))
-- \flipflop_rebotes|q[3]~11\ = CARRY((\flipflop_rebotes|q\(3) & !\flipflop_rebotes|q[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_rebotes|q\(3),
	datad => VCC,
	cin => \flipflop_rebotes|q[2]~9\,
	combout => \flipflop_rebotes|q[3]~10_combout\,
	cout => \flipflop_rebotes|q[3]~11\);

-- Location: FF_X29_Y18_N11
\flipflop_rebotes|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~combout\,
	d => \flipflop_rebotes|q[3]~10_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \FSM_bouncing|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_rebotes|q\(3));

-- Location: LCCOMB_X29_Y18_N12
\flipflop_rebotes|q[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_rebotes|q[4]~12_combout\ = (\flipflop_rebotes|q\(4) & (!\flipflop_rebotes|q[3]~11\)) # (!\flipflop_rebotes|q\(4) & ((\flipflop_rebotes|q[3]~11\) # (GND)))
-- \flipflop_rebotes|q[4]~13\ = CARRY((!\flipflop_rebotes|q[3]~11\) # (!\flipflop_rebotes|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(4),
	datad => VCC,
	cin => \flipflop_rebotes|q[3]~11\,
	combout => \flipflop_rebotes|q[4]~12_combout\,
	cout => \flipflop_rebotes|q[4]~13\);

-- Location: FF_X29_Y18_N13
\flipflop_rebotes|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~combout\,
	d => \flipflop_rebotes|q[4]~12_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \FSM_bouncing|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_rebotes|q\(4));

-- Location: LCCOMB_X29_Y18_N14
\flipflop_rebotes|q[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_rebotes|q[5]~14_combout\ = (\flipflop_rebotes|q\(5) & (\flipflop_rebotes|q[4]~13\ $ (GND))) # (!\flipflop_rebotes|q\(5) & (!\flipflop_rebotes|q[4]~13\ & VCC))
-- \flipflop_rebotes|q[5]~15\ = CARRY((\flipflop_rebotes|q\(5) & !\flipflop_rebotes|q[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_rebotes|q\(5),
	datad => VCC,
	cin => \flipflop_rebotes|q[4]~13\,
	combout => \flipflop_rebotes|q[5]~14_combout\,
	cout => \flipflop_rebotes|q[5]~15\);

-- Location: FF_X29_Y18_N15
\flipflop_rebotes|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~combout\,
	d => \flipflop_rebotes|q[5]~14_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \FSM_bouncing|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_rebotes|q\(5));

-- Location: LCCOMB_X29_Y18_N16
\flipflop_rebotes|q[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_rebotes|q[6]~16_combout\ = \flipflop_rebotes|q[5]~15\ $ (\flipflop_rebotes|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \flipflop_rebotes|q\(6),
	cin => \flipflop_rebotes|q[5]~15\,
	combout => \flipflop_rebotes|q[6]~16_combout\);

-- Location: FF_X29_Y18_N17
\flipflop_rebotes|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~combout\,
	d => \flipflop_rebotes|q[6]~16_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \FSM_bouncing|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_rebotes|q\(6));

-- Location: LCCOMB_X29_Y18_N26
\Mux_velocidades|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|LessThan1~0_combout\ = (((!\flipflop_rebotes|q\(1) & !\flipflop_rebotes|q\(2))) # (!\flipflop_rebotes|q\(4))) # (!\flipflop_rebotes|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(1),
	datab => \flipflop_rebotes|q\(2),
	datac => \flipflop_rebotes|q\(3),
	datad => \flipflop_rebotes|q\(4),
	combout => \Mux_velocidades|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y18_N28
\Mux_velocidades|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|LessThan4~0_combout\ = (\flipflop_rebotes|q\(4)) # ((\flipflop_rebotes|q\(3) & (\flipflop_rebotes|q\(1) & \flipflop_rebotes|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(3),
	datab => \flipflop_rebotes|q\(1),
	datac => \flipflop_rebotes|q\(2),
	datad => \flipflop_rebotes|q\(4),
	combout => \Mux_velocidades|LessThan4~0_combout\);

-- Location: LCCOMB_X29_Y18_N30
\Mux_velocidades|velocidad[19]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|velocidad[19]~0_combout\ = (\flipflop_rebotes|q\(5) & ((\Mux_velocidades|LessThan4~0_combout\))) # (!\flipflop_rebotes|q\(5) & (\Mux_velocidades|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_rebotes|q\(5),
	datac => \Mux_velocidades|LessThan1~0_combout\,
	datad => \Mux_velocidades|LessThan4~0_combout\,
	combout => \Mux_velocidades|velocidad[19]~0_combout\);

-- Location: LCCOMB_X29_Y19_N26
\contador_lectura|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~10_combout\ = (!\contador_lectura|temp\(20) & (\contador_lectura|temp\(21) $ (((!\flipflop_rebotes|q\(6) & !\Mux_velocidades|velocidad[19]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(21),
	datab => \contador_lectura|temp\(20),
	datac => \flipflop_rebotes|q\(6),
	datad => \Mux_velocidades|velocidad[19]~0_combout\,
	combout => \contador_lectura|Equal0~10_combout\);

-- Location: LCCOMB_X29_Y18_N4
\Mux_velocidades|velocidad[22]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|velocidad[22]~3_combout\ = (!\flipflop_rebotes|q\(6) & (((\Mux_velocidades|LessThan1~0_combout\ & !\flipflop_rebotes|q\(5))) # (!\Mux_velocidades|velocidad[19]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_velocidades|LessThan1~0_combout\,
	datab => \flipflop_rebotes|q\(5),
	datac => \Mux_velocidades|velocidad[19]~0_combout\,
	datad => \flipflop_rebotes|q\(6),
	combout => \Mux_velocidades|velocidad[22]~3_combout\);

-- Location: LCCOMB_X29_Y19_N22
\contador_lectura|temp[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[22]~67_combout\ = \contador_lectura|temp\(22) $ (!\contador_lectura|temp[21]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(22),
	cin => \contador_lectura|temp[21]~66\,
	combout => \contador_lectura|temp[22]~67_combout\);

-- Location: FF_X29_Y19_N23
\contador_lectura|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[22]~67_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(22));

-- Location: LCCOMB_X30_Y19_N14
\contador_lectura|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~11_combout\ = (\contador_lectura|Equal0~10_combout\ & (\Mux_velocidades|velocidad[22]~3_combout\ $ (!\contador_lectura|temp\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|Equal0~10_combout\,
	datac => \Mux_velocidades|velocidad[22]~3_combout\,
	datad => \contador_lectura|temp\(22),
	combout => \contador_lectura|Equal0~11_combout\);

-- Location: LCCOMB_X29_Y18_N0
\Mux_velocidades|velocidad[19]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|velocidad[19]~2_combout\ = (\Mux_velocidades|velocidad[19]~0_combout\) # (\flipflop_rebotes|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux_velocidades|velocidad[19]~0_combout\,
	datad => \flipflop_rebotes|q\(6),
	combout => \Mux_velocidades|velocidad[19]~2_combout\);

-- Location: LCCOMB_X30_Y19_N20
\contador_lectura|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~1_combout\ = (\Mux_velocidades|velocidad[22]~3_combout\ & (((!\contador_lectura|temp\(21) & \Mux_velocidades|velocidad[19]~2_combout\)) # (!\contador_lectura|temp\(22)))) # (!\Mux_velocidades|velocidad[22]~3_combout\ & 
-- (!\contador_lectura|temp\(21) & (\Mux_velocidades|velocidad[19]~2_combout\ & !\contador_lectura|temp\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(21),
	datab => \Mux_velocidades|velocidad[22]~3_combout\,
	datac => \Mux_velocidades|velocidad[19]~2_combout\,
	datad => \contador_lectura|temp\(22),
	combout => \contador_lectura|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y18_N22
\Mux_velocidades|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|LessThan1~1_combout\ = (\flipflop_rebotes|q\(6)) # ((\flipflop_rebotes|q\(5)) # (!\Mux_velocidades|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_rebotes|q\(6),
	datac => \Mux_velocidades|LessThan1~0_combout\,
	datad => \flipflop_rebotes|q\(5),
	combout => \Mux_velocidades|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y18_N2
\Mux_velocidades|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|LessThan4~1_combout\ = (!\flipflop_rebotes|q\(6) & ((!\Mux_velocidades|LessThan4~0_combout\) # (!\flipflop_rebotes|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(5),
	datab => \flipflop_rebotes|q\(6),
	datad => \Mux_velocidades|LessThan4~0_combout\,
	combout => \Mux_velocidades|LessThan4~1_combout\);

-- Location: LCCOMB_X29_Y18_N24
\Mux_velocidades|velocidad[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|velocidad\(17) = ((\Mux_velocidades|LessThan4~1_combout\ & ((\flipflop_rebotes|q\(6)) # (\Mux_velocidades|velocidad[19]~0_combout\)))) # (!\Mux_velocidades|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_velocidades|LessThan1~1_combout\,
	datab => \flipflop_rebotes|q\(6),
	datac => \Mux_velocidades|LessThan4~1_combout\,
	datad => \Mux_velocidades|velocidad[19]~0_combout\,
	combout => \Mux_velocidades|velocidad\(17));

-- Location: LCCOMB_X30_Y19_N4
\contador_lectura|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~0_combout\ = (\Mux_velocidades|velocidad[19]~2_combout\ & (\contador_lectura|temp\(19) & (\contador_lectura|temp\(18) $ (!\Mux_velocidades|LessThan1~1_combout\)))) # (!\Mux_velocidades|velocidad[19]~2_combout\ & 
-- (!\contador_lectura|temp\(19) & (\contador_lectura|temp\(18) $ (!\Mux_velocidades|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_velocidades|velocidad[19]~2_combout\,
	datab => \contador_lectura|temp\(18),
	datac => \contador_lectura|temp\(19),
	datad => \Mux_velocidades|LessThan1~1_combout\,
	combout => \contador_lectura|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y19_N28
\contador_lectura|LessThan0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~12_combout\ = (\contador_lectura|temp\(19) & (!\contador_lectura|temp\(18) & (\Mux_velocidades|velocidad[19]~2_combout\ & \Mux_velocidades|LessThan1~1_combout\))) # (!\contador_lectura|temp\(19) & 
-- ((\Mux_velocidades|velocidad[19]~2_combout\) # ((!\contador_lectura|temp\(18) & \Mux_velocidades|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(18),
	datab => \contador_lectura|temp\(19),
	datac => \Mux_velocidades|velocidad[19]~2_combout\,
	datad => \Mux_velocidades|LessThan1~1_combout\,
	combout => \contador_lectura|LessThan0~12_combout\);

-- Location: LCCOMB_X30_Y19_N30
\contador_lectura|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~13_combout\ = (\contador_lectura|LessThan0~12_combout\) # ((!\contador_lectura|temp\(17) & (\Mux_velocidades|velocidad\(17) & \contador_lectura|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(17),
	datab => \Mux_velocidades|velocidad\(17),
	datac => \contador_lectura|LessThan0~0_combout\,
	datad => \contador_lectura|LessThan0~12_combout\,
	combout => \contador_lectura|LessThan0~13_combout\);

-- Location: LCCOMB_X30_Y18_N0
\Mux_velocidades|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux_velocidades|WideNor0~combout\ = (((!\Mux_velocidades|velocidad[19]~0_combout\ & !\flipflop_rebotes|q\(6))) # (!\Mux_velocidades|LessThan1~1_combout\)) # (!\Mux_velocidades|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_velocidades|LessThan4~1_combout\,
	datab => \Mux_velocidades|velocidad[19]~0_combout\,
	datac => \flipflop_rebotes|q\(6),
	datad => \Mux_velocidades|LessThan1~1_combout\,
	combout => \Mux_velocidades|WideNor0~combout\);

-- Location: LCCOMB_X30_Y19_N26
\contador_lectura|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~2_combout\ = (\Mux_velocidades|LessThan4~1_combout\ & (!\contador_lectura|temp\(15) & (\Mux_velocidades|WideNor0~combout\ & !\contador_lectura|temp\(16)))) # (!\Mux_velocidades|LessThan4~1_combout\ & 
-- (((!\contador_lectura|temp\(15) & \Mux_velocidades|WideNor0~combout\)) # (!\contador_lectura|temp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(15),
	datab => \Mux_velocidades|WideNor0~combout\,
	datac => \Mux_velocidades|LessThan4~1_combout\,
	datad => \contador_lectura|temp\(16),
	combout => \contador_lectura|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y19_N24
\contador_lectura|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~1_combout\ = (\contador_lectura|temp\(16) & (!\Mux_velocidades|LessThan4~1_combout\ & (\Mux_velocidades|WideNor0~combout\ $ (!\contador_lectura|temp\(15))))) # (!\contador_lectura|temp\(16) & (\Mux_velocidades|LessThan4~1_combout\ 
-- & (\Mux_velocidades|WideNor0~combout\ $ (!\contador_lectura|temp\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(16),
	datab => \Mux_velocidades|WideNor0~combout\,
	datac => \Mux_velocidades|LessThan4~1_combout\,
	datad => \contador_lectura|temp\(15),
	combout => \contador_lectura|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y19_N8
\contador_lectura|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~0_combout\ = (\contador_lectura|LessThan0~0_combout\ & (\contador_lectura|temp\(17) $ (!\Mux_velocidades|velocidad\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(17),
	datac => \contador_lectura|LessThan0~0_combout\,
	datad => \Mux_velocidades|velocidad\(17),
	combout => \contador_lectura|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\contador_lectura|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~5_combout\ = (!\contador_lectura|temp\(10) & ((\flipflop_rebotes|q\(6)) # (\Mux_velocidades|velocidad[19]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(6),
	datac => \contador_lectura|temp\(10),
	datad => \Mux_velocidades|velocidad[19]~0_combout\,
	combout => \contador_lectura|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y19_N28
\contador_lectura|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~3_combout\ = (!\contador_lectura|temp\(14) & (((\flipflop_rebotes|q\(6)) # (\Mux_velocidades|velocidad[19]~0_combout\)) # (!\contador_lectura|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(14),
	datab => \contador_lectura|temp\(13),
	datac => \flipflop_rebotes|q\(6),
	datad => \Mux_velocidades|velocidad[19]~0_combout\,
	combout => \contador_lectura|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y19_N24
\contador_lectura|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~8_combout\ = (!\contador_lectura|temp\(12) & ((\contador_lectura|temp\(14) & (!\contador_lectura|temp\(13) & \Mux_velocidades|velocidad[19]~2_combout\)) # (!\contador_lectura|temp\(14) & (\contador_lectura|temp\(13) & 
-- !\Mux_velocidades|velocidad[19]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(14),
	datab => \contador_lectura|temp\(12),
	datac => \contador_lectura|temp\(13),
	datad => \Mux_velocidades|velocidad[19]~2_combout\,
	combout => \contador_lectura|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y19_N22
\contador_lectura|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~4_combout\ = (\contador_lectura|LessThan0~3_combout\) # ((!\contador_lectura|temp\(11) & (\Mux_velocidades|velocidad[22]~3_combout\ & \contador_lectura|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(11),
	datab => \contador_lectura|LessThan0~3_combout\,
	datac => \Mux_velocidades|velocidad[22]~3_combout\,
	datad => \contador_lectura|Equal0~8_combout\,
	combout => \contador_lectura|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y20_N8
\contador_lectura|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~6_combout\ = \contador_lectura|temp\(10) $ (((\flipflop_rebotes|q\(6)) # (\Mux_velocidades|velocidad[19]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_rebotes|q\(6),
	datac => \contador_lectura|temp\(10),
	datad => \Mux_velocidades|velocidad[19]~0_combout\,
	combout => \contador_lectura|LessThan0~6_combout\);

-- Location: LCCOMB_X29_Y20_N2
\contador_lectura|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~7_combout\ = (\contador_lectura|temp\(6) & ((\contador_lectura|temp\(7)) # ((!\contador_lectura|temp\(10))))) # (!\contador_lectura|temp\(6) & (!\contador_lectura|temp\(10) & ((\contador_lectura|temp\(7)) # 
-- (\contador_lectura|temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(6),
	datab => \contador_lectura|temp\(7),
	datac => \contador_lectura|temp\(10),
	datad => \contador_lectura|temp\(5),
	combout => \contador_lectura|LessThan0~7_combout\);

-- Location: LCCOMB_X30_Y19_N12
\contador_lectura|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~8_combout\ = (\contador_lectura|temp\(8) & ((\contador_lectura|LessThan0~7_combout\) # (!\Mux_velocidades|velocidad\(17)))) # (!\contador_lectura|temp\(8) & (!\Mux_velocidades|velocidad\(17) & 
-- \contador_lectura|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(8),
	datac => \Mux_velocidades|velocidad\(17),
	datad => \contador_lectura|LessThan0~7_combout\,
	combout => \contador_lectura|LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y19_N10
\contador_lectura|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~9_combout\ = (!\contador_lectura|LessThan0~6_combout\ & ((\contador_lectura|temp\(9) & (\Mux_velocidades|WideNor0~combout\ & !\contador_lectura|LessThan0~8_combout\)) # (!\contador_lectura|temp\(9) & 
-- ((\Mux_velocidades|WideNor0~combout\) # (!\contador_lectura|LessThan0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(9),
	datab => \Mux_velocidades|WideNor0~combout\,
	datac => \contador_lectura|LessThan0~6_combout\,
	datad => \contador_lectura|LessThan0~8_combout\,
	combout => \contador_lectura|LessThan0~9_combout\);

-- Location: LCCOMB_X30_Y19_N16
\contador_lectura|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~10_combout\ = (\contador_lectura|LessThan0~4_combout\) # ((\contador_lectura|Equal0~9_combout\ & ((\contador_lectura|LessThan0~5_combout\) # (\contador_lectura|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|LessThan0~5_combout\,
	datab => \contador_lectura|Equal0~9_combout\,
	datac => \contador_lectura|LessThan0~4_combout\,
	datad => \contador_lectura|LessThan0~9_combout\,
	combout => \contador_lectura|LessThan0~10_combout\);

-- Location: LCCOMB_X30_Y19_N18
\contador_lectura|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~11_combout\ = (\contador_lectura|Equal0~0_combout\ & ((\contador_lectura|LessThan0~2_combout\) # ((\contador_lectura|Equal0~1_combout\ & \contador_lectura|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|LessThan0~2_combout\,
	datab => \contador_lectura|Equal0~1_combout\,
	datac => \contador_lectura|Equal0~0_combout\,
	datad => \contador_lectura|LessThan0~10_combout\,
	combout => \contador_lectura|LessThan0~11_combout\);

-- Location: LCCOMB_X30_Y19_N0
\contador_lectura|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|LessThan0~14_combout\ = (!\contador_lectura|LessThan0~1_combout\ & (((!\contador_lectura|LessThan0~13_combout\ & !\contador_lectura|LessThan0~11_combout\)) # (!\contador_lectura|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|Equal0~11_combout\,
	datab => \contador_lectura|LessThan0~1_combout\,
	datac => \contador_lectura|LessThan0~13_combout\,
	datad => \contador_lectura|LessThan0~11_combout\,
	combout => \contador_lectura|LessThan0~14_combout\);

-- Location: FF_X29_Y20_N7
\contador_lectura|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_lectura|temp[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(0));

-- Location: LCCOMB_X29_Y20_N12
\contador_lectura|temp[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[1]~25_combout\ = (\contador_lectura|temp\(1) & (!\contador_lectura|temp[0]~24\)) # (!\contador_lectura|temp\(1) & ((\contador_lectura|temp[0]~24\) # (GND)))
-- \contador_lectura|temp[1]~26\ = CARRY((!\contador_lectura|temp[0]~24\) # (!\contador_lectura|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(1),
	datad => VCC,
	cin => \contador_lectura|temp[0]~24\,
	combout => \contador_lectura|temp[1]~25_combout\,
	cout => \contador_lectura|temp[1]~26\);

-- Location: FF_X30_Y20_N31
\contador_lectura|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \contador_lectura|temp[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(1));

-- Location: LCCOMB_X29_Y20_N14
\contador_lectura|temp[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[2]~27_combout\ = (\contador_lectura|temp\(2) & (\contador_lectura|temp[1]~26\ $ (GND))) # (!\contador_lectura|temp\(2) & (!\contador_lectura|temp[1]~26\ & VCC))
-- \contador_lectura|temp[2]~28\ = CARRY((\contador_lectura|temp\(2) & !\contador_lectura|temp[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(2),
	datad => VCC,
	cin => \contador_lectura|temp[1]~26\,
	combout => \contador_lectura|temp[2]~27_combout\,
	cout => \contador_lectura|temp[2]~28\);

-- Location: FF_X29_Y20_N15
\contador_lectura|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[2]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(2));

-- Location: LCCOMB_X29_Y20_N16
\contador_lectura|temp[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[3]~29_combout\ = (\contador_lectura|temp\(3) & (!\contador_lectura|temp[2]~28\)) # (!\contador_lectura|temp\(3) & ((\contador_lectura|temp[2]~28\) # (GND)))
-- \contador_lectura|temp[3]~30\ = CARRY((!\contador_lectura|temp[2]~28\) # (!\contador_lectura|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(3),
	datad => VCC,
	cin => \contador_lectura|temp[2]~28\,
	combout => \contador_lectura|temp[3]~29_combout\,
	cout => \contador_lectura|temp[3]~30\);

-- Location: FF_X29_Y20_N17
\contador_lectura|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[3]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(3));

-- Location: LCCOMB_X29_Y20_N18
\contador_lectura|temp[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[4]~31_combout\ = (\contador_lectura|temp\(4) & (\contador_lectura|temp[3]~30\ $ (GND))) # (!\contador_lectura|temp\(4) & (!\contador_lectura|temp[3]~30\ & VCC))
-- \contador_lectura|temp[4]~32\ = CARRY((\contador_lectura|temp\(4) & !\contador_lectura|temp[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(4),
	datad => VCC,
	cin => \contador_lectura|temp[3]~30\,
	combout => \contador_lectura|temp[4]~31_combout\,
	cout => \contador_lectura|temp[4]~32\);

-- Location: FF_X29_Y20_N19
\contador_lectura|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[4]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(4));

-- Location: LCCOMB_X29_Y20_N20
\contador_lectura|temp[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[5]~33_combout\ = (\contador_lectura|temp\(5) & (!\contador_lectura|temp[4]~32\)) # (!\contador_lectura|temp\(5) & ((\contador_lectura|temp[4]~32\) # (GND)))
-- \contador_lectura|temp[5]~34\ = CARRY((!\contador_lectura|temp[4]~32\) # (!\contador_lectura|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(5),
	datad => VCC,
	cin => \contador_lectura|temp[4]~32\,
	combout => \contador_lectura|temp[5]~33_combout\,
	cout => \contador_lectura|temp[5]~34\);

-- Location: FF_X29_Y20_N21
\contador_lectura|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[5]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(5));

-- Location: LCCOMB_X29_Y20_N22
\contador_lectura|temp[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[6]~35_combout\ = (\contador_lectura|temp\(6) & (\contador_lectura|temp[5]~34\ $ (GND))) # (!\contador_lectura|temp\(6) & (!\contador_lectura|temp[5]~34\ & VCC))
-- \contador_lectura|temp[6]~36\ = CARRY((\contador_lectura|temp\(6) & !\contador_lectura|temp[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(6),
	datad => VCC,
	cin => \contador_lectura|temp[5]~34\,
	combout => \contador_lectura|temp[6]~35_combout\,
	cout => \contador_lectura|temp[6]~36\);

-- Location: FF_X29_Y20_N23
\contador_lectura|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[6]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(6));

-- Location: LCCOMB_X29_Y20_N24
\contador_lectura|temp[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[7]~37_combout\ = (\contador_lectura|temp\(7) & (!\contador_lectura|temp[6]~36\)) # (!\contador_lectura|temp\(7) & ((\contador_lectura|temp[6]~36\) # (GND)))
-- \contador_lectura|temp[7]~38\ = CARRY((!\contador_lectura|temp[6]~36\) # (!\contador_lectura|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(7),
	datad => VCC,
	cin => \contador_lectura|temp[6]~36\,
	combout => \contador_lectura|temp[7]~37_combout\,
	cout => \contador_lectura|temp[7]~38\);

-- Location: FF_X29_Y20_N25
\contador_lectura|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[7]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(7));

-- Location: LCCOMB_X29_Y20_N26
\contador_lectura|temp[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[8]~39_combout\ = (\contador_lectura|temp\(8) & (\contador_lectura|temp[7]~38\ $ (GND))) # (!\contador_lectura|temp\(8) & (!\contador_lectura|temp[7]~38\ & VCC))
-- \contador_lectura|temp[8]~40\ = CARRY((\contador_lectura|temp\(8) & !\contador_lectura|temp[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(8),
	datad => VCC,
	cin => \contador_lectura|temp[7]~38\,
	combout => \contador_lectura|temp[8]~39_combout\,
	cout => \contador_lectura|temp[8]~40\);

-- Location: FF_X29_Y20_N27
\contador_lectura|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[8]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(8));

-- Location: LCCOMB_X29_Y20_N28
\contador_lectura|temp[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[9]~41_combout\ = (\contador_lectura|temp\(9) & (!\contador_lectura|temp[8]~40\)) # (!\contador_lectura|temp\(9) & ((\contador_lectura|temp[8]~40\) # (GND)))
-- \contador_lectura|temp[9]~42\ = CARRY((!\contador_lectura|temp[8]~40\) # (!\contador_lectura|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(9),
	datad => VCC,
	cin => \contador_lectura|temp[8]~40\,
	combout => \contador_lectura|temp[9]~41_combout\,
	cout => \contador_lectura|temp[9]~42\);

-- Location: FF_X29_Y20_N29
\contador_lectura|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[9]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(9));

-- Location: LCCOMB_X29_Y20_N30
\contador_lectura|temp[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|temp[10]~43_combout\ = (\contador_lectura|temp\(10) & (\contador_lectura|temp[9]~42\ $ (GND))) # (!\contador_lectura|temp\(10) & (!\contador_lectura|temp[9]~42\ & VCC))
-- \contador_lectura|temp[10]~44\ = CARRY((\contador_lectura|temp\(10) & !\contador_lectura|temp[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_lectura|temp\(10),
	datad => VCC,
	cin => \contador_lectura|temp[9]~42\,
	combout => \contador_lectura|temp[10]~43_combout\,
	cout => \contador_lectura|temp[10]~44\);

-- Location: FF_X29_Y20_N31
\contador_lectura|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[10]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(10));

-- Location: FF_X29_Y19_N1
\contador_lectura|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador_lectura|temp[11]~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \contador_lectura|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_lectura|temp\(11));

-- Location: LCCOMB_X30_Y19_N2
\contador_lectura|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~9_combout\ = (\contador_lectura|Equal0~8_combout\ & (\contador_lectura|temp\(11) $ (!\Mux_velocidades|velocidad[22]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(11),
	datac => \Mux_velocidades|velocidad[22]~3_combout\,
	datad => \contador_lectura|Equal0~8_combout\,
	combout => \contador_lectura|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y19_N6
\contador_lectura|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~2_combout\ = (\contador_lectura|Equal0~1_combout\ & (\contador_lectura|Equal0~0_combout\ & (\contador_lectura|temp\(8) $ (!\Mux_velocidades|velocidad\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(8),
	datab => \contador_lectura|Equal0~1_combout\,
	datac => \contador_lectura|Equal0~0_combout\,
	datad => \Mux_velocidades|velocidad\(17),
	combout => \contador_lectura|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y20_N4
\contador_lectura|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~3_combout\ = (\contador_lectura|temp\(6) & (!\contador_lectura|temp\(5) & ((\Mux_velocidades|velocidad[19]~0_combout\) # (\flipflop_rebotes|q\(6))))) # (!\contador_lectura|temp\(6) & (!\Mux_velocidades|velocidad[19]~0_combout\ & 
-- (!\flipflop_rebotes|q\(6) & \contador_lectura|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_velocidades|velocidad[19]~0_combout\,
	datab => \flipflop_rebotes|q\(6),
	datac => \contador_lectura|temp\(6),
	datad => \contador_lectura|temp\(5),
	combout => \contador_lectura|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y20_N8
\contador_lectura|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~4_combout\ = (\contador_lectura|Equal0~3_combout\ & ((\Mux_velocidades|velocidad[19]~2_combout\ & (\contador_lectura|temp\(10) & \contador_lectura|temp\(7))) # (!\Mux_velocidades|velocidad[19]~2_combout\ & 
-- (!\contador_lectura|temp\(10) & !\contador_lectura|temp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_velocidades|velocidad[19]~2_combout\,
	datab => \contador_lectura|Equal0~3_combout\,
	datac => \contador_lectura|temp\(10),
	datad => \contador_lectura|temp\(7),
	combout => \contador_lectura|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y20_N14
\contador_lectura|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~5_combout\ = (!\contador_lectura|temp\(3) & (!\contador_lectura|temp\(0) & (!\contador_lectura|temp\(1) & !\contador_lectura|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(3),
	datab => \contador_lectura|temp\(0),
	datac => \contador_lectura|temp\(1),
	datad => \contador_lectura|temp\(2),
	combout => \contador_lectura|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y20_N20
\contador_lectura|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~6_combout\ = (\contador_lectura|Equal0~5_combout\ & !\contador_lectura|temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_lectura|Equal0~5_combout\,
	datad => \contador_lectura|temp\(4),
	combout => \contador_lectura|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y20_N26
\contador_lectura|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~7_combout\ = (\contador_lectura|Equal0~4_combout\ & (\contador_lectura|Equal0~6_combout\ & (\contador_lectura|temp\(9) $ (!\Mux_velocidades|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|temp\(9),
	datab => \Mux_velocidades|WideNor0~combout\,
	datac => \contador_lectura|Equal0~4_combout\,
	datad => \contador_lectura|Equal0~6_combout\,
	combout => \contador_lectura|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y19_N14
\contador_lectura|Equal0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_lectura|Equal0~combout\ = LCELL((\contador_lectura|Equal0~9_combout\ & (\contador_lectura|Equal0~2_combout\ & (\contador_lectura|Equal0~7_combout\ & \contador_lectura|Equal0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_lectura|Equal0~9_combout\,
	datab => \contador_lectura|Equal0~2_combout\,
	datac => \contador_lectura|Equal0~7_combout\,
	datad => \contador_lectura|Equal0~11_combout\,
	combout => \contador_lectura|Equal0~combout\);

-- Location: CLKCTRL_G6
\contador_lectura|Equal0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \contador_lectura|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \contador_lectura|Equal0~clkctrl_outclk\);

-- Location: FF_X27_Y18_N5
\flipflop_led1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[0]~8_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(0));

-- Location: LCCOMB_X22_Y10_N4
\led_machine|WideOr4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~2_combout\ = (!\led_machine|pri_st.LED_26~q\ & (!\led_machine|pri_st.LED_42~q\ & (!\led_machine|pri_st.LED_58~q\ & !\led_machine|pri_st.LED_10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_26~q\,
	datab => \led_machine|pri_st.LED_42~q\,
	datac => \led_machine|pri_st.LED_58~q\,
	datad => \led_machine|pri_st.LED_10~q\,
	combout => \led_machine|WideOr4~2_combout\);

-- Location: LCCOMB_X21_Y11_N8
\led_machine|WideOr5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~4_combout\ = (!\led_machine|pri_st.LED_110~q\ & (!\led_machine|pri_st.LED_94~q\ & (!\led_machine|pri_st.LED_126~q\ & !\led_machine|pri_st.LED_78~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_110~q\,
	datab => \led_machine|pri_st.LED_94~q\,
	datac => \led_machine|pri_st.LED_126~q\,
	datad => \led_machine|pri_st.LED_78~q\,
	combout => \led_machine|WideOr5~4_combout\);

-- Location: LCCOMB_X21_Y12_N30
\led_machine|WideOr4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~3_combout\ = (!\led_machine|pri_st.LED_90~q\ & (!\led_machine|pri_st.LED_106~q\ & (!\led_machine|pri_st.LED_122~q\ & !\led_machine|pri_st.LED_74~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_90~q\,
	datab => \led_machine|pri_st.LED_106~q\,
	datac => \led_machine|pri_st.LED_122~q\,
	datad => \led_machine|pri_st.LED_74~q\,
	combout => \led_machine|WideOr4~3_combout\);

-- Location: LCCOMB_X22_Y13_N4
\led_machine|WideOr5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~3_combout\ = (!\led_machine|pri_st.LED_46~q\ & (!\led_machine|pri_st.LED_14~q\ & (!\led_machine|pri_st.LED_62~q\ & !\led_machine|pri_st.LED_30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_46~q\,
	datab => \led_machine|pri_st.LED_14~q\,
	datac => \led_machine|pri_st.LED_62~q\,
	datad => \led_machine|pri_st.LED_30~q\,
	combout => \led_machine|WideOr5~3_combout\);

-- Location: LCCOMB_X19_Y11_N12
\led_machine|WideOr5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~5_combout\ = (((!\led_machine|WideOr5~3_combout\) # (!\led_machine|WideOr4~3_combout\)) # (!\led_machine|WideOr5~4_combout\)) # (!\led_machine|WideOr4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~2_combout\,
	datab => \led_machine|WideOr5~4_combout\,
	datac => \led_machine|WideOr4~3_combout\,
	datad => \led_machine|WideOr5~3_combout\,
	combout => \led_machine|WideOr5~5_combout\);

-- Location: LCCOMB_X21_Y10_N14
\led_machine|WideOr3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~4_combout\ = (!\led_machine|pri_st.LED_38~q\ & (!\led_machine|pri_st.LED_6~q\ & (!\led_machine|pri_st.LED_54~q\ & !\led_machine|pri_st.LED_22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_38~q\,
	datab => \led_machine|pri_st.LED_6~q\,
	datac => \led_machine|pri_st.LED_54~q\,
	datad => \led_machine|pri_st.LED_22~q\,
	combout => \led_machine|WideOr3~4_combout\);

-- Location: LCCOMB_X21_Y13_N8
\led_machine|WideOr3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~5_combout\ = (!\led_machine|pri_st.LED_86~q\ & (!\led_machine|pri_st.LED_70~q\ & (!\led_machine|pri_st.LED_118~q\ & !\led_machine|pri_st.LED_102~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_86~q\,
	datab => \led_machine|pri_st.LED_70~q\,
	datac => \led_machine|pri_st.LED_118~q\,
	datad => \led_machine|pri_st.LED_102~q\,
	combout => \led_machine|WideOr3~5_combout\);

-- Location: LCCOMB_X20_Y12_N20
\led_machine|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~0_combout\ = (!\led_machine|pri_st.LED_50~q\ & (!\led_machine|pri_st.LED_2~q\ & (!\led_machine|pri_st.LED_18~q\ & !\led_machine|pri_st.LED_34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_50~q\,
	datab => \led_machine|pri_st.LED_2~q\,
	datac => \led_machine|pri_st.LED_18~q\,
	datad => \led_machine|pri_st.LED_34~q\,
	combout => \led_machine|WideOr5~0_combout\);

-- Location: LCCOMB_X23_Y12_N6
\led_machine|WideOr5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~1_combout\ = (!\led_machine|pri_st.LED_114~q\ & (!\led_machine|pri_st.LED_98~q\ & (!\led_machine|pri_st.LED_82~q\ & !\led_machine|pri_st.LED_66~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_114~q\,
	datab => \led_machine|pri_st.LED_98~q\,
	datac => \led_machine|pri_st.LED_82~q\,
	datad => \led_machine|pri_st.LED_66~q\,
	combout => \led_machine|WideOr5~1_combout\);

-- Location: LCCOMB_X20_Y11_N8
\led_machine|WideOr5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~2_combout\ = (((!\led_machine|WideOr5~1_combout\) # (!\led_machine|WideOr5~0_combout\)) # (!\led_machine|WideOr3~5_combout\)) # (!\led_machine|WideOr3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~4_combout\,
	datab => \led_machine|WideOr3~5_combout\,
	datac => \led_machine|WideOr5~0_combout\,
	datad => \led_machine|WideOr5~1_combout\,
	combout => \led_machine|WideOr5~2_combout\);

-- Location: LCCOMB_X19_Y11_N28
\led_machine|WideOr5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr5~8_combout\ = (\led_machine|WideOr5~5_combout\) # ((\led_machine|WideOr5~2_combout\) # ((!\led_machine|WideOr5~7_combout\) # (!\led_machine|WideOr5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr5~5_combout\,
	datab => \led_machine|WideOr5~2_combout\,
	datac => \led_machine|WideOr5~6_combout\,
	datad => \led_machine|WideOr5~7_combout\,
	combout => \led_machine|WideOr5~8_combout\);

-- Location: LCCOMB_X26_Y17_N10
\FSM_impresion|PIN_3_def~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~15_combout\ = (\led_machine|WideOr6~6_combout\ & (!\flipflop_led1|q\(0) & (\flipflop_led1|q\(1) $ (\led_machine|WideOr5~8_combout\)))) # (!\led_machine|WideOr6~6_combout\ & (\flipflop_led1|q\(0) & (\flipflop_led1|q\(1) $ 
-- (\led_machine|WideOr5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~6_combout\,
	datab => \flipflop_led1|q\(0),
	datac => \flipflop_led1|q\(1),
	datad => \led_machine|WideOr5~8_combout\,
	combout => \FSM_impresion|PIN_3_def~15_combout\);

-- Location: LCCOMB_X23_Y12_N12
\led_machine|WideOr26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr26~1_combout\ = (!\led_machine|pri_st.LED_84~q\ & (!\led_machine|pri_st.LED_100~q\ & (!\led_machine|pri_st.LED_116~q\ & !\led_machine|pri_st.LED_68~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_84~q\,
	datab => \led_machine|pri_st.LED_100~q\,
	datac => \led_machine|pri_st.LED_116~q\,
	datad => \led_machine|pri_st.LED_68~q\,
	combout => \led_machine|WideOr26~1_combout\);

-- Location: LCCOMB_X20_Y12_N28
\led_machine|WideOr26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr26~0_combout\ = (!\led_machine|pri_st.LED_20~q\ & (!\led_machine|pri_st.LED_4~q\ & (!\led_machine|pri_st.LED_52~q\ & !\led_machine|pri_st.LED_36~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_20~q\,
	datab => \led_machine|pri_st.LED_4~q\,
	datac => \led_machine|pri_st.LED_52~q\,
	datad => \led_machine|pri_st.LED_36~q\,
	combout => \led_machine|WideOr26~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\led_machine|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~0_combout\ = (\led_machine|WideOr26~1_combout\ & (\led_machine|WideOr26~0_combout\ & (\led_machine|WideOr23~1_combout\ & \led_machine|WideOr23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr26~1_combout\,
	datab => \led_machine|WideOr26~0_combout\,
	datac => \led_machine|WideOr23~1_combout\,
	datad => \led_machine|WideOr23~0_combout\,
	combout => \led_machine|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\led_machine|WideOr3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~9_combout\ = (!\led_machine|pri_st.LED_56~q\ & (!\led_machine|pri_st.LED_24~q\ & (!\led_machine|pri_st.LED_40~q\ & !\led_machine|pri_st.LED_8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_56~q\,
	datab => \led_machine|pri_st.LED_24~q\,
	datac => \led_machine|pri_st.LED_40~q\,
	datad => \led_machine|pri_st.LED_8~q\,
	combout => \led_machine|WideOr3~9_combout\);

-- Location: LCCOMB_X21_Y12_N6
\led_machine|WideOr3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~10_combout\ = (!\led_machine|pri_st.LED_120~q\ & (!\led_machine|pri_st.LED_88~q\ & (!\led_machine|pri_st.LED_72~q\ & !\led_machine|pri_st.LED_104~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_120~q\,
	datab => \led_machine|pri_st.LED_88~q\,
	datac => \led_machine|pri_st.LED_72~q\,
	datad => \led_machine|pri_st.LED_104~q\,
	combout => \led_machine|WideOr3~10_combout\);

-- Location: LCCOMB_X20_Y11_N0
\led_machine|WideOr3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~11_combout\ = (((!\led_machine|WideOr3~10_combout\) # (!\led_machine|WideOr3~7_combout\)) # (!\led_machine|WideOr3~8_combout\)) # (!\led_machine|WideOr3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~9_combout\,
	datab => \led_machine|WideOr3~8_combout\,
	datac => \led_machine|WideOr3~7_combout\,
	datad => \led_machine|WideOr3~10_combout\,
	combout => \led_machine|WideOr3~11_combout\);

-- Location: LCCOMB_X20_Y11_N14
\led_machine|WideOr3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~1_combout\ = (\led_machine|WideOr6~0_combout\ & (\led_machine|WideOr6~1_combout\ & (\led_machine|WideOr5~0_combout\ & \led_machine|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~0_combout\,
	datab => \led_machine|WideOr6~1_combout\,
	datac => \led_machine|WideOr5~0_combout\,
	datad => \led_machine|WideOr5~1_combout\,
	combout => \led_machine|WideOr3~1_combout\);

-- Location: LCCOMB_X20_Y11_N2
\led_machine|WideOr3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~6_combout\ = (((!\led_machine|WideOr3~5_combout\) # (!\led_machine|WideOr3~2_combout\)) # (!\led_machine|WideOr3~3_combout\)) # (!\led_machine|WideOr3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~4_combout\,
	datab => \led_machine|WideOr3~3_combout\,
	datac => \led_machine|WideOr3~2_combout\,
	datad => \led_machine|WideOr3~5_combout\,
	combout => \led_machine|WideOr3~6_combout\);

-- Location: LCCOMB_X20_Y11_N10
\led_machine|WideOr3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr3~12_combout\ = ((\led_machine|WideOr3~11_combout\) # ((\led_machine|WideOr3~6_combout\) # (!\led_machine|WideOr3~1_combout\))) # (!\led_machine|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~0_combout\,
	datab => \led_machine|WideOr3~11_combout\,
	datac => \led_machine|WideOr3~1_combout\,
	datad => \led_machine|WideOr3~6_combout\,
	combout => \led_machine|WideOr3~12_combout\);

-- Location: LCCOMB_X22_Y10_N0
\led_machine|WideOr4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~7_combout\ = (!\led_machine|pri_st.LED_12~q\ & (!\led_machine|pri_st.LED_60~q\ & (!\led_machine|pri_st.LED_44~q\ & !\led_machine|pri_st.LED_28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_12~q\,
	datab => \led_machine|pri_st.LED_60~q\,
	datac => \led_machine|pri_st.LED_44~q\,
	datad => \led_machine|pri_st.LED_28~q\,
	combout => \led_machine|WideOr4~7_combout\);

-- Location: LCCOMB_X21_Y11_N12
\led_machine|WideOr4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~8_combout\ = (!\led_machine|pri_st.LED_124~q\ & (!\led_machine|pri_st.LED_92~q\ & (!\led_machine|pri_st.LED_108~q\ & !\led_machine|pri_st.LED_76~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_124~q\,
	datab => \led_machine|pri_st.LED_92~q\,
	datac => \led_machine|pri_st.LED_108~q\,
	datad => \led_machine|pri_st.LED_76~q\,
	combout => \led_machine|WideOr4~8_combout\);

-- Location: LCCOMB_X19_Y11_N24
\led_machine|WideOr4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~9_combout\ = (((!\led_machine|WideOr4~8_combout\) # (!\led_machine|WideOr4~6_combout\)) # (!\led_machine|WideOr4~5_combout\)) # (!\led_machine|WideOr4~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~7_combout\,
	datab => \led_machine|WideOr4~5_combout\,
	datac => \led_machine|WideOr4~6_combout\,
	datad => \led_machine|WideOr4~8_combout\,
	combout => \led_machine|WideOr4~9_combout\);

-- Location: LCCOMB_X20_Y11_N12
\led_machine|WideOr4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~4_combout\ = (((!\led_machine|WideOr4~3_combout\) # (!\led_machine|WideOr4~0_combout\)) # (!\led_machine|WideOr4~2_combout\)) # (!\led_machine|WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~1_combout\,
	datab => \led_machine|WideOr4~2_combout\,
	datac => \led_machine|WideOr4~0_combout\,
	datad => \led_machine|WideOr4~3_combout\,
	combout => \led_machine|WideOr4~4_combout\);

-- Location: LCCOMB_X20_Y11_N20
\led_machine|WideOr4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr4~10_combout\ = ((\led_machine|WideOr4~9_combout\) # ((\led_machine|WideOr4~4_combout\) # (!\led_machine|WideOr3~1_combout\))) # (!\led_machine|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~0_combout\,
	datab => \led_machine|WideOr4~9_combout\,
	datac => \led_machine|WideOr3~1_combout\,
	datad => \led_machine|WideOr4~4_combout\,
	combout => \led_machine|WideOr4~10_combout\);

-- Location: LCCOMB_X26_Y17_N24
\FSM_impresion|PIN_3_def~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~16_combout\ = (\led_machine|WideOr3~12_combout\ & (\flipflop_led1|q\(3) & (\led_machine|WideOr4~10_combout\ $ (\flipflop_led1|q\(2))))) # (!\led_machine|WideOr3~12_combout\ & (!\flipflop_led1|q\(3) & 
-- (\led_machine|WideOr4~10_combout\ $ (\flipflop_led1|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \led_machine|WideOr4~10_combout\,
	datac => \flipflop_led1|q\(2),
	datad => \flipflop_led1|q\(3),
	combout => \FSM_impresion|PIN_3_def~16_combout\);

-- Location: LCCOMB_X21_Y10_N10
\led_machine|WideOr7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr7~1_combout\ = (!\led_machine|pri_st.LED_5~q\ & (!\led_machine|pri_st.LED_7~q\ & (!\led_machine|pri_st.LED_8~q\ & !\led_machine|pri_st.LED_6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_5~q\,
	datab => \led_machine|pri_st.LED_7~q\,
	datac => \led_machine|pri_st.LED_8~q\,
	datad => \led_machine|pri_st.LED_6~q\,
	combout => \led_machine|WideOr7~1_combout\);

-- Location: LCCOMB_X20_Y12_N12
\led_machine|WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr7~0_combout\ = (!\led_machine|pri_st.LED_3~q\ & (\led_machine|pri_st.LED_1~q\ & (!\led_machine|pri_st.LED_4~q\ & !\led_machine|pri_st.LED_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_3~q\,
	datab => \led_machine|pri_st.LED_1~q\,
	datac => \led_machine|pri_st.LED_4~q\,
	datad => \led_machine|pri_st.LED_2~q\,
	combout => \led_machine|WideOr7~0_combout\);

-- Location: LCCOMB_X21_Y8_N6
\led_machine|WideOr7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr7~2_combout\ = (\led_machine|WideOr7~1_combout\ & \led_machine|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|WideOr7~1_combout\,
	datad => \led_machine|WideOr7~0_combout\,
	combout => \led_machine|WideOr7~2_combout\);

-- Location: LCCOMB_X21_Y12_N24
\led_machine|WideOr19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr19~0_combout\ = (!\led_machine|pri_st.LED_74~q\ & (!\led_machine|pri_st.LED_75~q\ & (!\led_machine|pri_st.LED_76~q\ & !\led_machine|pri_st.LED_73~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_74~q\,
	datab => \led_machine|pri_st.LED_75~q\,
	datac => \led_machine|pri_st.LED_76~q\,
	datad => \led_machine|pri_st.LED_73~q\,
	combout => \led_machine|WideOr19~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\led_machine|WideOr19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr19~1_combout\ = (!\led_machine|pri_st.LED_78~q\ & (!\led_machine|pri_st.LED_79~q\ & (!\led_machine|pri_st.LED_80~q\ & !\led_machine|pri_st.LED_77~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_78~q\,
	datab => \led_machine|pri_st.LED_79~q\,
	datac => \led_machine|pri_st.LED_80~q\,
	datad => \led_machine|pri_st.LED_77~q\,
	combout => \led_machine|WideOr19~1_combout\);

-- Location: LCCOMB_X21_Y11_N20
\led_machine|WideOr19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr19~2_combout\ = (\led_machine|WideOr19~0_combout\ & \led_machine|WideOr19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr19~0_combout\,
	datad => \led_machine|WideOr19~1_combout\,
	combout => \led_machine|WideOr19~2_combout\);

-- Location: LCCOMB_X22_Y10_N6
\led_machine|WideOr15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr15~0_combout\ = (!\led_machine|pri_st.LED_9~q\ & (!\led_machine|pri_st.LED_11~q\ & (!\led_machine|pri_st.LED_12~q\ & !\led_machine|pri_st.LED_10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_9~q\,
	datab => \led_machine|pri_st.LED_11~q\,
	datac => \led_machine|pri_st.LED_12~q\,
	datad => \led_machine|pri_st.LED_10~q\,
	combout => \led_machine|WideOr15~0_combout\);

-- Location: LCCOMB_X22_Y13_N28
\led_machine|WideOr15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr15~1_combout\ = (!\led_machine|pri_st.LED_13~q\ & (!\led_machine|pri_st.LED_15~q\ & (!\led_machine|pri_st.LED_14~q\ & !\led_machine|pri_st.LED_16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_13~q\,
	datab => \led_machine|pri_st.LED_15~q\,
	datac => \led_machine|pri_st.LED_14~q\,
	datad => \led_machine|pri_st.LED_16~q\,
	combout => \led_machine|WideOr15~1_combout\);

-- Location: LCCOMB_X21_Y8_N12
\led_machine|WideOr15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr15~2_combout\ = (\led_machine|WideOr15~0_combout\ & \led_machine|WideOr15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr15~0_combout\,
	datad => \led_machine|WideOr15~1_combout\,
	combout => \led_machine|WideOr15~2_combout\);

-- Location: LCCOMB_X21_Y8_N10
\led_machine|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr1~0_combout\ = (\led_machine|WideOr7~2_combout\ & (\led_machine|WideOr11~2_combout\ & (\led_machine|WideOr19~2_combout\ & \led_machine|WideOr15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr7~2_combout\,
	datab => \led_machine|WideOr11~2_combout\,
	datac => \led_machine|WideOr19~2_combout\,
	datad => \led_machine|WideOr15~2_combout\,
	combout => \led_machine|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y11_N24
\led_machine|WideOr21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr21~1_combout\ = (!\led_machine|pri_st.LED_111~q\ & (!\led_machine|pri_st.LED_110~q\ & (!\led_machine|pri_st.LED_112~q\ & !\led_machine|pri_st.LED_109~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_111~q\,
	datab => \led_machine|pri_st.LED_110~q\,
	datac => \led_machine|pri_st.LED_112~q\,
	datad => \led_machine|pri_st.LED_109~q\,
	combout => \led_machine|WideOr21~1_combout\);

-- Location: LCCOMB_X21_Y12_N28
\led_machine|WideOr21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr21~0_combout\ = (!\led_machine|pri_st.LED_106~q\ & (!\led_machine|pri_st.LED_108~q\ & (!\led_machine|pri_st.LED_107~q\ & !\led_machine|pri_st.LED_105~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_106~q\,
	datab => \led_machine|pri_st.LED_108~q\,
	datac => \led_machine|pri_st.LED_107~q\,
	datad => \led_machine|pri_st.LED_105~q\,
	combout => \led_machine|WideOr21~0_combout\);

-- Location: LCCOMB_X21_Y7_N22
\led_machine|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr2~0_combout\ = (((!\led_machine|WideOr21~0_combout\) # (!\led_machine|WideOr13~1_combout\)) # (!\led_machine|WideOr21~1_combout\)) # (!\led_machine|WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr13~0_combout\,
	datab => \led_machine|WideOr21~1_combout\,
	datac => \led_machine|WideOr13~1_combout\,
	datad => \led_machine|WideOr21~0_combout\,
	combout => \led_machine|WideOr2~0_combout\);

-- Location: LCCOMB_X20_Y12_N6
\led_machine|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr9~0_combout\ = (!\led_machine|pri_st.LED_35~q\ & (!\led_machine|pri_st.LED_33~q\ & (!\led_machine|pri_st.LED_36~q\ & !\led_machine|pri_st.LED_34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_35~q\,
	datab => \led_machine|pri_st.LED_33~q\,
	datac => \led_machine|pri_st.LED_36~q\,
	datad => \led_machine|pri_st.LED_34~q\,
	combout => \led_machine|WideOr9~0_combout\);

-- Location: LCCOMB_X21_Y10_N2
\led_machine|WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr9~1_combout\ = (!\led_machine|pri_st.LED_37~q\ & (!\led_machine|pri_st.LED_38~q\ & (!\led_machine|pri_st.LED_39~q\ & !\led_machine|pri_st.LED_40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_37~q\,
	datab => \led_machine|pri_st.LED_38~q\,
	datac => \led_machine|pri_st.LED_39~q\,
	datad => \led_machine|pri_st.LED_40~q\,
	combout => \led_machine|WideOr9~1_combout\);

-- Location: LCCOMB_X21_Y8_N22
\led_machine|WideOr9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr9~2_combout\ = (\led_machine|WideOr9~0_combout\ & \led_machine|WideOr9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|WideOr9~0_combout\,
	datad => \led_machine|WideOr9~1_combout\,
	combout => \led_machine|WideOr9~2_combout\);

-- Location: LCCOMB_X22_Y13_N16
\led_machine|WideOr17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr17~1_combout\ = (!\led_machine|pri_st.LED_46~q\ & (!\led_machine|pri_st.LED_47~q\ & (!\led_machine|pri_st.LED_48~q\ & !\led_machine|pri_st.LED_45~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_46~q\,
	datab => \led_machine|pri_st.LED_47~q\,
	datac => \led_machine|pri_st.LED_48~q\,
	datad => \led_machine|pri_st.LED_45~q\,
	combout => \led_machine|WideOr17~1_combout\);

-- Location: LCCOMB_X22_Y10_N10
\led_machine|WideOr17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr17~0_combout\ = (!\led_machine|pri_st.LED_44~q\ & (!\led_machine|pri_st.LED_42~q\ & (!\led_machine|pri_st.LED_43~q\ & !\led_machine|pri_st.LED_41~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_44~q\,
	datab => \led_machine|pri_st.LED_42~q\,
	datac => \led_machine|pri_st.LED_43~q\,
	datad => \led_machine|pri_st.LED_41~q\,
	combout => \led_machine|WideOr17~0_combout\);

-- Location: LCCOMB_X22_Y10_N30
\led_machine|WideOr17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr17~2_combout\ = (\led_machine|WideOr17~1_combout\ & \led_machine|WideOr17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr17~1_combout\,
	datad => \led_machine|WideOr17~0_combout\,
	combout => \led_machine|WideOr17~2_combout\);

-- Location: LCCOMB_X21_Y8_N8
\led_machine|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr2~1_combout\ = ((\led_machine|WideOr2~0_combout\) # ((!\led_machine|WideOr17~2_combout\) # (!\led_machine|WideOr9~2_combout\))) # (!\led_machine|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~0_combout\,
	datab => \led_machine|WideOr2~0_combout\,
	datac => \led_machine|WideOr9~2_combout\,
	datad => \led_machine|WideOr17~2_combout\,
	combout => \led_machine|WideOr2~1_combout\);

-- Location: LCCOMB_X22_Y13_N12
\led_machine|WideOr16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr16~1_combout\ = (!\led_machine|pri_st.LED_29~q\ & (!\led_machine|pri_st.LED_30~q\ & (!\led_machine|pri_st.LED_32~q\ & !\led_machine|pri_st.LED_31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_29~q\,
	datab => \led_machine|pri_st.LED_30~q\,
	datac => \led_machine|pri_st.LED_32~q\,
	datad => \led_machine|pri_st.LED_31~q\,
	combout => \led_machine|WideOr16~1_combout\);

-- Location: LCCOMB_X21_Y10_N24
\led_machine|WideOr8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr8~1_combout\ = (!\led_machine|pri_st.LED_23~q\ & (!\led_machine|pri_st.LED_21~q\ & (!\led_machine|pri_st.LED_24~q\ & !\led_machine|pri_st.LED_22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_23~q\,
	datab => \led_machine|pri_st.LED_21~q\,
	datac => \led_machine|pri_st.LED_24~q\,
	datad => \led_machine|pri_st.LED_22~q\,
	combout => \led_machine|WideOr8~1_combout\);

-- Location: LCCOMB_X22_Y10_N12
\led_machine|WideOr16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr16~0_combout\ = (!\led_machine|pri_st.LED_27~q\ & (!\led_machine|pri_st.LED_26~q\ & (!\led_machine|pri_st.LED_28~q\ & !\led_machine|pri_st.LED_25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_27~q\,
	datab => \led_machine|pri_st.LED_26~q\,
	datac => \led_machine|pri_st.LED_28~q\,
	datad => \led_machine|pri_st.LED_25~q\,
	combout => \led_machine|WideOr16~0_combout\);

-- Location: LCCOMB_X20_Y12_N10
\led_machine|WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr8~0_combout\ = (!\led_machine|pri_st.LED_18~q\ & (!\led_machine|pri_st.LED_17~q\ & (!\led_machine|pri_st.LED_20~q\ & !\led_machine|pri_st.LED_19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_18~q\,
	datab => \led_machine|pri_st.LED_17~q\,
	datac => \led_machine|pri_st.LED_20~q\,
	datad => \led_machine|pri_st.LED_19~q\,
	combout => \led_machine|WideOr8~0_combout\);

-- Location: LCCOMB_X21_Y8_N0
\led_machine|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr0~0_combout\ = (\led_machine|WideOr16~1_combout\ & (\led_machine|WideOr8~1_combout\ & (\led_machine|WideOr16~0_combout\ & \led_machine|WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr16~1_combout\,
	datab => \led_machine|WideOr8~1_combout\,
	datac => \led_machine|WideOr16~0_combout\,
	datad => \led_machine|WideOr8~0_combout\,
	combout => \led_machine|WideOr0~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\led_machine|WideOr20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr20~1_combout\ = (!\led_machine|pri_st.LED_95~q\ & (!\led_machine|pri_st.LED_94~q\ & (!\led_machine|pri_st.LED_96~q\ & !\led_machine|pri_st.LED_93~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_95~q\,
	datab => \led_machine|pri_st.LED_94~q\,
	datac => \led_machine|pri_st.LED_96~q\,
	datad => \led_machine|pri_st.LED_93~q\,
	combout => \led_machine|WideOr20~1_combout\);

-- Location: LCCOMB_X21_Y12_N16
\led_machine|WideOr20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr20~0_combout\ = (!\led_machine|pri_st.LED_90~q\ & (!\led_machine|pri_st.LED_91~q\ & (!\led_machine|pri_st.LED_92~q\ & !\led_machine|pri_st.LED_89~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_90~q\,
	datab => \led_machine|pri_st.LED_91~q\,
	datac => \led_machine|pri_st.LED_92~q\,
	datad => \led_machine|pri_st.LED_89~q\,
	combout => \led_machine|WideOr20~0_combout\);

-- Location: LCCOMB_X21_Y8_N2
\led_machine|WideOr20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr20~2_combout\ = (\led_machine|WideOr20~1_combout\ & \led_machine|WideOr20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|WideOr20~1_combout\,
	datad => \led_machine|WideOr20~0_combout\,
	combout => \led_machine|WideOr20~2_combout\);

-- Location: LCCOMB_X21_Y13_N16
\led_machine|WideOr12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr12~1_combout\ = (!\led_machine|pri_st.LED_85~q\ & (!\led_machine|pri_st.LED_86~q\ & (!\led_machine|pri_st.LED_87~q\ & !\led_machine|pri_st.LED_88~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_85~q\,
	datab => \led_machine|pri_st.LED_86~q\,
	datac => \led_machine|pri_st.LED_87~q\,
	datad => \led_machine|pri_st.LED_88~q\,
	combout => \led_machine|WideOr12~1_combout\);

-- Location: LCCOMB_X23_Y12_N18
\led_machine|WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr12~0_combout\ = (!\led_machine|pri_st.LED_81~q\ & (!\led_machine|pri_st.LED_83~q\ & (!\led_machine|pri_st.LED_84~q\ & !\led_machine|pri_st.LED_82~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_81~q\,
	datab => \led_machine|pri_st.LED_83~q\,
	datac => \led_machine|pri_st.LED_84~q\,
	datad => \led_machine|pri_st.LED_82~q\,
	combout => \led_machine|WideOr12~0_combout\);

-- Location: LCCOMB_X22_Y13_N20
\led_machine|WideOr12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr12~2_combout\ = (\led_machine|WideOr12~1_combout\ & \led_machine|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr12~1_combout\,
	datad => \led_machine|WideOr12~0_combout\,
	combout => \led_machine|WideOr12~2_combout\);

-- Location: LCCOMB_X21_Y8_N24
\led_machine|WideOr1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr1~1_combout\ = (((!\led_machine|WideOr12~2_combout\) # (!\led_machine|WideOr20~2_combout\)) # (!\led_machine|WideOr0~0_combout\)) # (!\led_machine|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~0_combout\,
	datab => \led_machine|WideOr0~0_combout\,
	datac => \led_machine|WideOr20~2_combout\,
	datad => \led_machine|WideOr12~2_combout\,
	combout => \led_machine|WideOr1~1_combout\);

-- Location: LCCOMB_X26_Y17_N2
\FSM_impresion|PIN_3_def~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~17_combout\ = (\led_machine|WideOr2~1_combout\ & (\flipflop_led1|q\(4) & (\led_machine|WideOr1~1_combout\ $ (!\flipflop_led1|q\(5))))) # (!\led_machine|WideOr2~1_combout\ & (!\flipflop_led1|q\(4) & (\led_machine|WideOr1~1_combout\ 
-- $ (!\flipflop_led1|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \led_machine|WideOr1~1_combout\,
	datac => \flipflop_led1|q\(5),
	datad => \flipflop_led1|q\(4),
	combout => \FSM_impresion|PIN_3_def~17_combout\);

-- Location: LCCOMB_X27_Y18_N18
\flipflop_led1|q[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1|q[7]~22_combout\ = \flipflop_led1|q\(7) $ (\flipflop_led1|q[6]~21\ $ (\Mux_led1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1|q\(7),
	datad => \Mux_led1|Add1~0_combout\,
	cin => \flipflop_led1|q[6]~21\,
	combout => \flipflop_led1|q[7]~22_combout\);

-- Location: FF_X27_Y18_N19
\flipflop_led1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_lectura|Equal0~clkctrl_outclk\,
	d => \flipflop_led1|q[7]~22_combout\,
	clrn => \flipflop_led1|ALT_INV_dff~0_combout\,
	ena => \Mux_led1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1|q\(7));

-- Location: LCCOMB_X20_Y12_N8
\led_machine|WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr10~0_combout\ = (!\led_machine|pri_st.LED_51~q\ & (!\led_machine|pri_st.LED_49~q\ & (!\led_machine|pri_st.LED_50~q\ & !\led_machine|pri_st.LED_52~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_51~q\,
	datab => \led_machine|pri_st.LED_49~q\,
	datac => \led_machine|pri_st.LED_50~q\,
	datad => \led_machine|pri_st.LED_52~q\,
	combout => \led_machine|WideOr10~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\led_machine|WideOr10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr10~1_combout\ = (!\led_machine|pri_st.LED_55~q\ & (!\led_machine|pri_st.LED_53~q\ & (!\led_machine|pri_st.LED_56~q\ & !\led_machine|pri_st.LED_54~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_55~q\,
	datab => \led_machine|pri_st.LED_53~q\,
	datac => \led_machine|pri_st.LED_56~q\,
	datad => \led_machine|pri_st.LED_54~q\,
	combout => \led_machine|WideOr10~1_combout\);

-- Location: LCCOMB_X21_Y10_N16
\led_machine|WideOr10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr10~2_combout\ = (\led_machine|WideOr10~0_combout\ & \led_machine|WideOr10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr10~0_combout\,
	datad => \led_machine|WideOr10~1_combout\,
	combout => \led_machine|WideOr10~2_combout\);

-- Location: LCCOMB_X22_Y10_N28
\led_machine|WideOr18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr18~0_combout\ = (!\led_machine|pri_st.LED_58~q\ & (!\led_machine|pri_st.LED_57~q\ & (!\led_machine|pri_st.LED_60~q\ & !\led_machine|pri_st.LED_59~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_58~q\,
	datab => \led_machine|pri_st.LED_57~q\,
	datac => \led_machine|pri_st.LED_60~q\,
	datad => \led_machine|pri_st.LED_59~q\,
	combout => \led_machine|WideOr18~0_combout\);

-- Location: LCCOMB_X22_Y13_N30
\led_machine|WideOr18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr18~1_combout\ = (!\led_machine|pri_st.LED_61~q\ & (!\led_machine|pri_st.LED_62~q\ & (!\led_machine|pri_st.LED_63~q\ & !\led_machine|pri_st.LED_64~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_61~q\,
	datab => \led_machine|pri_st.LED_62~q\,
	datac => \led_machine|pri_st.LED_63~q\,
	datad => \led_machine|pri_st.LED_64~q\,
	combout => \led_machine|WideOr18~1_combout\);

-- Location: LCCOMB_X21_Y8_N16
\led_machine|WideOr18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr18~2_combout\ = (\led_machine|WideOr18~0_combout\ & \led_machine|WideOr18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr18~0_combout\,
	datac => \led_machine|WideOr18~1_combout\,
	combout => \led_machine|WideOr18~2_combout\);

-- Location: LCCOMB_X21_Y8_N30
\led_machine|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr0~1_combout\ = (((!\led_machine|WideOr15~2_combout\) # (!\led_machine|WideOr9~2_combout\)) # (!\led_machine|WideOr17~2_combout\)) # (!\led_machine|WideOr7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr7~2_combout\,
	datab => \led_machine|WideOr17~2_combout\,
	datac => \led_machine|WideOr9~2_combout\,
	datad => \led_machine|WideOr15~2_combout\,
	combout => \led_machine|WideOr0~1_combout\);

-- Location: LCCOMB_X21_Y8_N26
\led_machine|WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr0~2_combout\ = (((\led_machine|WideOr0~1_combout\) # (!\led_machine|WideOr0~0_combout\)) # (!\led_machine|WideOr18~2_combout\)) # (!\led_machine|WideOr10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr10~2_combout\,
	datab => \led_machine|WideOr18~2_combout\,
	datac => \led_machine|WideOr0~1_combout\,
	datad => \led_machine|WideOr0~0_combout\,
	combout => \led_machine|WideOr0~2_combout\);

-- Location: LCCOMB_X26_Y17_N8
\FSM_impresion|PIN_3_def~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~18_combout\ = (\FSM_impresion|PIN_3_def~17_combout\ & (!\flipflop_led1|q\(7) & (\flipflop_led1|q\(6) $ (\led_machine|WideOr0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1|q\(6),
	datab => \FSM_impresion|PIN_3_def~17_combout\,
	datac => \flipflop_led1|q\(7),
	datad => \led_machine|WideOr0~2_combout\,
	combout => \FSM_impresion|PIN_3_def~18_combout\);

-- Location: LCCOMB_X26_Y17_N18
\FSM_impresion|PIN_3_def~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~9_combout\ = (\led_machine|WideOr2~1_combout\ & (\flipflop_led3r2|q\(4) & (\led_machine|WideOr1~1_combout\ $ (!\flipflop_led2r2|q\(5))))) # (!\led_machine|WideOr2~1_combout\ & (!\flipflop_led3r2|q\(4) & 
-- (\led_machine|WideOr1~1_combout\ $ (!\flipflop_led2r2|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \led_machine|WideOr1~1_combout\,
	datac => \flipflop_led2r2|q\(5),
	datad => \flipflop_led3r2|q\(4),
	combout => \FSM_impresion|PIN_3_def~9_combout\);

-- Location: LCCOMB_X27_Y15_N16
\flipflop_led2r2|q[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r2|q[7]~9_combout\ = \button_down_r2|fall~q\ $ (\flipflop_led2r2|q[6]~8\ $ (!\flipflop_led2r2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_r2|fall~q\,
	datad => \flipflop_led2r2|q\(7),
	cin => \flipflop_led2r2|q[6]~8\,
	combout => \flipflop_led2r2|q[7]~9_combout\);

-- Location: FF_X27_Y15_N17
\flipflop_led2r2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led2r2|q[7]~9_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led2r2|q\(7));

-- Location: LCCOMB_X26_Y17_N12
\FSM_impresion|PIN_3_def~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~10_combout\ = (\FSM_impresion|PIN_3_def~9_combout\ & (!\flipflop_led2r2|q\(7) & (\flipflop_led2r2|q\(6) $ (\led_machine|WideOr0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led2r2|q\(6),
	datab => \FSM_impresion|PIN_3_def~9_combout\,
	datac => \flipflop_led2r2|q\(7),
	datad => \led_machine|WideOr0~2_combout\,
	combout => \FSM_impresion|PIN_3_def~10_combout\);

-- Location: LCCOMB_X26_Y17_N0
\FSM_impresion|PIN_3_def~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~8_combout\ = (!\led_machine|WideOr3~12_combout\ & (!\led_machine|WideOr4~10_combout\ & (!\led_machine|WideOr6~6_combout\ & !\led_machine|WideOr5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \led_machine|WideOr4~10_combout\,
	datac => \led_machine|WideOr6~6_combout\,
	datad => \led_machine|WideOr5~8_combout\,
	combout => \FSM_impresion|PIN_3_def~8_combout\);

-- Location: LCCOMB_X26_Y17_N26
\led_machine|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|Equal4~0_combout\ = \led_machine|WideOr2~1_combout\ $ (\flipflop_led3r2|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datac => \flipflop_led3r2|q\(4),
	combout => \led_machine|Equal4~0_combout\);

-- Location: LCCOMB_X27_Y14_N6
\FSM_impresion|PIN_3_def~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~12_combout\ = (\flipflop_led3r2|q\(6) & (\led_machine|WideOr0~2_combout\ & (\led_machine|WideOr1~1_combout\ $ (\flipflop_led3r2|q\(5))))) # (!\flipflop_led3r2|q\(6) & (!\led_machine|WideOr0~2_combout\ & 
-- (\led_machine|WideOr1~1_combout\ $ (\flipflop_led3r2|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r2|q\(6),
	datab => \led_machine|WideOr0~2_combout\,
	datac => \led_machine|WideOr1~1_combout\,
	datad => \flipflop_led3r2|q\(5),
	combout => \FSM_impresion|PIN_3_def~12_combout\);

-- Location: LCCOMB_X28_Y15_N6
\flipflop_led3r2|q[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r2|q[7]~10_combout\ = \button_down_r2|fall~q\ $ (\flipflop_led3r2|q[6]~9\ $ (!\flipflop_led3r2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \button_down_r2|fall~q\,
	datad => \flipflop_led3r2|q\(7),
	cin => \flipflop_led3r2|q[6]~9\,
	combout => \flipflop_led3r2|q[7]~10_combout\);

-- Location: FF_X28_Y15_N7
\flipflop_led3r2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led3r2|q[7]~10_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r2|q\(7));

-- Location: LCCOMB_X27_Y15_N30
\flipflop_led1r2|q[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r2|q[7]~9_combout\ = \flipflop_led1r2|q\(7) $ (\flipflop_led1r2|q[6]~8\ $ (!\button_down_r2|fall~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led1r2|q\(7),
	datad => \button_down_r2|fall~q\,
	cin => \flipflop_led1r2|q[6]~8\,
	combout => \flipflop_led1r2|q[7]~9_combout\);

-- Location: FF_X27_Y15_N31
\flipflop_led1r2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led1r2|q[7]~9_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r2|q[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1r2|q\(7));

-- Location: LCCOMB_X27_Y14_N0
\FSM_impresion|PIN_3_def~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~11_combout\ = (\flipflop_led1r2|q\(6) & (!\led_machine|WideOr0~2_combout\ & (\flipflop_led1r2|q\(5) $ (!\led_machine|WideOr1~1_combout\)))) # (!\flipflop_led1r2|q\(6) & (\led_machine|WideOr0~2_combout\ & (\flipflop_led1r2|q\(5) $ 
-- (!\led_machine|WideOr1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led1r2|q\(6),
	datab => \flipflop_led1r2|q\(5),
	datac => \led_machine|WideOr1~1_combout\,
	datad => \led_machine|WideOr0~2_combout\,
	combout => \FSM_impresion|PIN_3_def~11_combout\);

-- Location: LCCOMB_X27_Y14_N16
\FSM_impresion|PIN_3_def~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~13_combout\ = (\FSM_impresion|PIN_3_def~12_combout\ & (((!\flipflop_led1r2|q\(7) & \FSM_impresion|PIN_3_def~11_combout\)) # (!\flipflop_led3r2|q\(7)))) # (!\FSM_impresion|PIN_3_def~12_combout\ & (((!\flipflop_led1r2|q\(7) & 
-- \FSM_impresion|PIN_3_def~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_impresion|PIN_3_def~12_combout\,
	datab => \flipflop_led3r2|q\(7),
	datac => \flipflop_led1r2|q\(7),
	datad => \FSM_impresion|PIN_3_def~11_combout\,
	combout => \FSM_impresion|PIN_3_def~13_combout\);

-- Location: LCCOMB_X26_Y17_N20
\FSM_impresion|PIN_3_def~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~14_combout\ = (\FSM_impresion|PIN_3_def~8_combout\ & ((\FSM_impresion|PIN_3_def~10_combout\) # ((\led_machine|Equal4~0_combout\ & \FSM_impresion|PIN_3_def~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_impresion|PIN_3_def~10_combout\,
	datab => \FSM_impresion|PIN_3_def~8_combout\,
	datac => \led_machine|Equal4~0_combout\,
	datad => \FSM_impresion|PIN_3_def~13_combout\,
	combout => \FSM_impresion|PIN_3_def~14_combout\);

-- Location: LCCOMB_X26_Y17_N22
\FSM_impresion|PIN_3_def~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~19_combout\ = (\FSM_impresion|PIN_3_def~14_combout\) # ((\FSM_impresion|PIN_3_def~15_combout\ & (\FSM_impresion|PIN_3_def~16_combout\ & \FSM_impresion|PIN_3_def~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_impresion|PIN_3_def~15_combout\,
	datab => \FSM_impresion|PIN_3_def~16_combout\,
	datac => \FSM_impresion|PIN_3_def~18_combout\,
	datad => \FSM_impresion|PIN_3_def~14_combout\,
	combout => \FSM_impresion|PIN_3_def~19_combout\);

-- Location: IOIBUF_X0_Y23_N1
\play_again~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_play_again,
	o => \play_again~input_o\);

-- Location: LCCOMB_X23_Y16_N0
\button_play_again|sync1:resync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_play_again|sync1:resync[1]~feeder_combout\ = \play_again~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \play_again~input_o\,
	combout => \button_play_again|sync1:resync[1]~feeder_combout\);

-- Location: FF_X23_Y16_N1
\button_play_again|sync1:resync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_play_again|sync1:resync[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_play_again|sync1:resync[1]~q\);

-- Location: LCCOMB_X23_Y16_N18
\button_play_again|sync1:resync[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_play_again|sync1:resync[2]~feeder_combout\ = \button_play_again|sync1:resync[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button_play_again|sync1:resync[1]~q\,
	combout => \button_play_again|sync1:resync[2]~feeder_combout\);

-- Location: FF_X23_Y16_N19
\button_play_again|sync1:resync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_play_again|sync1:resync[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_play_again|sync1:resync[2]~q\);

-- Location: LCCOMB_X23_Y16_N12
\button_play_again|sync1:resync[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_play_again|sync1:resync[3]~feeder_combout\ = \button_play_again|sync1:resync[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button_play_again|sync1:resync[2]~q\,
	combout => \button_play_again|sync1:resync[3]~feeder_combout\);

-- Location: FF_X23_Y16_N13
\button_play_again|sync1:resync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_play_again|sync1:resync[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_play_again|sync1:resync[3]~q\);

-- Location: LCCOMB_X23_Y16_N2
\button_play_again|fall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_play_again|fall~0_combout\ = (!\button_play_again|sync1:resync[2]~q\ & \button_play_again|sync1:resync[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_play_again|sync1:resync[2]~q\,
	datad => \button_play_again|sync1:resync[3]~q\,
	combout => \button_play_again|fall~0_combout\);

-- Location: FF_X23_Y16_N3
\button_play_again|fall\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \button_play_again|fall~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_play_again|fall~q\);

-- Location: LCCOMB_X23_Y16_N28
\FSM_impresion|next_st~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|next_st~0_combout\ = (\FSM_impresion|pri_st~q\ & ((!\button_play_again|fall~q\))) # (!\FSM_impresion|pri_st~q\ & (\winner~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \winner~q\,
	datac => \FSM_impresion|pri_st~q\,
	datad => \button_play_again|fall~q\,
	combout => \FSM_impresion|next_st~0_combout\);

-- Location: FF_X23_Y16_N29
\FSM_impresion|pri_st\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM_impresion|next_st~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_impresion|pri_st~q\);

-- Location: LCCOMB_X23_Y9_N4
\Vecto_to_RAM|current_address[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[0]~21_combout\ = !\Vecto_to_RAM|current_address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Vecto_to_RAM|current_address\(0),
	combout => \Vecto_to_RAM|current_address[0]~21_combout\);

-- Location: FF_X23_Y9_N5
\Vecto_to_RAM|current_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[0]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(0));

-- Location: LCCOMB_X23_Y9_N14
\Vecto_to_RAM|current_address[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[1]~7_combout\ = (\Vecto_to_RAM|current_address\(1) & (\Vecto_to_RAM|current_address\(0) $ (VCC))) # (!\Vecto_to_RAM|current_address\(1) & (\Vecto_to_RAM|current_address\(0) & VCC))
-- \Vecto_to_RAM|current_address[1]~8\ = CARRY((\Vecto_to_RAM|current_address\(1) & \Vecto_to_RAM|current_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(1),
	datab => \Vecto_to_RAM|current_address\(0),
	datad => VCC,
	combout => \Vecto_to_RAM|current_address[1]~7_combout\,
	cout => \Vecto_to_RAM|current_address[1]~8\);

-- Location: FF_X23_Y9_N15
\Vecto_to_RAM|current_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[1]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(1));

-- Location: LCCOMB_X23_Y9_N16
\Vecto_to_RAM|current_address[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[2]~9_combout\ = (\Vecto_to_RAM|current_address\(2) & (!\Vecto_to_RAM|current_address[1]~8\)) # (!\Vecto_to_RAM|current_address\(2) & ((\Vecto_to_RAM|current_address[1]~8\) # (GND)))
-- \Vecto_to_RAM|current_address[2]~10\ = CARRY((!\Vecto_to_RAM|current_address[1]~8\) # (!\Vecto_to_RAM|current_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Vecto_to_RAM|current_address\(2),
	datad => VCC,
	cin => \Vecto_to_RAM|current_address[1]~8\,
	combout => \Vecto_to_RAM|current_address[2]~9_combout\,
	cout => \Vecto_to_RAM|current_address[2]~10\);

-- Location: FF_X23_Y9_N17
\Vecto_to_RAM|current_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[2]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(2));

-- Location: LCCOMB_X23_Y9_N18
\Vecto_to_RAM|current_address[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[3]~11_combout\ = (\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address[2]~10\ $ (GND))) # (!\Vecto_to_RAM|current_address\(3) & (!\Vecto_to_RAM|current_address[2]~10\ & VCC))
-- \Vecto_to_RAM|current_address[3]~12\ = CARRY((\Vecto_to_RAM|current_address\(3) & !\Vecto_to_RAM|current_address[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datad => VCC,
	cin => \Vecto_to_RAM|current_address[2]~10\,
	combout => \Vecto_to_RAM|current_address[3]~11_combout\,
	cout => \Vecto_to_RAM|current_address[3]~12\);

-- Location: FF_X23_Y9_N19
\Vecto_to_RAM|current_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[3]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(3));

-- Location: LCCOMB_X23_Y9_N20
\Vecto_to_RAM|current_address[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[4]~13_combout\ = (\Vecto_to_RAM|current_address\(4) & (!\Vecto_to_RAM|current_address[3]~12\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|current_address[3]~12\) # (GND)))
-- \Vecto_to_RAM|current_address[4]~14\ = CARRY((!\Vecto_to_RAM|current_address[3]~12\) # (!\Vecto_to_RAM|current_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Vecto_to_RAM|current_address\(4),
	datad => VCC,
	cin => \Vecto_to_RAM|current_address[3]~12\,
	combout => \Vecto_to_RAM|current_address[4]~13_combout\,
	cout => \Vecto_to_RAM|current_address[4]~14\);

-- Location: FF_X23_Y9_N21
\Vecto_to_RAM|current_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[4]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(4));

-- Location: LCCOMB_X23_Y9_N22
\Vecto_to_RAM|current_address[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[5]~15_combout\ = (\Vecto_to_RAM|current_address\(5) & (\Vecto_to_RAM|current_address[4]~14\ $ (GND))) # (!\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address[4]~14\ & VCC))
-- \Vecto_to_RAM|current_address[5]~16\ = CARRY((\Vecto_to_RAM|current_address\(5) & !\Vecto_to_RAM|current_address[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Vecto_to_RAM|current_address\(5),
	datad => VCC,
	cin => \Vecto_to_RAM|current_address[4]~14\,
	combout => \Vecto_to_RAM|current_address[5]~15_combout\,
	cout => \Vecto_to_RAM|current_address[5]~16\);

-- Location: FF_X23_Y9_N23
\Vecto_to_RAM|current_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[5]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(5));

-- Location: LCCOMB_X23_Y9_N24
\Vecto_to_RAM|current_address[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[6]~17_combout\ = (\Vecto_to_RAM|current_address\(6) & (!\Vecto_to_RAM|current_address[5]~16\)) # (!\Vecto_to_RAM|current_address\(6) & ((\Vecto_to_RAM|current_address[5]~16\) # (GND)))
-- \Vecto_to_RAM|current_address[6]~18\ = CARRY((!\Vecto_to_RAM|current_address[5]~16\) # (!\Vecto_to_RAM|current_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(6),
	datad => VCC,
	cin => \Vecto_to_RAM|current_address[5]~16\,
	combout => \Vecto_to_RAM|current_address[6]~17_combout\,
	cout => \Vecto_to_RAM|current_address[6]~18\);

-- Location: FF_X23_Y9_N25
\Vecto_to_RAM|current_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[6]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(6));

-- Location: LCCOMB_X23_Y9_N26
\Vecto_to_RAM|current_address[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|current_address[7]~19_combout\ = \Vecto_to_RAM|current_address[6]~18\ $ (!\Vecto_to_RAM|current_address\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Vecto_to_RAM|current_address\(7),
	cin => \Vecto_to_RAM|current_address[6]~18\,
	combout => \Vecto_to_RAM|current_address[7]~19_combout\);

-- Location: FF_X23_Y9_N27
\Vecto_to_RAM|current_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Vecto_to_RAM|current_address[7]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vecto_to_RAM|current_address\(7));

-- Location: LCCOMB_X24_Y9_N18
\RAM|Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~12_combout\ = (!\Vecto_to_RAM|current_address\(2) & (\Vecto_to_RAM|current_address\(0) & (!\Vecto_to_RAM|current_address\(7) & \Vecto_to_RAM|current_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(2),
	datab => \Vecto_to_RAM|current_address\(0),
	datac => \Vecto_to_RAM|current_address\(7),
	datad => \Vecto_to_RAM|current_address\(1),
	combout => \RAM|Decoder0~12_combout\);

-- Location: LCCOMB_X23_Y9_N6
\Vecto_to_RAM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|Mux0~0_combout\ = (\Vecto_to_RAM|current_address\(0) & (((!\Vecto_to_RAM|current_address\(3))) # (!\Vecto_to_RAM|current_address\(2)))) # (!\Vecto_to_RAM|current_address\(0) & (\Vecto_to_RAM|current_address\(1) & 
-- (\Vecto_to_RAM|current_address\(2) $ (!\Vecto_to_RAM|current_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(0),
	datab => \Vecto_to_RAM|current_address\(2),
	datac => \Vecto_to_RAM|current_address\(1),
	datad => \Vecto_to_RAM|current_address\(3),
	combout => \Vecto_to_RAM|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y9_N12
\Vecto_to_RAM|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|Mux0~1_combout\ = (\Vecto_to_RAM|current_address\(2) & (\Vecto_to_RAM|current_address\(3) $ (((\Vecto_to_RAM|current_address\(0) & \Vecto_to_RAM|current_address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(0),
	datab => \Vecto_to_RAM|current_address\(2),
	datac => \Vecto_to_RAM|current_address\(1),
	datad => \Vecto_to_RAM|current_address\(3),
	combout => \Vecto_to_RAM|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y9_N10
\Vecto_to_RAM|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|Mux0~2_combout\ = (\Vecto_to_RAM|current_address\(5) & ((\Vecto_to_RAM|current_address\(6)) # ((\Vecto_to_RAM|Mux0~0_combout\)))) # (!\Vecto_to_RAM|current_address\(5) & ((\Vecto_to_RAM|Mux0~0_combout\ $ (\Vecto_to_RAM|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(5),
	datab => \Vecto_to_RAM|current_address\(6),
	datac => \Vecto_to_RAM|Mux0~0_combout\,
	datad => \Vecto_to_RAM|Mux0~1_combout\,
	combout => \Vecto_to_RAM|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y9_N2
\Vecto_to_RAM|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|Mux0~3_combout\ = (\Vecto_to_RAM|current_address\(5) & (\Vecto_to_RAM|current_address\(0) $ (((!\Vecto_to_RAM|current_address\(3)) # (!\Vecto_to_RAM|current_address\(6)))))) # (!\Vecto_to_RAM|current_address\(5) & 
-- (\Vecto_to_RAM|current_address\(6) & (!\Vecto_to_RAM|current_address\(0) & \Vecto_to_RAM|current_address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(5),
	datab => \Vecto_to_RAM|current_address\(6),
	datac => \Vecto_to_RAM|current_address\(0),
	datad => \Vecto_to_RAM|current_address\(3),
	combout => \Vecto_to_RAM|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y9_N28
\Vecto_to_RAM|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|Mux0~4_combout\ = (\Vecto_to_RAM|current_address\(6) & (\Vecto_to_RAM|current_address\(5) $ (((\Vecto_to_RAM|current_address\(3)) # (\Vecto_to_RAM|current_address\(0)))))) # (!\Vecto_to_RAM|current_address\(6) & 
-- (((\Vecto_to_RAM|current_address\(5) & \Vecto_to_RAM|current_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(6),
	datac => \Vecto_to_RAM|current_address\(5),
	datad => \Vecto_to_RAM|current_address\(0),
	combout => \Vecto_to_RAM|Mux0~4_combout\);

-- Location: LCCOMB_X23_Y9_N0
\Vecto_to_RAM|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|Mux0~5_combout\ = (\Vecto_to_RAM|current_address\(2) & (\Vecto_to_RAM|current_address\(1) $ (((!\Vecto_to_RAM|current_address\(3) & \Vecto_to_RAM|Mux0~4_combout\))))) # (!\Vecto_to_RAM|current_address\(2) & (\Vecto_to_RAM|Mux0~4_combout\ & 
-- ((\Vecto_to_RAM|current_address\(3)) # (!\Vecto_to_RAM|current_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(2),
	datac => \Vecto_to_RAM|current_address\(1),
	datad => \Vecto_to_RAM|Mux0~4_combout\,
	combout => \Vecto_to_RAM|Mux0~5_combout\);

-- Location: LCCOMB_X23_Y9_N30
\Vecto_to_RAM|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vecto_to_RAM|Mux0~6_combout\ = (\Vecto_to_RAM|Mux0~5_combout\ & ((\Vecto_to_RAM|current_address\(1) & (\Vecto_to_RAM|Mux0~3_combout\ $ (!\Vecto_to_RAM|current_address\(2)))) # (!\Vecto_to_RAM|current_address\(1) & ((!\Vecto_to_RAM|current_address\(2)) # 
-- (!\Vecto_to_RAM|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(1),
	datab => \Vecto_to_RAM|Mux0~3_combout\,
	datac => \Vecto_to_RAM|current_address\(2),
	datad => \Vecto_to_RAM|Mux0~5_combout\,
	combout => \Vecto_to_RAM|Mux0~6_combout\);

-- Location: LCCOMB_X24_Y7_N22
\RAM|array_reg[91]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[91]~36_combout\ = (\RAM|Decoder0~12_combout\ & ((\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~2_combout\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \RAM|Decoder0~12_combout\,
	datac => \Vecto_to_RAM|Mux0~2_combout\,
	datad => \Vecto_to_RAM|Mux0~6_combout\,
	combout => \RAM|array_reg[91]~36_combout\);

-- Location: LCCOMB_X24_Y8_N28
\RAM|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~7_combout\ = (!\Vecto_to_RAM|current_address\(3) & (!\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & \Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~7_combout\);

-- Location: LCCOMB_X24_Y7_N4
\RAM|array_reg[19]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[19]~50_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(19))))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[91]~36_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(19),
	datad => \RAM|Decoder0~7_combout\,
	combout => \RAM|array_reg[19]~50_combout\);

-- Location: FF_X24_Y7_N5
\RAM|array_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(19));

-- Location: LCCOMB_X24_Y8_N12
\RAM|Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~9_combout\ = (!\Vecto_to_RAM|current_address\(3) & (!\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & !\Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~9_combout\);

-- Location: LCCOMB_X24_Y7_N18
\RAM|array_reg[3]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[3]~53_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((\RAM|array_reg\(3) & !\RAM|Decoder0~12_combout\)))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[91]~36_combout\,
	datab => \RAM|Decoder0~9_combout\,
	datac => \RAM|array_reg\(3),
	datad => \RAM|Decoder0~12_combout\,
	combout => \RAM|array_reg[3]~53_combout\);

-- Location: FF_X24_Y7_N19
\RAM|array_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[3]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(3));

-- Location: LCCOMB_X24_Y8_N26
\RAM|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~6_combout\ = (!\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & !\Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~6_combout\);

-- Location: LCCOMB_X24_Y7_N2
\RAM|array_reg[35]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[35]~51_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(35))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~12_combout\,
	datab => \RAM|Decoder0~6_combout\,
	datac => \RAM|array_reg\(35),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[35]~51_combout\);

-- Location: FF_X24_Y7_N3
\RAM|array_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[35]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(35));

-- Location: LCCOMB_X24_Y8_N2
\RAM|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~8_combout\ = (!\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & \Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~8_combout\);

-- Location: LCCOMB_X24_Y7_N8
\RAM|array_reg[51]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[51]~52_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(51))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(51),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[51]~52_combout\);

-- Location: FF_X24_Y7_N9
\RAM|array_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[51]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(51));

-- Location: LCCOMB_X23_Y7_N22
\RAM|Mux0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~27_combout\ = (\led_machine|WideOr1~1_combout\ & (((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & ((\led_machine|WideOr2~1_combout\ & (\RAM|array_reg\(35))) # (!\led_machine|WideOr2~1_combout\ & 
-- ((\RAM|array_reg\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(35),
	datab => \RAM|array_reg\(51),
	datac => \led_machine|WideOr1~1_combout\,
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~27_combout\);

-- Location: LCCOMB_X23_Y7_N16
\RAM|Mux0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~28_combout\ = (\RAM|Mux0~27_combout\ & (((\RAM|array_reg\(3)) # (!\led_machine|WideOr1~1_combout\)))) # (!\RAM|Mux0~27_combout\ & (\RAM|array_reg\(19) & ((\led_machine|WideOr1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(19),
	datab => \RAM|array_reg\(3),
	datac => \RAM|Mux0~27_combout\,
	datad => \led_machine|WideOr1~1_combout\,
	combout => \RAM|Mux0~28_combout\);

-- Location: LCCOMB_X24_Y10_N14
\RAM|Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~13_combout\ = (\Vecto_to_RAM|current_address\(1) & (!\Vecto_to_RAM|current_address\(7) & (\Vecto_to_RAM|current_address\(2) & \Vecto_to_RAM|current_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(1),
	datab => \Vecto_to_RAM|current_address\(7),
	datac => \Vecto_to_RAM|current_address\(2),
	datad => \Vecto_to_RAM|current_address\(0),
	combout => \RAM|Decoder0~13_combout\);

-- Location: LCCOMB_X23_Y10_N2
\RAM|array_reg[87]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[87]~41_combout\ = (\RAM|Decoder0~13_combout\ & ((\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~2_combout\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \RAM|Decoder0~13_combout\,
	datac => \Vecto_to_RAM|Mux0~2_combout\,
	datad => \Vecto_to_RAM|Mux0~6_combout\,
	combout => \RAM|array_reg[87]~41_combout\);

-- Location: LCCOMB_X23_Y10_N14
\RAM|array_reg[55]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[55]~44_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(55))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(55),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[55]~44_combout\);

-- Location: FF_X23_Y10_N15
\RAM|array_reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[55]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(55));

-- Location: LCCOMB_X24_Y10_N8
\RAM|array_reg[23]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[23]~43_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(23))))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~7_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(23),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[23]~43_combout\);

-- Location: FF_X24_Y10_N9
\RAM|array_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[23]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(23));

-- Location: LCCOMB_X24_Y10_N26
\RAM|Mux0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~22_combout\ = (\led_machine|WideOr1~1_combout\ & (((\RAM|array_reg\(23)) # (\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & (\RAM|array_reg\(55) & ((!\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(55),
	datab => \RAM|array_reg\(23),
	datac => \led_machine|WideOr1~1_combout\,
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~22_combout\);

-- Location: LCCOMB_X23_Y10_N20
\RAM|array_reg[39]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[39]~42_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(39))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~6_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(39),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[39]~42_combout\);

-- Location: FF_X23_Y10_N21
\RAM|array_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[39]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(39));

-- Location: LCCOMB_X23_Y10_N0
\RAM|array_reg[7]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[7]~45_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(7))))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~9_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(7),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[7]~45_combout\);

-- Location: FF_X23_Y10_N1
\RAM|array_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(7));

-- Location: LCCOMB_X24_Y10_N12
\RAM|Mux0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~23_combout\ = (\RAM|Mux0~22_combout\ & (((\RAM|array_reg\(7)) # (!\led_machine|WideOr2~1_combout\)))) # (!\RAM|Mux0~22_combout\ & (\RAM|array_reg\(39) & ((\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~22_combout\,
	datab => \RAM|array_reg\(39),
	datac => \RAM|array_reg\(7),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~23_combout\);

-- Location: LCCOMB_X24_Y8_N6
\RAM|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~3_combout\ = (\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & \Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y10_N30
\RAM|array_reg[63]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[63]~48_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(63))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~3_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(63),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[63]~48_combout\);

-- Location: FF_X23_Y10_N31
\RAM|array_reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[63]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(63));

-- Location: LCCOMB_X24_Y8_N22
\RAM|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~1_combout\ = (\Vecto_to_RAM|current_address\(3) & (!\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & \Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y10_N28
\RAM|array_reg[31]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[31]~47_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(31))))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~1_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(31),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[31]~47_combout\);

-- Location: FF_X23_Y10_N29
\RAM|array_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[31]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(31));

-- Location: LCCOMB_X23_Y7_N20
\RAM|Mux0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~24_combout\ = (\led_machine|WideOr1~1_combout\ & (((\RAM|array_reg\(31)) # (\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & (\RAM|array_reg\(63) & ((!\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~1_combout\,
	datab => \RAM|array_reg\(63),
	datac => \RAM|array_reg\(31),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~24_combout\);

-- Location: LCCOMB_X24_Y8_N0
\RAM|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~4_combout\ = (\Vecto_to_RAM|current_address\(3) & (!\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & !\Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y10_N8
\RAM|array_reg[15]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[15]~49_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(15))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~13_combout\,
	datab => \RAM|Decoder0~4_combout\,
	datac => \RAM|array_reg\(15),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[15]~49_combout\);

-- Location: FF_X23_Y10_N9
\RAM|array_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[15]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(15));

-- Location: LCCOMB_X24_Y8_N16
\RAM|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~2_combout\ = (\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(6) & !\Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y10_N18
\RAM|array_reg[47]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[47]~46_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(47))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~13_combout\,
	datab => \RAM|Decoder0~2_combout\,
	datac => \RAM|array_reg\(47),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[47]~46_combout\);

-- Location: FF_X23_Y10_N19
\RAM|array_reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[47]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(47));

-- Location: LCCOMB_X23_Y7_N10
\RAM|Mux0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~25_combout\ = (\led_machine|WideOr2~1_combout\ & ((\RAM|Mux0~24_combout\ & (\RAM|array_reg\(15))) # (!\RAM|Mux0~24_combout\ & ((\RAM|array_reg\(47)))))) # (!\led_machine|WideOr2~1_combout\ & (\RAM|Mux0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \RAM|Mux0~24_combout\,
	datac => \RAM|array_reg\(15),
	datad => \RAM|array_reg\(47),
	combout => \RAM|Mux0~25_combout\);

-- Location: LCCOMB_X23_Y7_N4
\RAM|Mux0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~26_combout\ = (\led_machine|WideOr4~10_combout\ & (\led_machine|WideOr3~12_combout\)) # (!\led_machine|WideOr4~10_combout\ & ((\led_machine|WideOr3~12_combout\ & (\RAM|Mux0~23_combout\)) # (!\led_machine|WideOr3~12_combout\ & 
-- ((\RAM|Mux0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~10_combout\,
	datab => \led_machine|WideOr3~12_combout\,
	datac => \RAM|Mux0~23_combout\,
	datad => \RAM|Mux0~25_combout\,
	combout => \RAM|Mux0~26_combout\);

-- Location: LCCOMB_X24_Y7_N6
\RAM|array_reg[43]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[43]~38_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(43))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[91]~36_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(43),
	datad => \RAM|Decoder0~2_combout\,
	combout => \RAM|array_reg[43]~38_combout\);

-- Location: FF_X24_Y7_N7
\RAM|array_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[43]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(43));

-- Location: LCCOMB_X24_Y7_N0
\RAM|array_reg[59]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[59]~39_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(59))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~3_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(59),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[59]~39_combout\);

-- Location: FF_X24_Y7_N1
\RAM|array_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[59]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(59));

-- Location: LCCOMB_X23_Y7_N12
\RAM|Mux0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~20_combout\ = (\led_machine|WideOr1~1_combout\ & (((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & ((\led_machine|WideOr2~1_combout\ & (\RAM|array_reg\(43))) # (!\led_machine|WideOr2~1_combout\ & 
-- ((\RAM|array_reg\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(43),
	datab => \RAM|array_reg\(59),
	datac => \led_machine|WideOr1~1_combout\,
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~20_combout\);

-- Location: LCCOMB_X24_Y7_N24
\RAM|array_reg[27]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[27]~37_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(27))))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~1_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(27),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[27]~37_combout\);

-- Location: FF_X24_Y7_N25
\RAM|array_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[27]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(27));

-- Location: LCCOMB_X24_Y7_N14
\RAM|array_reg[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[11]~40_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(11))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~4_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(11),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[11]~40_combout\);

-- Location: FF_X24_Y7_N15
\RAM|array_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(11));

-- Location: LCCOMB_X23_Y7_N18
\RAM|Mux0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~21_combout\ = (\RAM|Mux0~20_combout\ & (((\RAM|array_reg\(11)) # (!\led_machine|WideOr1~1_combout\)))) # (!\RAM|Mux0~20_combout\ & (\RAM|array_reg\(27) & ((\led_machine|WideOr1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~20_combout\,
	datab => \RAM|array_reg\(27),
	datac => \RAM|array_reg\(11),
	datad => \led_machine|WideOr1~1_combout\,
	combout => \RAM|Mux0~21_combout\);

-- Location: LCCOMB_X23_Y7_N2
\RAM|Mux0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~29_combout\ = (\led_machine|WideOr4~10_combout\ & ((\RAM|Mux0~26_combout\ & (\RAM|Mux0~28_combout\)) # (!\RAM|Mux0~26_combout\ & ((\RAM|Mux0~21_combout\))))) # (!\led_machine|WideOr4~10_combout\ & (((\RAM|Mux0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~10_combout\,
	datab => \RAM|Mux0~28_combout\,
	datac => \RAM|Mux0~26_combout\,
	datad => \RAM|Mux0~21_combout\,
	combout => \RAM|Mux0~29_combout\);

-- Location: LCCOMB_X26_Y9_N0
\RAM|Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~11_combout\ = (!\Vecto_to_RAM|current_address\(7) & (!\Vecto_to_RAM|current_address\(0) & (\Vecto_to_RAM|current_address\(1) & !\Vecto_to_RAM|current_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(7),
	datab => \Vecto_to_RAM|current_address\(0),
	datac => \Vecto_to_RAM|current_address\(1),
	datad => \Vecto_to_RAM|current_address\(2),
	combout => \RAM|Decoder0~11_combout\);

-- Location: LCCOMB_X26_Y9_N2
\RAM|array_reg[90]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[90]~23_combout\ = (\RAM|Decoder0~11_combout\ & ((\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~2_combout\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \RAM|Decoder0~11_combout\,
	datac => \Vecto_to_RAM|Mux0~2_combout\,
	datad => \Vecto_to_RAM|Mux0~6_combout\,
	combout => \RAM|array_reg[90]~23_combout\);

-- Location: LCCOMB_X26_Y9_N14
\RAM|array_reg[42]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[42]~25_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(42))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~2_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(42),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[42]~25_combout\);

-- Location: FF_X26_Y9_N15
\RAM|array_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[42]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(42));

-- Location: LCCOMB_X26_Y9_N20
\RAM|array_reg[58]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[58]~26_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(58))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~3_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(58),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[58]~26_combout\);

-- Location: FF_X26_Y9_N21
\RAM|array_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[58]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(58));

-- Location: LCCOMB_X27_Y9_N12
\RAM|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~12_combout\ = (\led_machine|WideOr1~1_combout\ & (((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & ((\led_machine|WideOr2~1_combout\ & (\RAM|array_reg\(42))) # (!\led_machine|WideOr2~1_combout\ & 
-- ((\RAM|array_reg\(58))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(42),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \led_machine|WideOr2~1_combout\,
	datad => \RAM|array_reg\(58),
	combout => \RAM|Mux0~12_combout\);

-- Location: LCCOMB_X26_Y9_N6
\RAM|array_reg[10]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[10]~27_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(10))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~4_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(10),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[10]~27_combout\);

-- Location: FF_X26_Y9_N7
\RAM|array_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(10));

-- Location: LCCOMB_X26_Y9_N12
\RAM|array_reg[26]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[26]~24_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(26))))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~1_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(26),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[26]~24_combout\);

-- Location: FF_X26_Y9_N13
\RAM|array_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[26]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(26));

-- Location: LCCOMB_X27_Y9_N22
\RAM|Mux0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~13_combout\ = (\RAM|Mux0~12_combout\ & ((\RAM|array_reg\(10)) # ((!\led_machine|WideOr1~1_combout\)))) # (!\RAM|Mux0~12_combout\ & (((\led_machine|WideOr1~1_combout\ & \RAM|array_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~12_combout\,
	datab => \RAM|array_reg\(10),
	datac => \led_machine|WideOr1~1_combout\,
	datad => \RAM|array_reg\(26),
	combout => \RAM|Mux0~13_combout\);

-- Location: LCCOMB_X26_Y9_N26
\RAM|Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~10_combout\ = (\Vecto_to_RAM|current_address\(1) & (!\Vecto_to_RAM|current_address\(0) & (!\Vecto_to_RAM|current_address\(7) & \Vecto_to_RAM|current_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(1),
	datab => \Vecto_to_RAM|current_address\(0),
	datac => \Vecto_to_RAM|current_address\(7),
	datad => \Vecto_to_RAM|current_address\(2),
	combout => \RAM|Decoder0~10_combout\);

-- Location: LCCOMB_X27_Y9_N2
\RAM|array_reg[86]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[86]~18_combout\ = (\RAM|Decoder0~10_combout\ & ((\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~2_combout\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \Vecto_to_RAM|current_address\(4),
	datac => \Vecto_to_RAM|Mux0~2_combout\,
	datad => \Vecto_to_RAM|Mux0~6_combout\,
	combout => \RAM|array_reg[86]~18_combout\);

-- Location: LCCOMB_X27_Y9_N24
\RAM|array_reg[46]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[46]~28_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(46))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~2_combout\,
	datac => \RAM|array_reg\(46),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[46]~28_combout\);

-- Location: FF_X27_Y9_N25
\RAM|array_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[46]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(46));

-- Location: LCCOMB_X27_Y9_N18
\RAM|array_reg[14]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[14]~31_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(14))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~4_combout\,
	datac => \RAM|array_reg\(14),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[14]~31_combout\);

-- Location: FF_X27_Y9_N19
\RAM|array_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[14]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(14));

-- Location: LCCOMB_X27_Y9_N16
\RAM|array_reg[62]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[62]~30_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(62))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~3_combout\,
	datac => \RAM|array_reg\(62),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[62]~30_combout\);

-- Location: FF_X27_Y9_N17
\RAM|array_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[62]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(62));

-- Location: LCCOMB_X27_Y9_N14
\RAM|array_reg[30]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[30]~29_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(30))))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~1_combout\,
	datac => \RAM|array_reg\(30),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[30]~29_combout\);

-- Location: FF_X27_Y9_N15
\RAM|array_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[30]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(30));

-- Location: LCCOMB_X29_Y9_N2
\RAM|Mux0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~14_combout\ = (\led_machine|WideOr2~1_combout\ & (\led_machine|WideOr1~1_combout\)) # (!\led_machine|WideOr2~1_combout\ & ((\led_machine|WideOr1~1_combout\ & ((\RAM|array_reg\(30)))) # (!\led_machine|WideOr1~1_combout\ & (\RAM|array_reg\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(62),
	datad => \RAM|array_reg\(30),
	combout => \RAM|Mux0~14_combout\);

-- Location: LCCOMB_X29_Y9_N12
\RAM|Mux0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~15_combout\ = (\led_machine|WideOr2~1_combout\ & ((\RAM|Mux0~14_combout\ & ((\RAM|array_reg\(14)))) # (!\RAM|Mux0~14_combout\ & (\RAM|array_reg\(46))))) # (!\led_machine|WideOr2~1_combout\ & (((\RAM|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(46),
	datab => \RAM|array_reg\(14),
	datac => \led_machine|WideOr2~1_combout\,
	datad => \RAM|Mux0~14_combout\,
	combout => \RAM|Mux0~15_combout\);

-- Location: LCCOMB_X27_Y10_N30
\RAM|Mux0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~16_combout\ = (\led_machine|WideOr3~12_combout\ & (((\led_machine|WideOr4~10_combout\)))) # (!\led_machine|WideOr3~12_combout\ & ((\led_machine|WideOr4~10_combout\ & (\RAM|Mux0~13_combout\)) # (!\led_machine|WideOr4~10_combout\ & 
-- ((\RAM|Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \RAM|Mux0~13_combout\,
	datac => \led_machine|WideOr4~10_combout\,
	datad => \RAM|Mux0~15_combout\,
	combout => \RAM|Mux0~16_combout\);

-- Location: LCCOMB_X27_Y9_N30
\RAM|array_reg[22]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[22]~20_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(22))))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~7_combout\,
	datac => \RAM|array_reg\(22),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[22]~20_combout\);

-- Location: FF_X27_Y9_N31
\RAM|array_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(22));

-- Location: LCCOMB_X27_Y9_N4
\RAM|array_reg[54]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[54]~21_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(54))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~8_combout\,
	datac => \RAM|array_reg\(54),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[54]~21_combout\);

-- Location: FF_X27_Y9_N5
\RAM|array_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[54]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(54));

-- Location: LCCOMB_X27_Y10_N10
\RAM|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~10_combout\ = (\led_machine|WideOr1~1_combout\ & ((\RAM|array_reg\(22)) # ((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & (((\RAM|array_reg\(54) & !\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(22),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(54),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~10_combout\);

-- Location: LCCOMB_X27_Y9_N0
\RAM|array_reg[38]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[38]~19_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(38))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~6_combout\,
	datac => \RAM|array_reg\(38),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[38]~19_combout\);

-- Location: FF_X27_Y9_N1
\RAM|array_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[38]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(38));

-- Location: LCCOMB_X27_Y9_N10
\RAM|array_reg[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[6]~22_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(6))))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|array_reg[86]~18_combout\,
	datac => \RAM|array_reg\(6),
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|array_reg[6]~22_combout\);

-- Location: FF_X27_Y9_N11
\RAM|array_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(6));

-- Location: LCCOMB_X27_Y10_N0
\RAM|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~11_combout\ = (\RAM|Mux0~10_combout\ & (((\RAM|array_reg\(6)) # (!\led_machine|WideOr2~1_combout\)))) # (!\RAM|Mux0~10_combout\ & (\RAM|array_reg\(38) & ((\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~10_combout\,
	datab => \RAM|array_reg\(38),
	datac => \RAM|array_reg\(6),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~11_combout\);

-- Location: LCCOMB_X26_Y9_N10
\RAM|array_reg[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[2]~35_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(2))))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~9_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(2),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[2]~35_combout\);

-- Location: FF_X26_Y9_N11
\RAM|array_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(2));

-- Location: LCCOMB_X26_Y9_N28
\RAM|array_reg[18]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[18]~32_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(18))))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~11_combout\,
	datab => \RAM|Decoder0~7_combout\,
	datac => \RAM|array_reg\(18),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[18]~32_combout\);

-- Location: FF_X26_Y9_N29
\RAM|array_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(18));

-- Location: LCCOMB_X26_Y9_N30
\RAM|array_reg[34]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[34]~33_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(34))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~11_combout\,
	datab => \RAM|Decoder0~6_combout\,
	datac => \RAM|array_reg\(34),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[34]~33_combout\);

-- Location: FF_X26_Y9_N31
\RAM|array_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[34]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(34));

-- Location: LCCOMB_X26_Y9_N4
\RAM|array_reg[50]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[50]~34_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(50))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~11_combout\,
	datab => \RAM|Decoder0~8_combout\,
	datac => \RAM|array_reg\(50),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[50]~34_combout\);

-- Location: FF_X26_Y9_N5
\RAM|array_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[50]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(50));

-- Location: LCCOMB_X29_Y9_N10
\RAM|Mux0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~17_combout\ = (\led_machine|WideOr2~1_combout\ & ((\led_machine|WideOr1~1_combout\) # ((\RAM|array_reg\(34))))) # (!\led_machine|WideOr2~1_combout\ & (!\led_machine|WideOr1~1_combout\ & ((\RAM|array_reg\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(34),
	datad => \RAM|array_reg\(50),
	combout => \RAM|Mux0~17_combout\);

-- Location: LCCOMB_X29_Y9_N24
\RAM|Mux0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~18_combout\ = (\led_machine|WideOr1~1_combout\ & ((\RAM|Mux0~17_combout\ & (\RAM|array_reg\(2))) # (!\RAM|Mux0~17_combout\ & ((\RAM|array_reg\(18)))))) # (!\led_machine|WideOr1~1_combout\ & (((\RAM|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(2),
	datab => \RAM|array_reg\(18),
	datac => \led_machine|WideOr1~1_combout\,
	datad => \RAM|Mux0~17_combout\,
	combout => \RAM|Mux0~18_combout\);

-- Location: LCCOMB_X27_Y10_N28
\RAM|Mux0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~19_combout\ = (\RAM|Mux0~16_combout\ & (((\RAM|Mux0~18_combout\) # (!\led_machine|WideOr3~12_combout\)))) # (!\RAM|Mux0~16_combout\ & (\RAM|Mux0~11_combout\ & (\led_machine|WideOr3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~16_combout\,
	datab => \RAM|Mux0~11_combout\,
	datac => \led_machine|WideOr3~12_combout\,
	datad => \RAM|Mux0~18_combout\,
	combout => \RAM|Mux0~19_combout\);

-- Location: LCCOMB_X27_Y10_N22
\RAM|Mux0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~30_combout\ = (\led_machine|WideOr5~8_combout\ & (((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & ((\led_machine|WideOr6~6_combout\ & ((\RAM|Mux0~19_combout\))) # (!\led_machine|WideOr6~6_combout\ & 
-- (\RAM|Mux0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr5~8_combout\,
	datab => \RAM|Mux0~29_combout\,
	datac => \led_machine|WideOr6~6_combout\,
	datad => \RAM|Mux0~19_combout\,
	combout => \RAM|Mux0~30_combout\);

-- Location: LCCOMB_X24_Y9_N12
\RAM|Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~15_combout\ = (!\Vecto_to_RAM|current_address\(2) & (!\Vecto_to_RAM|current_address\(0) & (!\Vecto_to_RAM|current_address\(7) & !\Vecto_to_RAM|current_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(2),
	datab => \Vecto_to_RAM|current_address\(0),
	datac => \Vecto_to_RAM|current_address\(7),
	datad => \Vecto_to_RAM|current_address\(1),
	combout => \RAM|Decoder0~15_combout\);

-- Location: LCCOMB_X23_Y9_N8
\RAM|array_reg[88]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[88]~59_combout\ = (\RAM|Decoder0~15_combout\ & ((\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~2_combout\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \RAM|Decoder0~15_combout\,
	datac => \Vecto_to_RAM|Mux0~2_combout\,
	datad => \Vecto_to_RAM|Mux0~6_combout\,
	combout => \RAM|array_reg[88]~59_combout\);

-- Location: LCCOMB_X24_Y8_N4
\RAM|array_reg[16]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[16]~68_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((\RAM|array_reg\(16) & !\RAM|Decoder0~15_combout\)))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[88]~59_combout\,
	datab => \RAM|Decoder0~7_combout\,
	datac => \RAM|array_reg\(16),
	datad => \RAM|Decoder0~15_combout\,
	combout => \RAM|array_reg[16]~68_combout\);

-- Location: FF_X24_Y8_N5
\RAM|array_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[16]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(16));

-- Location: LCCOMB_X23_Y7_N8
\RAM|array_reg[0]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[0]~71_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(0))))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~9_combout\,
	datab => \RAM|Decoder0~15_combout\,
	datac => \RAM|array_reg\(0),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[0]~71_combout\);

-- Location: FF_X23_Y7_N9
\RAM|array_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[0]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(0));

-- Location: LCCOMB_X22_Y8_N22
\RAM|array_reg[32]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[32]~69_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(32))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|Decoder0~6_combout\,
	datac => \RAM|array_reg\(32),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[32]~69_combout\);

-- Location: FF_X22_Y8_N23
\RAM|array_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[32]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(32));

-- Location: LCCOMB_X23_Y7_N14
\RAM|array_reg[48]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[48]~70_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(48))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datab => \RAM|Decoder0~15_combout\,
	datac => \RAM|array_reg\(48),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[48]~70_combout\);

-- Location: FF_X23_Y7_N15
\RAM|array_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[48]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(48));

-- Location: LCCOMB_X26_Y7_N28
\RAM|Mux0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~38_combout\ = (\led_machine|WideOr1~1_combout\ & (((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & ((\led_machine|WideOr2~1_combout\ & (\RAM|array_reg\(32))) # (!\led_machine|WideOr2~1_combout\ & 
-- ((\RAM|array_reg\(48))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(32),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \led_machine|WideOr2~1_combout\,
	datad => \RAM|array_reg\(48),
	combout => \RAM|Mux0~38_combout\);

-- Location: LCCOMB_X26_Y7_N22
\RAM|Mux0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~39_combout\ = (\led_machine|WideOr1~1_combout\ & ((\RAM|Mux0~38_combout\ & ((\RAM|array_reg\(0)))) # (!\RAM|Mux0~38_combout\ & (\RAM|array_reg\(16))))) # (!\led_machine|WideOr1~1_combout\ & (((\RAM|Mux0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(16),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(0),
	datad => \RAM|Mux0~38_combout\,
	combout => \RAM|Mux0~39_combout\);

-- Location: LCCOMB_X24_Y8_N18
\RAM|Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~14_combout\ = (!\Vecto_to_RAM|current_address\(0) & (!\Vecto_to_RAM|current_address\(1) & (!\Vecto_to_RAM|current_address\(7) & \Vecto_to_RAM|current_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(0),
	datab => \Vecto_to_RAM|current_address\(1),
	datac => \Vecto_to_RAM|current_address\(7),
	datad => \Vecto_to_RAM|current_address\(2),
	combout => \RAM|Decoder0~14_combout\);

-- Location: LCCOMB_X23_Y8_N24
\RAM|array_reg[84]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[84]~54_combout\ = (\RAM|Decoder0~14_combout\ & ((\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~2_combout\))) # (!\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|Mux0~6_combout\,
	datab => \Vecto_to_RAM|current_address\(4),
	datac => \RAM|Decoder0~14_combout\,
	datad => \Vecto_to_RAM|Mux0~2_combout\,
	combout => \RAM|array_reg[84]~54_combout\);

-- Location: LCCOMB_X23_Y8_N20
\RAM|array_reg[36]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[36]~55_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(36))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~6_combout\,
	datac => \RAM|array_reg\(36),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[36]~55_combout\);

-- Location: FF_X23_Y8_N21
\RAM|array_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[36]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(36));

-- Location: LCCOMB_X23_Y8_N12
\RAM|array_reg[4]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[4]~58_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(4))))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~9_combout\,
	datac => \RAM|array_reg\(4),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[4]~58_combout\);

-- Location: FF_X23_Y8_N13
\RAM|array_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[4]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(4));

-- Location: LCCOMB_X23_Y8_N10
\RAM|array_reg[52]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[52]~57_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(52))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datab => \RAM|Decoder0~14_combout\,
	datac => \RAM|array_reg\(52),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[52]~57_combout\);

-- Location: FF_X23_Y8_N11
\RAM|array_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[52]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(52));

-- Location: LCCOMB_X26_Y8_N20
\RAM|array_reg[20]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[20]~56_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(20))))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~7_combout\,
	datac => \RAM|array_reg\(20),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[20]~56_combout\);

-- Location: FF_X26_Y8_N21
\RAM|array_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[20]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(20));

-- Location: LCCOMB_X22_Y8_N0
\RAM|Mux0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~31_combout\ = (\led_machine|WideOr2~1_combout\ & (\led_machine|WideOr1~1_combout\)) # (!\led_machine|WideOr2~1_combout\ & ((\led_machine|WideOr1~1_combout\ & ((\RAM|array_reg\(20)))) # (!\led_machine|WideOr1~1_combout\ & (\RAM|array_reg\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(52),
	datad => \RAM|array_reg\(20),
	combout => \RAM|Mux0~31_combout\);

-- Location: LCCOMB_X23_Y7_N24
\RAM|Mux0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~32_combout\ = (\RAM|Mux0~31_combout\ & (((\RAM|array_reg\(4)) # (!\led_machine|WideOr2~1_combout\)))) # (!\RAM|Mux0~31_combout\ & (\RAM|array_reg\(36) & ((\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(36),
	datab => \RAM|array_reg\(4),
	datac => \RAM|Mux0~31_combout\,
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~32_combout\);

-- Location: LCCOMB_X24_Y8_N10
\RAM|array_reg[24]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[24]~60_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((\RAM|array_reg\(24) & !\RAM|Decoder0~15_combout\)))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[88]~59_combout\,
	datab => \RAM|Decoder0~1_combout\,
	datac => \RAM|array_reg\(24),
	datad => \RAM|Decoder0~15_combout\,
	combout => \RAM|array_reg[24]~60_combout\);

-- Location: FF_X24_Y8_N11
\RAM|array_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[24]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(24));

-- Location: LCCOMB_X23_Y7_N26
\RAM|array_reg[8]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[8]~63_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(8))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|Decoder0~4_combout\,
	datac => \RAM|array_reg\(8),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[8]~63_combout\);

-- Location: FF_X23_Y7_N27
\RAM|array_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[8]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(8));

-- Location: LCCOMB_X22_Y8_N12
\RAM|array_reg[56]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[56]~62_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(56))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~3_combout\,
	datab => \RAM|Decoder0~15_combout\,
	datac => \RAM|array_reg\(56),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[56]~62_combout\);

-- Location: FF_X22_Y8_N13
\RAM|array_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[56]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(56));

-- Location: LCCOMB_X22_Y8_N30
\RAM|array_reg[40]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[40]~61_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(40))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~2_combout\,
	datab => \RAM|Decoder0~15_combout\,
	datac => \RAM|array_reg\(40),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[40]~61_combout\);

-- Location: FF_X22_Y8_N31
\RAM|array_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[40]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(40));

-- Location: LCCOMB_X26_Y7_N0
\RAM|Mux0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~33_combout\ = (\led_machine|WideOr1~1_combout\ & (((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & ((\led_machine|WideOr2~1_combout\ & ((\RAM|array_reg\(40)))) # (!\led_machine|WideOr2~1_combout\ & 
-- (\RAM|array_reg\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(56),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \led_machine|WideOr2~1_combout\,
	datad => \RAM|array_reg\(40),
	combout => \RAM|Mux0~33_combout\);

-- Location: LCCOMB_X26_Y7_N10
\RAM|Mux0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~34_combout\ = (\led_machine|WideOr1~1_combout\ & ((\RAM|Mux0~33_combout\ & ((\RAM|array_reg\(8)))) # (!\RAM|Mux0~33_combout\ & (\RAM|array_reg\(24))))) # (!\led_machine|WideOr1~1_combout\ & (((\RAM|Mux0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(24),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(8),
	datad => \RAM|Mux0~33_combout\,
	combout => \RAM|Mux0~34_combout\);

-- Location: LCCOMB_X23_Y8_N28
\RAM|array_reg[12]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[12]~67_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(12))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~4_combout\,
	datac => \RAM|array_reg\(12),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[12]~67_combout\);

-- Location: FF_X23_Y8_N29
\RAM|array_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[12]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(12));

-- Location: LCCOMB_X23_Y8_N30
\RAM|array_reg[44]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[44]~64_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(44))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~2_combout\,
	datab => \RAM|Decoder0~14_combout\,
	datac => \RAM|array_reg\(44),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[44]~64_combout\);

-- Location: FF_X23_Y8_N31
\RAM|array_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[44]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(44));

-- Location: LCCOMB_X23_Y8_N14
\RAM|array_reg[60]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[60]~66_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(60))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~3_combout\,
	datac => \RAM|array_reg\(60),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[60]~66_combout\);

-- Location: FF_X23_Y8_N15
\RAM|array_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[60]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(60));

-- Location: LCCOMB_X23_Y8_N4
\RAM|array_reg[28]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[28]~65_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(28))))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~1_combout\,
	datac => \RAM|array_reg\(28),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[28]~65_combout\);

-- Location: FF_X23_Y8_N5
\RAM|array_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[28]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(28));

-- Location: LCCOMB_X23_Y7_N28
\RAM|Mux0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~35_combout\ = (\led_machine|WideOr1~1_combout\ & (((\RAM|array_reg\(28)) # (\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & (\RAM|array_reg\(60) & ((!\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~1_combout\,
	datab => \RAM|array_reg\(60),
	datac => \RAM|array_reg\(28),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~35_combout\);

-- Location: LCCOMB_X23_Y7_N6
\RAM|Mux0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~36_combout\ = (\led_machine|WideOr2~1_combout\ & ((\RAM|Mux0~35_combout\ & (\RAM|array_reg\(12))) # (!\RAM|Mux0~35_combout\ & ((\RAM|array_reg\(44)))))) # (!\led_machine|WideOr2~1_combout\ & (((\RAM|Mux0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \RAM|array_reg\(12),
	datac => \RAM|array_reg\(44),
	datad => \RAM|Mux0~35_combout\,
	combout => \RAM|Mux0~36_combout\);

-- Location: LCCOMB_X23_Y7_N0
\RAM|Mux0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~37_combout\ = (\led_machine|WideOr4~10_combout\ & ((\led_machine|WideOr3~12_combout\) # ((\RAM|Mux0~34_combout\)))) # (!\led_machine|WideOr4~10_combout\ & (!\led_machine|WideOr3~12_combout\ & ((\RAM|Mux0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~10_combout\,
	datab => \led_machine|WideOr3~12_combout\,
	datac => \RAM|Mux0~34_combout\,
	datad => \RAM|Mux0~36_combout\,
	combout => \RAM|Mux0~37_combout\);

-- Location: LCCOMB_X23_Y7_N30
\RAM|Mux0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~40_combout\ = (\led_machine|WideOr3~12_combout\ & ((\RAM|Mux0~37_combout\ & (\RAM|Mux0~39_combout\)) # (!\RAM|Mux0~37_combout\ & ((\RAM|Mux0~32_combout\))))) # (!\led_machine|WideOr3~12_combout\ & (((\RAM|Mux0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~39_combout\,
	datab => \RAM|Mux0~32_combout\,
	datac => \led_machine|WideOr3~12_combout\,
	datad => \RAM|Mux0~37_combout\,
	combout => \RAM|Mux0~40_combout\);

-- Location: LCCOMB_X24_Y9_N8
\RAM|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~5_combout\ = (\Vecto_to_RAM|current_address\(2) & (\Vecto_to_RAM|current_address\(0) & (!\Vecto_to_RAM|current_address\(7) & !\Vecto_to_RAM|current_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(2),
	datab => \Vecto_to_RAM|current_address\(0),
	datac => \Vecto_to_RAM|current_address\(7),
	datad => \Vecto_to_RAM|current_address\(1),
	combout => \RAM|Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y9_N10
\RAM|array_reg[85]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[85]~5_combout\ = (\RAM|Decoder0~5_combout\ & ((\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~2_combout\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \RAM|Decoder0~5_combout\,
	datac => \Vecto_to_RAM|Mux0~2_combout\,
	datad => \Vecto_to_RAM|Mux0~6_combout\,
	combout => \RAM|array_reg[85]~5_combout\);

-- Location: LCCOMB_X24_Y10_N6
\RAM|array_reg[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[5]~9_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(5))))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~9_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(5),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[5]~9_combout\);

-- Location: FF_X24_Y10_N7
\RAM|array_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(5));

-- Location: LCCOMB_X24_Y9_N0
\RAM|array_reg[21]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[21]~7_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(21))))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~5_combout\,
	datab => \RAM|Decoder0~7_combout\,
	datac => \RAM|array_reg\(21),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[21]~7_combout\);

-- Location: FF_X24_Y9_N1
\RAM|array_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[21]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(21));

-- Location: LCCOMB_X24_Y10_N22
\RAM|array_reg[53]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[53]~8_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(53))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(53),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[53]~8_combout\);

-- Location: FF_X24_Y10_N23
\RAM|array_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[53]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(53));

-- Location: LCCOMB_X24_Y10_N28
\RAM|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~2_combout\ = (\led_machine|WideOr1~1_combout\ & ((\RAM|array_reg\(21)) # ((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & (((\RAM|array_reg\(53) & !\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~1_combout\,
	datab => \RAM|array_reg\(21),
	datac => \RAM|array_reg\(53),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y10_N4
\RAM|array_reg[37]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[37]~6_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(37))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~6_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(37),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[37]~6_combout\);

-- Location: FF_X24_Y10_N5
\RAM|array_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[37]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(37));

-- Location: LCCOMB_X24_Y10_N16
\RAM|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~3_combout\ = (\RAM|Mux0~2_combout\ & ((\RAM|array_reg\(5)) # ((!\led_machine|WideOr2~1_combout\)))) # (!\RAM|Mux0~2_combout\ & (((\RAM|array_reg\(37) & \led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(5),
	datab => \RAM|Mux0~2_combout\,
	datac => \RAM|array_reg\(37),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y8_N24
\RAM|array_reg[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[13]~13_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(13))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~4_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(13),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[13]~13_combout\);

-- Location: FF_X24_Y8_N25
\RAM|array_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(13));

-- Location: LCCOMB_X24_Y9_N14
\RAM|array_reg[45]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[45]~10_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(45))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~2_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(45),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[45]~10_combout\);

-- Location: FF_X24_Y9_N15
\RAM|array_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[45]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(45));

-- Location: LCCOMB_X24_Y10_N10
\RAM|array_reg[29]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[29]~11_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(29))))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~1_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(29),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[29]~11_combout\);

-- Location: FF_X24_Y10_N11
\RAM|array_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(29));

-- Location: LCCOMB_X24_Y10_N24
\RAM|array_reg[61]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[61]~12_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(61))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~3_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(61),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[61]~12_combout\);

-- Location: FF_X24_Y10_N25
\RAM|array_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[61]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(61));

-- Location: LCCOMB_X24_Y10_N18
\RAM|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~4_combout\ = (\led_machine|WideOr1~1_combout\ & ((\RAM|array_reg\(29)) # ((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & (((\RAM|array_reg\(61) & !\led_machine|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(29),
	datab => \RAM|array_reg\(61),
	datac => \led_machine|WideOr1~1_combout\,
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y10_N20
\RAM|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~5_combout\ = (\led_machine|WideOr2~1_combout\ & ((\RAM|Mux0~4_combout\ & (\RAM|array_reg\(13))) # (!\RAM|Mux0~4_combout\ & ((\RAM|array_reg\(45)))))) # (!\led_machine|WideOr2~1_combout\ & (((\RAM|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \RAM|array_reg\(13),
	datac => \RAM|array_reg\(45),
	datad => \RAM|Mux0~4_combout\,
	combout => \RAM|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y10_N30
\RAM|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~6_combout\ = (\led_machine|WideOr3~12_combout\ & ((\RAM|Mux0~3_combout\) # ((\led_machine|WideOr4~10_combout\)))) # (!\led_machine|WideOr3~12_combout\ & (((!\led_machine|WideOr4~10_combout\ & \RAM|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \RAM|Mux0~3_combout\,
	datac => \led_machine|WideOr4~10_combout\,
	datad => \RAM|Mux0~5_combout\,
	combout => \RAM|Mux0~6_combout\);

-- Location: LCCOMB_X24_Y9_N4
\RAM|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~0_combout\ = (!\Vecto_to_RAM|current_address\(2) & (\Vecto_to_RAM|current_address\(0) & (!\Vecto_to_RAM|current_address\(7) & !\Vecto_to_RAM|current_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(2),
	datab => \Vecto_to_RAM|current_address\(0),
	datac => \Vecto_to_RAM|current_address\(7),
	datad => \Vecto_to_RAM|current_address\(1),
	combout => \RAM|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y9_N30
\RAM|array_reg[89]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[89]~0_combout\ = (\RAM|Decoder0~0_combout\ & ((\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|Mux0~2_combout\)) # (!\Vecto_to_RAM|current_address\(4) & ((\Vecto_to_RAM|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \Vecto_to_RAM|Mux0~2_combout\,
	datac => \Vecto_to_RAM|Mux0~6_combout\,
	datad => \RAM|Decoder0~0_combout\,
	combout => \RAM|array_reg[89]~0_combout\);

-- Location: LCCOMB_X28_Y9_N4
\RAM|array_reg[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[1]~17_combout\ = (\RAM|Decoder0~9_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(1))))) # (!\RAM|Decoder0~9_combout\ & (((\RAM|array_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~9_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(1),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[1]~17_combout\);

-- Location: FF_X28_Y9_N5
\RAM|array_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(1));

-- Location: LCCOMB_X28_Y9_N18
\RAM|array_reg[49]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[49]~16_combout\ = (\RAM|Decoder0~8_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(49))))) # (!\RAM|Decoder0~8_combout\ & (((\RAM|array_reg\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(49),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[49]~16_combout\);

-- Location: FF_X28_Y9_N19
\RAM|array_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[49]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(49));

-- Location: LCCOMB_X28_Y9_N28
\RAM|array_reg[33]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[33]~15_combout\ = (\RAM|Decoder0~6_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(33))))) # (!\RAM|Decoder0~6_combout\ & (((\RAM|array_reg\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[89]~0_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(33),
	datad => \RAM|Decoder0~6_combout\,
	combout => \RAM|array_reg[33]~15_combout\);

-- Location: FF_X28_Y9_N29
\RAM|array_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[33]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(33));

-- Location: LCCOMB_X27_Y10_N20
\RAM|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~7_combout\ = (\led_machine|WideOr2~1_combout\ & (((\RAM|array_reg\(33)) # (\led_machine|WideOr1~1_combout\)))) # (!\led_machine|WideOr2~1_combout\ & (\RAM|array_reg\(49) & ((!\led_machine|WideOr1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr2~1_combout\,
	datab => \RAM|array_reg\(49),
	datac => \RAM|array_reg\(33),
	datad => \led_machine|WideOr1~1_combout\,
	combout => \RAM|Mux0~7_combout\);

-- Location: LCCOMB_X28_Y9_N10
\RAM|array_reg[17]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[17]~14_combout\ = (\RAM|Decoder0~7_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(17))))) # (!\RAM|Decoder0~7_combout\ & (((\RAM|array_reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[89]~0_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(17),
	datad => \RAM|Decoder0~7_combout\,
	combout => \RAM|array_reg[17]~14_combout\);

-- Location: FF_X28_Y9_N11
\RAM|array_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(17));

-- Location: LCCOMB_X27_Y10_N18
\RAM|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~8_combout\ = (\RAM|Mux0~7_combout\ & ((\RAM|array_reg\(1)) # ((!\led_machine|WideOr1~1_combout\)))) # (!\RAM|Mux0~7_combout\ & (((\RAM|array_reg\(17) & \led_machine|WideOr1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(1),
	datab => \RAM|Mux0~7_combout\,
	datac => \RAM|array_reg\(17),
	datad => \led_machine|WideOr1~1_combout\,
	combout => \RAM|Mux0~8_combout\);

-- Location: LCCOMB_X28_Y9_N6
\RAM|array_reg[41]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[41]~2_combout\ = (\RAM|Decoder0~2_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(41))))) # (!\RAM|Decoder0~2_combout\ & (((\RAM|array_reg\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~2_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(41),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[41]~2_combout\);

-- Location: FF_X28_Y9_N7
\RAM|array_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[41]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(41));

-- Location: LCCOMB_X28_Y9_N8
\RAM|array_reg[57]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[57]~3_combout\ = (\RAM|Decoder0~3_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(57))))) # (!\RAM|Decoder0~3_combout\ & (((\RAM|array_reg\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~3_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(57),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[57]~3_combout\);

-- Location: FF_X28_Y9_N9
\RAM|array_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[57]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(57));

-- Location: LCCOMB_X27_Y10_N12
\RAM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~0_combout\ = (\led_machine|WideOr1~1_combout\ & (((\led_machine|WideOr2~1_combout\)))) # (!\led_machine|WideOr1~1_combout\ & ((\led_machine|WideOr2~1_combout\ & (\RAM|array_reg\(41))) # (!\led_machine|WideOr2~1_combout\ & 
-- ((\RAM|array_reg\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(41),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(57),
	datad => \led_machine|WideOr2~1_combout\,
	combout => \RAM|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y9_N0
\RAM|array_reg[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[25]~1_combout\ = (\RAM|Decoder0~1_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(25))))) # (!\RAM|Decoder0~1_combout\ & (((\RAM|array_reg\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~1_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(25),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[25]~1_combout\);

-- Location: FF_X28_Y9_N1
\RAM|array_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(25));

-- Location: LCCOMB_X29_Y9_N0
\RAM|array_reg[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[9]~4_combout\ = (\RAM|Decoder0~4_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(9))))) # (!\RAM|Decoder0~4_combout\ & (((\RAM|array_reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~4_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(9),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[9]~4_combout\);

-- Location: FF_X29_Y9_N1
\RAM|array_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(9));

-- Location: LCCOMB_X27_Y10_N2
\RAM|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~1_combout\ = (\RAM|Mux0~0_combout\ & (((\RAM|array_reg\(9))) # (!\led_machine|WideOr1~1_combout\))) # (!\RAM|Mux0~0_combout\ & (\led_machine|WideOr1~1_combout\ & (\RAM|array_reg\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~0_combout\,
	datab => \led_machine|WideOr1~1_combout\,
	datac => \RAM|array_reg\(25),
	datad => \RAM|array_reg\(9),
	combout => \RAM|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y10_N24
\RAM|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~9_combout\ = (\RAM|Mux0~6_combout\ & ((\RAM|Mux0~8_combout\) # ((!\led_machine|WideOr4~10_combout\)))) # (!\RAM|Mux0~6_combout\ & (((\led_machine|WideOr4~10_combout\ & \RAM|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~6_combout\,
	datab => \RAM|Mux0~8_combout\,
	datac => \led_machine|WideOr4~10_combout\,
	datad => \RAM|Mux0~1_combout\,
	combout => \RAM|Mux0~9_combout\);

-- Location: LCCOMB_X27_Y10_N8
\RAM|Mux0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~41_combout\ = (\RAM|Mux0~30_combout\ & ((\RAM|Mux0~40_combout\) # ((!\led_machine|WideOr5~8_combout\)))) # (!\RAM|Mux0~30_combout\ & (((\led_machine|WideOr5~8_combout\ & \RAM|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~30_combout\,
	datab => \RAM|Mux0~40_combout\,
	datac => \led_machine|WideOr5~8_combout\,
	datad => \RAM|Mux0~9_combout\,
	combout => \RAM|Mux0~41_combout\);

-- Location: LCCOMB_X24_Y8_N20
\RAM|Decoder0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~20_combout\ = (!\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address\(5) & (\Vecto_to_RAM|current_address\(6) & \Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~20_combout\);

-- Location: LCCOMB_X23_Y10_N26
\RAM|array_reg[119]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[119]~106_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(119))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~20_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(119),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[119]~106_combout\);

-- Location: FF_X23_Y10_N27
\RAM|array_reg[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[119]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(119));

-- Location: LCCOMB_X26_Y8_N24
\RAM|array_reg[117]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[117]~105_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(117))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~20_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(117),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[117]~105_combout\);

-- Location: FF_X26_Y8_N25
\RAM|array_reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[117]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(117));

-- Location: LCCOMB_X26_Y8_N26
\RAM|Mux0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~62_combout\ = (\led_machine|WideOr6~6_combout\ & (((\led_machine|WideOr5~8_combout\)))) # (!\led_machine|WideOr6~6_combout\ & ((\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(117)))) # (!\led_machine|WideOr5~8_combout\ & 
-- (\RAM|array_reg\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(119),
	datab => \led_machine|WideOr6~6_combout\,
	datac => \led_machine|WideOr5~8_combout\,
	datad => \RAM|array_reg\(117),
	combout => \RAM|Mux0~62_combout\);

-- Location: LCCOMB_X27_Y9_N26
\RAM|array_reg[118]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[118]~104_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(118))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(118)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~20_combout\,
	datac => \RAM|array_reg\(118),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[118]~104_combout\);

-- Location: FF_X27_Y9_N27
\RAM|array_reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[118]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(118));

-- Location: LCCOMB_X23_Y8_N22
\RAM|array_reg[116]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[116]~107_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(116))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~20_combout\,
	datab => \RAM|Decoder0~14_combout\,
	datac => \RAM|array_reg\(116),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[116]~107_combout\);

-- Location: FF_X23_Y8_N23
\RAM|array_reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[116]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(116));

-- Location: LCCOMB_X26_Y8_N12
\RAM|Mux0~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~63_combout\ = (\RAM|Mux0~62_combout\ & (((\RAM|array_reg\(116))) # (!\led_machine|WideOr6~6_combout\))) # (!\RAM|Mux0~62_combout\ & (\led_machine|WideOr6~6_combout\ & (\RAM|array_reg\(118))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~62_combout\,
	datab => \led_machine|WideOr6~6_combout\,
	datac => \RAM|array_reg\(118),
	datad => \RAM|array_reg\(116),
	combout => \RAM|Mux0~63_combout\);

-- Location: LCCOMB_X24_Y7_N30
\RAM|array_reg[115]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[115]~118_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(115))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(115)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~20_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(115),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[115]~118_combout\);

-- Location: FF_X24_Y7_N31
\RAM|array_reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[115]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(115));

-- Location: LCCOMB_X26_Y9_N16
\RAM|array_reg[114]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[114]~117_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(114))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(114)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~20_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(114),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[114]~117_combout\);

-- Location: FF_X26_Y9_N17
\RAM|array_reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[114]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(114));

-- Location: LCCOMB_X26_Y8_N22
\RAM|Mux0~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~69_combout\ = (\led_machine|WideOr6~6_combout\ & (((\led_machine|WideOr5~8_combout\) # (\RAM|array_reg\(114))))) # (!\led_machine|WideOr6~6_combout\ & (\RAM|array_reg\(115) & (!\led_machine|WideOr5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(115),
	datab => \led_machine|WideOr6~6_combout\,
	datac => \led_machine|WideOr5~8_combout\,
	datad => \RAM|array_reg\(114),
	combout => \RAM|Mux0~69_combout\);

-- Location: LCCOMB_X26_Y8_N8
\RAM|array_reg[112]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[112]~119_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(112))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(112)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~20_combout\,
	datab => \RAM|Decoder0~15_combout\,
	datac => \RAM|array_reg\(112),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[112]~119_combout\);

-- Location: FF_X26_Y8_N9
\RAM|array_reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[112]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(112));

-- Location: LCCOMB_X28_Y9_N22
\RAM|array_reg[113]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[113]~116_combout\ = (\RAM|Decoder0~20_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(113))))) # (!\RAM|Decoder0~20_combout\ & (((\RAM|array_reg\(113)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~20_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(113),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[113]~116_combout\);

-- Location: FF_X28_Y9_N23
\RAM|array_reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[113]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(113));

-- Location: LCCOMB_X26_Y8_N18
\RAM|Mux0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~70_combout\ = (\RAM|Mux0~69_combout\ & ((\RAM|array_reg\(112)) # ((!\led_machine|WideOr5~8_combout\)))) # (!\RAM|Mux0~69_combout\ & (((\led_machine|WideOr5~8_combout\ & \RAM|array_reg\(113)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~69_combout\,
	datab => \RAM|array_reg\(112),
	datac => \led_machine|WideOr5~8_combout\,
	datad => \RAM|array_reg\(113),
	combout => \RAM|Mux0~70_combout\);

-- Location: LCCOMB_X24_Y8_N30
\RAM|Decoder0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~21_combout\ = (\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address\(5) & (\Vecto_to_RAM|current_address\(6) & \Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(3),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~21_combout\);

-- Location: LCCOMB_X28_Y9_N16
\RAM|array_reg[126]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[126]~112_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(126))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(126)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~21_combout\,
	datac => \RAM|array_reg\(126),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[126]~112_combout\);

-- Location: FF_X28_Y9_N17
\RAM|array_reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[126]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(126));

-- Location: LCCOMB_X23_Y8_N16
\RAM|array_reg[124]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[124]~115_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(124))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(124)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~21_combout\,
	datac => \RAM|array_reg\(124),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[124]~115_combout\);

-- Location: FF_X23_Y8_N17
\RAM|array_reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[124]~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(124));

-- Location: LCCOMB_X24_Y8_N14
\RAM|array_reg[125]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[125]~113_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(125))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(125)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~5_combout\,
	datab => \RAM|Decoder0~21_combout\,
	datac => \RAM|array_reg\(125),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[125]~113_combout\);

-- Location: FF_X24_Y8_N15
\RAM|array_reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[125]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(125));

-- Location: LCCOMB_X23_Y10_N4
\RAM|array_reg[127]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[127]~114_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(127))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(127)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~21_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(127),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[127]~114_combout\);

-- Location: FF_X23_Y10_N5
\RAM|array_reg[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[127]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(127));

-- Location: LCCOMB_X26_Y8_N28
\RAM|Mux0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~66_combout\ = (\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(125)) # ((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & (((\RAM|array_reg\(127) & !\led_machine|WideOr6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr5~8_combout\,
	datab => \RAM|array_reg\(125),
	datac => \RAM|array_reg\(127),
	datad => \led_machine|WideOr6~6_combout\,
	combout => \RAM|Mux0~66_combout\);

-- Location: LCCOMB_X26_Y8_N10
\RAM|Mux0~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~67_combout\ = (\led_machine|WideOr6~6_combout\ & ((\RAM|Mux0~66_combout\ & ((\RAM|array_reg\(124)))) # (!\RAM|Mux0~66_combout\ & (\RAM|array_reg\(126))))) # (!\led_machine|WideOr6~6_combout\ & (((\RAM|Mux0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(126),
	datab => \led_machine|WideOr6~6_combout\,
	datac => \RAM|array_reg\(124),
	datad => \RAM|Mux0~66_combout\,
	combout => \RAM|Mux0~67_combout\);

-- Location: LCCOMB_X22_Y9_N30
\RAM|array_reg[120]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[120]~111_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(120))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(120)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|array_reg[88]~59_combout\,
	datac => \RAM|array_reg\(120),
	datad => \RAM|Decoder0~21_combout\,
	combout => \RAM|array_reg[120]~111_combout\);

-- Location: FF_X22_Y9_N31
\RAM|array_reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[120]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(120));

-- Location: LCCOMB_X28_Y9_N2
\RAM|array_reg[121]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[121]~108_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(121))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(121)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~0_combout\,
	datab => \RAM|Decoder0~21_combout\,
	datac => \RAM|array_reg\(121),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[121]~108_combout\);

-- Location: FF_X28_Y9_N3
\RAM|array_reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[121]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(121));

-- Location: LCCOMB_X26_Y9_N22
\RAM|array_reg[122]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[122]~109_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(122))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~11_combout\,
	datab => \RAM|Decoder0~21_combout\,
	datac => \RAM|array_reg\(122),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[122]~109_combout\);

-- Location: FF_X26_Y9_N23
\RAM|array_reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[122]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(122));

-- Location: LCCOMB_X24_Y7_N16
\RAM|array_reg[123]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[123]~110_combout\ = (\RAM|Decoder0~21_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(123))))) # (!\RAM|Decoder0~21_combout\ & (((\RAM|array_reg\(123)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~21_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(123),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[123]~110_combout\);

-- Location: FF_X24_Y7_N17
\RAM|array_reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[123]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(123));

-- Location: LCCOMB_X22_Y9_N28
\RAM|Mux0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~64_combout\ = (\led_machine|WideOr5~8_combout\ & (((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & ((\led_machine|WideOr6~6_combout\ & (\RAM|array_reg\(122))) # (!\led_machine|WideOr6~6_combout\ & 
-- ((\RAM|array_reg\(123))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(122),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \RAM|array_reg\(123),
	datad => \led_machine|WideOr6~6_combout\,
	combout => \RAM|Mux0~64_combout\);

-- Location: LCCOMB_X26_Y8_N14
\RAM|Mux0~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~65_combout\ = (\led_machine|WideOr5~8_combout\ & ((\RAM|Mux0~64_combout\ & (\RAM|array_reg\(120))) # (!\RAM|Mux0~64_combout\ & ((\RAM|array_reg\(121)))))) # (!\led_machine|WideOr5~8_combout\ & (((\RAM|Mux0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr5~8_combout\,
	datab => \RAM|array_reg\(120),
	datac => \RAM|array_reg\(121),
	datad => \RAM|Mux0~64_combout\,
	combout => \RAM|Mux0~65_combout\);

-- Location: LCCOMB_X26_Y8_N4
\RAM|Mux0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~68_combout\ = (\led_machine|WideOr4~10_combout\ & (((\RAM|Mux0~65_combout\) # (\led_machine|WideOr3~12_combout\)))) # (!\led_machine|WideOr4~10_combout\ & (\RAM|Mux0~67_combout\ & ((!\led_machine|WideOr3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~67_combout\,
	datab => \led_machine|WideOr4~10_combout\,
	datac => \RAM|Mux0~65_combout\,
	datad => \led_machine|WideOr3~12_combout\,
	combout => \RAM|Mux0~68_combout\);

-- Location: LCCOMB_X26_Y8_N0
\RAM|Mux0~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~71_combout\ = (\RAM|Mux0~68_combout\ & (((\RAM|Mux0~70_combout\) # (!\led_machine|WideOr3~12_combout\)))) # (!\RAM|Mux0~68_combout\ & (\RAM|Mux0~63_combout\ & ((\led_machine|WideOr3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~63_combout\,
	datab => \RAM|Mux0~70_combout\,
	datac => \RAM|Mux0~68_combout\,
	datad => \led_machine|WideOr3~12_combout\,
	combout => \RAM|Mux0~71_combout\);

-- Location: LCCOMB_X22_Y9_N16
\RAM|Decoder0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~19_combout\ = (!\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|current_address\(5) & (\Vecto_to_RAM|current_address\(6) & !\Vecto_to_RAM|current_address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(3),
	combout => \RAM|Decoder0~19_combout\);

-- Location: LCCOMB_X27_Y9_N8
\RAM|array_reg[102]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[102]~92_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(102))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~19_combout\,
	datac => \RAM|array_reg\(102),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[102]~92_combout\);

-- Location: FF_X27_Y9_N9
\RAM|array_reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[102]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(102));

-- Location: LCCOMB_X22_Y8_N14
\RAM|array_reg[101]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[101]~93_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(101))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~19_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(101),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[101]~93_combout\);

-- Location: FF_X22_Y8_N15
\RAM|array_reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[101]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(101));

-- Location: LCCOMB_X23_Y10_N22
\RAM|array_reg[103]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[103]~94_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(103))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(103)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~19_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(103),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[103]~94_combout\);

-- Location: FF_X23_Y10_N23
\RAM|array_reg[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[103]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(103));

-- Location: LCCOMB_X22_Y9_N20
\RAM|Mux0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~54_combout\ = (\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(101)) # ((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & (((\RAM|array_reg\(103) & !\led_machine|WideOr6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(101),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \RAM|array_reg\(103),
	datad => \led_machine|WideOr6~6_combout\,
	combout => \RAM|Mux0~54_combout\);

-- Location: LCCOMB_X23_Y8_N2
\RAM|array_reg[100]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[100]~95_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(100))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~19_combout\,
	datac => \RAM|array_reg\(100),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[100]~95_combout\);

-- Location: FF_X23_Y8_N3
\RAM|array_reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[100]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(100));

-- Location: LCCOMB_X22_Y9_N26
\RAM|Mux0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~55_combout\ = (\RAM|Mux0~54_combout\ & (((\RAM|array_reg\(100)) # (!\led_machine|WideOr6~6_combout\)))) # (!\RAM|Mux0~54_combout\ & (\RAM|array_reg\(102) & ((\led_machine|WideOr6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(102),
	datab => \RAM|Mux0~54_combout\,
	datac => \RAM|array_reg\(100),
	datad => \led_machine|WideOr6~6_combout\,
	combout => \RAM|Mux0~55_combout\);

-- Location: LCCOMB_X24_Y9_N22
\RAM|Decoder0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~18_combout\ = (!\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|current_address\(6) & (\Vecto_to_RAM|current_address\(3) & \Vecto_to_RAM|current_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \Vecto_to_RAM|current_address\(6),
	datac => \Vecto_to_RAM|current_address\(3),
	datad => \Vecto_to_RAM|current_address\(5),
	combout => \RAM|Decoder0~18_combout\);

-- Location: LCCOMB_X24_Y9_N30
\RAM|array_reg[110]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[110]~96_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(110))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~18_combout\,
	datac => \RAM|array_reg\(110),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[110]~96_combout\);

-- Location: FF_X24_Y9_N31
\RAM|array_reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[110]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(110));

-- Location: LCCOMB_X23_Y8_N0
\RAM|array_reg[108]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[108]~99_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(108))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(108)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~18_combout\,
	datab => \RAM|Decoder0~14_combout\,
	datac => \RAM|array_reg\(108),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[108]~99_combout\);

-- Location: FF_X23_Y8_N1
\RAM|array_reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[108]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(108));

-- Location: LCCOMB_X22_Y8_N8
\RAM|array_reg[109]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[109]~97_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(109))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(109)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~18_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(109),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[109]~97_combout\);

-- Location: FF_X22_Y8_N9
\RAM|array_reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[109]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(109));

-- Location: LCCOMB_X23_Y10_N24
\RAM|array_reg[111]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[111]~98_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(111))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(111)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~18_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(111),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[111]~98_combout\);

-- Location: FF_X23_Y10_N25
\RAM|array_reg[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[111]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(111));

-- Location: LCCOMB_X22_Y9_N12
\RAM|Mux0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~56_combout\ = (\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(109)) # ((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & (((\RAM|array_reg\(111) & !\led_machine|WideOr6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(109),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \RAM|array_reg\(111),
	datad => \led_machine|WideOr6~6_combout\,
	combout => \RAM|Mux0~56_combout\);

-- Location: LCCOMB_X22_Y9_N18
\RAM|Mux0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~57_combout\ = (\led_machine|WideOr6~6_combout\ & ((\RAM|Mux0~56_combout\ & ((\RAM|array_reg\(108)))) # (!\RAM|Mux0~56_combout\ & (\RAM|array_reg\(110))))) # (!\led_machine|WideOr6~6_combout\ & (((\RAM|Mux0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(110),
	datab => \led_machine|WideOr6~6_combout\,
	datac => \RAM|array_reg\(108),
	datad => \RAM|Mux0~56_combout\,
	combout => \RAM|Mux0~57_combout\);

-- Location: LCCOMB_X22_Y9_N24
\RAM|Mux0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~58_combout\ = (\led_machine|WideOr4~10_combout\ & (\led_machine|WideOr3~12_combout\)) # (!\led_machine|WideOr4~10_combout\ & ((\led_machine|WideOr3~12_combout\ & (\RAM|Mux0~55_combout\)) # (!\led_machine|WideOr3~12_combout\ & 
-- ((\RAM|Mux0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~10_combout\,
	datab => \led_machine|WideOr3~12_combout\,
	datac => \RAM|Mux0~55_combout\,
	datad => \RAM|Mux0~57_combout\,
	combout => \RAM|Mux0~58_combout\);

-- Location: LCCOMB_X24_Y7_N10
\RAM|array_reg[99]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[99]~102_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(99))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(99)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~19_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(99),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[99]~102_combout\);

-- Location: FF_X24_Y7_N11
\RAM|array_reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[99]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(99));

-- Location: LCCOMB_X26_Y10_N24
\RAM|array_reg[98]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[98]~101_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(98))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~19_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(98),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[98]~101_combout\);

-- Location: FF_X26_Y10_N25
\RAM|array_reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[98]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(98));

-- Location: LCCOMB_X26_Y10_N26
\RAM|Mux0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~59_combout\ = (\led_machine|WideOr5~8_combout\ & (((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & ((\led_machine|WideOr6~6_combout\ & ((\RAM|array_reg\(98)))) # (!\led_machine|WideOr6~6_combout\ & 
-- (\RAM|array_reg\(99)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(99),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \led_machine|WideOr6~6_combout\,
	datad => \RAM|array_reg\(98),
	combout => \RAM|Mux0~59_combout\);

-- Location: LCCOMB_X22_Y9_N22
\RAM|array_reg[96]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[96]~103_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(96))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(96)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|array_reg[88]~59_combout\,
	datac => \RAM|array_reg\(96),
	datad => \RAM|Decoder0~19_combout\,
	combout => \RAM|array_reg[96]~103_combout\);

-- Location: FF_X22_Y9_N23
\RAM|array_reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[96]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(96));

-- Location: LCCOMB_X28_Y9_N20
\RAM|array_reg[97]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[97]~100_combout\ = (\RAM|Decoder0~19_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(97))))) # (!\RAM|Decoder0~19_combout\ & (((\RAM|array_reg\(97)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~19_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(97),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[97]~100_combout\);

-- Location: FF_X28_Y9_N21
\RAM|array_reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[97]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(97));

-- Location: LCCOMB_X22_Y9_N4
\RAM|Mux0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~60_combout\ = (\RAM|Mux0~59_combout\ & (((\RAM|array_reg\(96))) # (!\led_machine|WideOr5~8_combout\))) # (!\RAM|Mux0~59_combout\ & (\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(97)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~59_combout\,
	datab => \led_machine|WideOr5~8_combout\,
	datac => \RAM|array_reg\(96),
	datad => \RAM|array_reg\(97),
	combout => \RAM|Mux0~60_combout\);

-- Location: LCCOMB_X28_Y9_N14
\RAM|array_reg[105]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[105]~88_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(105))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(105)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~18_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(105),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[105]~88_combout\);

-- Location: FF_X28_Y9_N15
\RAM|array_reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[105]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(105));

-- Location: LCCOMB_X26_Y9_N8
\RAM|array_reg[106]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[106]~89_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(106))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(106)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~18_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(106),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[106]~89_combout\);

-- Location: FF_X26_Y9_N9
\RAM|array_reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[106]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(106));

-- Location: LCCOMB_X24_Y7_N12
\RAM|array_reg[107]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[107]~90_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(107))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(107)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~18_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(107),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[107]~90_combout\);

-- Location: FF_X24_Y7_N13
\RAM|array_reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[107]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(107));

-- Location: LCCOMB_X22_Y9_N8
\RAM|Mux0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~52_combout\ = (\led_machine|WideOr5~8_combout\ & (((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & ((\led_machine|WideOr6~6_combout\ & (\RAM|array_reg\(106))) # (!\led_machine|WideOr6~6_combout\ & 
-- ((\RAM|array_reg\(107))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(106),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \RAM|array_reg\(107),
	datad => \led_machine|WideOr6~6_combout\,
	combout => \RAM|Mux0~52_combout\);

-- Location: LCCOMB_X24_Y9_N24
\RAM|array_reg[104]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[104]~91_combout\ = (\RAM|Decoder0~18_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(104))))) # (!\RAM|Decoder0~18_combout\ & (((\RAM|array_reg\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|Decoder0~18_combout\,
	datac => \RAM|array_reg\(104),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[104]~91_combout\);

-- Location: FF_X24_Y9_N25
\RAM|array_reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[104]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(104));

-- Location: LCCOMB_X22_Y9_N2
\RAM|Mux0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~53_combout\ = (\RAM|Mux0~52_combout\ & (((\RAM|array_reg\(104)) # (!\led_machine|WideOr5~8_combout\)))) # (!\RAM|Mux0~52_combout\ & (\RAM|array_reg\(105) & ((\led_machine|WideOr5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(105),
	datab => \RAM|Mux0~52_combout\,
	datac => \RAM|array_reg\(104),
	datad => \led_machine|WideOr5~8_combout\,
	combout => \RAM|Mux0~53_combout\);

-- Location: LCCOMB_X22_Y9_N10
\RAM|Mux0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~61_combout\ = (\led_machine|WideOr4~10_combout\ & ((\RAM|Mux0~58_combout\ & (\RAM|Mux0~60_combout\)) # (!\RAM|Mux0~58_combout\ & ((\RAM|Mux0~53_combout\))))) # (!\led_machine|WideOr4~10_combout\ & (\RAM|Mux0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~10_combout\,
	datab => \RAM|Mux0~58_combout\,
	datac => \RAM|Mux0~60_combout\,
	datad => \RAM|Mux0~53_combout\,
	combout => \RAM|Mux0~61_combout\);

-- Location: LCCOMB_X22_Y9_N0
\RAM|Mux0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~72_combout\ = (\led_machine|WideOr1~1_combout\ & (\led_machine|WideOr2~1_combout\)) # (!\led_machine|WideOr1~1_combout\ & ((\led_machine|WideOr2~1_combout\ & ((\RAM|Mux0~61_combout\))) # (!\led_machine|WideOr2~1_combout\ & 
-- (\RAM|Mux0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~1_combout\,
	datab => \led_machine|WideOr2~1_combout\,
	datac => \RAM|Mux0~71_combout\,
	datad => \RAM|Mux0~61_combout\,
	combout => \RAM|Mux0~72_combout\);

-- Location: LCCOMB_X24_Y9_N28
\RAM|Decoder0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~17_combout\ = (!\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(3) & (\Vecto_to_RAM|current_address\(4) & \Vecto_to_RAM|current_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(5),
	datab => \Vecto_to_RAM|current_address\(3),
	datac => \Vecto_to_RAM|current_address\(4),
	datad => \Vecto_to_RAM|current_address\(6),
	combout => \RAM|Decoder0~17_combout\);

-- Location: LCCOMB_X23_Y10_N6
\RAM|array_reg[87]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[87]~80_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(87))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~13_combout\,
	datab => \RAM|Decoder0~17_combout\,
	datac => \RAM|array_reg\(87),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[87]~80_combout\);

-- Location: FF_X23_Y10_N7
\RAM|array_reg[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[87]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(87));

-- Location: LCCOMB_X24_Y9_N6
\RAM|Decoder0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~16_combout\ = (!\Vecto_to_RAM|current_address\(5) & (\Vecto_to_RAM|current_address\(6) & (\Vecto_to_RAM|current_address\(3) & \Vecto_to_RAM|current_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(5),
	datab => \Vecto_to_RAM|current_address\(6),
	datac => \Vecto_to_RAM|current_address\(3),
	datad => \Vecto_to_RAM|current_address\(4),
	combout => \RAM|Decoder0~16_combout\);

-- Location: LCCOMB_X23_Y10_N16
\RAM|array_reg[95]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[95]~82_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(95))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(95)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~16_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(95),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[95]~82_combout\);

-- Location: FF_X23_Y10_N17
\RAM|array_reg[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[95]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(95));

-- Location: LCCOMB_X24_Y7_N20
\RAM|array_reg[91]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[91]~81_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(91))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(91)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg[91]~36_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(91),
	datad => \RAM|Decoder0~16_combout\,
	combout => \RAM|array_reg[91]~81_combout\);

-- Location: FF_X24_Y7_N21
\RAM|array_reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[91]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(91));

-- Location: LCCOMB_X24_Y11_N20
\RAM|Mux0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~46_combout\ = (\led_machine|WideOr3~12_combout\ & (((\led_machine|WideOr4~10_combout\)))) # (!\led_machine|WideOr3~12_combout\ & ((\led_machine|WideOr4~10_combout\ & ((\RAM|array_reg\(91)))) # (!\led_machine|WideOr4~10_combout\ & 
-- (\RAM|array_reg\(95)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \RAM|array_reg\(95),
	datac => \led_machine|WideOr4~10_combout\,
	datad => \RAM|array_reg\(91),
	combout => \RAM|Mux0~46_combout\);

-- Location: LCCOMB_X24_Y7_N26
\RAM|array_reg[83]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[83]~83_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(83))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(83)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~17_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(83),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[83]~83_combout\);

-- Location: FF_X24_Y7_N27
\RAM|array_reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[83]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(83));

-- Location: LCCOMB_X24_Y11_N10
\RAM|Mux0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~47_combout\ = (\RAM|Mux0~46_combout\ & (((\RAM|array_reg\(83)) # (!\led_machine|WideOr3~12_combout\)))) # (!\RAM|Mux0~46_combout\ & (\RAM|array_reg\(87) & ((\led_machine|WideOr3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(87),
	datab => \RAM|Mux0~46_combout\,
	datac => \RAM|array_reg\(83),
	datad => \led_machine|WideOr3~12_combout\,
	combout => \RAM|Mux0~47_combout\);

-- Location: LCCOMB_X22_Y8_N20
\RAM|array_reg[85]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[85]~76_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(85))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(85)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~5_combout\,
	datab => \RAM|Decoder0~17_combout\,
	datac => \RAM|array_reg\(85),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[85]~76_combout\);

-- Location: FF_X22_Y8_N21
\RAM|array_reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[85]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(85));

-- Location: LCCOMB_X28_Y9_N24
\RAM|array_reg[81]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[81]~79_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(81))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~17_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(81),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[81]~79_combout\);

-- Location: FF_X28_Y9_N25
\RAM|array_reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[81]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(81));

-- Location: LCCOMB_X24_Y9_N16
\RAM|array_reg[93]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[93]~78_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(93))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(93)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~16_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(93),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[93]~78_combout\);

-- Location: FF_X24_Y9_N17
\RAM|array_reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[93]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(93));

-- Location: LCCOMB_X28_Y9_N26
\RAM|array_reg[89]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[89]~77_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(89))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(89)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~16_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(89),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[89]~77_combout\);

-- Location: FF_X28_Y9_N27
\RAM|array_reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[89]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(89));

-- Location: LCCOMB_X24_Y11_N24
\RAM|Mux0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~44_combout\ = (\led_machine|WideOr3~12_combout\ & (((\led_machine|WideOr4~10_combout\)))) # (!\led_machine|WideOr3~12_combout\ & ((\led_machine|WideOr4~10_combout\ & ((\RAM|array_reg\(89)))) # (!\led_machine|WideOr4~10_combout\ & 
-- (\RAM|array_reg\(93)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \RAM|array_reg\(93),
	datac => \led_machine|WideOr4~10_combout\,
	datad => \RAM|array_reg\(89),
	combout => \RAM|Mux0~44_combout\);

-- Location: LCCOMB_X24_Y11_N2
\RAM|Mux0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~45_combout\ = (\led_machine|WideOr3~12_combout\ & ((\RAM|Mux0~44_combout\ & ((\RAM|array_reg\(81)))) # (!\RAM|Mux0~44_combout\ & (\RAM|array_reg\(85))))) # (!\led_machine|WideOr3~12_combout\ & (((\RAM|Mux0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \RAM|array_reg\(85),
	datac => \RAM|array_reg\(81),
	datad => \RAM|Mux0~44_combout\,
	combout => \RAM|Mux0~45_combout\);

-- Location: LCCOMB_X24_Y11_N8
\RAM|Mux0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~48_combout\ = (\led_machine|WideOr6~6_combout\ & (((\led_machine|WideOr5~8_combout\)))) # (!\led_machine|WideOr6~6_combout\ & ((\led_machine|WideOr5~8_combout\ & ((\RAM|Mux0~45_combout\))) # (!\led_machine|WideOr5~8_combout\ & 
-- (\RAM|Mux0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~47_combout\,
	datab => \led_machine|WideOr6~6_combout\,
	datac => \led_machine|WideOr5~8_combout\,
	datad => \RAM|Mux0~45_combout\,
	combout => \RAM|Mux0~48_combout\);

-- Location: LCCOMB_X26_Y9_N18
\RAM|array_reg[82]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[82]~75_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(82))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(82)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~11_combout\,
	datab => \RAM|Decoder0~17_combout\,
	datac => \RAM|array_reg\(82),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[82]~75_combout\);

-- Location: FF_X26_Y9_N19
\RAM|array_reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[82]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(82));

-- Location: LCCOMB_X27_Y9_N28
\RAM|array_reg[86]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[86]~73_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(86))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~17_combout\,
	datac => \RAM|array_reg\(86),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[86]~73_combout\);

-- Location: FF_X27_Y9_N29
\RAM|array_reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[86]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(86));

-- Location: LCCOMB_X27_Y9_N6
\RAM|array_reg[94]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[94]~74_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(94))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~16_combout\,
	datac => \RAM|array_reg\(94),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[94]~74_combout\);

-- Location: FF_X27_Y9_N7
\RAM|array_reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[94]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(94));

-- Location: LCCOMB_X27_Y10_N26
\RAM|Mux0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~42_combout\ = (\led_machine|WideOr4~10_combout\ & (((\led_machine|WideOr3~12_combout\)))) # (!\led_machine|WideOr4~10_combout\ & ((\led_machine|WideOr3~12_combout\ & (\RAM|array_reg\(86))) # (!\led_machine|WideOr3~12_combout\ & 
-- ((\RAM|array_reg\(94))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(86),
	datab => \led_machine|WideOr4~10_combout\,
	datac => \led_machine|WideOr3~12_combout\,
	datad => \RAM|array_reg\(94),
	combout => \RAM|Mux0~42_combout\);

-- Location: LCCOMB_X26_Y9_N24
\RAM|array_reg[90]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[90]~72_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(90))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~16_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(90),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[90]~72_combout\);

-- Location: FF_X26_Y9_N25
\RAM|array_reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[90]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(90));

-- Location: LCCOMB_X27_Y10_N16
\RAM|Mux0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~43_combout\ = (\led_machine|WideOr4~10_combout\ & ((\RAM|Mux0~42_combout\ & (\RAM|array_reg\(82))) # (!\RAM|Mux0~42_combout\ & ((\RAM|array_reg\(90)))))) # (!\led_machine|WideOr4~10_combout\ & (((\RAM|Mux0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~10_combout\,
	datab => \RAM|array_reg\(82),
	datac => \RAM|Mux0~42_combout\,
	datad => \RAM|array_reg\(90),
	combout => \RAM|Mux0~43_combout\);

-- Location: LCCOMB_X22_Y7_N20
\RAM|array_reg[80]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[80]~87_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(80))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(80)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|Decoder0~17_combout\,
	datac => \RAM|array_reg\(80),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[80]~87_combout\);

-- Location: FF_X22_Y7_N21
\RAM|array_reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[80]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(80));

-- Location: LCCOMB_X23_Y8_N8
\RAM|array_reg[92]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[92]~86_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(92))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~16_combout\,
	datab => \RAM|Decoder0~14_combout\,
	datac => \RAM|array_reg\(92),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[92]~86_combout\);

-- Location: FF_X23_Y8_N9
\RAM|array_reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[92]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(92));

-- Location: LCCOMB_X23_Y8_N18
\RAM|array_reg[84]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[84]~85_combout\ = (\RAM|Decoder0~17_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(84))))) # (!\RAM|Decoder0~17_combout\ & (((\RAM|array_reg\(84)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~17_combout\,
	datac => \RAM|array_reg\(84),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[84]~85_combout\);

-- Location: FF_X23_Y8_N19
\RAM|array_reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[84]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(84));

-- Location: LCCOMB_X26_Y8_N30
\RAM|Mux0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~49_combout\ = (\led_machine|WideOr3~12_combout\ & (((\led_machine|WideOr4~10_combout\) # (\RAM|array_reg\(84))))) # (!\led_machine|WideOr3~12_combout\ & (\RAM|array_reg\(92) & (!\led_machine|WideOr4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(92),
	datab => \led_machine|WideOr3~12_combout\,
	datac => \led_machine|WideOr4~10_combout\,
	datad => \RAM|array_reg\(84),
	combout => \RAM|Mux0~49_combout\);

-- Location: LCCOMB_X24_Y9_N2
\RAM|array_reg[88]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[88]~84_combout\ = (\RAM|Decoder0~16_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(88))))) # (!\RAM|Decoder0~16_combout\ & (((\RAM|array_reg\(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|Decoder0~16_combout\,
	datac => \RAM|array_reg\(88),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[88]~84_combout\);

-- Location: FF_X24_Y9_N3
\RAM|array_reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[88]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(88));

-- Location: LCCOMB_X26_Y7_N16
\RAM|Mux0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~50_combout\ = (\led_machine|WideOr4~10_combout\ & ((\RAM|Mux0~49_combout\ & (\RAM|array_reg\(80))) # (!\RAM|Mux0~49_combout\ & ((\RAM|array_reg\(88)))))) # (!\led_machine|WideOr4~10_combout\ & (((\RAM|Mux0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(80),
	datab => \led_machine|WideOr4~10_combout\,
	datac => \RAM|Mux0~49_combout\,
	datad => \RAM|array_reg\(88),
	combout => \RAM|Mux0~50_combout\);

-- Location: LCCOMB_X27_Y10_N14
\RAM|Mux0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~51_combout\ = (\RAM|Mux0~48_combout\ & (((\RAM|Mux0~50_combout\) # (!\led_machine|WideOr6~6_combout\)))) # (!\RAM|Mux0~48_combout\ & (\RAM|Mux0~43_combout\ & (\led_machine|WideOr6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~48_combout\,
	datab => \RAM|Mux0~43_combout\,
	datac => \led_machine|WideOr6~6_combout\,
	datad => \RAM|Mux0~50_combout\,
	combout => \RAM|Mux0~51_combout\);

-- Location: LCCOMB_X22_Y9_N6
\RAM|Decoder0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~23_combout\ = (!\Vecto_to_RAM|current_address\(4) & (!\Vecto_to_RAM|current_address\(5) & (\Vecto_to_RAM|current_address\(6) & \Vecto_to_RAM|current_address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(4),
	datab => \Vecto_to_RAM|current_address\(5),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(3),
	combout => \RAM|Decoder0~23_combout\);

-- Location: LCCOMB_X22_Y8_N6
\RAM|array_reg[77]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[77]~128_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(77))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~5_combout\,
	datab => \RAM|Decoder0~23_combout\,
	datac => \RAM|array_reg\(77),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[77]~128_combout\);

-- Location: FF_X22_Y8_N7
\RAM|array_reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[77]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(77));

-- Location: LCCOMB_X23_Y10_N12
\RAM|array_reg[79]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[79]~130_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(79))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~23_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(79),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[79]~130_combout\);

-- Location: FF_X23_Y10_N13
\RAM|array_reg[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[79]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(79));

-- Location: LCCOMB_X27_Y9_N20
\RAM|array_reg[78]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[78]~129_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(78))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~10_combout\,
	datab => \RAM|Decoder0~23_combout\,
	datac => \RAM|array_reg\(78),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[78]~129_combout\);

-- Location: FF_X27_Y9_N21
\RAM|array_reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[78]~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(78));

-- Location: LCCOMB_X26_Y10_N6
\RAM|Mux0~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~77_combout\ = (\led_machine|WideOr5~8_combout\ & (((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & ((\led_machine|WideOr6~6_combout\ & ((\RAM|array_reg\(78)))) # (!\led_machine|WideOr6~6_combout\ & 
-- (\RAM|array_reg\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(79),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \led_machine|WideOr6~6_combout\,
	datad => \RAM|array_reg\(78),
	combout => \RAM|Mux0~77_combout\);

-- Location: LCCOMB_X23_Y8_N6
\RAM|array_reg[76]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[76]~131_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(76))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~23_combout\,
	datac => \RAM|array_reg\(76),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[76]~131_combout\);

-- Location: FF_X23_Y8_N7
\RAM|array_reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[76]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(76));

-- Location: LCCOMB_X26_Y8_N2
\RAM|Mux0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~78_combout\ = (\led_machine|WideOr5~8_combout\ & ((\RAM|Mux0~77_combout\ & ((\RAM|array_reg\(76)))) # (!\RAM|Mux0~77_combout\ & (\RAM|array_reg\(77))))) # (!\led_machine|WideOr5~8_combout\ & (((\RAM|Mux0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr5~8_combout\,
	datab => \RAM|array_reg\(77),
	datac => \RAM|Mux0~77_combout\,
	datad => \RAM|array_reg\(76),
	combout => \RAM|Mux0~78_combout\);

-- Location: LCCOMB_X22_Y8_N4
\RAM|array_reg[72]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[72]~127_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(72))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~23_combout\,
	datab => \RAM|Decoder0~15_combout\,
	datac => \RAM|array_reg\(72),
	datad => \RAM|array_reg[88]~59_combout\,
	combout => \RAM|array_reg[72]~127_combout\);

-- Location: FF_X22_Y8_N5
\RAM|array_reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[72]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(72));

-- Location: LCCOMB_X29_Y9_N22
\RAM|array_reg[73]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[73]~125_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(73))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~23_combout\,
	datab => \RAM|Decoder0~0_combout\,
	datac => \RAM|array_reg\(73),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[73]~125_combout\);

-- Location: FF_X29_Y9_N23
\RAM|array_reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[73]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(73));

-- Location: LCCOMB_X24_Y8_N8
\RAM|array_reg[75]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[75]~126_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(75))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~12_combout\,
	datab => \RAM|Decoder0~23_combout\,
	datac => \RAM|array_reg\(75),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[75]~126_combout\);

-- Location: FF_X24_Y8_N9
\RAM|array_reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[75]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(75));

-- Location: LCCOMB_X26_Y10_N18
\RAM|Mux0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~75_combout\ = (\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(73)) # ((\led_machine|WideOr6~6_combout\)))) # (!\led_machine|WideOr5~8_combout\ & (((!\led_machine|WideOr6~6_combout\ & \RAM|array_reg\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(73),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \led_machine|WideOr6~6_combout\,
	datad => \RAM|array_reg\(75),
	combout => \RAM|Mux0~75_combout\);

-- Location: LCCOMB_X26_Y10_N12
\RAM|array_reg[74]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[74]~124_combout\ = (\RAM|Decoder0~23_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(74))))) # (!\RAM|Decoder0~23_combout\ & (((\RAM|array_reg\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~23_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(74),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[74]~124_combout\);

-- Location: FF_X26_Y10_N13
\RAM|array_reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[74]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(74));

-- Location: LCCOMB_X26_Y10_N28
\RAM|Mux0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~76_combout\ = (\RAM|Mux0~75_combout\ & ((\RAM|array_reg\(72)) # ((!\led_machine|WideOr6~6_combout\)))) # (!\RAM|Mux0~75_combout\ & (((\led_machine|WideOr6~6_combout\ & \RAM|array_reg\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(72),
	datab => \RAM|Mux0~75_combout\,
	datac => \led_machine|WideOr6~6_combout\,
	datad => \RAM|array_reg\(74),
	combout => \RAM|Mux0~76_combout\);

-- Location: LCCOMB_X26_Y10_N8
\RAM|Mux0~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~79_combout\ = (\led_machine|WideOr3~12_combout\ & (((\led_machine|WideOr4~10_combout\)))) # (!\led_machine|WideOr3~12_combout\ & ((\led_machine|WideOr4~10_combout\ & ((\RAM|Mux0~76_combout\))) # (!\led_machine|WideOr4~10_combout\ & 
-- (\RAM|Mux0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \RAM|Mux0~78_combout\,
	datac => \led_machine|WideOr4~10_combout\,
	datad => \RAM|Mux0~76_combout\,
	combout => \RAM|Mux0~79_combout\);

-- Location: LCCOMB_X23_Y8_N26
\RAM|Decoder0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~22_combout\ = (!\Vecto_to_RAM|current_address\(5) & (!\Vecto_to_RAM|current_address\(4) & (\Vecto_to_RAM|current_address\(6) & !\Vecto_to_RAM|current_address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vecto_to_RAM|current_address\(5),
	datab => \Vecto_to_RAM|current_address\(4),
	datac => \Vecto_to_RAM|current_address\(6),
	datad => \Vecto_to_RAM|current_address\(3),
	combout => \RAM|Decoder0~22_combout\);

-- Location: LCCOMB_X24_Y9_N20
\RAM|array_reg[69]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[69]~120_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[85]~5_combout\) # ((!\RAM|Decoder0~5_combout\ & \RAM|array_reg\(69))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~22_combout\,
	datab => \RAM|Decoder0~5_combout\,
	datac => \RAM|array_reg\(69),
	datad => \RAM|array_reg[85]~5_combout\,
	combout => \RAM|array_reg[69]~120_combout\);

-- Location: FF_X24_Y9_N21
\RAM|array_reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[69]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(69));

-- Location: LCCOMB_X22_Y8_N18
\RAM|array_reg[68]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[68]~123_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[84]~54_combout\) # ((!\RAM|Decoder0~14_combout\ & \RAM|array_reg\(68))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(68)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~14_combout\,
	datab => \RAM|Decoder0~22_combout\,
	datac => \RAM|array_reg\(68),
	datad => \RAM|array_reg[84]~54_combout\,
	combout => \RAM|array_reg[68]~123_combout\);

-- Location: FF_X22_Y8_N19
\RAM|array_reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[68]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(68));

-- Location: LCCOMB_X24_Y9_N26
\RAM|array_reg[70]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[70]~121_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[86]~18_combout\) # ((!\RAM|Decoder0~10_combout\ & \RAM|array_reg\(70))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(70)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~22_combout\,
	datab => \RAM|Decoder0~10_combout\,
	datac => \RAM|array_reg\(70),
	datad => \RAM|array_reg[86]~18_combout\,
	combout => \RAM|array_reg[70]~121_combout\);

-- Location: FF_X24_Y9_N27
\RAM|array_reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[70]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(70));

-- Location: LCCOMB_X23_Y10_N10
\RAM|array_reg[71]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[71]~122_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[87]~41_combout\) # ((!\RAM|Decoder0~13_combout\ & \RAM|array_reg\(71))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~22_combout\,
	datab => \RAM|Decoder0~13_combout\,
	datac => \RAM|array_reg\(71),
	datad => \RAM|array_reg[87]~41_combout\,
	combout => \RAM|array_reg[71]~122_combout\);

-- Location: FF_X23_Y10_N11
\RAM|array_reg[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[71]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(71));

-- Location: LCCOMB_X26_Y10_N16
\RAM|Mux0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~73_combout\ = (\led_machine|WideOr6~6_combout\ & ((\led_machine|WideOr5~8_combout\) # ((\RAM|array_reg\(70))))) # (!\led_machine|WideOr6~6_combout\ & (!\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~6_combout\,
	datab => \led_machine|WideOr5~8_combout\,
	datac => \RAM|array_reg\(70),
	datad => \RAM|array_reg\(71),
	combout => \RAM|Mux0~73_combout\);

-- Location: LCCOMB_X26_Y10_N14
\RAM|Mux0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~74_combout\ = (\led_machine|WideOr5~8_combout\ & ((\RAM|Mux0~73_combout\ & ((\RAM|array_reg\(68)))) # (!\RAM|Mux0~73_combout\ & (\RAM|array_reg\(69))))) # (!\led_machine|WideOr5~8_combout\ & (((\RAM|Mux0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|array_reg\(69),
	datab => \led_machine|WideOr5~8_combout\,
	datac => \RAM|array_reg\(68),
	datad => \RAM|Mux0~73_combout\,
	combout => \RAM|Mux0~74_combout\);

-- Location: LCCOMB_X26_Y10_N2
\RAM|array_reg[66]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[66]~132_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[90]~23_combout\) # ((!\RAM|Decoder0~11_combout\ & \RAM|array_reg\(66))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(66)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~22_combout\,
	datab => \RAM|Decoder0~11_combout\,
	datac => \RAM|array_reg\(66),
	datad => \RAM|array_reg[90]~23_combout\,
	combout => \RAM|array_reg[66]~132_combout\);

-- Location: FF_X26_Y10_N3
\RAM|array_reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[66]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(66));

-- Location: LCCOMB_X24_Y7_N28
\RAM|array_reg[67]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[67]~134_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[91]~36_combout\) # ((!\RAM|Decoder0~12_combout\ & \RAM|array_reg\(67))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~22_combout\,
	datab => \RAM|Decoder0~12_combout\,
	datac => \RAM|array_reg\(67),
	datad => \RAM|array_reg[91]~36_combout\,
	combout => \RAM|array_reg[67]~134_combout\);

-- Location: FF_X24_Y7_N29
\RAM|array_reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[67]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(67));

-- Location: LCCOMB_X28_Y9_N12
\RAM|array_reg[65]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[65]~133_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[89]~0_combout\) # ((!\RAM|Decoder0~0_combout\ & \RAM|array_reg\(65))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~0_combout\,
	datab => \RAM|Decoder0~22_combout\,
	datac => \RAM|array_reg\(65),
	datad => \RAM|array_reg[89]~0_combout\,
	combout => \RAM|array_reg[65]~133_combout\);

-- Location: FF_X28_Y9_N13
\RAM|array_reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[65]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(65));

-- Location: LCCOMB_X26_Y10_N4
\RAM|Mux0~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~80_combout\ = (\led_machine|WideOr6~6_combout\ & (((\led_machine|WideOr5~8_combout\)))) # (!\led_machine|WideOr6~6_combout\ & ((\led_machine|WideOr5~8_combout\ & ((\RAM|array_reg\(65)))) # (!\led_machine|WideOr5~8_combout\ & 
-- (\RAM|array_reg\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~6_combout\,
	datab => \RAM|array_reg\(67),
	datac => \led_machine|WideOr5~8_combout\,
	datad => \RAM|array_reg\(65),
	combout => \RAM|Mux0~80_combout\);

-- Location: LCCOMB_X22_Y9_N14
\RAM|array_reg[64]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|array_reg[64]~135_combout\ = (\RAM|Decoder0~22_combout\ & ((\RAM|array_reg[88]~59_combout\) # ((!\RAM|Decoder0~15_combout\ & \RAM|array_reg\(64))))) # (!\RAM|Decoder0~22_combout\ & (((\RAM|array_reg\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~15_combout\,
	datab => \RAM|array_reg[88]~59_combout\,
	datac => \RAM|array_reg\(64),
	datad => \RAM|Decoder0~22_combout\,
	combout => \RAM|array_reg[64]~135_combout\);

-- Location: FF_X22_Y9_N15
\RAM|array_reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|array_reg[64]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|array_reg\(64));

-- Location: LCCOMB_X26_Y10_N10
\RAM|Mux0~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~81_combout\ = (\led_machine|WideOr6~6_combout\ & ((\RAM|Mux0~80_combout\ & ((\RAM|array_reg\(64)))) # (!\RAM|Mux0~80_combout\ & (\RAM|array_reg\(66))))) # (!\led_machine|WideOr6~6_combout\ & (((\RAM|Mux0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr6~6_combout\,
	datab => \RAM|array_reg\(66),
	datac => \RAM|Mux0~80_combout\,
	datad => \RAM|array_reg\(64),
	combout => \RAM|Mux0~81_combout\);

-- Location: LCCOMB_X26_Y10_N20
\RAM|Mux0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~82_combout\ = (\led_machine|WideOr3~12_combout\ & ((\RAM|Mux0~79_combout\ & ((\RAM|Mux0~81_combout\))) # (!\RAM|Mux0~79_combout\ & (\RAM|Mux0~74_combout\)))) # (!\led_machine|WideOr3~12_combout\ & (\RAM|Mux0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~12_combout\,
	datab => \RAM|Mux0~79_combout\,
	datac => \RAM|Mux0~74_combout\,
	datad => \RAM|Mux0~81_combout\,
	combout => \RAM|Mux0~82_combout\);

-- Location: LCCOMB_X26_Y10_N22
\RAM|Mux0~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~83_combout\ = (\led_machine|WideOr1~1_combout\ & ((\RAM|Mux0~72_combout\ & ((\RAM|Mux0~82_combout\))) # (!\RAM|Mux0~72_combout\ & (\RAM|Mux0~51_combout\)))) # (!\led_machine|WideOr1~1_combout\ & (\RAM|Mux0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~1_combout\,
	datab => \RAM|Mux0~72_combout\,
	datac => \RAM|Mux0~51_combout\,
	datad => \RAM|Mux0~82_combout\,
	combout => \RAM|Mux0~83_combout\);

-- Location: LCCOMB_X23_Y16_N30
\FSM_impresion|PIN_3_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~0_combout\ = (\FSM_impresion|pri_st~q\ & ((\led_machine|WideOr0~2_combout\ & (\RAM|Mux0~41_combout\)) # (!\led_machine|WideOr0~2_combout\ & ((\RAM|Mux0~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~41_combout\,
	datab => \RAM|Mux0~83_combout\,
	datac => \FSM_impresion|pri_st~q\,
	datad => \led_machine|WideOr0~2_combout\,
	combout => \FSM_impresion|PIN_3_def~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\led_machine|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|Equal1~0_combout\ = \flipflop_led3r1|q\(4) $ (\led_machine|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(4),
	datac => \led_machine|WideOr2~1_combout\,
	combout => \led_machine|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y16_N0
\FSM_impresion|PIN_3_def~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~1_combout\ = (\led_machine|WideOr5~8_combout\ & (\led_machine|WideOr3~12_combout\ & (\led_machine|WideOr4~10_combout\ & \led_machine|WideOr6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr5~8_combout\,
	datab => \led_machine|WideOr3~12_combout\,
	datac => \led_machine|WideOr4~10_combout\,
	datad => \led_machine|WideOr6~6_combout\,
	combout => \FSM_impresion|PIN_3_def~1_combout\);

-- Location: LCCOMB_X26_Y16_N22
\flipflop_led2r1|q[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led2r1|q[7]~9_combout\ = \flipflop_led2r1|q\(7) $ (\flipflop_led2r1|q[6]~8\ $ (!\button_down_r1|fall~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led2r1|q\(7),
	datad => \button_down_r1|fall~q\,
	cin => \flipflop_led2r1|q[6]~8\,
	combout => \flipflop_led2r1|q[7]~9_combout\);

-- Location: FF_X26_Y16_N23
\flipflop_led2r1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led2r1|q[7]~9_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led2r1|q\(7));

-- Location: LCCOMB_X26_Y16_N2
\FSM_impresion|PIN_3_def~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~2_combout\ = (\led_machine|WideOr1~1_combout\ & (\flipflop_led2r1|q\(5) & (\led_machine|WideOr2~1_combout\ $ (!\flipflop_led3r1|q\(4))))) # (!\led_machine|WideOr1~1_combout\ & (!\flipflop_led2r1|q\(5) & 
-- (\led_machine|WideOr2~1_combout\ $ (!\flipflop_led3r1|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr1~1_combout\,
	datab => \led_machine|WideOr2~1_combout\,
	datac => \flipflop_led3r1|q\(4),
	datad => \flipflop_led2r1|q\(5),
	combout => \FSM_impresion|PIN_3_def~2_combout\);

-- Location: LCCOMB_X26_Y16_N8
\FSM_impresion|PIN_3_def~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~3_combout\ = (!\flipflop_led2r1|q\(7) & (\FSM_impresion|PIN_3_def~2_combout\ & (\led_machine|WideOr0~2_combout\ $ (\flipflop_led2r1|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr0~2_combout\,
	datab => \flipflop_led2r1|q\(6),
	datac => \flipflop_led2r1|q\(7),
	datad => \FSM_impresion|PIN_3_def~2_combout\,
	combout => \FSM_impresion|PIN_3_def~3_combout\);

-- Location: LCCOMB_X26_Y17_N30
\FSM_impresion|PIN_3_def~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~5_combout\ = (\flipflop_led3r1|q\(5) & (!\led_machine|WideOr1~1_combout\ & (\flipflop_led3r1|q\(6) $ (!\led_machine|WideOr0~2_combout\)))) # (!\flipflop_led3r1|q\(5) & (\led_machine|WideOr1~1_combout\ & (\flipflop_led3r1|q\(6) $ 
-- (!\led_machine|WideOr0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_led3r1|q\(5),
	datab => \led_machine|WideOr1~1_combout\,
	datac => \flipflop_led3r1|q\(6),
	datad => \led_machine|WideOr0~2_combout\,
	combout => \FSM_impresion|PIN_3_def~5_combout\);

-- Location: LCCOMB_X26_Y17_N28
\FSM_impresion|PIN_3_def~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~4_combout\ = (\led_machine|WideOr0~2_combout\ & (!\flipflop_led1r1|q\(6) & (\flipflop_led1r1|q\(5) $ (!\led_machine|WideOr1~1_combout\)))) # (!\led_machine|WideOr0~2_combout\ & (\flipflop_led1r1|q\(6) & (\flipflop_led1r1|q\(5) $ 
-- (!\led_machine|WideOr1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr0~2_combout\,
	datab => \flipflop_led1r1|q\(6),
	datac => \flipflop_led1r1|q\(5),
	datad => \led_machine|WideOr1~1_combout\,
	combout => \FSM_impresion|PIN_3_def~4_combout\);

-- Location: LCCOMB_X28_Y16_N28
\flipflop_led1r1|q[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led1r1|q[7]~9_combout\ = \button_down_r1|fall~q\ $ (\flipflop_led1r1|q[6]~8\ $ (!\flipflop_led1r1|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \button_down_r1|fall~q\,
	datad => \flipflop_led1r1|q\(7),
	cin => \flipflop_led1r1|q[6]~8\,
	combout => \flipflop_led1r1|q[7]~9_combout\);

-- Location: FF_X28_Y16_N29
\flipflop_led1r1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led1r1|q[7]~9_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led1r1|q\(7));

-- Location: LCCOMB_X28_Y16_N6
\flipflop_led3r1|q[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flipflop_led3r1|q[7]~10_combout\ = \flipflop_led3r1|q\(7) $ (\flipflop_led3r1|q[6]~9\ $ (!\button_down_r1|fall~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flipflop_led3r1|q\(7),
	datad => \button_down_r1|fall~q\,
	cin => \flipflop_led3r1|q[6]~9\,
	combout => \flipflop_led3r1|q[7]~10_combout\);

-- Location: FF_X28_Y16_N7
\flipflop_led3r1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contador_clks_juego|Equal0~clkctrl_outclk\,
	d => \flipflop_led3r1|q[7]~10_combout\,
	clrn => \flipflop_led1r1|ALT_INV_dff~0_combout\,
	ena => \flipflop_led3r1|q[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_led3r1|q\(7));

-- Location: LCCOMB_X26_Y16_N28
\FSM_impresion|PIN_3_def~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~6_combout\ = (\FSM_impresion|PIN_3_def~5_combout\ & (((\FSM_impresion|PIN_3_def~4_combout\ & !\flipflop_led1r1|q\(7))) # (!\flipflop_led3r1|q\(7)))) # (!\FSM_impresion|PIN_3_def~5_combout\ & (\FSM_impresion|PIN_3_def~4_combout\ & 
-- (!\flipflop_led1r1|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_impresion|PIN_3_def~5_combout\,
	datab => \FSM_impresion|PIN_3_def~4_combout\,
	datac => \flipflop_led1r1|q\(7),
	datad => \flipflop_led3r1|q\(7),
	combout => \FSM_impresion|PIN_3_def~6_combout\);

-- Location: LCCOMB_X26_Y16_N6
\FSM_impresion|PIN_3_def~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~7_combout\ = (\FSM_impresion|PIN_3_def~1_combout\ & ((\FSM_impresion|PIN_3_def~3_combout\) # ((\led_machine|Equal1~0_combout\ & \FSM_impresion|PIN_3_def~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|Equal1~0_combout\,
	datab => \FSM_impresion|PIN_3_def~1_combout\,
	datac => \FSM_impresion|PIN_3_def~3_combout\,
	datad => \FSM_impresion|PIN_3_def~6_combout\,
	combout => \FSM_impresion|PIN_3_def~7_combout\);

-- Location: LCCOMB_X23_Y16_N24
\FSM_impresion|PIN_3_def~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~20_combout\ = (\FSM_impresion|PIN_3_def~0_combout\) # ((!\FSM_impresion|pri_st~q\ & ((\FSM_impresion|PIN_3_def~19_combout\) # (\FSM_impresion|PIN_3_def~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_impresion|PIN_3_def~19_combout\,
	datab => \FSM_impresion|pri_st~q\,
	datac => \FSM_impresion|PIN_3_def~0_combout\,
	datad => \FSM_impresion|PIN_3_def~7_combout\,
	combout => \FSM_impresion|PIN_3_def~20_combout\);

-- Location: LCCOMB_X20_Y11_N30
\FSM_impresion|PIN_3_def~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_3_def~21_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr5~1_combout\) # (!\led_machine|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr5~0_combout\,
	datad => \led_machine|WideOr5~1_combout\,
	combout => \FSM_impresion|PIN_3_def~21_combout\);

-- Location: LCCOMB_X20_Y11_N16
\FSM_impresion|PIN_4_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_4_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr6~0_combout\) # (!\led_machine|WideOr6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr6~1_combout\,
	datac => \led_machine|WideOr6~0_combout\,
	datad => \FSM_impresion|PIN_3_def~20_combout\,
	combout => \FSM_impresion|PIN_4_def~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\led_machine|WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr14~0_combout\ = (!\led_machine|pri_st.LED_115~q\ & (!\led_machine|pri_st.LED_113~q\ & (!\led_machine|pri_st.LED_114~q\ & !\led_machine|pri_st.LED_116~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_115~q\,
	datab => \led_machine|pri_st.LED_113~q\,
	datac => \led_machine|pri_st.LED_114~q\,
	datad => \led_machine|pri_st.LED_116~q\,
	combout => \led_machine|WideOr14~0_combout\);

-- Location: LCCOMB_X21_Y13_N30
\led_machine|WideOr14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr14~1_combout\ = (!\led_machine|pri_st.LED_119~q\ & (!\led_machine|pri_st.LED_118~q\ & (!\led_machine|pri_st.LED_120~q\ & !\led_machine|pri_st.LED_117~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_119~q\,
	datab => \led_machine|pri_st.LED_118~q\,
	datac => \led_machine|pri_st.LED_120~q\,
	datad => \led_machine|pri_st.LED_117~q\,
	combout => \led_machine|WideOr14~1_combout\);

-- Location: LCCOMB_X23_Y11_N20
\led_machine|WideOr14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr14~combout\ = (\led_machine|WideOr14~0_combout\ & \led_machine|WideOr14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|WideOr14~0_combout\,
	datad => \led_machine|WideOr14~1_combout\,
	combout => \led_machine|WideOr14~combout\);

-- Location: LCCOMB_X20_Y11_N18
\FSM_impresion|PIN_6_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_6_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr3~3_combout\) # (!\led_machine|WideOr3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr3~2_combout\,
	datad => \led_machine|WideOr3~3_combout\,
	combout => \FSM_impresion|PIN_6_def~0_combout\);

-- Location: LCCOMB_X19_Y11_N30
\FSM_impresion|PIN_10_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_10_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr26~0_combout\) # (!\led_machine|WideOr26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr26~1_combout\,
	datad => \led_machine|WideOr26~0_combout\,
	combout => \FSM_impresion|PIN_10_def~0_combout\);

-- Location: LCCOMB_X20_Y11_N28
\FSM_impresion|PIN_11_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_11_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr3~5_combout\) # (!\led_machine|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr3~4_combout\,
	datab => \led_machine|WideOr3~5_combout\,
	datad => \FSM_impresion|PIN_3_def~20_combout\,
	combout => \FSM_impresion|PIN_11_def~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\FSM_impresion|PIN_13_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_13_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr23~0_combout\) # (!\led_machine|WideOr23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr23~1_combout\,
	datad => \led_machine|WideOr23~0_combout\,
	combout => \FSM_impresion|PIN_13_def~0_combout\);

-- Location: LCCOMB_X21_Y8_N28
\led_machine|WideOr8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr8~2_combout\ = (\led_machine|WideOr8~0_combout\ & \led_machine|WideOr8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr8~0_combout\,
	datad => \led_machine|WideOr8~1_combout\,
	combout => \led_machine|WideOr8~2_combout\);

-- Location: LCCOMB_X20_Y11_N22
\FSM_impresion|PIN_15_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_15_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr3~8_combout\) # (!\led_machine|WideOr3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr3~7_combout\,
	datad => \led_machine|WideOr3~8_combout\,
	combout => \FSM_impresion|PIN_15_def~0_combout\);

-- Location: LCCOMB_X20_Y11_N4
\FSM_impresion|PIN_16_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_16_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr3~10_combout\) # (!\led_machine|WideOr3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr3~9_combout\,
	datad => \led_machine|WideOr3~10_combout\,
	combout => \FSM_impresion|PIN_16_def~0_combout\);

-- Location: LCCOMB_X21_Y7_N12
\led_machine|WideOr21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr21~2_combout\ = (\led_machine|WideOr21~1_combout\ & \led_machine|WideOr21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr21~1_combout\,
	datad => \led_machine|WideOr21~0_combout\,
	combout => \led_machine|WideOr21~2_combout\);

-- Location: LCCOMB_X19_Y11_N10
\FSM_impresion|PIN_19_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_19_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr4~3_combout\) # (!\led_machine|WideOr4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~2_combout\,
	datac => \led_machine|WideOr4~3_combout\,
	datad => \FSM_impresion|PIN_3_def~20_combout\,
	combout => \FSM_impresion|PIN_19_def~0_combout\);

-- Location: LCCOMB_X19_Y11_N4
\FSM_impresion|PIN_20_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_20_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr4~6_combout\) # (!\led_machine|WideOr4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr4~5_combout\,
	datac => \led_machine|WideOr4~6_combout\,
	datad => \FSM_impresion|PIN_3_def~20_combout\,
	combout => \FSM_impresion|PIN_20_def~0_combout\);

-- Location: LCCOMB_X21_Y12_N20
\led_machine|WideOr22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr22~0_combout\ = (!\led_machine|pri_st.LED_123~q\ & (!\led_machine|pri_st.LED_121~q\ & (!\led_machine|pri_st.LED_124~q\ & !\led_machine|pri_st.LED_122~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_123~q\,
	datab => \led_machine|pri_st.LED_121~q\,
	datac => \led_machine|pri_st.LED_124~q\,
	datad => \led_machine|pri_st.LED_122~q\,
	combout => \led_machine|WideOr22~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\led_machine|WideOr22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr22~1_combout\ = (!\led_machine|pri_st.LED_125~q\ & (!\led_machine|pri_st.LED_126~q\ & (!\led_machine|pri_st.LED_127~q\ & !\led_machine|pri_st.LED_128~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_125~q\,
	datab => \led_machine|pri_st.LED_126~q\,
	datac => \led_machine|pri_st.LED_127~q\,
	datad => \led_machine|pri_st.LED_128~q\,
	combout => \led_machine|WideOr22~1_combout\);

-- Location: LCCOMB_X21_Y9_N0
\led_machine|WideOr22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr22~combout\ = (\led_machine|WideOr22~0_combout\ & \led_machine|WideOr22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_machine|WideOr22~0_combout\,
	datad => \led_machine|WideOr22~1_combout\,
	combout => \led_machine|WideOr22~combout\);

-- Location: LCCOMB_X19_Y11_N18
\FSM_impresion|PIN_22_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_22_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr35~1_combout\) # (!\led_machine|WideOr35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr35~0_combout\,
	datad => \led_machine|WideOr35~1_combout\,
	combout => \FSM_impresion|PIN_22_def~0_combout\);

-- Location: LCCOMB_X19_Y11_N8
\FSM_impresion|PIN_26_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_26_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr4~8_combout\) # (!\led_machine|WideOr4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr4~7_combout\,
	datad => \led_machine|WideOr4~8_combout\,
	combout => \FSM_impresion|PIN_26_def~0_combout\);

-- Location: LCCOMB_X19_Y11_N22
\FSM_impresion|PIN_27_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_27_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr5~4_combout\) # (!\led_machine|WideOr5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr5~3_combout\,
	datac => \led_machine|WideOr5~4_combout\,
	datad => \FSM_impresion|PIN_3_def~20_combout\,
	combout => \FSM_impresion|PIN_27_def~0_combout\);

-- Location: LCCOMB_X20_Y11_N26
\FSM_impresion|PIN_29_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_29_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr4~0_combout\) # (!\led_machine|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr4~1_combout\,
	datac => \led_machine|WideOr4~0_combout\,
	datad => \FSM_impresion|PIN_3_def~20_combout\,
	combout => \FSM_impresion|PIN_29_def~0_combout\);

-- Location: LCCOMB_X21_Y8_N18
\led_machine|WideOr16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr16~2_combout\ = (\led_machine|WideOr16~0_combout\ & \led_machine|WideOr16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_machine|WideOr16~0_combout\,
	datac => \led_machine|WideOr16~1_combout\,
	combout => \led_machine|WideOr16~2_combout\);

-- Location: LCCOMB_X19_Y11_N0
\FSM_impresion|PIN_31_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_31_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((!\led_machine|WideOr6~4_combout\) # (!\led_machine|WideOr6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_impresion|PIN_3_def~20_combout\,
	datac => \led_machine|WideOr6~3_combout\,
	datad => \led_machine|WideOr6~4_combout\,
	combout => \FSM_impresion|PIN_31_def~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\led_machine|WideOr38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr38~0_combout\ = (\led_machine|pri_st.LED_32~q\) # ((\led_machine|pri_st.LED_48~q\) # ((\led_machine|pri_st.LED_64~q\) # (\led_machine|pri_st.LED_16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_32~q\,
	datab => \led_machine|pri_st.LED_48~q\,
	datac => \led_machine|pri_st.LED_64~q\,
	datad => \led_machine|pri_st.LED_16~q\,
	combout => \led_machine|WideOr38~0_combout\);

-- Location: LCCOMB_X21_Y11_N6
\led_machine|WideOr38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_machine|WideOr38~1_combout\ = (\led_machine|pri_st.LED_80~q\) # ((\led_machine|pri_st.LED_112~q\) # ((\led_machine|pri_st.LED_128~q\) # (\led_machine|pri_st.LED_96~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|pri_st.LED_80~q\,
	datab => \led_machine|pri_st.LED_112~q\,
	datac => \led_machine|pri_st.LED_128~q\,
	datad => \led_machine|pri_st.LED_96~q\,
	combout => \led_machine|WideOr38~1_combout\);

-- Location: LCCOMB_X21_Y13_N18
\FSM_impresion|PIN_32_def~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FSM_impresion|PIN_32_def~0_combout\ = (\FSM_impresion|PIN_3_def~20_combout\ & ((\led_machine|WideOr38~0_combout\) # (\led_machine|WideOr38~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_machine|WideOr38~0_combout\,
	datab => \led_machine|WideOr38~1_combout\,
	datad => \FSM_impresion|PIN_3_def~20_combout\,
	combout => \FSM_impresion|PIN_32_def~0_combout\);

-- Location: LCCOMB_X32_Y27_N24
\Puntaje_player1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player1|Mux6~0_combout\ = (!\flipflop_player1|q\(1) & (!\flipflop_player1|q\(3) & (\flipflop_player1|q\(0) $ (\flipflop_player1|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(1),
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q\(2),
	combout => \Puntaje_player1|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y27_N10
\Puntaje_player1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player1|Mux5~0_combout\ = (!\flipflop_player1|q\(3) & (\flipflop_player1|q\(2) & (\flipflop_player1|q\(0) $ (\flipflop_player1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(1),
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q\(2),
	combout => \Puntaje_player1|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y27_N4
\Puntaje_player1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player1|Mux4~0_combout\ = (!\flipflop_player1|q\(0) & (\flipflop_player1|q\(1) & (!\flipflop_player1|q\(3) & !\flipflop_player1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(1),
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q\(2),
	combout => \Puntaje_player1|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y27_N22
\Puntaje_player1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player1|Mux3~0_combout\ = (!\flipflop_player1|q\(3) & ((\flipflop_player1|q\(0) & (\flipflop_player1|q\(1) $ (!\flipflop_player1|q\(2)))) # (!\flipflop_player1|q\(0) & (!\flipflop_player1|q\(1) & \flipflop_player1|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(1),
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q\(2),
	combout => \Puntaje_player1|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y27_N0
\Puntaje_player1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player1|Mux2~0_combout\ = (\flipflop_player1|q\(1) & (\flipflop_player1|q\(0) & (!\flipflop_player1|q\(3)))) # (!\flipflop_player1|q\(1) & ((\flipflop_player1|q\(2) & ((!\flipflop_player1|q\(3)))) # (!\flipflop_player1|q\(2) & 
-- (\flipflop_player1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(1),
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q\(2),
	combout => \Puntaje_player1|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y27_N6
\Puntaje_player1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player1|Mux1~0_combout\ = (!\flipflop_player1|q\(3) & ((\flipflop_player1|q\(0) & ((\flipflop_player1|q\(1)) # (!\flipflop_player1|q\(2)))) # (!\flipflop_player1|q\(0) & (\flipflop_player1|q\(1) & !\flipflop_player1|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(1),
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q\(2),
	combout => \Puntaje_player1|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y27_N12
\Puntaje_player1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player1|Mux0~0_combout\ = (\flipflop_player1|q\(1) & (!\flipflop_player1|q\(3) & ((!\flipflop_player1|q\(2)) # (!\flipflop_player1|q\(0))))) # (!\flipflop_player1|q\(1) & ((\flipflop_player1|q\(3) $ (\flipflop_player1|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player1|q\(0),
	datab => \flipflop_player1|q\(1),
	datac => \flipflop_player1|q\(3),
	datad => \flipflop_player1|q\(2),
	combout => \Puntaje_player1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y26_N20
\Puntaje_player2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player2|Mux6~0_combout\ = (!\flipflop_player2|q\(3) & (!\flipflop_player2|q\(1) & (\flipflop_player2|q\(2) $ (\flipflop_player2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(3),
	datab => \flipflop_player2|q\(2),
	datac => \flipflop_player2|q\(1),
	datad => \flipflop_player2|q\(0),
	combout => \Puntaje_player2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y26_N22
\Puntaje_player2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player2|Mux5~0_combout\ = (!\flipflop_player2|q\(3) & (\flipflop_player2|q\(2) & (\flipflop_player2|q\(1) $ (\flipflop_player2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(3),
	datab => \flipflop_player2|q\(2),
	datac => \flipflop_player2|q\(1),
	datad => \flipflop_player2|q\(0),
	combout => \Puntaje_player2|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y26_N0
\Puntaje_player2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player2|Mux4~0_combout\ = (!\flipflop_player2|q\(3) & (!\flipflop_player2|q\(2) & (\flipflop_player2|q\(1) & !\flipflop_player2|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(3),
	datab => \flipflop_player2|q\(2),
	datac => \flipflop_player2|q\(1),
	datad => \flipflop_player2|q\(0),
	combout => \Puntaje_player2|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y26_N10
\Puntaje_player2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player2|Mux3~0_combout\ = (!\flipflop_player2|q\(3) & ((\flipflop_player2|q\(2) & (\flipflop_player2|q\(1) $ (!\flipflop_player2|q\(0)))) # (!\flipflop_player2|q\(2) & (!\flipflop_player2|q\(1) & \flipflop_player2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(3),
	datab => \flipflop_player2|q\(2),
	datac => \flipflop_player2|q\(1),
	datad => \flipflop_player2|q\(0),
	combout => \Puntaje_player2|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y26_N12
\Puntaje_player2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player2|Mux2~0_combout\ = (\flipflop_player2|q\(1) & (!\flipflop_player2|q\(3) & ((\flipflop_player2|q\(0))))) # (!\flipflop_player2|q\(1) & ((\flipflop_player2|q\(2) & (!\flipflop_player2|q\(3))) # (!\flipflop_player2|q\(2) & 
-- ((\flipflop_player2|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(3),
	datab => \flipflop_player2|q\(2),
	datac => \flipflop_player2|q\(1),
	datad => \flipflop_player2|q\(0),
	combout => \Puntaje_player2|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y26_N18
\Puntaje_player2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player2|Mux1~0_combout\ = (!\flipflop_player2|q\(3) & ((\flipflop_player2|q\(2) & (\flipflop_player2|q\(1) & \flipflop_player2|q\(0))) # (!\flipflop_player2|q\(2) & ((\flipflop_player2|q\(1)) # (\flipflop_player2|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(3),
	datab => \flipflop_player2|q\(2),
	datac => \flipflop_player2|q\(1),
	datad => \flipflop_player2|q\(0),
	combout => \Puntaje_player2|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y26_N4
\Puntaje_player2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Puntaje_player2|Mux0~0_combout\ = (\flipflop_player2|q\(2) & (!\flipflop_player2|q\(3) & ((!\flipflop_player2|q\(0)) # (!\flipflop_player2|q\(1))))) # (!\flipflop_player2|q\(2) & (\flipflop_player2|q\(3) $ ((\flipflop_player2|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop_player2|q\(3),
	datab => \flipflop_player2|q\(2),
	datac => \flipflop_player2|q\(1),
	datad => \flipflop_player2|q\(0),
	combout => \Puntaje_player2|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

ww_PIN_1 <= \PIN_1~output_o\;

ww_PIN_2 <= \PIN_2~output_o\;

ww_PIN_3 <= \PIN_3~output_o\;

ww_PIN_4 <= \PIN_4~output_o\;

ww_PIN_5 <= \PIN_5~output_o\;

ww_PIN_6 <= \PIN_6~output_o\;

ww_PIN_7 <= \PIN_7~output_o\;

ww_PIN_8 <= \PIN_8~output_o\;

ww_PIN_9 <= \PIN_9~output_o\;

ww_PIN_10 <= \PIN_10~output_o\;

ww_PIN_11 <= \PIN_11~output_o\;

ww_PIN_12 <= \PIN_12~output_o\;

ww_PIN_13 <= \PIN_13~output_o\;

ww_PIN_14 <= \PIN_14~output_o\;

ww_PIN_15 <= \PIN_15~output_o\;

ww_PIN_16 <= \PIN_16~output_o\;

ww_PIN_17 <= \PIN_17~output_o\;

ww_PIN_18 <= \PIN_18~output_o\;

ww_PIN_19 <= \PIN_19~output_o\;

ww_PIN_20 <= \PIN_20~output_o\;

ww_PIN_21 <= \PIN_21~output_o\;

ww_PIN_22 <= \PIN_22~output_o\;

ww_PIN_23 <= \PIN_23~output_o\;

ww_PIN_24 <= \PIN_24~output_o\;

ww_PIN_25 <= \PIN_25~output_o\;

ww_PIN_26 <= \PIN_26~output_o\;

ww_PIN_27 <= \PIN_27~output_o\;

ww_PIN_28 <= \PIN_28~output_o\;

ww_PIN_29 <= \PIN_29~output_o\;

ww_PIN_30 <= \PIN_30~output_o\;

ww_PIN_31 <= \PIN_31~output_o\;

ww_PIN_32 <= \PIN_32~output_o\;

ww_Score_p1(0) <= \Score_p1[0]~output_o\;

ww_Score_p1(1) <= \Score_p1[1]~output_o\;

ww_Score_p1(2) <= \Score_p1[2]~output_o\;

ww_Score_p1(3) <= \Score_p1[3]~output_o\;

ww_Score_p1(4) <= \Score_p1[4]~output_o\;

ww_Score_p1(5) <= \Score_p1[5]~output_o\;

ww_Score_p1(6) <= \Score_p1[6]~output_o\;

ww_Score_p2(0) <= \Score_p2[0]~output_o\;

ww_Score_p2(1) <= \Score_p2[1]~output_o\;

ww_Score_p2(2) <= \Score_p2[2]~output_o\;

ww_Score_p2(3) <= \Score_p2[3]~output_o\;

ww_Score_p2(4) <= \Score_p2[4]~output_o\;

ww_Score_p2(5) <= \Score_p2[5]~output_o\;

ww_Score_p2(6) <= \Score_p2[6]~output_o\;
END structure;


