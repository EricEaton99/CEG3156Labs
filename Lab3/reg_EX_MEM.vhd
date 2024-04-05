--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity reg_EX_MEM is
	port(
		clk, global_reset : in std_logic;
		
		
		REG_write_outp_toreg, MEM_write_toreg, MEM_read_toreg, MEM_to_REG_toreg, jump_toreg, branch_toreg: in std_logic;
		REG_write_adr_outp_toreg : in std_logic_vector(dasz-1 downto 0);
		REG_data2_toreg : in std_logic_vector(dsz-1 downto 0);
		PC_jump_toreg, PC_branch_offset_toreg : in std_logic_vector(isz-1 downto 0);
		
		ALU_result_toreg : in std_logic_vector(dsz-1 downto 0);
		ALU_zero_toreg, ALU_c_out_toreg, ALU_overflow_toreg, ALU_less_than_toreg, ALU_equal_toreg : in std_logic;
	
		
		REG_write_outp, MEM_write, MEM_read, MEM_to_REG, jump, branch: out std_logic;
		REG_write_adr_outp : out std_logic_vector(dasz-1 downto 0);
		REG_data2 : out std_logic_vector(dsz-1 downto 0);
		PC_jump, PC_branch_offset : out std_logic_vector(isz-1 downto 0);
		
		ALU_result : out std_logic_vector(dsz-1 downto 0);
		ALU_zero, ALU_c_out, ALU_overflow, ALU_less_than, ALU_equal : out std_logic
		);
end reg_EX_MEM;


architecture structural of reg_EX_MEM is

begin

	reg_REG_write_outp : entity work.d_flipflop(structural)
		port map(REG_write_outp_toreg,
		clk, '1', global_reset,
		REG_write_outp,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_MEM_write : entity work.d_flipflop(structural)
		port map(MEM_write_toreg,
		clk, '1', global_reset,
		MEM_write,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_MEM_read : entity work.d_flipflop(structural)
		port map(MEM_read_toreg,
		clk, '1', global_reset,
		MEM_read,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_MEM_to_REG : entity work.d_flipflop(structural)
		port map(MEM_to_REG_toreg,
		clk, '1', global_reset,
		MEM_to_REG,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_jump : entity work.d_flipflop(structural)
		port map(jump_toreg,
		clk, '1', global_reset,
		jump,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_branch : entity work.d_flipflop(structural)
		port map(branch_toreg,
		clk, '1', global_reset,
		branch,
		open);
			-- d, clk, preset, clear, q, q_not
			
	
	reg_REG_write_adr_outp : entity work.nBit_reg(structural)
		generic map( dasz )
		port map(REG_write_adr_outp_toreg,
		clk, '1', global_reset,
		REG_write_adr_outp,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
			
	reg_REG_data2 : entity work.nBit_reg(structural)
		generic map( dsz )
		port map(REG_data2_toreg,
		clk, '1', global_reset,
		REG_data2,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	reg_PC_jump : entity work.nBit_reg(structural)
		generic map( isz )
		port map(PC_jump_toreg,
		clk, '1', global_reset,
		PC_jump,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	reg_PC_branch_offset : entity work.nBit_reg(structural)
		generic map( isz )
		port map(PC_branch_offset_toreg,
		clk, '1', global_reset,
		PC_branch_offset,
		open);
			-- parallel_in, clk, preset, clear, q, q_not			
			
				
		
		

	reg_ALU_zero : entity work.d_flipflop(structural)
		port map(ALU_zero_toreg,
		clk, '1', global_reset,
		ALU_zero,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_ALU_c_out : entity work.d_flipflop(structural)
		port map(ALU_c_out_toreg,
		clk, '1', global_reset,
		ALU_c_out,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_ALU_overflow : entity work.d_flipflop(structural)
		port map(ALU_overflow_toreg,
		clk, '1', global_reset,
		ALU_overflow,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_ALU_less_than : entity work.d_flipflop(structural)
		port map(ALU_less_than_toreg,
		clk, '1', global_reset,
		ALU_less_than,
		open);
			-- d, clk, preset, clear, q, q_not

	reg_ALU_equal : entity work.d_flipflop(structural)
		port map(ALU_equal_toreg,
		clk, '1', global_reset,
		ALU_equal,
		open);
			-- d, clk, preset, clear, q, q_not
	
	
	
	reg_ALU_result : entity work.nBit_reg(structural)
		generic map( dsz )
		port map(ALU_result_toreg,
		clk, '1', global_reset,
		ALU_result,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
end structural;