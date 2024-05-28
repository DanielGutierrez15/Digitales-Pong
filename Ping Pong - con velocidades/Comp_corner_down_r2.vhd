LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-------------------------------------------------------
ENTITY Comp_corner_down_r2 IS
    PORT(
        bola             : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        raqueta          : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        cdown_r2         : OUT STD_LOGIC -- 1 si la bola choca con la esquina de la raqueta 2
    );
END ENTITY Comp_corner_down_r2;
---------------------------------------------------------
ARCHITECTURE gatelevel OF Comp_corner_down_r2 IS
    SIGNAL X1_int, X2_int : integer range 0 to 127;
BEGIN
    X1_int <= to_integer(unsigned(bola));
    X2_int <= to_integer(unsigned(raqueta));

    WITH X1_int - X2_int SELECT
        cdown_r2 <=      '1' when 15 , -- Si la diferencia es 15
                         '0' when others;

END ARCHITECTURE gatelevel;