--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity reg_MEM_WB is
	port(
		clk, global_reset : in std_logic;
		
		MEM_to_REG_toreg, REG_write_outp_toreg : in std_logic;
		REG_write_adr_outp_toreg : in std_logic_vector(dasz-1 downto 0);
		ALU_result_toreg : in std_logic_vector(dsz-1 downto 0);
		PC_next_toreg : in std_logic_vector(isz-1 downto 0);
		
		
		MEM_to_REG, REG_write_outp : out std_logic;
		REG_write_adr_outp : out std_logic_vector(dasz-1 downto 0);
		ALU_result : out std_logic_vector(dsz-1 downto 0);
		PC_next : out std_logic_vector(isz-1 downto 0)
		);
end reg_MEM_WB;


architecture structural of reg_MEM_WB is

begin
	
	reg_MEM_to_REG : entity work.d_flipflop(structural)
		port map(MEM_to_REG_toreg,
		clk, '1', global_reset,
		MEM_to_REG,
		open);
			-- d, clk, preset, clear, q, q_not
			
	reg_REG_write_outp : entity work.d_flipflop(structural)
		port map(REG_write_outp_toreg,
		clk, '1', global_reset,
		REG_write_outp,
		open);
			-- d, clk, preset, clear, q, q_not
				
	
	reg_REG_write_adr_outp : entity work.nBit_reg(structural)
		generic map( dasz )
		port map(REG_write_adr_outp_toreg,
		clk, '1', global_reset,
		REG_write_adr_outp,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
			
	
	reg_ALU_result : entity work.nBit_reg(structural)
		generic map( dsz )
		port map(ALU_result_toreg,
		clk, '1', global_reset,
		ALU_result,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
			
	reg_PC_next : entity work.nBit_reg(structural)
		generic map( isz )
		port map(PC_next_toreg,
		clk, '1', global_reset,
		PC_next,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
end structural;