LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------------------
ENTITY Comp_lateral_izq IS
    PORT(
        X1        : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        left_wall : OUT STD_LOGIC --- 1 cuando esta en la pared de la izquierda
    );
END ENTITY Comp_lateral_izq;
-----------------------------------------------------------------------------------
ARCHITECTURE gatelevel OF Comp_lateral_izq IS

    SIGNAL X1_int : integer range 0 to 127;
-------------------------------------------------------------------------------------------	 
BEGIN
    X1_int <= to_integer(unsigned(X1));
    
    WITH X1_int SELECT
        left_wall <= '1' when 0 | 16 | 32 | 48 | 64 | 80 | 96 | 112 ,
        '0' when others;

END ARCHITECTURE gatelevel;