LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity LU_Simple is
	generic(
		dsz : positive := 32);
	port(
		A, B : in std_logic_vector(dsz-1 downto 0);
		op_sel : in std_logic;
		result : out std_logic_vector(dsz-1 downto 0));
end LU_Simple;

architecture Structural of LU_Simple is

begin
--	op_sel	Opperation
----------------------
--	000 		AND
--	001 		OR
	
	LU_mux2 : entity work.nBit_mux2(Structural)
		generic map (dsz)
		port map(op_sel, A and B, A or B, result);
	
end Structural;


