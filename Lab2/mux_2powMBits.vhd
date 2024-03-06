LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity mux_2powMBits is
generic ( m : positive := 4 );
port(
	sel : in std_logic_vector(m-1 downto 0);
	inp : in std_logic_vector((2**m)-1 downto 0);
	outp : out std_logic);
end mux_2powMBits;

architecture rtl of mux_2powMBits is

-- conmponents
--none

-- wires
signal en_mask : std_logic_vector((2**m)-1 downto 0);

begin
	dec : entity work.nBit_decoder(structural)
		generic map(m)
		port map(sel, en_mask);

	loop0: for i in 0 to (2**m)-1 generate
		tsb: entity work.tristate_buffer(structural)
			port map (
				en_mask(i), inp(i), outp);
	end generate;
end rtl;