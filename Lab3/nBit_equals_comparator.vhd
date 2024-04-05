LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_misc.all;

entity nBit_equals_comparator is
	generic ( n : positive := 4 );
	port(
		A, B : in std_logic_vector(n-1 downto 0);
		equal : out std_logic
	);
end nBit_equals_comparator;

architecture structural of nBit_equals_comparator is

signal C : std_logic_vector(n-1 downto 0);

begin
	C <= A xor B;
	equal <= nor_reduce(C);

end structural;