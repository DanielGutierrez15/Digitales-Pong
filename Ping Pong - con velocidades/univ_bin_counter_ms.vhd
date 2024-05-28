LIBRARY 	IEEE;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY univ_bin_counter_ms IS 

PORT ( CLK     :  in STD_LOGIC;
       RST     : in STD_LOGIC;
		 ena     : in STD_LOGIC;
		 syn_clr : in STD_LOGIC;
		 load    : in STD_LOGIC;
		 up      : in STD_LOGIC;
		 d       : in STD_LOGIC_VECTOR(29 DOWNTO 0);
		 max_tick : OUT STD_LOGIC;
		 min_tick : OUT STD_LOGIC;
		 Counter  : OUT STD_LOGIC_VECTOR(29 DOWNTO 0));
		 
END ENTITY;

ARCHITECTURE rtl OF univ_bin_counter_ms IS 
 
 CONSTANT ONES   :UNSIGNED(29 DOWNTO 0) :="111011100110101100101000000000";
 CONSTANT ZEROS  :UNSIGNED(29 DOWNTO 0) :=(OTHERS =>'0');
 SIGNAL COUNT_S  :UNSIGNED(29 DOWNTO 0);
 SIGNAL COUNT_NEXT  :UNSIGNED(29 DOWNTO 0);
 
 BEGIN 
 
COUNT_NEXT <= (OTHERS => '0') WHEN syn_clr = '1' ELSE 
              UNSIGNED(D)   WHEN load = '1'    ELSE 
              COUNT_S + 1   WHEN (ena = '1' AND up = '1' AND COUNT_S < ONES) ELSE 
              COUNT_S - 1   WHEN (ena = '1' AND up = '0' AND COUNT_S > ZEROS) ELSE 
              ZEROS         WHEN COUNT_S = ONES ELSE 
              COUNT_S;
PROCESS(CLK,RST)
VARIABLE TEMP : UNSIGNED (29 DOWNTO 0);
BEGIN 
 
 IF (rst='1') then 
  temp :=(others =>'0');
  elsif (rising_edge(clk)) then 
  temp := count_next ;
    end if;
  
  counter <=STD_LOGIC_VECTOR(TEMP);
  COUNT_S <=temp;
  END PROCESS;
  
  max_tick <= '0' WHEN count_s = ONES ELSE '1';
  min_tick <= '1' when count_s = zeros else '0';
  
  END ARCHITECTURE;