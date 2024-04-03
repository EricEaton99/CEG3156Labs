--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity reg_ID_EX is
	port(
		clk, global_reset : in std_logic;
		
		REG_write_outp_toreg, ALU_src_toreg, MEM_write_toreg, MEM_read_toreg, MEM_to_REG_toreg, jump_toreg, branch_toreg: in std_logic;
		REG_write_adr_outp_toreg : in std_logic_vector(dasz-1 downto 0);
		ALU_op_toreg : in std_logic_vector(5 downto 0);
		ALU_shamt_toreg : in std_logic_vector(10 downto 6);
		ALU_funct_toreg : in std_logic_vector(5 downto 0);
		REG_data1_toreg, REG_data2_toreg : in std_logic_vector(dsz-1 downto 0);
		PC_jump_toreg, PC_branch_offset_toreg : in std_logic_vector(isz-1 downto 0);
	
		
		REG_write_outp, ALU_src, MEM_write, MEM_read, MEM_to_REG, jump, branch: out std_logic;
		REG_write_adr_outp : out std_logic_vector(dasz-1 downto 0);
		ALU_op : out std_logic_vector(5 downto 0);
		ALU_shamt : out std_logic_vector(10 downto 6);
		ALU_funct : out std_logic_vector(5 downto 0);
		REG_data1, REG_data2 : out std_logic_vector(dsz-1 downto 0);
		PC_jump, PC_branch_offset : out std_logic_vector(isz-1 downto 0)			
		);
end reg_ID_EX;


architecture structural of reg_ID_EX is

-- wires
signal ctrl_signals_toreg, ctrl_signals : std_logic_vector(6 downto 0);

begin
	
	ctrl_signals_toreg <= REG_write_outp_toreg & ALU_src_toreg & MEM_write_toreg & MEM_read_toreg & MEM_to_REG_toreg & jump_toreg & branch_toreg;
	REG_write_outp <= ctrl_signals(0);
	ALU_src <= ctrl_signals(1);
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
	
	reg_ALU_op : entity work.nBit_reg(structural)
		generic map( 6 )
		port map(ALU_op_toreg,
		clk, '1', global_reset,
		ALU_op,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	reg_ALU_shamt : entity work.nBit_reg(structural)
		generic map( 5 )
		port map(ALU_shamt_toreg,
		clk, '1', global_reset,
		ALU_shamt,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	reg_ALU_funct : entity work.nBit_reg(structural)
		generic map( 6 )
		port map(ALU_funct_toreg,
		clk, '1', global_reset,
		ALU_funct,
		open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	reg_REG_data1 : entity work.nBit_reg(structural)
		generic map( dsz )
		port map(REG_data1_toreg,
		clk, '1', global_reset,
		REG_data1,
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
			
end structural;