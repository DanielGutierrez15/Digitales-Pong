LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
----------------------------------------------------
ENTITY Mux_velocidades IS
    Port (
          rebotes          : IN  STD_LOGIC_VECTOR(7 DOWNTO 0); ---- sale de FSM
          velocidad        : OUT STD_LOGIC_VECTOR(22 DOWNTO 0)
    );
END ENTITY Mux_velocidades;
-----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF Mux_velocidades IS
 
     SIGNAL rebotes_int : integer range 0 to 127;
BEGIN
     rebotes_int <= to_integer(unsigned(rebotes));
	 
    WITH rebotes_int SELECT
    velocidad <= "11010101100111111000000" when  0 to 25,    -- 7 millones (la más lenta)
                 "10001001010101000100000" when 26 to 45,    -- 4.5 millones (media)
                 "01011011100011011000000" when 46 to 127,   -- 3 millones (alta)
                 "01001100010010110100000" when others;      -- 2.5 millones (default para valores fuera de rango)
END ARCHITECTURE Behavioral;