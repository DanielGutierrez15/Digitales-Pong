LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--------------------------------------------
ENTITY Led_Controler IS
	GENERIC(	RAM_WITH: INTEGER:= 8);
	PORT(		--IN
				clk			:	IN		STD_LOGIC;
				rst			:	IN		STD_LOGIC;
				en				:	IN		STD_LOGIC;
				play_again  :	IN		STD_LOGIC;  
				bu_r1       :	IN		STD_LOGIC;  -- button up- raqueta 1
				bd_r1       :	IN		STD_LOGIC;  -- button down - raqueta 1
				bu_r2       :	IN		STD_LOGIC;  -- button up - raqueta 2
				bd_r2       :	IN		STD_LOGIC;  -- button down raqueta 2
				syn_clr		: IN STD_LOGIC;
					----OUT PINs---------------------------
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
			PIN_32		: OUT	STD_LOGIC;
			Score_p1		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			Score_p2		: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
END ENTITY;
--------------------------------------------
ARCHITECTURE structural OF Led_Controler IS
	--Coneccion de bloques genericos
	SIGNAL ena_s		  : STD_LOGIC;
	SIGNAL rd_data_s	  : STD_LOGIC;
	signal en_timer_s	  : STD_LOGIC;
	signal rd_addr_s	  : STD_LOGIC_VECTOR(7 DOWNTO 0);
	--Conecion para vector a RAM
	signal wr_addr_s    : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal wr_data_s	  : STD_LOGIC;
	signal max_tick_s   : STD_LOGIC;
	signal max_tick_clk : STD_LOGIC;
	signal max_tick_vel : STD_LOGIC;
	signal max_tick_image : STD_LOGIC;
	--IMAGEN y posiciones
	signal image_vect	  :STD_LOGIC_VECTOR(127 DOWNTO 0);
	signal posx1        : STD_LOGIC_VECTOR (7 DOWNTO 0);  --posicion de la bola
	signal pos1r1        : STD_LOGIC_VECTOR(7 DOWNTO 0); -- posicion led 1 de raqueta 1
	signal pos2r1        : STD_LOGIC_VECTOR(7 DOWNTO 0); -- posicion led 2 de raqueta 1
	signal pos3r1        : STD_LOGIC_VECTOR(7 DOWNTO 0); -- posicion led 3 de raqueta 1
	signal pos1r2        : STD_LOGIC_VECTOR(7 DOWNTO 0); -- posicion led 1 de raqueta 2
	signal pos2r2        : STD_LOGIC_VECTOR(7 DOWNTO 0); -- posicion led 2 de raqueta 2
	signal pos3r2        : STD_LOGIC_VECTOR(7 DOWNTO 0); -- posicion led 3 de raqueta 2
	--Selector_led 1
	signal Corner_1      : STD_LOGIC;
	signal up_wall_1     : STD_LOGIC;
	signal down_wall_1   : STD_LOGIC;
	signal left_wall_1   : STD_LOGIC;
	signal right_wall_1  : STD_LOGIC;
	signal selector_1    : STD_LOGIC_VECTOR(2 DOWNTO 0);
	signal mux_exit_1    : STD_LOGIC_VECTOR(7 DOWNTO 0);
	--Raqueta 1 
	signal mux_1r1       : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal mux_2r1       : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal mux_3r1       : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal fall_up_r1    : STD_LOGIC;
	signal fall_down_r1  : STD_LOGIC;
	signal fall_r1       : STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal extremos_r1   : STD_LOGIC;
	signal medio_r1      : STD_LOGIC;
	signal cup_r1        : STD_LOGIC;
	signal cdown_r1      : STD_LOGIC;
	--Raqueta 2 
	signal mux_1r2       : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal mux_2r2       : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal mux_3r2       : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal fall_up_r2    : STD_LOGIC;
	signal fall_down_r2  : STD_LOGIC;
	signal fall_r2       : STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal extremos_r2   : STD_LOGIC;
	signal medio_r2      : STD_LOGIC;
	signal cup_r2        : STD_LOGIC;
	signal cdown_r2      : STD_LOGIC;
	---------Reset------------------
	signal gol_reset     : STD_LOGIC;
	---------Puntajes----------------
	signal ena_counter_p1   : STD_LOGIC;
	signal ena_counter_p2   : STD_LOGIC;
	signal count_p1         : STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal count_actual_p1  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal count_p2         : STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal count_actual_p2  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal max_p1           : STD_LOGIC;
	signal max_p2           : STD_LOGIC;
	signal winner           : STD_LOGIC;
	-------Velocidades-----------------
	signal speed                 : STD_LOGIC_VECTOR(22 DOWNTO 0);
	signal ena_count_bounce      : STD_LOGIC;
	signal count_rebotes         : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal count_actual_rebotes  : STD_LOGIC_VECTOR(7 DOWNTO 0);
	------Impresion de imagen------------------
	signal		PIN_1_im		   : STD_LOGIC;
	signal		PIN_2_im		   : STD_LOGIC;
	signal		PIN_3_im		   : STD_LOGIC;
	signal		PIN_4_im		   : STD_LOGIC;
	signal		PIN_5_im		   : STD_LOGIC;
	signal		PIN_6_im		   : STD_LOGIC;
	signal		PIN_7_im		   : STD_LOGIC;
	signal		PIN_8_im		   : STD_LOGIC;
	signal		PIN_9_im		   : STD_LOGIC;
	signal		PIN_10_im		: STD_LOGIC;
	signal		PIN_11_im		: STD_LOGIC;
	signal		PIN_12_im		: STD_LOGIC;
	signal		PIN_13_im		: STD_LOGIC;
	signal		PIN_14_im		: STD_LOGIC;
	signal		PIN_15_im		: STD_LOGIC;
	signal		PIN_16_im		: STD_LOGIC;
	signal		PIN_17_im		: STD_LOGIC;
	signal		PIN_18_im		: STD_LOGIC;
	signal		PIN_19_im		: STD_LOGIC;
	signal		PIN_20_im		: STD_LOGIC;
	signal		PIN_21_im		: STD_LOGIC;
	signal		PIN_22_im		: STD_LOGIC;
	signal		PIN_23_im		: STD_LOGIC;
	signal		PIN_24_im		: STD_LOGIC;
	signal		PIN_25_im		: STD_LOGIC;
	signal		PIN_26_im		: STD_LOGIC;
	signal		PIN_27_im		: STD_LOGIC;
	signal		PIN_28_im		: STD_LOGIC;
	signal		PIN_29_im		: STD_LOGIC;
	signal		PIN_30_im		: STD_LOGIC;
	signal		PIN_31_im		: STD_LOGIC;
	signal		PIN_32_im		: STD_LOGIC;
	------Impresion de animacion------------------
	signal		PIN_1_game		   : STD_LOGIC;
	signal		PIN_2_game		   : STD_LOGIC;
	signal		PIN_3_game		   : STD_LOGIC;
	signal		PIN_4_game		   : STD_LOGIC;
	signal		PIN_5_game	      : STD_LOGIC;
	signal		PIN_6_game		   : STD_LOGIC;
	signal		PIN_7_game		   : STD_LOGIC;
	signal		PIN_8_game		   : STD_LOGIC;
	signal		PIN_9_game		   : STD_LOGIC;
	signal		PIN_10_game		   : STD_LOGIC;
	signal		PIN_11_game		   : STD_LOGIC;
	signal		PIN_12_game		   : STD_LOGIC;
	signal		PIN_13_game		   : STD_LOGIC;
	signal		PIN_14_game		   : STD_LOGIC;
	signal		PIN_15_game		   : STD_LOGIC;
	signal		PIN_16_game		   : STD_LOGIC;
	signal		PIN_17_game		   : STD_LOGIC;
	signal		PIN_18_game		   : STD_LOGIC;
	signal		PIN_19_game		   : STD_LOGIC;
	signal		PIN_20_game		   : STD_LOGIC;
	signal		PIN_21_game			: STD_LOGIC;
	signal		PIN_22_game			: STD_LOGIC;
	signal		PIN_23_game			: STD_LOGIC;
	signal		PIN_24_game			: STD_LOGIC;
	signal		PIN_25_game			: STD_LOGIC;
	signal		PIN_26_game			: STD_LOGIC;
	signal		PIN_27_game			: STD_LOGIC;
	signal		PIN_28_game			: STD_LOGIC;
	signal		PIN_29_game			: STD_LOGIC;
	signal		PIN_30_game			: STD_LOGIC;
	signal		PIN_31_game			: STD_LOGIC;
	signal		PIN_32_game			: STD_LOGIC;
	------Impresion definitiva------------------
	signal      fall_again    : STD_LOGIC;
	signal		PIN_1_def		   : STD_LOGIC;
	signal		PIN_2_def		   : STD_LOGIC;
	signal		PIN_3_def		   : STD_LOGIC;
	signal		PIN_4_def		   : STD_LOGIC;
	signal		PIN_5_def	      : STD_LOGIC;
	signal		PIN_6_def		   : STD_LOGIC;
	signal		PIN_7_def		   : STD_LOGIC;
	signal		PIN_8_def		   : STD_LOGIC;
	signal		PIN_9_def		   : STD_LOGIC;
	signal		PIN_10_def		   : STD_LOGIC;
	signal		PIN_11_def		   : STD_LOGIC;
	signal		PIN_12_def		   : STD_LOGIC;
	signal		PIN_13_def		   : STD_LOGIC;
	signal		PIN_14_def		   : STD_LOGIC;
	signal		PIN_15_def	      : STD_LOGIC;
	signal		PIN_16_def		   : STD_LOGIC;
	signal		PIN_17_def		   : STD_LOGIC;
	signal		PIN_18_def		   : STD_LOGIC;
	signal		PIN_19_def		   : STD_LOGIC;
	signal		PIN_20_def		   : STD_LOGIC;
	signal		PIN_21_def			: STD_LOGIC;
	signal		PIN_22_def			: STD_LOGIC;
	signal		PIN_23_def			: STD_LOGIC;
	signal		PIN_24_def			: STD_LOGIC;
	signal		PIN_25_def			: STD_LOGIC;
	signal		PIN_26_def			: STD_LOGIC;
	signal		PIN_27_def			: STD_LOGIC;
	signal		PIN_28_def			: STD_LOGIC;
	signal		PIN_29_def			: STD_LOGIC;
	signal		PIN_30_def			: STD_LOGIC;
	signal		PIN_31_def			: STD_LOGIC;
	signal		PIN_32_def			: STD_LOGIC;
	
BEGIN

process (max_p1, max_p2, clk)
    variable winner_timer : natural := 0;
begin
    IF rising_edge(clk) then
        IF winner_timer > 0 then
            winner <= '1';  -- Mantener winner en '1'
            winner_timer := winner_timer - 1;  -- Decrementar el temporizador
        ELSE
            -- Si el temporizador ha expirado, actualizar winner según max_p1 y max_p2
            IF (max_p1 = '1' or max_p2 = '1') THEN
                winner <= '1';
                winner_timer := 1000000;  -- Establecer el temporizador en 1000 ciclos de reloj (ajustar según necesidad)
            ELSE
                winner <= '0';
                winner_timer := 0;  -- Reiniciar el temporizador
            END IF;
        END IF;
    END IF;
END PROCESS;
	 
	--image_vect <= "00111100000000000100001000011000100110010011110010100101011111101000000111111111101001011111111101000010011001100011110000000000";
	---------------Bola -------------------------------		
		arriba_led1: entity work.Comp_lateral_arriba
	   PORT MAP (    X1            => posx1,
				        up_wall      => up_wall_1);
						  
		abajo_led1: entity work.Comp_lateral_abajo
	   PORT MAP (    X1          => posx1,
				        down_wall      => down_wall_1);
						  
		izquierda_led1: entity work.Comp_lateral_izq
	   PORT MAP (    X1          => posx1,
				        left_wall   => left_wall_1 );
						
		derecha_led1: entity work.Comp_lateral_derecha
	   PORT MAP (    X1           => posx1,
				        right_wall   => right_wall_1 );
						  
		FSM_bouncing: entity work.bounce_sel
	   PORT MAP (    clk              => clk,
		              rst              => rst, 
						  ena              => '1',
						  ready_timer	    => max_tick_clk,
						  extremos_r1      => extremos_r1,
			           extremos_r2      => extremos_r2, 
						  medio_r1         => medio_r1, 
						  medio_r2         => medio_r2, 
						  cup_r1           => cup_r1,
						  cup_r2           => cup_r2,
						  cdown_r1         => cdown_r1, 
						  cdown_r2         => cdown_r2,
						  left_wall        => left_wall_1,
						  right_wall       => right_wall_1,
						  up_wall          => up_wall_1,
						  down_wall        => down_wall_1,
						  ena_counter_p1   => ena_counter_p1,
						  ena_counter_p2   => ena_counter_p2,
						  ena_count_bounce => ena_count_bounce,
						  gol_reset        => gol_reset,
				        sel_mux          => selector_1); 
		
		Mux_led1: entity work.Mux_posiciones_1
	   PORT MAP (    selector          => selector_1,
		              posx_1            => posx1, 
				        posx_actual_1     => mux_exit_1);
						  
		flipflop_led1: entity work.my_dff
	   PORT MAP (    clk          => max_tick_vel,
		              rst          => gol_reset, 
						  rst_win      => winner,
						  ena          => '1',
						  d            => mux_exit_1,
				        q            => posx1);		
						  
	----------------------RAQUETA 1------------------------------------
	   
	   button_up_r1: entity work.edge_detect
	   PORT MAP (clk        => max_tick_clk,
				    async_sig  => bu_r1,
				    rise       => open,
				    fall       => fall_up_r1);
	  
	   button_down_r1: entity work.edge_detect
	   PORT MAP (clk        => max_tick_clk,
				    async_sig  => bd_r1	,
				    rise       => open,
				    fall       => fall_down_r1);
					 
		fall_r1 <= fall_up_r1 & fall_down_r1;
		
		extremos_raqueta_1: entity work.Comp_extremos_r1
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos1r1,
				        extremos_r1      => extremos_r1);
					
		Medio_raqueta_1: entity work.Comp_medio_r1
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos2r1,
				        medio_r1         => medio_r1);
						  
	   Corner_up_raqueta_1: entity work.Comp_corner_up_r1
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos1r1,
				        cup_r1           => cup_r1);
						  
		Corner_down_raqueta_1: entity work.Comp_corner_down_r1
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos3r1,
				        cdown_r1          => cdown_r1);
						  
		Mux_1raquet1: entity work.Mux_posiciones_raquets
	   PORT MAP (    selector          => fall_r1,
		              posx_r            => pos1r1, 
				        posx_actual_r     => mux_1r1);
						  
		Mux_2raquet1: entity work.Mux_posiciones_raquets
	   PORT MAP (    selector          => fall_r1,
		              posx_r            => pos2r1, 
				        posx_actual_r     => mux_2r1);
						  
		Mux_3raquet1: entity work.Mux_posiciones_raquets
	   PORT MAP (    selector          => fall_r1,
		              posx_r            => pos3r1, 
				        posx_actual_r     => mux_3r1);
					 
	   flipflop_led1r1: entity work.flip_flop_1r1
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst,
						  rst_win      => winner, 
						  ena          => '1',
						  d            => mux_1r1,
				        q            => pos1r1);
						  
	  flipflop_led2r1: entity work.flip_flop_2r1
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst, 
						  rst_win      => winner,
						  ena          => '1',
						  d            => mux_2r1,
				        q            => pos2r1);
						  
	   flipflop_led3r1: entity work.flip_flop_3r1
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst,
						  rst_win      => winner, 
						  ena          => '1',
						  d            => mux_3r1,
				        q            => pos3r1);
						  
		----------------------RAQUETA 2------------------------------------
	   
	   button_up_r2: entity work.edge_detect
	   PORT MAP (clk        => max_tick_clk,
				    async_sig  => bu_r2,
				    rise       => open,
				    fall       => fall_up_r2);
	  
	   button_down_r2: entity work.edge_detect
	   PORT MAP (clk        => max_tick_clk,
				    async_sig  => bd_r2	,
				    rise       => open,
				    fall       => fall_down_r2);
					 
		fall_r2 <= fall_up_r2 & fall_down_r2;
		
		extremos_raqueta_2: entity work.Comp_extremos_r2
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos1r2,
				        extremos_r2      => extremos_r2);
					
		Medio_raqueta_2: entity work.Comp_medio_r2
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos2r2,
				        medio_r2         => medio_r2);
						  
	   Corner_up_raqueta_2: entity work.Comp_corner_up_r2
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos1r2,
				        cup_r2           => cup_r2);
						  
		Corner_down_raqueta_2: entity work.Comp_corner_down_r2
	   PORT MAP (    bola             => posx1,
		              raqueta          => pos3r2,
				        cdown_r2          => cdown_r2);
		
		Mux_1raquet2: entity work.Mux_posiciones_raquets
	   PORT MAP (    selector          => fall_r2,
		              posx_r            => pos1r2, 
				        posx_actual_r     => mux_1r2);
						  
		Mux_2raquet2: entity work.Mux_posiciones_raquets
	   PORT MAP (    selector          => fall_r2,
		              posx_r            => pos2r2, 
				        posx_actual_r     => mux_2r2);
						  
		Mux_3raquet2: entity work.Mux_posiciones_raquets
	   PORT MAP (    selector          => fall_r2,
		              posx_r            => pos3r2, 
				        posx_actual_r     => mux_3r2);
					 
	   flipflop_led1r2: entity work.flip_flop_1r2
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst, 
						  rst_win      => winner,
						  ena          => '1',
						  d            => mux_1r2,
				        q            => pos1r2);
						  
	   flipflop_led2r2: entity work.flip_flop_2r2
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst, 
						  rst_win      => winner,
						  ena          => '1',
						  d            => mux_2r2,
				        q            => pos2r2);
						  
	   flipflop_led3r2: entity work.flip_flop_3r2
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst,
						  rst_win      => winner, 
						  ena          => '1',
						  d            => mux_3r2,
				        q            => pos3r2);
						  
	----------------------contador para la impresion-------------------	
	
	contador_print: entity work.control_counter
	GENERIC MAP (N => 23)
	   PORT MAP (clk             => clk,
				    rst             => rst,
					 ena             => '1',
					 syn_clr         => syn_clr,
					 load            => '0',
					 up              => '1',
					 d               => "10011110111111110010000",
				    num_max         => "00000000001001110001000",
					 max_tick        => max_tick_S,
				    min_tick        => open,
					 counter         => open);
	
	----------------contador Para la bola-------------------	
	
	contador_lectura:	ENTITY work.control_counter
		GENERIC MAP (N => 23)
		PORT MAP		(	clk			  =>	clk,
							rst		     =>	rst,
							ena		     =>	'1',
							syn_clr		  =>	'0',
							load		     =>	'0',
							up		        =>	'1',
							d		        =>	"00000000000000000000000",
							num_max		  =>	speed, 
							max_tick      =>  max_tick_vel,
					      min_tick      =>  open ,
							counter		  =>	open);
							
	----------------contador de los 5.5 millones-------------------	
	
	contador_clks_juego:	ENTITY work.control_counter
		GENERIC MAP (N => 23)
		PORT MAP		(	clk			  =>	clk,
							rst		     =>	rst,
							ena		     =>	'1',
							syn_clr		  =>	'0',
							load		     =>	'0',
							up		        =>	'1',
							d		        =>	"00000000000000000000000",
							num_max		  =>	"10100111110110001100000", -- 5.5 MILLONES
							max_tick      =>  max_tick_clk,
					      min_tick      =>  open ,
							counter		  =>	open);
	-------------Contador de la Imagen----------------------------
	CONTADOR: ENTITY WORK.univ_bin_counter_ms 
    PORT MAP(CLK      =>  clk, 
          rst      =>  rst, 
		    ena      =>  '1', 
		    syn_clr  =>  '0',
		    load     =>  '0',
		    up       =>  '1',
		    d        => (OTHERS =>'0'),
		    max_tick =>  max_tick_image,
		    min_tick =>  open,
		    Counter  =>  open);
			 
	------------------------Scores---------------------------------
	   Mux_contador_player1: entity work.Mux_contador_p1_2
	   PORT MAP (    selector              => ena_counter_p1,
		              count_p1_2            => count_p1, 
				        count_actual_p1_2     => count_actual_p1);
						  
		Mux_contador_player2: entity work.Mux_contador_p1_2
	   PORT MAP (    selector              => ena_counter_p2,
		              count_p1_2            => count_p2, 
				        count_actual_p1_2     => count_actual_p2);
						  
	   flipflop_player1: entity work.flip_flop_scores
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst, 
						  rst_win      => winner,
						  ena          => '1',
					     d            => count_actual_p1,
				        q            => count_p1);
						  
	   flipflop_player2: entity work.flip_flop_scores
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => rst, 
						  rst_win      => winner,
						  ena          => '1',
				   	  d            => count_actual_p2,
				        q            => count_p2);
						  
		Max_puntaje_player_1: entity work.Comparador_9
	   PORT MAP (    counter          => count_p1,
				        Flag             => max_p1);
						  
		Max_puntaje_player_2: entity work.Comparador_9
	   PORT MAP (    counter          => count_p2,
				        Flag             => max_p2);	
						  
		Puntaje_player1: ENTITY WORK.bin_to_sseg
      PORT MAP(  bin  => count_p1,
                 sseg => Score_p1); 
				  
	   Puntaje_player2: ENTITY WORK.bin_to_sseg
      PORT MAP(  bin  => count_p2,
                 sseg => Score_p2); 
					  
    ------------------------Velocidades---------------------------------
	 
	   Mux_contador_rebotes: entity work.Mux_contador_rebotes
	   PORT MAP (    selector                 => ena_count_bounce,
		              count_rebotes            => count_rebotes, 
				        count_actual_rebotes     => count_actual_rebotes);
						 
		flipflop_rebotes: entity work.flip_flop_rebotes
	   PORT MAP (    clk          => max_tick_clk,
		              rst          => gol_reset, 
						  rst_win      => winner,
						  ena          => '1',
					     d            => count_actual_rebotes,
				        q            => count_rebotes);
						  
		Mux_velocidades: entity work.Mux_velocidades
	   PORT MAP (    rebotes       => count_rebotes, 
				        velocidad     => speed);
						  
	  -------------------- Impresion de imagen ----------------------------------
	   Vecto_to_RAM: entity work.vect_to_ram
	   PORT MAP (clk           => clk,
					 reset         => rst,
					 --pos_vect    => image_vect,
				    data_out     => wr_data_s	,
				    address_out  => wr_addr_s);
					 
		RAM: entity work.register_file
	   PORT MAP (clk          => clk,
				    wr_en        => 	'1',
				    w_addr       => wr_addr_s,
					 r_addr       => rd_addr_s,
					 w_data       => wr_data_s,
				    r_data       => rd_data_s);
			
	  
	   led_machine_imagen : entity work.led_machine_imagen
		PORT MAP(		clk			=>	clk, 
							rst			=>	rst,
							ena			=>	en, 
							led_state	=>	rd_data_s,
							ready_timer	=>	max_tick_S,
							rd_addr		=>	rd_addr_s,
							en_timer		=>	ena_s,
							PIN_1 => PIN_1_im,						
							PIN_2 => PIN_2_im,
							PIN_3 => PIN_3_im,
							PIN_4 => PIN_4_im,
							PIN_5 => PIN_5_im,
							PIN_6 => PIN_6_im,
							PIN_7 => PIN_7_im,
							PIN_8 => PIN_8_im,
							PIN_9 => PIN_9_im,
							PIN_10 => PIN_10_im,
							PIN_11 => PIN_11_im,
							PIN_12 => PIN_12_im,
							PIN_13 => PIN_13_im,
							PIN_14 => PIN_14_im,
							PIN_15 => PIN_15_im,
							PIN_16 => PIN_16_im,
							PIN_17 => PIN_17_im,
							PIN_18 => PIN_18_im,
							PIN_19 => PIN_19_im,
							PIN_20 => PIN_20_im,
							PIN_21 => PIN_21_im,
							PIN_22 => PIN_22_im,
							PIN_23 => PIN_23_im,
							PIN_24 => PIN_24_im,
							PIN_25 => PIN_25_im,
							PIN_26 => PIN_26_im,
							PIN_27 => PIN_27_im,
							PIN_28 => PIN_28_im,
							PIN_29 => PIN_29_im,
							PIN_30 => PIN_30_im,
							PIN_31 => PIN_31_im,
							PIN_32 => PIN_32_im);
						  
							
    ------------Impresion de animacion------------------------------------------
	 led_machine : entity work.led_machine
		PORT MAP(		clk			=>	clk, 
							rst			=>	rst,
							ena			=>	en, 
							pos_actual_1 => posx1,
							pos_actual_2 => pos1r1,
							pos_actual_3 => pos2r1,
							pos_actual_4 => pos3r1,
							pos_actual_5 => pos1r2,
							pos_actual_6 => pos2r2,
							pos_actual_7 => pos3r2,
							--led_state	=>	rd_data_s,
							ready_timer	=>	max_tick_S,
							--rd_addr		=>	rd_addr_s,
							en_timer		=>	ena_s,
							PIN_1 => PIN_1_game,						
							PIN_2 => PIN_2_game,
							PIN_3 => PIN_3_game,
							PIN_4 => PIN_4_game,
							PIN_5 => PIN_5_game,
							PIN_6 => PIN_6_game,
							PIN_7 => PIN_7_game,
							PIN_8 => PIN_8_game,
							PIN_9 => PIN_9_game,
							PIN_10 => PIN_10_game,
							PIN_11 => PIN_11_game,
							PIN_12 => PIN_12_game,
							PIN_13 => PIN_13_game,
							PIN_14 => PIN_14_game,
							PIN_15 => PIN_15_game,
							PIN_16 => PIN_16_game,
							PIN_17 => PIN_17_game,
							PIN_18 => PIN_18_game,
							PIN_19 => PIN_19_game,
							PIN_20 => PIN_20_game,
							PIN_21 => PIN_21_game,
							PIN_22 => PIN_22_game,
							PIN_23 => PIN_23_game,
							PIN_24 => PIN_24_game,
							PIN_25 => PIN_25_game,
							PIN_26 => PIN_26_game,
							PIN_27 => PIN_27_game,
							PIN_28 => PIN_28_game,
							PIN_29 => PIN_29_game,
							PIN_30 => PIN_30_game,
							PIN_31 => PIN_31_game,
							PIN_32 => PIN_32_game);
							
		------------------Asignacion definitiva-------------------------------
		button_play_again: entity work.edge_detect
	   PORT MAP (clk        => max_tick_clk,
				    async_sig  => play_again,
				    rise       => open,
				    fall       => fall_again);
					 
		FSM_impresion : entity work.Print_machine
		PORT MAP(		clk			=>	clk, 
							rst			=>	rst,
							ena			=>	'1', 
							play_again	=>	fall_again,
							winner	   =>	winner,
			            ---------inputs_machine_1--------------
							PIN_1_game => PIN_1_game,						
							PIN_2_game => PIN_2_game,
							PIN_3_game => PIN_3_game,
							PIN_4_game => PIN_4_game,
							PIN_5_game => PIN_5_game,
							PIN_6_game => PIN_6_game,
							PIN_7_game => PIN_7_game,
							PIN_8_game => PIN_8_game,
							PIN_9_game => PIN_9_game,
							PIN_10_game => PIN_10_game,
							PIN_11_game => PIN_11_game,
							PIN_12_game => PIN_12_game,
							PIN_13_game => PIN_13_game,
							PIN_14_game => PIN_14_game,
							PIN_15_game => PIN_15_game,
							PIN_16_game => PIN_16_game,
							PIN_17_game => PIN_17_game,
							PIN_18_game => PIN_18_game,
							PIN_19_game => PIN_19_game,
							PIN_20_game => PIN_20_game,
							PIN_21_game => PIN_21_game,
							PIN_22_game => PIN_22_game,
							PIN_23_game => PIN_23_game,
							PIN_24_game => PIN_24_game,
							PIN_25_game => PIN_25_game,
							PIN_26_game => PIN_26_game,
							PIN_27_game => PIN_27_game,
							PIN_28_game => PIN_28_game,
							PIN_29_game => PIN_29_game,
							PIN_30_game => PIN_30_game,
							PIN_31_game => PIN_31_game,
							PIN_32_game => PIN_32_game,
							--------inputs_machine_2----------
							PIN_1_im => PIN_1_im,						
							PIN_2_im => PIN_2_im,
							PIN_3_im => PIN_3_im,
							PIN_4_im => PIN_4_im,
							PIN_5_im => PIN_5_im,
							PIN_6_im => PIN_6_im,
							PIN_7_im => PIN_7_im,
							PIN_8_im => PIN_8_im,
							PIN_9_im => PIN_9_im,
							PIN_10_im => PIN_10_im,
							PIN_11_im => PIN_11_im,
							PIN_12_im => PIN_12_im,
							PIN_13_im => PIN_13_im,
							PIN_14_im => PIN_14_im,
							PIN_15_im => PIN_15_im,
							PIN_16_im => PIN_16_im,
							PIN_17_im => PIN_17_im,
							PIN_18_im => PIN_18_im,
							PIN_19_im => PIN_19_im,
							PIN_20_im => PIN_20_im,
							PIN_21_im => PIN_21_im,
							PIN_22_im => PIN_22_im,
							PIN_23_im => PIN_23_im,
							PIN_24_im => PIN_24_im,
							PIN_25_im => PIN_25_im,
							PIN_26_im => PIN_26_im,
							PIN_27_im => PIN_27_im,
							PIN_28_im => PIN_28_im,
							PIN_29_im => PIN_29_im,
							PIN_30_im => PIN_30_im,
							PIN_31_im => PIN_31_im,
							PIN_32_im => PIN_32_im,
							----------Outputs--------------
							PIN_1_def => PIN_1,						
							PIN_2_def => PIN_2,
							PIN_3_def => PIN_3,
							PIN_4_def => PIN_4,
							PIN_5_def => PIN_5,
							PIN_6_def => PIN_6,
							PIN_7_def => PIN_7,
							PIN_8_def => PIN_8,
							PIN_9_def => PIN_9,
							PIN_10_def => PIN_10,
							PIN_11_def => PIN_11,
							PIN_12_def => PIN_12,
							PIN_13_def => PIN_13,
							PIN_14_def => PIN_14,
							PIN_15_def => PIN_15,
							PIN_16_def => PIN_16,
							PIN_17_def => PIN_17,
							PIN_18_def => PIN_18,
							PIN_19_def => PIN_19,
							PIN_20_def => PIN_20,
							PIN_21_def => PIN_21,
							PIN_22_def => PIN_22,
							PIN_23_def => PIN_23,
							PIN_24_def => PIN_24,
							PIN_25_def => PIN_25,
							PIN_26_def => PIN_26,
							PIN_27_def => PIN_27,
							PIN_28_def => PIN_28,
							PIN_29_def => PIN_29,
							PIN_30_def => PIN_30,
							PIN_31_def => PIN_31,
							PIN_32_def => PIN_32);

END ARCHITECTURE;
----------------------------------------------
