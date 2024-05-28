LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------------------
ENTITY Comp_lateral_derecha IS
    PORT(
        X1        : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        right_wall : OUT STD_LOGIC --- 1 cuando esta en la pared de la derecha
    );
END ENTITY Comp_lateral_derecha;
-----------------------------------------------------------------------------------
ARCHITECTURE gatelevel OF Comp_lateral_derecha IS

    SIGNAL X1_int : integer range 0 to 127;
-------------------------------------------------------------------------------------------	 
BEGIN
    X1_int <= to_integer(unsigned(X1));
    
    WITH X1_int SELECT
        right_wall <= '1' when 15 | 31 | 47 | 63 | 79 | 95 | 111 | 127  ,
        '0' when others;

END ARCHITECTURE gatelevel;