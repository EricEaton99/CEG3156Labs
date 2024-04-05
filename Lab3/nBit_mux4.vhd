-- nBit_mux4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity nBit_mux4 is
generic ( n : positive := 4 );
port(
	in0, in1, in2, in3 : in std_logic_vector(n-1 downto 0);
	sel : in std_logic_vector(1 downto 0);
	out0 : out std_logic_vector(n-1 downto 0));
end nBit_mux4;

architecture rtl of nBit_mux4 is

-- wires
signal sel0_mask, sel1_mask, mux0, mux1 : std_logic_vector(n-1 downto 0);

begin
	sel0_mask <= (others => sel(0));
	sel1_mask <= (others => sel(1));
	
	out0 <= (not sel0_mask and not sel1_mask and in0) or (not sel0_mask and sel1_mask and in1) or (sel0_mask and not sel1_mask and in2) or (sel0_mask and sel1_mask and in3);
end rtl;