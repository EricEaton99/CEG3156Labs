--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity reg_WB is
	port(
		clk, global_reset : in std_logic;
		
		WB_in : in STD_LOGIC_VECTOR(1 downto 0);
		
		MemToReg : out STD_LOGIC;
		RegWrite : out STD_LOGIC
		);
end reg_WB;


architecture structural of reg_WB is

-- wires
signal WB_t : STD_LOGIC_VECTOR(2 downto 0);

begin
	
	reg_WB : entity work.nBit_reg(structural)
		generic map( 2 )
		port map(WB_in,
		clk, '1', global_reset,
		WB_t,
		open);
			-- parallel_in, clk, preset, clear, q, q_not	
	
	RegWrite <= WB_t(0);
	MemToReg <= WB_t(1);
			
end structural;