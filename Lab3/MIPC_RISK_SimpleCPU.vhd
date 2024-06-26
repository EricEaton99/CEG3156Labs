--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity MIPS_RISK_SingleCycle is
	port(
		clk, global_reset : in std_logic);
end MIPS_RISK_SingleCycle;


architecture structural of MIPS_RISK_SingleCycle is

-- wires
		
signal PC, PC_inc, PC_branch, PC_b_next, PC_next : std_logic_vector(isz-1 downto 0);
signal instruction : std_logic_vector(isz-1 downto 0);
signal REG_write_data, REG_data1, REG_data2 : std_logic_vector(dsz-1 downto 0);
signal address_b_extended : std_logic_vector(isz-1 downto 0);
signal PC_jump : std_logic_vector(isz-1 downto 0);

-- Control signals //I use a CAPS convention for core components of a CPU
signal REG_dst, REG_write, ALU_src, PC_src, MEM_write, MEM_read, MEM_to_REG, jump, branch: std_logic;
signal ALU_op : std_logic_vector(5 downto 0);
signal ALU_ctrl : std_logic_vector(2 downto 0);

-- instruction part
signal instruction_type : std_logic_vector(itsz-1 downto 0);
signal REG_adr1, REG_adr2, REG_write_adr, REG_write_adr_t : std_logic_vector(dasz-1 downto 0);
signal ALU_shamt : std_logic_vector(10 downto 6);
signal ALU_funct : std_logic_vector(5 downto 0);
signal address_b : std_logic_vector(absz-1 downto 0);
signal address_j : std_logic_vector(ajsz-1 downto 0);

-- ALU signals
signal ALU_A, ALU_B, ALU_result : std_logic_vector(dsz-1 downto 0);
signal ALU_zero, ALU_c_out, ALU_overflow : std_logic;

-- MEM signals
signal MEM_read_data : std_logic_vector(dsz-1 downto 0);

begin

	-- patterned after:
	-- uOttawa CEG 3156 - slideset BML4 - slide 19 
	-- https://uottawa.brightspace.com/d2l/le/content/417607/viewContent/5836345/View

	PC_reg : entity work.nBit_reg(structural)
		generic map(isz)
		port map(PC_next, 	clk, '1', global_reset, PC, open);
			-- parallel_in, clk, preset, clear, q, q_not
	
	PC_inc(isz_static-1 downto 0) <= PC(isz_static-1 downto 0);
	PC_inc_adder : entity work.nBit_inc1(structural)
		generic map(isz-isz_static)
		port map(PC(isz-1 downto isz_static), PC_inc(isz-1 downto isz_static));
			-- a, a_inc1

	
	-- IMEM here
	--		in: read_address
	--		out: instruction
	
	
	inst_breakdown : entity work.MIPS_RISK_SingleCycle_instruction_breakdown(structural)
		port map(
			instruction, 
			instruction_type, 
			REG_adr1, REG_adr2, REG_write_adr_t,
			ALU_shamt, 
			ALU_funct,
			address_b, address_j);
	
	
	-- Control here
	--		in: instruction
	--		out: 	REG_dst, PC_src, MEM_read, MEM_to_REG, ALU_op,, ALU_ctrl, MEM_write, ALU_src, REG_write, branch, jump
	
	
	REG_mux : entity work.nBit_mux2(structural)
		generic map(dsz)
		port map(REG_dst, REG_write_adr_t, REG_adr2, REG_write_adr);
	
	registers : entity work.reg_block_r2w1(structural)
		generic map(dsz, dasz)
		port map(clk, global_reset, REG_write,
			REG_adr1, REG_adr2, REG_write_adr,
			REG_write_data, 
			REG_data1, REG_data2);
	
	address_b_extended(isz-1 downto absz+isz_static) <= (others => address_b(absz-1));
	address_b_extended(absz+isz_static-1 downto isz_static) <= address_b;
	address_b_extended(isz_static-1 downto 0) <= (others => '0');
	
	PC_jump(isz-1 downto ajsz+isz_static) <= PC_inc;
	PC_jump(ajsz+isz_static-1 downto isz_static) <= address_j;
	PC_jump(isz_static-1 downto 0) <= (others => '0');
	
	PC_branch_adder : entity work.nBit_cla4_adder(structural)
		generic map(isz)
		port map(PC_inc, address_b_extended, '0', PC_branch, open, open);
			-- a, b, c_in, sum, c_out, overflow

	PC_branch_mux : entity work.nBit_mux2(structural)
		generic map(isz)
		port map(branch and ALU_zero, PC_inc, PC_branch, PC_b_next);
		
	PC_jump_mux : entity work.nBit_mux2(structural)
		generic map(isz)
		port map(jump, PC_b_next, PC_jump, PC_next);
		
	
	-- ALU_Ctrl here
	--		in: ALU_op, ALU_funct
	--		out: ALU_ctrl
	
	
	ALU_A <= REG_data1;
	ALU_mux : entity work.nBit_mux2(structural)
		generic map(dsz)
		port map(ALU_src, address_b_extended, REG_data2, ALU_B);
	
	ALU : entity work.ALU_Simple(structural)
		generic map(dsz)
		port map(ALU_A, ALU_B, ALU_ctrl, ALU_result, ALU_zero, ALU_c_out, ALU_overflow);
				-- A, B, op_sel, result, zero, c_out, overflow
	
	
	-- DMEM here
	--		in: ALU_result, REG_data2
	--		out: MEM_read_data
	
	
	MEM_mux : entity work.nBit_mux2(structural)
		generic map(dsz)
		port map(MEM_to_REG, ALU_result, MEM_read_data, REG_write_data);
end structural;