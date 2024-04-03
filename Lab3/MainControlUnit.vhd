library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MainControlUnit is
    Port (Instruction : in STD_LOGIC_VECTOR(5 downto 0);
               RegDst : out STD_LOGIC;
               ALUSrc : out STD_LOGIC;
               MemToReg : out STD_LOGIC;
               RegWrite : out STD_LOGIC;
               MemRead : out STD_LOGIC;
               MemWrite : out STD_LOGIC;
               Branch : out STD_LOGIC;
               Jump : out STD_LOGIC;
               ALUOp : out STD_LOGIC_VECTOR(1 downto 0));
end MainControlUnit;

architecture Structural of MainControlUnit is

signal R, lw, sw, beq, j : std_logic;

begin
	--	code		bin				op
	--		0		000000			R-Type
	--	35/43		100011/101011	Load/Store
	--		4		000100			Branch
	--		2		000010			Jump
	
--	Instruction RegDst ALUSrc MemtoReg RegWrite MemRead MemWrite Branch ALUOp1 ALUOp0
--	R-format 		1 		0 			0 			1 			0 			0 		0 		1 			0
--	lw 				0 		1 			1 			1 			1 			0 		0 		0 			0
--	sw 				X 		1 			X 			0 			0 			1 		0 		0 			0
--	beq 				X 		0 			X 			0 			0 			0 		1	 	0 			1
-- jump				!!!!!!!!!!!!!!!!!!!!!!!!!!DO THIS!!!!!!!!!!!!!!!!!!!!!!!!
	
	R <= Instruction(2) nor Instruction(1);
	lw <= Instruction(0) and not Instruction(3);
	sw <= Instruction(0) and Instruction(3);
	beq <= Instruction(2);
	j <= not Instruction(0)and Instruction(1);

	 
	RegDst <= R;
	ALUSrc <= lw or sw;
	MemToReg <= lw;
	RegWrite <= R or lw;
	MemRead <= lw;
	MemWrite <= sw;
	Branch <= beq;
	Jump <= '0';			--DO THIS
	ALUOp(1) <= R;
	ALUOp(0) <= beq;
end Structural;