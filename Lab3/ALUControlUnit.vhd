library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUControlUnit is
    Port ( ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
           FunctionField : in STD_LOGIC_VECTOR(3 downto 0);
           ALUControlSignal : out STD_LOGIC_VECTOR(2 downto 0));
end ALUControlUnit;

architecture structural of ALUControlUnit is

signal F : STD_LOGIC_VECTOR(3 downto 0);

begin
--	ALUOp1 ALUOp0 F5 F4 F3 F2 F1 F0	ALUControlSignal (Opperation)
--		0		 0 	X 	X 	X 	X 	X 	X 	010
--		0		 1 	X 	X 	X 	X 	X 	X 	110
--		1		 X 	X 	X 	0 	0 	0 	0 	010
--		1		 X 	X 	X 	0 	0 	1 	0 	110
--		1		 X 	X 	X 	0 	1 	0 	0 	000
--		1		 X 	X 	X 	0 	1 	0 	1 	001
--		1		 X 	X 	X 	1 	0 	1 	0 	111

	F <= FunctionField;
	
	ALUControlSignal(0) <= ALUOp(1) and (F(3) or F(0));
	ALUControlSignal(1) <= not ALUOp(1) or not F(2);
	ALUControlSignal(2) <= (not ALUOp(1) and ALUOp(0)) or (ALUOp(1) and F(1));

end structural;