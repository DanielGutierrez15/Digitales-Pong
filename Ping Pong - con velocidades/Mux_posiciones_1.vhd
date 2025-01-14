LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
----------------------------------------------------
ENTITY Mux_posiciones_1 IS
    Port (
          selector         : IN  STD_LOGIC_VECTOR(2 downto 0); ---- sale de FSM
          posx_1           : IN  STD_LOGIC_VECTOR(7 downto 0);
          posx_actual_1    : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END ENTITY Mux_posiciones_1;
-----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF Mux_posiciones_1 IS

BEGIN

    WITH selector SELECT
        posx_actual_1 <= STD_LOGIC_VECTOR(unsigned(posx_1)   - 15)   when "000",   -- up_right
                         STD_LOGIC_VECTOR(unsigned(posx_1)   + 15)   when "001",   -- Down_left
                         STD_LOGIC_VECTOR(unsigned(posx_1)   + 17)   when "010",   -- Down_right
							    STD_LOGIC_VECTOR(unsigned(posx_1)   - 17)   when "011",   -- Up_left
								 STD_LOGIC_VECTOR(unsigned(posx_1)   + 1 )   when "100",   -- Right
								 STD_LOGIC_VECTOR(unsigned(posx_1)   - 1 )   when "101",   -- Left
                         STD_LOGIC_VECTOR(unsigned(posx_1))          when others;
END ARCHITECTURE Behavioral;