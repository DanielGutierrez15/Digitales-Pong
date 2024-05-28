LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
----------------------------------------------------
ENTITY Mux_posiciones_raquets IS
    Port (
          selector         : IN  STD_LOGIC_VECTOR(1 downto 0); ---- sale de los edge detect
          posx_r           : IN  STD_LOGIC_VECTOR(7 downto 0);
          posx_actual_r    : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END ENTITY Mux_posiciones_raquets;
-----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF Mux_posiciones_raquets IS

BEGIN

    WITH selector SELECT
        posx_actual_r <= STD_LOGIC_VECTOR(unsigned(posx_r))          when "00",   
                         STD_LOGIC_VECTOR(unsigned(posx_r)   + 16)   when "01",   -- Se mueve abajo
                         STD_LOGIC_VECTOR(unsigned(posx_r)   - 16)   when "10",   -- Se mueve arriba
							    STD_LOGIC_VECTOR(unsigned(posx_r))          when "11",   
                         (others => '0') when others;
END ARCHITECTURE Behavioral;