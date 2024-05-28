LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-------------------------------------------------
ENTITY led_machine IS

	PORT( ----INPUTS-----------------
			clk				: IN	STD_LOGIC;
			rst				: IN	STD_LOGIC;
			ena       		: IN  STD_LOGIC;
			ready_timer		: IN	STD_LOGIC;
			pos_actual_1		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- bola
			pos_actual_2		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- led arriba raqueta 1
			pos_actual_3		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- led medio raqueta 1
			pos_actual_4		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- led abajo raqueta 1
			pos_actual_5		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- led arriba raqueta 2
			pos_actual_6		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- led medio raqueta 2
			pos_actual_7		: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- led abajo raqueta 2
			---OUT_PUTS-----------------------
			en_timer	: OUT STD_LOGIC;
			----PINs---------------------------
			PIN_1		   : OUT	STD_LOGIC;
			PIN_2		   : OUT	STD_LOGIC;
			PIN_3		   : OUT	STD_LOGIC;
			PIN_4		   : OUT	STD_LOGIC;
			PIN_5		   : OUT	STD_LOGIC;
			PIN_6		   : OUT	STD_LOGIC;
			PIN_7		   : OUT	STD_LOGIC;
			PIN_8		   : OUT	STD_LOGIC;
			PIN_9		   : OUT	STD_LOGIC;
			PIN_10		: OUT	STD_LOGIC;
			PIN_11		: OUT	STD_LOGIC;
			PIN_12		: OUT	STD_LOGIC;
			PIN_13		: OUT	STD_LOGIC;
			PIN_14		: OUT	STD_LOGIC;
			PIN_15		: OUT	STD_LOGIC;
			PIN_16		: OUT	STD_LOGIC;
			PIN_17		: OUT	STD_LOGIC;
			PIN_18		: OUT	STD_LOGIC;
			PIN_19		: OUT	STD_LOGIC;
			PIN_20		: OUT	STD_LOGIC;
			PIN_21		: OUT	STD_LOGIC;
			PIN_22		: OUT	STD_LOGIC;
			PIN_23		: OUT	STD_LOGIC;
			PIN_24		: OUT	STD_LOGIC;
			PIN_25		: OUT	STD_LOGIC;
			PIN_26		: OUT	STD_LOGIC;
			PIN_27		: OUT	STD_LOGIC;
			PIN_28		: OUT	STD_LOGIC;
			PIN_29		: OUT	STD_LOGIC;
			PIN_30		: OUT	STD_LOGIC;
			PIN_31		: OUT	STD_LOGIC;
			PIN_32		: OUT	STD_LOGIC);
			
	END ENTITY led_machine;
-------------------------------------------------
ARCHITECTURE fsm OF led_machine IS
	TYPE state IS (LED_1, LED_2, LED_3, LED_4, LED_5, LED_6, LED_7, LED_8, LED_9, LED_10, LED_11, LED_12, LED_13, LED_14, LED_15, LED_16, LED_17, LED_18, LED_19, LED_20, LED_21, LED_22, LED_23, LED_24, LED_25, LED_26, LED_27, LED_28, LED_29, LED_30, LED_31, LED_32, LED_33, LED_34, LED_35, LED_36, LED_37, LED_38, LED_39, LED_40, LED_41, LED_42, LED_43, LED_44, LED_45, LED_46, LED_47, LED_48, LED_49, LED_50, LED_51, LED_52, LED_53, LED_54, LED_55, LED_56, LED_57, LED_58, LED_59, LED_60, LED_61, LED_62, LED_63, LED_64, LED_65, LED_66, LED_67, LED_68, LED_69, LED_70, LED_71, LED_72, LED_73, LED_74, LED_75, LED_76, LED_77, LED_78, LED_79, LED_80, LED_81, LED_82, LED_83, LED_84, LED_85, LED_86, LED_87, LED_88, LED_89, LED_90, LED_91, LED_92, LED_93, LED_94, LED_95, LED_96, LED_97, LED_98, LED_99, LED_100, LED_101, LED_102, LED_103, LED_104, LED_105, LED_106, LED_107, LED_108, LED_109, LED_110, LED_111, LED_112, LED_113, LED_114, LED_115, LED_116, LED_117, LED_118, LED_119, LED_120, LED_121, LED_122, LED_123, LED_124, LED_125, LED_126, LED_127, LED_128);
	SIGNAL pri_st, next_st : state;
	SIGNAL led_state:  STD_LOGIC;
	SIGNAL rd_addr  : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
-------------------------------------------------
	losecuencial: PROCESS(rst,clk)
		BEGIN
			IF (rst = '1') THEN
			pri_st <= LED_1;
			ELSIF (rising_edge(clk)) THEN 
			pri_st <= next_st;
			END IF;
		END PROCESS losecuencial;
-------------------------------------------------
	locombinacional: PROCESS(pri_st,ready_timer, led_state, ena, pos_actual_1 , pos_actual_2 , pos_actual_3 , pos_actual_4 , pos_actual_5 , pos_actual_6 , pos_actual_7 , rd_addr)
	BEGIN	
	CASE pri_st IS
	--==================LED_1==================
		WHEN LED_1 =>
			--Conditional for pos----------
			rd_addr <= (others => '0');
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		    ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_2;
			  ELSE
			  next_st <= LED_1;
			  END IF;
		--==================LED_2=================	  
		WHEN LED_2 =>
		--Conditional for pos----------
			rd_addr <= "00000001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
         ---OUTPUT PINs----------------
	      ----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_3;
			  ELSE
			  next_st <= LED_2;
			  END IF;
		--==================LED_3=================	  
		WHEN LED_3 =>
		rd_addr <= "00000010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN   
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		     ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_4;
			  ELSE
			  next_st <= LED_3;
			  END IF;
		--==================LED_4=================	  
		WHEN LED_4 =>
		rd_addr <= "00000011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_5;
			  ELSE
			  next_st <= LED_4;
			  END IF;
		--==================LED_5================= 
		WHEN LED_5 =>
		rd_addr <= "00000100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en-----------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_6;
			  ELSE
			  next_st <= LED_5;
			  END IF;
		--==================LED_6================= 
		WHEN LED_6 =>
		rd_addr <= "00000101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_7;
			  ELSE
			  next_st <= LED_6;
			  END IF;	  
		--==================LED_7================= 
		WHEN LED_7 =>
		rd_addr <= "00000110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_8;
			  ELSE
			  next_st <= LED_7;
			  END IF;	  	  
		--==================LED_8================= 
		WHEN LED_8 =>
		rd_addr <= "00000111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '0';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_9;
			  ELSE
			  next_st <= LED_8;
			  END IF;	  	  
		--==================LED_9================= 
		WHEN LED_9 =>
		rd_addr <= "00001000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_10;
			  ELSE
			  next_st <= LED_9;
			  END IF;	  	  
		--==================LED_10================= 
		WHEN LED_10 =>
		rd_addr <= "00001001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
			----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_11;
			  ELSE
			  next_st <= LED_10;
			  END IF;	  	
		--==================LED_11================= 
		WHEN LED_11 =>
		rd_addr <= "00001010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
				----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_12;
			  ELSE
			  next_st <= LED_11;
			  END IF;	
		--==================LED_12================= 
		WHEN LED_12 =>
		rd_addr <= "00001011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
				----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_13;
			  ELSE
			  next_st <= LED_12;
			  END IF;	  
		--==================LED_13================= 
		WHEN LED_13 =>
		rd_addr <= "00001100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
				----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_14;
			  ELSE
			  next_st <= LED_13;
			  END IF;
		--==================LED_14================= 
		WHEN LED_14 =>
		rd_addr <= "00001101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
				----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_15;
			  ELSE
			  next_st <= LED_14;
			  END IF;
		--==================LED_15================= 
		WHEN LED_15 =>
			rd_addr <= "00001110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
		       ---OUTPUT PINs----------------
				----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
			------OUTPUT, addr, en------------
			en_timer <= '1';
			------CONDITION FSM---------------
			  IF(ready_timer='1' ) THEN 
			  next_st <= LED_16;
			  ELSE
			  next_st <= LED_15;
			  END IF;  	  
		--==================LED_16==================
		WHEN LED_16 =>
         rd_addr <= "00001111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;		-- Definición de los pines
    ---OUTPUT PINs----------------
				----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '0';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------
    -- Asignación del address
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_17;
    ELSE
        next_st <= LED_16;
    END IF;

		--==================LED_17==================
WHEN LED_17 =>
         rd_addr <= "00010000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ---OUTPUT PINs----------------
				----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    
    -- Asignación del address
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_18;
    ELSE
        next_st <= LED_17;
    END IF;

		--==================LED_18==================
WHEN LED_18 =>
rd_addr <= "00010001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    			----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    
    -- Asignación del address
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_19;
    ELSE
        next_st <= LED_18;
    END IF;

--==================LED_19==================
WHEN LED_19 =>
rd_addr <= "00010010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    			----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    
    -- Asignación del address
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_20;
    ELSE
        next_st <= LED_19;
    END IF;

--==================LED_20==================
WHEN LED_20 =>
rd_addr <= "00010011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    			----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    
    -- Asignación del address
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_21;
    ELSE
        next_st <= LED_20;
    END IF;
--==================LED_21==================
WHEN LED_21 =>
rd_addr <= "00010100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    			----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    
    -- Asignación del address
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_22;
    ELSE
        next_st <= LED_21;
    END IF;

--==================LED_22==================
WHEN LED_22 =>
rd_addr <= "00010101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    		----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del address
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_23;
    ELSE
        next_st <= LED_22;
    END IF;
		
		--==================LED_23==================
WHEN LED_23 =>
rd_addr <= "00010110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Asignación del address
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_24;
    ELSE
        next_st <= LED_23;
    END IF;

		--==================LED_24==================
WHEN LED_24 =>
rd_addr <= "00010111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '0';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Asignación del address
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_25;
    ELSE
        next_st <= LED_24;
    END IF;

		--==================LED_25==================
WHEN LED_25 =>
rd_addr <= "00011000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
   
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_26;
    ELSE
        next_st <= LED_25;
    END IF;

		--==================LED_26==================
WHEN LED_26 =>
rd_addr <= "00011001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';  
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_27;
    ELSE
        next_st <= LED_26;
    END IF;

		--==================LED_27==================
WHEN LED_27 =>
rd_addr <= "00011010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_28;
    ELSE
        next_st <= LED_27;
    END IF;

	 --==================LED_28==================
WHEN LED_28 =>
rd_addr <= "00011011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_29;
    ELSE
        next_st <= LED_28;
    END IF;

	--==================LED_29==================
WHEN LED_29 =>
    rd_addr <= "00011100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Asignación del address

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_30;
    ELSE
        next_st <= LED_29;
    END IF;
		--==================LED_30==================
WHEN LED_30 =>
rd_addr <= "00011101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_31;
    ELSE
        next_st <= LED_30;
    END IF;
		--==================LED_31==================
WHEN LED_31 =>
rd_addr <= "00011110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
 
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_32;
    ELSE
        next_st <= LED_31;
    END IF;

	 --==================LED_32==================
WHEN LED_32 =>
rd_addr <= "00011111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '0';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_33;
    ELSE
        next_st <= LED_32;
    END IF;
	
	--==================LED_33==================
WHEN LED_33 =>
rd_addr <= "00100000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_34;
    ELSE
        next_st <= LED_33;
    END IF;

	 --==================LED_34==================
WHEN LED_34 =>
rd_addr <= "00100001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_35;
    ELSE
        next_st <= LED_34;
    END IF;

	 --==================LED_35==================
WHEN LED_35 =>
rd_addr <= "00100010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_36;
    ELSE
        next_st <= LED_35;
    END IF;
		--==================LED_36==================
WHEN LED_36 =>
rd_addr <= "00100011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_37;
    ELSE
        next_st <= LED_36;
    END IF;

	 --==================LED_37==================
WHEN LED_37 =>
rd_addr <= "00100100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_38;
    ELSE
        next_st <= LED_37;
    END IF;
	--==================LED_38==================
WHEN LED_38 =>
rd_addr <= "00100101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_39;
    ELSE
        next_st <= LED_38;
    END IF;
--==================LED_39==================
WHEN LED_39 =>
rd_addr <= "00100110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
   
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_40;
    ELSE
        next_st <= LED_39;
    END IF;
--==================LED_40==================
WHEN LED_40 =>
rd_addr <= "00100111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '0';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_41;
    ELSE
        next_st <= LED_40;
    END IF;
--==================LED_41==================
WHEN LED_41 =>
rd_addr <= "00101000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_42;
    ELSE
        next_st <= LED_41;
    END IF;
--==================LED_42==================
WHEN LED_42 =>
rd_addr <= "00101001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_43;
    ELSE
        next_st <= LED_42;
    END IF;
--==================LED_43==================
WHEN LED_43 =>
rd_addr <= "00101010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_44;
    ELSE
        next_st <= LED_43;
    END IF;
--==================LED_44==================
WHEN LED_44 =>
rd_addr <= "00101011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
  ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_45;
    ELSE
        next_st <= LED_44;
    END IF;
--==================LED_45==================
WHEN LED_45 =>
rd_addr <= "00101100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_46;
    ELSE
        next_st <= LED_45;
    END IF;
--==================LED_46==================
WHEN LED_46 =>
rd_addr <= "00101101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_47;
    ELSE
        next_st <= LED_46;
    END IF;
--==================LED_47==================
WHEN LED_47 =>
rd_addr <= "00101110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_48;
    ELSE
        next_st <= LED_47;
    END IF;
--==================LED_48==================
WHEN LED_48 =>
 rd_addr <= "00101111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '0';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
   
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_49;
    ELSE
        next_st <= LED_48;
    END IF;
--==================LED_49==================
WHEN LED_49 =>
rd_addr <= "00110000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------
    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_50;
    ELSE
        next_st <= LED_49;
    END IF;
--==================LED_50==================
WHEN LED_50 =>
rd_addr <= "00110001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_51;
    ELSE
        next_st <= LED_50;
    END IF;
	 
	 --==================LED_51==================
WHEN LED_51 =>
rd_addr <= "00110010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_52;
    ELSE
        next_st <= LED_51;
    END IF;
	 --==================LED_52==================
WHEN LED_52 =>
rd_addr <= "00110011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;

    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_53;
    ELSE
        next_st <= LED_52;
    END IF;
	 	 --==================LED_53==================
WHEN LED_53 =>
rd_addr <= "00110100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_54;
    ELSE
        next_st <= LED_53;
    END IF;
	 	 	 --==================LED_54==================
WHEN LED_54 =>
rd_addr <= "00110101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_55;
    ELSE
        next_st <= LED_54;
    END IF;
	 
	 --==================LED_55==================
WHEN LED_55 =>
rd_addr <= "00110110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_56;
    ELSE
        next_st <= LED_55;
    END IF;
	 
	 	 --==================LED_56==================
WHEN LED_56 =>
rd_addr <= "00110111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '0';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_57;
    ELSE
        next_st <= LED_56;
    END IF;
	 
	 	 	 --==================LED_57==================
WHEN LED_57 =>
rd_addr <= "00111000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_58;
    ELSE
        next_st <= LED_57;
    END IF;
	 
	  --==================LED_58==================
WHEN LED_58 =>
rd_addr <= "00111001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_59;
    ELSE
        next_st <= LED_58;
    END IF;
	 
	   --==================LED_59==================
WHEN LED_59 =>
rd_addr <= "00111010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_60;
    ELSE
        next_st <= LED_59;
    END IF;
	 
	  --==================LED_60==================
WHEN LED_60 =>
rd_addr <= "00111011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_61;
    ELSE
        next_st <= LED_60;
    END IF;
	 
	   --==================LED_61==================
WHEN LED_61 =>
rd_addr <= "00111100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
     ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_62;
    ELSE
        next_st <= LED_61;
    END IF;
	 
	 --==================LED_62==================
WHEN LED_62 =>
rd_addr <= "00111101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_63;
    ELSE
        next_st <= LED_62;
    END IF;

	 --==================LED_63==================
WHEN LED_63 =>
rd_addr <= "00111110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_64;
    ELSE
        next_st <= LED_63;
    END IF;
	 
	 	 --==================LED_64==================
WHEN LED_64 =>
rd_addr <= "00111111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '0';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_65;
    ELSE
        next_st <= LED_64;
    END IF;
	 
	  --==================LED_65==================
WHEN LED_65 =>
rd_addr <= "01000000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_66;
    ELSE
        next_st <= LED_65;
    END IF;
	 
	   --==================LED_66==================
WHEN LED_66 =>
rd_addr <= "01000001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_67;
    ELSE
        next_st <= LED_66;
    END IF;
	 
	    --==================LED_67==================
WHEN LED_67 =>
rd_addr <= "01000010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
      ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_68;
    ELSE
        next_st <= LED_67;
    END IF;
	 
	  --==================LED_68==================
WHEN LED_68 =>
rd_addr <= "01000011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
     ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_69;
    ELSE
        next_st <= LED_68;
    END IF;

	   --==================LED_69==================
WHEN LED_69 =>
rd_addr <= "01000100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_70;
    ELSE
        next_st <= LED_69;
    END IF;
	 
	 	   --==================LED_70==================
WHEN LED_70 =>
rd_addr <= "01000101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_71;
    ELSE
        next_st <= LED_70;
    END IF;

	    --==================LED_71==================
WHEN LED_71 =>
rd_addr <= "01000110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_72;
    ELSE
        next_st <= LED_71;
    END IF;
	 
	 	    --==================LED_72==================
WHEN LED_72 =>
rd_addr <= "01000111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '0';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_73;
    ELSE
        next_st <= LED_72;
    END IF;
	 
	     --==================LED_73==================
WHEN LED_73 =>
rd_addr <= "01001000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_74;
    ELSE
        next_st <= LED_73;
    END IF;
	 
	  --==================LED_74==================
WHEN LED_74 =>
rd_addr <= "01001001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '0';
 
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_75;
    ELSE
        next_st <= LED_74;
    END IF;
	 
	  --==================LED_75==================
WHEN LED_75 =>
rd_addr <= "01001010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_76;
    ELSE
        next_st <= LED_75;
    END IF;
	 
	 --==================LED_76==================
WHEN LED_76 =>
rd_addr <= "01001011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_77;
    ELSE
        next_st <= LED_76;
    END IF;
	 
	 	 --==================LED_77==================
WHEN LED_77 =>
rd_addr <= "01001100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_78;
    ELSE
        next_st <= LED_77;
    END IF;
	 
	  	 --==================LED_78==================
WHEN LED_78 =>
rd_addr <= "01001101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_79;
    ELSE
        next_st <= LED_78;
    END IF;
	 
	  	 --==================LED_79==================
    WHEN LED_79 =>
	 rd_addr <= "01001110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    ----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_80;
    ELSE
        next_st <= LED_79;
    END IF;
	 
	 	 --==================LED_80==================
    WHEN LED_80 =>
	 	 rd_addr <= "01001111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '0';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_81;
    ELSE
        next_st <= LED_80;
    END IF;
	 
	 	 --==================LED_81==================
    WHEN LED_81 =>
	 	 	 rd_addr <= "01010000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_82;
    ELSE
        next_st <= LED_81;
    END IF;
	 
	 	 --==================LED_82==================
    WHEN LED_82 =>
	 	 	rd_addr <= "01010001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_83;
    ELSE
        next_st <= LED_82;
    END IF;
	 
	 	 --==================LED_83==================
    WHEN LED_83 =>
	 	 	rd_addr <= "01010010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_84;
    ELSE
        next_st <= LED_83;
    END IF;
	 
	 	 --==================LED_84==================
    WHEN LED_84 =>
	 	 	 	rd_addr <= "01010011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_85;
    ELSE
        next_st <= LED_84;
    END IF;
	 
	 	 --==================LED_85==================
    WHEN LED_85 =>
rd_addr <= "01010100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
  
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_86;
    ELSE
        next_st <= LED_85;
    END IF;
	 
	 	 --==================LED_86==================
    WHEN LED_86 =>
rd_addr <= "01010101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
     -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_87;
    ELSE
        next_st <= LED_86;
    END IF;
	 
	  --==================LED_87==================
    WHEN LED_87 =>
	 rd_addr <= "01010110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_88;
    ELSE
        next_st <= LED_87;
    END IF;
	 
	 --==================LED_88==================
    WHEN LED_88 =>
	  rd_addr <= "01010111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '0';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_89;
    ELSE
        next_st <= LED_88;
    END IF;
	 
	  --==================LED_89==================
    WHEN LED_89 =>
	  rd_addr <= "01011000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_90;
    ELSE
        next_st <= LED_89;
    END IF;
	 
	  --==================LED_90==================
    WHEN LED_90 =>
	  rd_addr <= "01011001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
 
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_91;
    ELSE
        next_st <= LED_90;
    END IF;
	 
	  --==================LED_91==================
    WHEN LED_91 =>
	 rd_addr <= "01011010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_92;
    ELSE
        next_st <= LED_91;
    END IF;
	 
	   --==================LED_92==================
    WHEN LED_92 =>
	 	 rd_addr <= "01011011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_93;
    ELSE
        next_st <= LED_92;
    END IF;
	 
	 	   --==================LED_93==================
    WHEN LED_93 =>
	 rd_addr <= "01011100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
   
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_94;
    ELSE
        next_st <= LED_93;
    END IF;
	 
	  	   --==================LED_94==================
    WHEN LED_94 =>
	  rd_addr <= "01011101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_95;
    ELSE
        next_st <= LED_94;
    END IF;
	 
	   	   --==================LED_95==================
    WHEN LED_95 =>
	 rd_addr <= "01011110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_96;
    ELSE
        next_st <= LED_95;
    END IF;
	 
	 	   --==================LED_96==================
    WHEN LED_96 =>
	 rd_addr <= "01011111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '0';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_97;
    ELSE
        next_st <= LED_96;
    END IF;
	 
	    --==================LED_97==================
    WHEN LED_97 =>
	 rd_addr <= "01100000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_98;
    ELSE
        next_st <= LED_97;
    END IF;
	 
	  
	    --==================LED_98==================
    WHEN LED_98 =>
	 rd_addr <= "01100001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_99;
    ELSE
        next_st <= LED_98;
    END IF;
	 
	 
	    --==================LED_99==================
    WHEN LED_99 =>
	 rd_addr <= "01100010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
  -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
  
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_100;
    ELSE
        next_st <= LED_99;
    END IF;
	 
	   --==================LED_100==================
    WHEN LED_100 =>
	 rd_addr <= "01100011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_101;
    ELSE
        next_st <= LED_100;
    END IF;
	 
	 --==================LED_101==================
    WHEN LED_101 =>
	 rd_addr <= "01100100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
  
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_102;
    ELSE
        next_st <= LED_101;
    END IF;
	 
	 --==================LED_102==================
    WHEN LED_102 =>
	 rd_addr <= "01100101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_103;
    ELSE
        next_st <= LED_102;
    END IF;
	 
	 	 --==================LED_103==================
    WHEN LED_103 =>
	 rd_addr <= "01100110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
     -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_104;
    ELSE
        next_st <= LED_103;
    END IF;
	 
	  --==================LED_104==================
    WHEN LED_104 =>
	 rd_addr <= "01100111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
     -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '0';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_105;
    ELSE
        next_st <= LED_104;
    END IF;
	 
	 --==================LED_105==================
    WHEN LED_105 =>
	 rd_addr <= "01101000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_106;
    ELSE
        next_st <= LED_105;
    END IF;
	 
	  --==================LED_106==================
    WHEN LED_106 =>
	 rd_addr <= "01101001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_107;
    ELSE
        next_st <= LED_106;
    END IF;
	 
	  --==================LED_107==================
    WHEN LED_107 =>
	 rd_addr <= "01101010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_108;
    ELSE
        next_st <= LED_107;
    END IF;
	 
	   --==================LED_108==================
    WHEN LED_108 =>
	 rd_addr <= "01101011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
 
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_109;
    ELSE
        next_st <= LED_108;
    END IF;
	 
	    --==================LED_109==================
    WHEN LED_109 =>
	 rd_addr <= "01101100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_110;
    ELSE
        next_st <= LED_109;
    END IF;
	 
	 	    --==================LED_110==================
    WHEN LED_110 =>
	 rd_addr <= "01101101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
  
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_111;
    ELSE
        next_st <= LED_110;
    END IF;
	 
	     --==================LED_111==================
    WHEN LED_111 =>
	 rd_addr <= "01101110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_112;
    ELSE
        next_st <= LED_111;
    END IF;
	 
	     --==================LED_112==================
    WHEN LED_112 =>
	 	 rd_addr <= "01101111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '0';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_113;
    ELSE
        next_st <= LED_112;
    END IF;
	 
	     --==================LED_113==================
    WHEN LED_113 =>
	 rd_addr <= "01110000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= led_state;
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_114;
    ELSE
        next_st <= LED_113;
    END IF;
	 
	     --==================LED_114==================
    WHEN LED_114 =>
	 rd_addr <= "01110001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= led_state;
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_115;
    ELSE
        next_st <= LED_114;
    END IF;
	 
	      --==================LED_115==================
    WHEN LED_115 =>
	 rd_addr <= "01110010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= led_state;
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_116;
    ELSE
        next_st <= LED_115;
    END IF;
	 
	       --==================LED_116==================
    WHEN LED_116 =>
	 rd_addr <= "01110011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= led_state;
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_117;
    ELSE
        next_st <= LED_116;
    END IF;
	       --==================LED_117==================
    WHEN LED_117 =>
	 rd_addr <= "01110100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= led_state;
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_118;
    ELSE
        next_st <= LED_117;
    END IF;
	 
	 	       --==================LED_118==================
    WHEN LED_118 =>
	 rd_addr <= "01110101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= led_state;
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_119;
    ELSE
        next_st <= LED_118;
    END IF;
	 
	 	       --==================LED_119==================
    WHEN LED_119 =>
	 rd_addr <= "01110110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= led_state;
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_120;
    ELSE
        next_st <= LED_119;
    END IF;
	 
	 	       --==================LED_120==================
    WHEN LED_120 =>
	 rd_addr <= "01110111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '0';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '1';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= led_state;
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_121;
    ELSE
        next_st <= LED_120;
    END IF;
	 
	 	       --==================LED_121==================
    WHEN LED_121 =>
	 rd_addr <= "01111000";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
     -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= led_state;
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_122;
    ELSE
        next_st <= LED_121;
    END IF;
	 
	 	       --==================LED_122==================
    WHEN LED_122 =>
	  rd_addr <= "01111001";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= led_state;
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_123;
    ELSE
        next_st <= LED_122;
    END IF;
	 
	  	       --==================LED_123==================
    WHEN LED_123 =>
	 rd_addr <= "01111010";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= led_state;
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_124;
    ELSE
        next_st <= LED_123;
    END IF;
	 
	  	       --==================LED_124==================
    WHEN LED_124 =>
	 rd_addr <= "01111011";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN 
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
   -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= led_state;
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_125;
    ELSE
        next_st <= LED_124;
    END IF;
	 
	  	       --==================LED_125==================
    WHEN LED_125 =>
	 rd_addr <= "01111100";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= led_state;
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_126;
    ELSE
        next_st <= LED_125;
    END IF;
	 
	 	       --==================LED_126==================
    WHEN LED_126 =>
	 rd_addr <= "01111101";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= led_state;
			PIN_31	<= '0';
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';

    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_127;
    ELSE
        next_st <= LED_126;
    END IF;
	 
	        --==================LED_127==================
    WHEN LED_127 =>
	 rd_addr <= "01111110";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= led_state;
			PIN_32	<= '0';
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '1';
    
 
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_128;
    ELSE
        next_st <= LED_127;
    END IF;
	 
	      --==================LED_128==================
    WHEN LED_128 =>
	 rd_addr <= "01111111";
			IF (pos_actual_1 = rd_addr OR pos_actual_2 = rd_addr OR pos_actual_3 = rd_addr OR pos_actual_4 = rd_addr OR pos_actual_5 = rd_addr OR pos_actual_6 = rd_addr OR pos_actual_7 = rd_addr) THEN  
			led_state <= '1'; 
			ELSE 
			led_state <= '0';
			END IF;
    -- Definición de los pines
    -----Filas---------------
			PIN_9	   <= '1';
			PIN_14	<= '1';
			PIN_8		<= '1';
			PIN_12	<= '1';
			PIN_1		<= '1';
			PIN_7		<= '1';
			PIN_2		<= '1';
			PIN_5		<= '1';
			--*************
			PIN_25	<= '1';
			PIN_30	<= '1';
			PIN_24	<= '1';
			PIN_28	<= '1';
			PIN_17	<= '1';
			PIN_23	<= '1';
			PIN_18	<= '1';
			PIN_21	<= '0';
			----Columnas--------------
			PIN_13	<= '0';
			PIN_3	   <= '0';
			PIN_4	   <= '0';
			PIN_10	<= '0';
			PIN_6	   <= '0';
			PIN_11	<= '0';
			PIN_15	<= '0';
			PIN_16	<= '0';
			--************
			PIN_29	<= '0';
			PIN_19	<= '0';
			PIN_20	<= '0';
			PIN_26	<= '0';
			PIN_22	<= '0';
			PIN_27	<= '0';
			PIN_31	<= '0';
			PIN_32	<= led_state;
    ----------------------------------

    -- Asignación del en_timer
    en_timer <= '0';
    
    -- Transición de estados
    IF(ready_timer = '1') THEN
        next_st <= LED_1;
    ELSE
        next_st <= LED_128;
    END IF;
		 
		 
		  END CASE;
	  END PROCESS;
					 
END ARCHITECTURE;