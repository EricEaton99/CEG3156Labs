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

-- wires
signal ctrl_signals_toreg, ctrl_signals : std_logic_vector(6 downto 0);	--(1) is unused
signal alu_signals_toreg, alu_signals : std_logic_vector(4 downto 0);

begin
	
	ctrl_signals_toreg <= REG_write_outp_toreg & '1' & MEM_write_toreg & MEM_read_toreg & MEM_to_REG_toreg & jump_toreg & branch_toreg;
	REG_write_outp <= ctrl_signals(0);
	-- no ALU_src now
	MEM_write <= ctrl_signals(2);
	MEM_read  <= ctrl_signals(3);
	MEM_to_REG <= ctrl_signals(4);
	jump  <= ctrl_signals(5);
	branch <= ctrl_signals(6);
	
	reg_ctrl_signals : entity work.nBit_reg(structural)
		generic map( 7 )
		port map(ctrl_signals_toreg,
		clk, '1', global_reset,
		ctrl_signals,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
			
	
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
			
			
			
	
	alu_signals_toreg <= ALU_zero_toreg & ALU_c_out_toreg & ALU_overflow_toreg & ALU_less_than_toreg & ALU_equal_toreg;
	ALU_zero <= alu_signals(0);
	ALU_c_out <= alu_signals(1);
	ALU_overflow <= alu_signals(2);
	ALU_less_than  <= alu_signals(3);
	ALU_equal <= alu_signals(4);
	
	reg_alu_signals : entity work.nBit_reg(structural)
		generic map( 5 )
		port map(alu_signals_toreg,
		clk, '1', global_reset,
		alu_signals,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	
	reg_ALU_result : entity work.nBit_reg(structural)
		generic map( dsz )
		port map(ALU_result_toreg,
		clk, '1', global_reset,
		ALU_result,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
end structural;