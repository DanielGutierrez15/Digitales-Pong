LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
----------------------------------------------------
ENTITY Mux_contador_rebotes IS
    Port (
          selector                : IN  STD_LOGIC; ---- sale de el ena de la FSM
          count_rebotes           : IN  STD_LOGIC_VECTOR(7 downto 0);
          count_actual_rebotes    : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END ENTITY Mux_contador_rebotes;
-----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF Mux_contador_rebotes IS

BEGIN

    WITH selector SELECT
        count_actual_rebotes <= STD_LOGIC_VECTOR(unsigned(count_rebotes)   + 1)    when '1',   -- se aumentará
                                STD_LOGIC_VECTOR(unsigned(count_rebotes))          when others;
END ARCHITECTURE Behavioral;