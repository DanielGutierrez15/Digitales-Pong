LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
----------------------------------------------------------
ENTITY register_file IS
	GENERIC(	DATA_WIDTH: INTEGER:= 1;
				ADDR_WIDTH: INTEGER:= 8);
	PORT(
		clk		: IN	STD_LOGIC;
		wr_en		: IN	STD_LOGIC;
		w_addr	: IN	STD_LOGIC_VECTOR(ADDR_WIDTH-1 DOWNTO 0); 
		r_addr	: IN	STD_LOGIC_VECTOR(ADDR_WIDTH-1 DOWNTO 0);
		w_data	: IN	STD_LOGIC;  --_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		r_data	: OUT STD_LOGIC   --_VECTOR(DATA_WIDTH-1 DOWNTO 0)
	);
end register_file;
-----------------------------------------------------------
ARCHITECTURE rtl OF register_file IS
	TYPE mem_2d_type IS ARRAY (0 to 2**ADDR_WIDTH-1) OF STD_LOGIC;--_VECTOR(DATA_WIDTH-1 DOWNTO 0);
	SIGNAL array_reg	:	mem_2d_type;
	SIGNAL en			:	STD_LOGIC_VECTOR(2**ADDR_WIDTH-1 DOWNTO 0);
	signal addr_reg	:	STD_LOGIC_VECTOR(ADDR_WIDTH-1 DOWNTO 0);
BEGIN
	--WRITE PROCESS
	PROCESS(clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF (wr_en = '1') THEN
				array_reg(to_integer(unsigned(w_addr)))<= w_data;	
			END IF;
			addr_reg <= r_addr;
		END IF;
	END PROCESS;	
	--READ PORT
	r_data <= 	array_reg(to_integer(unsigned(r_addr)));
END ARCHITECTURE;
----------------------------------------------------------