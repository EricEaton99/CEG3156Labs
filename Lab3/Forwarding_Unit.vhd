LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Forwarding_Unit IS
    PORT(
        EX_MEM_RegRd : IN std_logic_vector(4 DOWNTO 0); -- Rd for EX/MEM stage
        MEM_WB_RegRd : IN std_logic_vector(4 DOWNTO 0); -- Rd for MEM/WB stage
        ID_EX_RegRs : IN std_logic_vector(4 DOWNTO 0);  -- Rs for ID/EX stage
        ID_EX_RegRt : IN std_logic_vector(4 DOWNTO 0);  -- Rt for ID/EX stage
        EX_MEM_RegWrite : IN std_logic;                 -- RegWrite for EX/MEM stage
        MEM_WB_RegWrite : IN std_logic;                 -- RegWrite for MEM/WB stage
        ForwardA : OUT std_logic_vector(1 DOWNTO 0);    -- Forwarding control for ALU input A
        ForwardB : OUT std_logic_vector(1 DOWNTO 0));   -- Forwarding control for ALU input B
END Forwarding_Unit;

ARCHITECTURE Structural OF Forwarding_Unit IS
    SIGNAL forwardA_signal, forwardB_signal : std_logic_vector(1 DOWNTO 0);
BEGIN
    -- Logic to set forwarding for A
    PROCESS(EX_MEM_RegRd, MEM_WB_RegRd, ID_EX_RegRs, EX_MEM_RegWrite, MEM_WB_RegWrite)
    BEGIN
        IF (EX_MEM_RegWrite = '1' AND EX_MEM_RegRd /= "00000" AND EX_MEM_RegRd = ID_EX_RegRs) THEN
            forwardA_signal <= "10"; -- Forward from EX/MEM
        ELSIF (MEM_WB_RegWrite = '1' AND MEM_WB_RegRd /= "00000" AND MEM_WB_RegRd = ID_EX_RegRs) THEN
            forwardA_signal <= "01"; -- Forward from MEM/WB
        ELSE
            forwardA_signal <= "00"; -- No forwarding
        END IF;
    END PROCESS;

    -- Logic to set forwarding for B
    PROCESS(EX_MEM_RegRd, MEM_WB_RegRd, ID_EX_RegRt, EX_MEM_RegWrite, MEM_WB_RegWrite)
    BEGIN
        IF (EX_MEM_RegWrite = '1' AND EX_MEM_RegRd /= "00000" AND EX_MEM_RegRd = ID_EX_RegRt) THEN
            forwardB_signal <= "10"; -- Forward from EX/MEM
        ELSIF (MEM_WB_RegWrite = '1' AND MEM_WB_RegRd /= "00000" AND MEM_WB_RegRd = ID_EX_RegRt) THEN
            forwardB_signal <= "01"; -- Forward from MEM/WB
        ELSE
            forwardB_signal <= "00"; -- No forwarding
        END IF;
    END PROCESS;
    
    ForwardA <= forwardA_signal;
    ForwardB <= forwardB_signal;
END Structural;