--Comparador de entrada para saber si el número es menor a 10 
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-------------------------------------------------------
ENTITY Comparador_9 IS
    PORT(       counter        :    IN         STD_LOGIC_VECTOR(3 DOWNTO 0); --Entrada del contador de puntos de p1 o p2
                Flag           :    OUT        STD_LOGIC); --La bandera sera '1' cuando el contador sea mayor a 9 

END ENTITY Comparador_9;
-------------------------------------------------------
ARCHITECTURE gatelevel OF Comparador_9 IS
 
 SIGNAL counter_int : integer range 0 to 15;
	 
-------------------------------------------------------------------------------	 
BEGIN
    counter_int <= to_integer(unsigned(counter));
    
    WITH counter_int SELECT
        Flag <= '0' when 0 to 9,
                '1' when others;

END ARCHITECTURE gatelevel;