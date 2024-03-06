-- nBit_reg


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity nBit_reg_en is
generic ( n : positive := 4 );
port(
	parallel_in : in std_logic_vector(n-1 downto 0);
	clk, preset, clear, en : in std_logic;
	q, q_not: out std_logic_vector(n-1 downto 0));
end nBit_reg_en;

architecture structural of nBit_reg_en is


-- conmponents

-- wires
	

begin	

	--bits 1->n-2
	loop0: for i in 0 to n-1 generate
		dff: entity work.d_flipflop_en(structural)
			port map (
				parallel_in(i), clk, preset, clear, en,
				q(i), q_not(i));
	end generate;

	
end structural;