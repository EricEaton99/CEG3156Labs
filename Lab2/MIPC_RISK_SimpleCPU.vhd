--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity MIPS_RISK_SingleCycle is
	generic ( 
		isz : positive := 32;	-- instruction size
		itsz : positive := 6;	-- instruction type size
		dsz : positive := 32;	-- data size
		dasz : positive := 5);	-- data address size
	port(
		clk, global_reset : in std_logic);
end MIPS_RISK_SingleCycle;

architecture rtl of MIPS_RISK_SingleCycle is

-- conmponents

---- PC
component nBit_reg is
generic ( n : positive := 4 );
port(
	parallel_in : in std_logic_vector(n-1 downto 0);		--preset, clear could be masks with preset = !clear
	clk, preset, clear : in std_logic;
	q, q_not: out std_logic_vector(n-1 downto 0));
end component;

-- inc1
component nBit_inc1 is
generic ( n : positive := 4 );
port(
	a : in std_logic_vector(n-1 downto 0);
	a_inc1 : out std_logic_vector(n-1 downto 0));
end component;

---- InstMem
--component InstMem is
--generic ( n : positive := 8 );
--port(
--	read_address : in std_logic_vector(n-1 downto 0);
--	instruction : out std_logic_vector(n-1 downto 0));
--end component;

-- SignExtend
-- nBit_extend
component nBit_extend_mBits is
generic ( 
	n : positive := 8;
	m : positive := 8);
port(
	inp : in std_logic_vector(n-1 downto 0);
	outp : out std_logic_vector(n+m-1 downto 0));
end component;

---- Control
--component Control is
--generic ( isz : positive := 32 );
--generic ( itsz : positive := 6 );
--port(
--	inst : in std_logic_vector(isz-1 downto isz-itsz);
--	reg_dst, jump, beq, bne, alu_src : out std_logic;
--	mem_read, mem_to_reg, mem_write, reg_write : out std_logic;
--	alu_op : in std_logic_vector(2 downto 0));
--end component;

-- mux2
component nBit_mux2 is
	generic ( n : positive := 4 );
	port(
		sel : in std_logic;
		inp0, inp1 : in std_logic_vector(n-1 downto 0);
		outp : out std_logic_vector(n-1 downto 0));
end component;

-- Registers
component Registers is
	generic ( 
		isz : positive := 4;
		dasz : positive := 4);
	port(
		reg1_adr, reg2_adr, write_adr : in std_logic_vector(dasz-1 downto 0);
		outp : out std_logic_vector(isz-1 downto 0));
end component;

-- ALU
-- ALU_control
-- DataMem

-- wires
--none

begin
	
end rtl;