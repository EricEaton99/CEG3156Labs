--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity ID_CTRL_REG is
	port(
		clk, global_reset : in std_logic;
		PC_inc : in std_logic_vector(isz-1 downto 0);
		instruction : in std_logic_vector(isz-1 downto 0);
		REG_write_inp : in std_logic;
		REG_write_adr_inp : in std_logic_vector(dabsz-1 downto 0);
		REG_write_data_inp : in std_logic_vector(dsz-1 downto 0);
		
		REG_write_outp, ALU_src, MEM_write, MEM_read, MEM_to_REG, jump, branch: out std_logic;
		REG_write_adr_outp : out std_logic_vector(dabsz-1 downto 0);
		ALU_op : out std_logic_vector(5 downto 0);
		ALU_shamt : out std_logic_vector(10 downto 6);
		ALU_funct : out std_logic_vector(5 downto 0);
		REG_data1, REG_data2 : out std_logic_vector(dsz-1 downto 0);
		PC_jump, PC_branch_offset : out std_logic_vector(isz-1 downto 0)		
		);
end ID_CTRL_REG;


architecture structural of ID_CTRL_REG is


-- wires

-- Control signals //I use a CAPS convention for core components of a CPU
signal REG_dst, REG_write : std_logic;

-- instruction part
signal instruction_type : std_logic_vector(itsz-1 downto 0);
signal REG_adr1, REG_adr2, REG_write_adr : std_logic_vector(dabsz-1 downto 0);
signal address_b : std_logic_vector(absz-1 downto 0);
signal address_j : std_logic_vector(ajsz-1 downto 0);

begin

	-- patterned after:
	-- uOttawa CEG 3156 - slideset BML4 - slide 19 
	-- https://uottawa.brightspace.com/d2l/le/content/417607/viewContent/5836345/View
	
	
	inst_breakdown : entity work.MIPS_RISK_SingleCycle_instruction_breakdown(structural)
		port map(
			instruction, 
			instruction_type, 
			REG_adr1, REG_adr2, REG_write_adr_outp,
			ALU_shamt, 
			ALU_funct,
			address_b, address_j);
			
	
	
	-- Control here
	--		in: instruction
	--		out: 	REG_dst, PC_src, ALU_op, ALU_src, MEM_read, MEM_to_REG, MEM_write, REG_write, branch, jump
	
	
	
	REG_mux : entity work.nBit_mux2(structural)
		generic map(dsz)
		port map(REG_dst, REG_write_adr_inp, REG_adr2, REG_write_adr);
	
	registers : entity work.reg_block_r2w1(structural)
		generic map(dsz, dabsz)
		port map(clk, global_reset, REG_write_inp,
			REG_adr1, REG_adr2, REG_write_adr,
			REG_write_data_inp, 
			REG_data1, REG_data2);
	
	PC_branch_offset(isz-1 downto absz+isz_static) <= (others => address_b(absz-1));
	PC_branch_offset(absz+isz_static-1 downto isz_static) <= address_b;
	PC_branch_offset(isz_static-1 downto 0) <= (others => '0');
	
	PC_jump(isz-1 downto ajsz+isz_static) <= PC_inc;
	PC_jump(ajsz+isz_static-1 downto isz_static) <= address_j;
	PC_jump(isz_static-1 downto 0) <= (others => '0');
end structural;