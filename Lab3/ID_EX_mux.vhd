--- MIPS Single Cycle Processor

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.MIPS_RISK_SingleCycle_VARS.all;

entity ID_EX_mux is
	port(
		sel : in std_logic;
		
		RegDst : in STD_LOGIC;
		ALUSrc : in STD_LOGIC;
		MemToReg : in STD_LOGIC;
		RegWrite : in STD_LOGIC;
		MemRead : in STD_LOGIC;
		MemWrite : in STD_LOGIC;
		Branch : in STD_LOGIC;
		Jump : in STD_LOGIC;
		ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
		
		WB_ID : out STD_LOGIC_VECTOR(1 downto 0);
		M_ID : out STD_LOGIC_VECTOR(2 downto 0);
		EX_ID : out STD_LOGIC_VECTOR(3 downto 0)
		);
end ID_EX_mux;


architecture structural of ID_EX_mux is

-- wires
signal WB_ID_t : std_logic_vector(1 downto 0);
signal M_ID_t : std_logic_vector(2 downto 0);
signal EX_ID_t : std_logic_vector(3 downto 0);

begin
	WB_ID_t(0) <= RegWrite;
	WB_ID_t(1) <= MemToReg;
	
	M_ID_t(0) <= Branch;
	M_ID_t(1) <= MemRead;
	M_ID_t(2) <= MemWrite;
	
	EX_ID_t(0) <= RegDst;
	EX_ID_t(2 downto 1) <= ALUOp;
	EX_ID_t(3) <= ALUSrc;
	
	
	mux_WB : entity work.nBit_mux2(structural)
		generic map(2)
		port map(sel, WB_ID_t, "00", WB_ID);
			
	mux_M : entity work.nBit_mux2(structural)
		generic map(3)
		port map(sel, M_ID_t, "000", M_ID);
			
	mux_EX : entity work.nBit_mux2(structural)
		generic map(4)
		port map(sel, EX_ID_t, "0000", EX_ID);
end structural;