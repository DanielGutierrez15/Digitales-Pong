LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-------------------------------------------------------
ENTITY Comp_medio_r2 IS
    PORT(
        bola             : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        raqueta          : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        medio_r2         : OUT STD_LOGIC -- 1 si la bola choca con la mitad de la raqueta 1
    );
END ENTITY Comp_medio_r2;
---------------------------------------------------------
ARCHITECTURE gatelevel OF Comp_medio_r2 IS
    SIGNAL X1_int, X2_int : integer range 0 to 127;
BEGIN
    X1_int <= to_integer(unsigned(bola));
    X2_int <= to_integer(unsigned(raqueta));

    WITH X1_int - X2_int SELECT
        medio_r2 <=    '1' when -1 , -- Si la diferencia es -1
                       '0' when others;

END ARCHITECTURE gatelevel;