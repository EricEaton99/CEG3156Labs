LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity MIPS_RISK_SingleCycle_instruction_breakdown is
port(
	instruction : in std_logic_vector(31 downto 0);
	instruction_type : out std_logic_vector(5 downto 0);
	rs, rt, rd : out std_logic_vector(6 downto 0);
	shamt : out std_logic_vector(10 downto 6);
	funct : out std_logic_vector(5 downto 0);
	address : out std_logic_vector(15 downto 0));
end MIPS_RISK_SingleCycle_instruction_breakdown;

architecture rtl of MIPS_RISK_SingleCycle_instruction_breakdown is


begin
	-- R-type:	[ itsz | dasz | dasz | dasz | 5 | 6 ]
	--				[ inst | REG1_adr | REG2_adr | REG_write_adr | ALU_shamt | ALU_op ]
	-- I-type:	[ itsz | dasz | dasz | address ]
	--				[ inst | REG1_adr | REG2_adr | address ]
	
	instruction_type <= instruction(31 downto 26);
	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
	rd <= instruction(15 downto 11);
	shamt <= instruction(10 downto 6);
	funct <= instruction(5 downto 0);
	address <= instruction(15 downto 0);
end rtl;