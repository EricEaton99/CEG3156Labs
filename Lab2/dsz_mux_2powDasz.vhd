LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity dsz_mux_2powDasz is
port(
	sel : in std_logic_vector(dasz-1 downto 0);
	inp : in data_array((2**dasz)-1 downto 0);
	outp : out std_logic_vector(dsz-1 downto 0));
end dsz_mux_2powDasz;

architecture structural of dsz_mux_2powDasz is

-- conmponents
--none

-- wires
signal en_mask : std_logic_vector((2**dasz)-1 downto 0);

begin
	
end structural;