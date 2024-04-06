LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity reg_MEM_WB_tb is
end reg_MEM_WB_tb;

architecture testbench OF reg_MEM_WB_tb is 

    -- Component Declaration for the Unit Under Test (UUT)
    component reg_MEM_WB
    port(clk : IN  std_logic;
         global_reset : IN  std_logic;
         MEM_to_REG_toreg : IN  std_logic;
         REG_write_outp_toreg : IN  std_logic;
         REG_write_adr_outp_toreg : IN  std_logic_vector(4 downto 0);
         ALU_result_toreg : IN  std_logic_vector(31 downto 0);
         PC_next_toreg : IN  std_logic_vector(31 downto 0);
         MEM_to_REG : OUT  std_logic;
         REG_write_outp : OUT  std_logic;
         REG_write_adr_outp : OUT  std_logic_vector(4 downto 0);
         ALU_result : OUT  std_logic_vector(31 downto 0);
         PC_next : OUT  std_logic_vector(31 downto 0));
    end component;

   --Inputs
   signal clk : std_logic := '0';
   signal global_reset : std_logic := '0';
   signal MEM_to_REG_toreg : std_logic := '0';
   signal REG_write_outp_toreg : std_logic := '0';
   signal REG_write_adr_outp_toreg : std_logic_vector(4 downto 0) := (others => '0');
   signal ALU_result_toreg : std_logic_vector(31 downto 0) := (others => '0');
   signal PC_next_toreg : std_logic_vector(31 downto 0) := (others => '0');

   --Outputs
   signal MEM_to_REG : std_logic;
   signal REG_write_outp : std_logic;
   signal REG_write_adr_outp : std_logic_vector(4 downto 0);
   signal ALU_result : std_logic_vector(31 downto 0);
   signal PC_next : std_logic_vector(31 downto 0);

begin 

	-- Instantiates the Unit Under Test (UUT)
   uut: reg_MEM_WB port map(
        clk => clk,
        global_reset => global_reset,
        MEM_to_REG_toreg => MEM_to_REG_toreg,
        REG_write_outp_toreg => REG_write_outp_toreg,
        REG_write_adr_outp_toreg => REG_write_adr_outp_toreg,
        ALU_result_toreg => ALU_result_toreg,
        PC_next_toreg => PC_next_toreg,
        MEM_to_REG => MEM_to_REG,
        REG_write_outp => REG_write_outp,
        REG_write_adr_outp => REG_write_adr_outp,
        ALU_result => ALU_result,
        PC_next => PC_next);

	-- Clock process definitions
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;    
        clk <= '1';
        wait for 10 ns;    
    end process;

    stim_proc: process
    begin		
        -- Holds reset state for 100 ns
        wait for 100 ns;	
        global_reset <= '1';
        wait for 100 ns;
        global_reset <= '0';
        
        -- Initialize Inputs
        MEM_to_REG_toreg <= '1';
        REG_write_outp_toreg <= '1';
        REG_write_adr_outp_toreg <= "10010";
        ALU_result_toreg <= x"000000FF";
        PC_next_toreg <= x"0000FF00";

        -- Wait for global reset to finish
        wait for 100 ns;
        
        wait for 100 ns; 
        MEM_to_REG_toreg <= '0';
        REG_write_outp_toreg <= '0';
        
        wait for 200 ns;
        ASSERT (ALU_result = x"000000FF") REPORT "ALU_result mismatch" SEVERITY error;
        ASSERT (PC_next = x"0000FF00") REPORT "PC_next mismatch" SEVERITY error;

        -- Wait and finish testbench
        wait for 100 ns;
        WAIT;
    end process;

end;
