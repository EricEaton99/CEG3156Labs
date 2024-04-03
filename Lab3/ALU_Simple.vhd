LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_misc.all;

-- op_sel	op
--	000 		AND
--	001 		OR
--	010 		add
--	110 		subtract
--	111 		set-on-less-than

entity ALU_Simple is
	generic(
		dsz : positive := 32);
	port(
		A, B : in std_logic_vector(dsz-1 downto 0);
		op_sel : in std_logic_vector(2 downto 0);
		result : out std_logic_vector(dsz-1 downto 0);
		zero, c_out, overflow, less_than, equal_to : out std_logic);
end ALU_Simple;

architecture structural of ALU_Simple is

-- wires
signal AU_out, LU_out, result_t : std_logic_vector(dsz-1 downto 0);
signal c_out_t, overflow_t : std_logic;

begin
--	op_sel	Opperation
----------------------
--	000 		AND
--	001 		OR
--	010 		add
--	110 		subtract
--	111 		set-on-less-than
	
	-- a < b => a-b < 0
				
	LU : entity work.LU_Simple(structural)
			generic map(dsz)
			port map(A, B, op_sel(0), LU_out);
				-- 	A, B, op_sel, 		result

	AU : entity work.AU_Simple(structural)
			generic map(dsz)
			port map(A, B, op_sel(2), AU_out, c_out_t, overflow_t);
				-- 	A, B, op_sel, 		result, c_out, overflow
	
	mux2 : entity work.nBit_mux2(structural)
			generic map(dsz)
			port map(op_sel(1), LU_out, AU_out, result_t);
	
	zero <= nor_reduce(result_t);
	c_out <= c_out_t and op_sel(2);
	overflow <= overflow_t and op_sel(2);
	less_than <= not op_sel(0) and AU_out(dsz-1);
	equal_to <= '1' when A = B else '0';
	
	result <= result_t;
	
end structural;


