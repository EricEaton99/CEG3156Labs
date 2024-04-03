LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity AU_Simple is
	generic(
		dsz : positive := 32);
	port(
		A, B : in std_logic_vector(dsz-1 downto 0);
		op_sel : in std_logic;
		result : out std_logic_vector(dsz-1 downto 0);
		c_out, overflow : out std_logic);
end AU_Simple;

architecture structural of AU_Simple is

-- wires
signal B_sub : std_logic_vector(dsz-1 downto 0);
signal is_sub, c_in : std_logic;

begin
--	op_sel	Opperation
----------------------
--	0 			add
--	1 			subtract
	
	is_sub <= op_sel;
	
	sub_block: entity work.nBit_adder_subtraction_block(structural)
		generic map(dsz)		-- assert is handled by cla4
		port map(B, 	is_sub, 		B_sub, c_in);
				-- b_in, is_subtract, b_out, c_out
	
	decode: entity work.nBit_cla4_adder(structural)
		generic map(dsz)		-- assert is handled by cla4
		port map(A, B_sub, c_in, result, c_out, overflow);
				-- a, b, 		c_in, sum, c_out, overflow
	
end structural;


