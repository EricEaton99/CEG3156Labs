-- half adder

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity half_adder is
	port(
		a, b : in std_logic;
		sum, c_out : out std_logic);
end half_adder;

architecture structural of half_adder is
begin	
	sum <= a xor b;
	c_out <= a and b;
end structural;