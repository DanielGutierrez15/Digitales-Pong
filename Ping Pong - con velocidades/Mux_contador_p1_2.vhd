LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
----------------------------------------------------
ENTITY Mux_contador_p1_2 IS
    Port (
          selector             : IN  STD_LOGIC; ---- sale de el ena de la FSM
          count_p1_2           : IN  STD_LOGIC_VECTOR(3 downto 0);
          count_actual_p1_2    : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
END ENTITY Mux_contador_p1_2;
-----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF Mux_contador_p1_2 IS

BEGIN

    WITH selector SELECT
        count_actual_p1_2 <= STD_LOGIC_VECTOR(unsigned(count_p1_2)   + 1)    when '1',   -- se aumentará
                             STD_LOGIC_VECTOR(unsigned(count_p1_2))          when others;
END ARCHITECTURE Behavioral;