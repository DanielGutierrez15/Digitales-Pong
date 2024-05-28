LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
--------------------------------------------------------------------
ENTITY vect_to_ram IS
    GENERIC ( DATA_WIDTH : INTEGER := 8);
    PORT (
        clk          : IN  STD_LOGIC;
        reset        : IN  STD_LOGIC;
        address_out  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        data_out     : OUT STD_LOGIC);
END ENTITY vect_to_ram;

ARCHITECTURE rtl OF vect_to_ram IS
    --TYPE mem_1d_type IS ARRAY (0 TO 127) OF STD_LOGIC;
    SIGNAL array_reg : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL current_address : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
BEGIN
   -- array_reg <= "00111100000000000100001000011000100110010011110010100101011111101000000111111111101001011111111101000010011001100011110000000000";
	-- array_reg <= "11111111111111111000000000000001100110100010110110101011001001011010101010101101101010100110010110011010001011011000000000000001";
	-- array_reg <= "11000000000000111011101000101111010010110010001001001010101011100100101001100010001110100010111010000000000000011100000000000011";
	   array_reg <= "11111111111111111000000000000001001110100010111001001011001000100100101010101110010010100110001000111010001011100000000000000000";
	 PROCESS(clk, reset)
    BEGIN
        IF reset = '1' THEN
            current_address <= "00000000"; -- Reiniciar el contador de dirección en 0 al activarse el reset
        ELSIF rising_edge(clk) THEN
            -- Incrementar la dirección en cada flanco de subida del reloj
            current_address <= STD_LOGIC_VECTOR(unsigned(current_address)+1);
        END IF;
    END PROCESS;

    ------------------------------------------------------------------
    address_out <= current_address;
    data_out <= array_reg(to_integer(unsigned(current_address)));

    
END ARCHITECTURE rtl;