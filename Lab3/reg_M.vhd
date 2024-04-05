--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity reg_M is
	port(
		clk, global_reset : in std_logic;
		
		M_ID_in : in STD_LOGIC_VECTOR(2 downto 0);
		
		Branch : out STD_LOGIC;
		MemRead : out STD_LOGIC;
		MemWrite : out STD_LOGIC
		
		);
end reg_M;


architecture structural of reg_M is

-- wires
signal M_ID_t : STD_LOGIC_VECTOR(2 downto 0);

begin
	
	reg_M_ID : entity work.nBit_reg(structural)
		generic map( 3 )
		port map(M_ID_in,
		clk, '1', global_reset,
		M_ID_t,
		open);
			-- parallel_in, clk, preset, clear, q, q_not	
	
	Branch <= M_ID_t(0);
	MemRead <= M_ID_t(1);
	MemWrite <= M_ID_t(2);
			
end structural;