LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Hazard_Detection_Unit IS
    PORT(ID_EX_RegRd: IN std_logic_vector(4 DOWNTO 0); -- Destination register being written to in the EX stage
         ID_EX_RegRs: IN std_logic_vector(4 DOWNTO 0); -- Source register 1 in the ID/EX stage
         ID_EX_RegRt: IN std_logic_vector(4 DOWNTO 0); -- Source register 2 in the ID/EX stage
         EX_MEM_RegWrite: IN std_logic; -- RegWrite signal from the EX/MEM pipeline register
         MEM_WB_RegWrite: IN std_logic; -- RegWrite signal from the MEM/WB pipeline register
         EX_MEM_RegRd: IN std_logic_vector(4 DOWNTO 0); -- Destination register in the EX/MEM stage
         MEM_WB_RegRd: IN std_logic_vector(4 DOWNTO 0); -- Destination register in the MEM/WB stage
         BranchTaken: IN std_logic; -- Indicates if a branch has been taken
         Stall: OUT std_logic; -- Output signal to stall the pipeline if necessary
         Flush: OUT std_logic); -- Output signal to flush the pipeline if necessary
END Hazard_Detection_Unit;

ARCHITECTURE Structural OF Hazard_Detection_Unit IS
BEGIN
    -- Stall the pipeline if there is a hazard that requires it
    Stall <= '1' WHEN (EX_MEM_RegWrite = '1' AND (EX_MEM_RegRd = ID_EX_RegRs OR EX_MEM_RegRd = ID_EX_RegRt)) OR
                      (MEM_WB_RegWrite = '1' AND (MEM_WB_RegRd = ID_EX_RegRs OR MEM_WB_RegRd = ID_EX_RegRt))
             ELSE '0';
    
    -- the pipeline is flushed if a branch is taken to handle control hazards
    Flush <= BranchTaken;

END Structural;