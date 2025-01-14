LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-------------------------------------------------
ENTITY Print_machine IS

	PORT( ----INPUTS-----------------
			clk				: IN	STD_LOGIC;
			rst				: IN	STD_LOGIC;
			ena       		: IN  STD_LOGIC;
			play_again     : IN  STD_LOGIC;
			--ready_timer		: IN	STD_LOGIC;
			winner		   : IN	STD_LOGIC;
			----------inputs_machine_1---------------
			PIN_1_game		: IN	STD_LOGIC;
			PIN_2_game		: IN	STD_LOGIC;
			PIN_3_game		: IN	STD_LOGIC;
			PIN_4_game		: IN	STD_LOGIC;
			PIN_5_game	   : IN	STD_LOGIC;
			PIN_6_game		: IN	STD_LOGIC;
			PIN_7_game		: IN	STD_LOGIC;
			PIN_8_game		: IN	STD_LOGIC;
			PIN_9_game	   : IN	STD_LOGIC;
			PIN_10_game		: IN	STD_LOGIC;
			PIN_11_game		: IN	STD_LOGIC;
			PIN_12_game		: IN	STD_LOGIC;
			PIN_13_game		: IN	STD_LOGIC;
			PIN_14_game		: IN	STD_LOGIC;
			PIN_15_game		: IN	STD_LOGIC;
			PIN_16_game		: IN	STD_LOGIC;
			PIN_17_game		: IN	STD_LOGIC;
			PIN_18_game		: IN	STD_LOGIC;
			PIN_19_game		: IN	STD_LOGIC;
			PIN_20_game		: IN	STD_LOGIC;
			PIN_21_game		: IN	STD_LOGIC;
			PIN_22_game		: IN	STD_LOGIC;
			PIN_23_game		: IN	STD_LOGIC;
			PIN_24_game		: IN	STD_LOGIC;
			PIN_25_game		: IN	STD_LOGIC;
			PIN_26_game		: IN	STD_LOGIC;
			PIN_27_game		: IN	STD_LOGIC;
			PIN_28_game		: IN	STD_LOGIC;
			PIN_29_game		: IN	STD_LOGIC;
			PIN_30_game		: IN	STD_LOGIC;
			PIN_31_game		: IN	STD_LOGIC;
			PIN_32_game		: IN	STD_LOGIC;
			-----inputs_machine_2----------------
			PIN_1_im		: IN	STD_LOGIC;
			PIN_2_im		: IN	STD_LOGIC;
			PIN_3_im		: IN	STD_LOGIC;
			PIN_4_im		: IN	STD_LOGIC;
			PIN_5_im	   : IN	STD_LOGIC;
			PIN_6_im		: IN	STD_LOGIC;
			PIN_7_im		: IN	STD_LOGIC;
			PIN_8_im		: IN	STD_LOGIC;
			PIN_9_im	   : IN	STD_LOGIC;
			PIN_10_im		: IN	STD_LOGIC;
			PIN_11_im		: IN	STD_LOGIC;
			PIN_12_im		: IN	STD_LOGIC;
			PIN_13_im		: IN	STD_LOGIC;
			PIN_14_im		: IN	STD_LOGIC;
			PIN_15_im		: IN	STD_LOGIC;
			PIN_16_im		: IN	STD_LOGIC;
			PIN_17_im		: IN	STD_LOGIC;
			PIN_18_im		: IN	STD_LOGIC;
			PIN_19_im		: IN	STD_LOGIC;
			PIN_20_im		: IN	STD_LOGIC;
			PIN_21_im		: IN	STD_LOGIC;
			PIN_22_im		: IN	STD_LOGIC;
			PIN_23_im		: IN	STD_LOGIC;
			PIN_24_im		: IN	STD_LOGIC;
			PIN_25_im		: IN	STD_LOGIC;
			PIN_26_im		: IN	STD_LOGIC;
			PIN_27_im		: IN	STD_LOGIC;
			PIN_28_im		: IN	STD_LOGIC;
			PIN_29_im		: IN	STD_LOGIC;
			PIN_30_im		: IN	STD_LOGIC;
			PIN_31_im		: IN	STD_LOGIC;
			PIN_32_im		: IN	STD_LOGIC;
			----PINs---------------------------
			PIN_1_def		   : OUT	STD_LOGIC;
			PIN_2_def		   : OUT	STD_LOGIC;
			PIN_3_def		   : OUT	STD_LOGIC;
			PIN_4_def		   : OUT	STD_LOGIC;
			PIN_5_def	      : OUT	STD_LOGIC;
			PIN_6_def		   : OUT	STD_LOGIC;
			PIN_7_def		   : OUT	STD_LOGIC;
			PIN_8_def		   : OUT	STD_LOGIC;
			PIN_9_def	      : OUT	STD_LOGIC;
			PIN_10_def		: OUT	STD_LOGIC;
			PIN_11_def		: OUT	STD_LOGIC;
			PIN_12_def		: OUT	STD_LOGIC;
			PIN_13_def		: OUT	STD_LOGIC;
			PIN_14_def		: OUT	STD_LOGIC;
			PIN_15_def		: OUT	STD_LOGIC;
			PIN_16_def		: OUT	STD_LOGIC;
			PIN_17_def		: OUT	STD_LOGIC;
			PIN_18_def		: OUT	STD_LOGIC;
			PIN_19_def		: OUT	STD_LOGIC;
			PIN_20_def		: OUT	STD_LOGIC;
			PIN_21_def		: OUT	STD_LOGIC;
			PIN_22_def		: OUT	STD_LOGIC;
			PIN_23_def		: OUT	STD_LOGIC;
			PIN_24_def		: OUT	STD_LOGIC;
			PIN_25_def		: OUT	STD_LOGIC;
			PIN_26_def		: OUT	STD_LOGIC;
			PIN_27_def		: OUT	STD_LOGIC;
			PIN_28_def		: OUT	STD_LOGIC;
			PIN_29_def		: OUT	STD_LOGIC;
			PIN_30_def		: OUT	STD_LOGIC;
			PIN_31_def		: OUT	STD_LOGIC;
			PIN_32_def		: OUT	STD_LOGIC);
			
	END ENTITY Print_machine;
----------------------------------------------------------------------------------------------------------------------------------
	ARCHITECTURE fsm OF Print_machine IS
	TYPE   state IS (Game_animation, Final_image);
	SIGNAL pri_st, next_st : state;
	
	BEGIN
	----------------------------------------------------------------------------------------------------------------------
	losecuencial: PROCESS(rst,clk)
		BEGIN
			IF (rst = '1') THEN
			pri_st <= Game_animation;
			ELSIF (rising_edge(clk)) THEN 
			pri_st <= next_st;
			END IF;
		END PROCESS losecuencial;
	-------------------------------------------------
	locombinacional: PROCESS(pri_st,ena,play_again, winner,PIN_1_game,PIN_2_game,PIN_3_game,PIN_4_game,PIN_5_game,PIN_6_game,PIN_7_game,PIN_8_game,PIN_9_game,PIN_10_game,PIN_11_game,PIN_12_game,PIN_13_game,PIN_14_game,PIN_15_game,PIN_16_game,PIN_17_game,PIN_18_game,PIN_19_game,PIN_20_game,PIN_21_game,PIN_22_game,PIN_23_game,PIN_24_game,PIN_25_game,PIN_26_game,PIN_27_game,PIN_28_game,PIN_29_game,PIN_30_game,PIN_31_game,PIN_32_game,PIN_1_im,PIN_2_im,PIN_3_im,PIN_4_im,PIN_5_im,PIN_6_im,PIN_7_im,PIN_8_im,PIN_9_im,PIN_10_im,PIN_11_im,PIN_12_im,PIN_13_im,PIN_14_im,PIN_15_im,PIN_16_im,PIN_17_im,PIN_18_im,PIN_19_im,PIN_20_im,PIN_21_im,PIN_22_im,PIN_23_im,PIN_24_im,PIN_25_im,PIN_26_im,PIN_27_im,PIN_28_im,PIN_29_im,PIN_30_im,PIN_31_im,PIN_32_im)
	BEGIN	
	CASE pri_st IS
	--==================Game_animation==================
		WHEN Game_animation =>
		
                     PIN_1_def <= PIN_1_game;						
			            PIN_2_def <= PIN_2_game;
							PIN_3_def <= PIN_3_game;
							PIN_4_def <= PIN_4_game;
							PIN_5_def <= PIN_5_game;
							PIN_6_def <= PIN_6_game;
							PIN_7_def <= PIN_7_game;
							PIN_8_def <= PIN_8_game;
							PIN_9_def <= PIN_9_game;
							PIN_10_def <= PIN_10_game;
							PIN_11_def <= PIN_11_game;
							PIN_12_def <= PIN_12_game;
							PIN_13_def <= PIN_13_game;
							PIN_14_def <= PIN_14_game;
							PIN_15_def <= PIN_15_game;
							PIN_16_def <= PIN_16_game;
							PIN_17_def <= PIN_17_game;
							PIN_18_def <= PIN_18_game;
							PIN_19_def <= PIN_19_game;
							PIN_20_def <= PIN_20_game;
							PIN_21_def <= PIN_21_game;
							PIN_22_def <= PIN_22_game;
							PIN_23_def <= PIN_23_game;
							PIN_24_def <= PIN_24_game;
							PIN_25_def <= PIN_25_game;
							PIN_26_def <= PIN_26_game;
							PIN_27_def <= PIN_27_game;
							PIN_28_def <= PIN_28_game;
							PIN_29_def <= PIN_29_game;
							PIN_30_def <= PIN_30_game;
							PIN_31_def <= PIN_31_game;
							PIN_32_def <= PIN_32_game;
							
			------CONDITION FSM---------------
			  IF(winner ='1') THEN 
			  next_st <= Final_image;
			  ElSE
			  next_st <= Game_animation;
			  
			  END IF;
			  
	   --==================Game_animation==================
		WHEN Final_image =>
		
                     PIN_1_def <= PIN_1_im;						
			            PIN_2_def <= PIN_2_im;
							PIN_3_def <= PIN_3_im;
							PIN_4_def <= PIN_4_im;
							PIN_5_def <= PIN_5_im;
							PIN_6_def <= PIN_6_im;
							PIN_7_def <= PIN_7_im;
							PIN_8_def <= PIN_8_im;
							PIN_9_def <= PIN_9_im;
							PIN_10_def <= PIN_10_im;
							PIN_11_def <= PIN_11_im;
							PIN_12_def <= PIN_12_im;
							PIN_13_def <= PIN_13_im;
							PIN_14_def <= PIN_14_im;
							PIN_15_def <= PIN_15_im;
							PIN_16_def <= PIN_16_im;
							PIN_17_def <= PIN_17_im;
							PIN_18_def <= PIN_18_im;
							PIN_19_def <= PIN_19_im;
							PIN_20_def <= PIN_20_im;
							PIN_21_def <= PIN_21_im;
							PIN_22_def <= PIN_22_im;
							PIN_23_def <= PIN_23_im;
							PIN_24_def <= PIN_24_im;
							PIN_25_def <= PIN_25_im;
							PIN_26_def <= PIN_26_im;
							PIN_27_def <= PIN_27_im;
							PIN_28_def <= PIN_28_im;
							PIN_29_def <= PIN_29_im;
							PIN_30_def <= PIN_30_im;
							PIN_31_def <= PIN_31_im;
							PIN_32_def <= PIN_32_im;
							
			------CONDITION FSM---------------
			  IF(play_again  ='1') THEN 
			  next_st <= Game_animation;
			  ElSE
			  next_st <= Final_image;
			  END IF;
			  
			    END CASE;
	  END PROCESS;
					 
END ARCHITECTURE;
