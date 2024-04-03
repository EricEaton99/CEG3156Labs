library verilog;
use verilog.vl_types.all;
entity component_test_vlg_check_tst is
    port(
        ALU_funct       : in     vl_logic_vector(5 downto 0);
        ALU_op          : in     vl_logic_vector(5 downto 0);
        ALU_shamt       : in     vl_logic_vector(10 downto 6);
        ALU_src         : in     vl_logic;
        branch          : in     vl_logic;
        jump            : in     vl_logic;
        MEM_read        : in     vl_logic;
        MEM_to_REG      : in     vl_logic;
        MEM_write       : in     vl_logic;
        PC_branch_offset: in     vl_logic_vector(31 downto 0);
        PC_jump         : in     vl_logic_vector(31 downto 0);
        REG_data1       : in     vl_logic_vector(7 downto 0);
        REG_data2       : in     vl_logic_vector(7 downto 0);
        REG_write_adr_outp: in     vl_logic_vector(2 downto 0);
        REG_write_outp  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end component_test_vlg_check_tst;
