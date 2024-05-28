LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------------------
ENTITY Comp_lateral_arriba IS
    PORT(
        X1      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        up_wall : OUT STD_LOGIC --- 1 cuando esta en el techo
    );
END ENTITY Comp_lateral_arriba;
-----------------------------------------------------------------------------------
ARCHITECTURE gatelevel OF Comp_lateral_arriba IS

    SIGNAL X1_int : integer range 0 to 127;
	 
-------------------------------------------------------------------------------	 
BEGIN
    X1_int <= to_integer(unsigned(X1));
    
    WITH X1_int SELECT
        up_wall <= '1' when 1 to 14,
                   '0' when others;

END ARCHITECTURE gatelevel;