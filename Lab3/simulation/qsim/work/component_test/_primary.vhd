library verilog;
use verilog.vl_types.all;
entity component_test is
    port(
        REG_write_outp  : out    vl_logic;
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        REG_write_inp   : in     vl_logic;
        instruction     : in     vl_logic_vector(31 downto 0);
        PC_inc          : in     vl_logic_vector(31 downto 0);
        REG_write_adr_inp: in     vl_logic_vector(2 downto 0);
        REG_write_data_inp: in     vl_logic_vector(7 downto 0);
        ALU_src         : out    vl_logic;
        MEM_write       : out    vl_logic;
        MEM_read        : out    vl_logic;
        MEM_to_REG      : out    vl_logic;
        jump            : out    vl_logic;
        branch          : out    vl_logic;
        ALU_funct       : out    vl_logic_vector(5 downto 0);
        ALU_op          : out    vl_logic_vector(5 downto 0);
        ALU_shamt       : out    vl_logic_vector(10 downto 6);
        PC_branch_offset: out    vl_logic_vector(31 downto 0);
        PC_jump         : out    vl_logic_vector(31 downto 0);
        REG_data1       : out    vl_logic_vector(7 downto 0);
        REG_data2       : out    vl_logic_vector(7 downto 0);
        REG_write_adr_outp: out    vl_logic_vector(2 downto 0)
    );
end component_test;
