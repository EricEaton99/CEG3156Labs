--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity reg_ID_EX_piplined is
	port(
		clk, global_reset : in std_logic;
		
		WB_ID_in : in STD_LOGIC_VECTOR(1 downto 0);
		M_ID_in : in STD_LOGIC_VECTOR(2 downto 0);
		EX_ID_in : in STD_LOGIC_VECTOR(3 downto 0);
		
		WB_ID : out STD_LOGIC_VECTOR(1 downto 0);
		M_ID : out STD_LOGIC_VECTOR(2 downto 0);
		
		RegDst_reg : out STD_LOGIC;		
		ALUOp_reg : out STD_LOGIC_VECTOR(1 downto 0);
		ALUSrc_reg : out STD_LOGIC
		);
end reg_ID_EX_piplined;


architecture structural of reg_ID_EX_piplined is

-- wires

begin
	
	reg_WB_ID : entity work.nBit_reg(structural)
		generic map( 2 )
		port map(WB_ID_in,
		clk, '1', global_reset,
		WB_ID,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	
	reg_M_ID : entity work.nBit_reg(structural)
		generic map( 3 )
		port map(M_ID_in,
		clk, '1', global_reset,
		M_ID,
		open);
			-- parallel_in, clk, preset, clear, q, q_not	
	
	
	reg_RegDst : entity work.d_flipflop(structural)
		port map(EX_ID_in(0),
		clk, '1', global_reset,
		RegDst_reg,
		open);
			-- d, clk, preset, clear, q, q_not
	
	reg_ALUOp : entity work.nBit_reg(structural)
		generic map( 2 )
		port map(EX_ID_in(2 downto 1),
		clk, '1', global_reset,
		ALUOp_reg,
		open);
			-- parallel_in, clk, preset, clear, q, q_not		
			
	reg_ALUSrc: entity work.d_flipflop(structural)
		port map(EX_ID_in(3),
		clk, '1', global_reset,
		ALUSrc_reg,
		open);
			-- d, clk, preset, clear, q, q_not
			
end structural;