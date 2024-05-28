----------------------------------------------
-- flip flop para el led del medio de la raqueta 2
----------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
--------------------------------------------
ENTITY flip_flop_2r2 IS                            
      PORT( clk           :   IN     STD_LOGIC;
		      rst           :   IN     STD_LOGIC;
				rst_win       :   IN     STD_LOGIC;
		      ena           :   IN     STD_LOGIC;
		      d             :   IN     STD_LOGIC_VECTOR(7 DOWNTO 0);
		      q             :   OUT    STD_LOGIC_VECTOR(7 DOWNTO 0));
END flip_flop_2r2;
--------------------------------------------
ARCHITECTURE rtl of flip_flop_2r2 is
BEGIN

     dff: PROCESS(clk, rst, d , rst_win)
	  BEGIN
	     IF(rst = '1' OR rst_win = '1') THEN
		     q <= "00111111"; -- 63
		  ELSIF (rising_edge(clk)) THEN
		     IF (ena = '1') THEN
			      q <= d; 
			  END IF;
		  END IF;
	   END PROCESS;
END ARCHITECTURE;