LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-------------------------------------------------
ENTITY bounce_sel IS

	PORT( ----INPUTS-----------------
			clk				   : IN	STD_LOGIC;
			rst				   : IN	STD_LOGIC;
			ena       		   : IN  STD_LOGIC;
			ready_timer		   : IN	STD_LOGIC;
			extremos_r1       : IN  STD_LOGIC;
			extremos_r2       : IN  STD_LOGIC;
			medio_r1          : IN  STD_LOGIC;
			medio_r2          : IN  STD_LOGIC;
			cup_r1            : IN  STD_LOGIC;
			cup_r2            : IN  STD_LOGIC;
			cdown_r1          : IN  STD_LOGIC;
			cdown_r2          : IN  STD_LOGIC;
			left_wall    		: IN  STD_LOGIC;
			right_wall       	: IN  STD_LOGIC;
			up_wall       		: IN  STD_LOGIC;
			down_wall         : IN  STD_LOGIC;
			---OUT_PUTS-----------------------
			ena_counter_p1    : OUT  STD_LOGIC;
			ena_counter_p2    : OUT  STD_LOGIC;
			ena_count_bounce  : OUT  STD_LOGIC;
			gol_reset		   : OUT  STD_LOGIC;
			sel_mux		      : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0));
			
	END ENTITY bounce_sel;
-------------------------------------------------
ARCHITECTURE fsm OF bounce_sel IS
	TYPE   state IS (Up_right, Down_left, Down_right, Up_left, Left_b , Right_b, Score_p1 , Score_p2, Up_right_trans, Down_left_trans, Down_right_trans, Up_left_trans, Left_b_trans, Right_b_trans);
	SIGNAL pri_st, next_st : state;
	SIGNAL RIUD  : STD_LOGIC_VECTOR (11 DOWNTO 0);
BEGIN
   RIUD <= right_wall & left_wall & up_wall & down_wall & extremos_r1 & extremos_r2 & medio_r1 & medio_r2 & cup_r1 & cdown_r1 & cup_r2 & cdown_r2 ;
----------------------------------------------------------------------------------------------------------------------
	losecuencial: PROCESS(rst,clk)
		BEGIN
			IF (rst = '1') THEN
			pri_st <= Up_right;
			ELSIF (rising_edge(clk)) THEN 
			pri_st <= next_st;
			END IF;
		END PROCESS losecuencial;
-------------------------------------------------
	locombinacional: PROCESS(pri_st,RIUD,ena,ready_timer)
	BEGIN	
	CASE pri_st IS
	--==================Up_right==================
		WHEN Up_right =>
		
          sel_mux <= "000";
			 gol_reset <= '0';
			 ena_counter_p1 <= '0';
			 ena_counter_p2 <= '0';
			 ena_count_bounce <= '0';
			------CONDITION FSM---------------
			  IF(RIUD ="001000000000" ) THEN 
			  next_st <= Down_right_trans;
			  
			  ELSIF (RIUD ="000001000000") THEN
			  next_st <= Up_left_trans;
			  
			  ELSIF (RIUD = "000000000001" OR RIUD = "001001000000" ) THEN
			  next_st <= Down_left_trans;
			  
			  ELSIF (RIUD ="000000010000") THEN
			  next_st <= Left_b_trans;
			  
			  ELSIF (RIUD ="100000000000") THEN
			  next_st <= Score_p1;
			  
			  ElSE
			  next_st <= Up_right;
			  
			  END IF;
		--==================Down_left=================	  
		WHEN Down_left =>
           sel_mux <= "001";
			  gol_reset <= '0';
			  ena_counter_p1 <= '0';
			  ena_counter_p2 <= '0';
			  ena_count_bounce <= '0';
			  ------CONDITION FSM---------------
			  IF(RIUD ="000010000000" ) THEN 
			  next_st <= Down_right_trans;
			  
			  ELSIF (RIUD ="000100000000") THEN
			  next_st <= Up_left_trans;
			  
			  ELSIF (RIUD = "000000001000" OR RIUD = "000110000000" ) THEN
			  next_st <= Up_right_trans;
			  
			  ELSIF (RIUD ="000000100000") THEN
			  next_st <= Right_b_trans;
			  
			  ELSIF (RIUD ="010000000000") THEN
			  next_st <= Score_p2;
			  
			  ElSE
			  next_st <= Down_left;
			  
			  END IF;
		--==================Down_right=================	  
		WHEN Down_right =>
		     sel_mux <= "010";
			  gol_reset <= '0';
			  ena_counter_p1 <= '0';
			  ena_counter_p2 <= '0';
			  ena_count_bounce <= '0';
			  ------CONDITION FSM---------------
			  IF(RIUD ="000000010000" ) THEN 
			  next_st <= Left_b_trans;
			  
			  ELSIF (RIUD ="000100000000") THEN
			  next_st <= Up_right_trans;
			  
			  ELSIF (RIUD = "000000000010" OR RIUD = "000101000000" ) THEN
			  next_st <= Up_left_trans;
			  
			  ELSIF (RIUD ="000001000000") THEN
			  next_st <= Down_left_trans;
			  
			  ELSIF (RIUD ="100000000000") THEN
			  next_st <= Score_p1;
			  
			  ElSE
			  next_st <= Down_right;
			  
			  END IF;
		--==================Up_left=================	  
		WHEN Up_left =>
        	  sel_mux <= "011";
			  gol_reset <= '0';
			  ena_counter_p1 <= '0';
			  ena_counter_p2 <= '0';
			  ena_count_bounce <= '0';
			  ------CONDITION FSM---------------
			  IF(RIUD ="001000000000" ) THEN 
			  next_st <= Down_left_trans;
			  
			  ELSIF (RIUD ="000010000000") THEN
			  next_st <= Up_right_trans;
			  
			  ELSIF (RIUD = "000000000100" OR RIUD = "001010000000" ) THEN
			  next_st <= Down_right_trans;
			  
			  ELSIF (RIUD ="000000100000") THEN
			  next_st <= Right_b_trans;
			  
			  ELSIF (RIUD ="010000000000") THEN
			  next_st <= Score_p2;
			  
			  ElSE
			  next_st <= Up_left;
			  
			  END IF;
			  
			  	--==================Right_b=================	  
		WHEN Right_b =>
        	  sel_mux <= "100";
			  gol_reset <= '0';
			  ena_counter_p1 <= '0';
			  ena_counter_p2 <= '0';
			  ena_count_bounce <= '0';
			  ------CONDITION FSM---------------
			  IF(RIUD ="000000010000" ) THEN 
			  next_st <= Left_b_trans;
			  
			  ELSIF (RIUD ="000001000000") THEN
			  next_st <= Up_left_trans;
			  
			  ELSIF (RIUD ="100000000000") THEN
			  next_st <= Score_p1;
			  
			  ElSE
			  next_st <= Right_b;
			  
			  END IF;
			  
			  	--==================Left_b=================	  
		WHEN Left_b =>
       	  sel_mux <= "101";
			  gol_reset <= '0';
			  ena_counter_p1 <= '0';
			  ena_counter_p2 <= '0';
			  ena_count_bounce <= '0';
			  ------CONDITION FSM---------------
			  IF(RIUD ="000000100000" ) THEN 
			  next_st <= Right_b_trans;
			  
			  ELSIF (RIUD ="000010000000") THEN
			  next_st <= Down_right_trans;
			  
			  ELSIF (RIUD ="010000000000") THEN
			  next_st <= Score_p2;
			  
			  ElSE
			  next_st <= Left_b;
			  
			  END IF;
			  
			  --==================Up_right_trans==================
		    WHEN Up_right_trans =>
          sel_mux <= "000";
			 gol_reset <= '0';
			 ena_counter_p1 <= '0';
			 ena_counter_p2 <= '0';
			 ena_count_bounce <= '1';
			------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Up_right;
			  ElSE
			  next_st <= Up_right_trans;
			  END IF;
			  
			   --==================Down_left_trans==================
		    WHEN Down_left_trans =>
          sel_mux <= "001";
			 gol_reset <= '0';
			 ena_counter_p1 <= '0';
			 ena_counter_p2 <= '0';
			 ena_count_bounce <= '1';
			------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Down_left;
			  ElSE
			  next_st <= Down_left_trans;
			  END IF;
			  
			     --==================Down_right_trans==================
		    WHEN Down_right_trans =>
          sel_mux <= "010";
			 gol_reset <= '0';
			 ena_counter_p1 <= '0';
			 ena_counter_p2 <= '0';
			 ena_count_bounce <= '1';
			------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Down_right;
			  ElSE
			  next_st <= Down_right_trans;
			  END IF;
			  
			      --==================Up_left_trans==================
		    WHEN Up_left_trans =>
          sel_mux <= "011";
			 gol_reset <= '0';
			 ena_counter_p1 <= '0';
			 ena_counter_p2 <= '0';
			 ena_count_bounce <= '1';
			------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Up_left;
			  ElSE
			  next_st <= Up_left_trans;
			  END IF;
			  
			   --==================Right_b_trans==================
		    WHEN Right_b_trans =>
          sel_mux <= "100";
			 gol_reset <= '0';
			 ena_counter_p1 <= '0';
			 ena_counter_p2 <= '0';
			 ena_count_bounce <= '1';
			------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Right_b;
			  ElSE
			  next_st <= Right_b_trans;
			  END IF;
			  
			   --==================Left_b_trans==================
		    WHEN Left_b_trans =>
          sel_mux <= "101";
			 gol_reset <= '0';
			 ena_counter_p1 <= '0';
			 ena_counter_p2 <= '0';
			 ena_count_bounce <= '1';
			------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Left_b;
			  ElSE
			  next_st <= Left_b_trans;
			  END IF;
			  	  	--==================Score Player 1=================	  
		WHEN Score_p1 =>
       	  sel_mux <= "111";
			  gol_reset <= '1';
			  ena_counter_p1 <= '1';
			  ena_counter_p2 <= '0';
			  ena_count_bounce <= '0';
			  ------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Left_b;
			  ElSE
			  next_st <= Score_p1;
			  END IF;
			  
			  	  	--================== Score Player 2=================	  
		WHEN Score_p2 =>
       	  sel_mux <= "110";
			  gol_reset <= '1';
			  ena_counter_p1 <= '0';
			  ena_counter_p2 <= '1';
			  ena_count_bounce <= '0';
			  ------CONDITION FSM---------------
			  IF( ready_timer ='1' ) THEN 
			  next_st <= Right_b;
			  ElSE
			  next_st <= Score_p2;
			  END IF;
			  
	  END CASE;
	  END PROCESS;
					 
END ARCHITECTURE;