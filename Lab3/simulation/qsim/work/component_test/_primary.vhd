library verilog;
use verilog.vl_types.all;
entity component_test is
    port(
        ALU_zero        : out    vl_logic;
        ALU_srcghtd     : in     vl_logic;
        ALU_functxcfb   : in     vl_logic_vector(5 downto 0);
        ALU_opdfsgd     : in     vl_logic_vector(5 downto 0);
        ALU_shamtzf     : in     vl_logic_vector(4 downto 0);
        PC_branch_offsesgdrt: in     vl_logic_vector(31 downto 0);
        REG_data1sg     : in     vl_logic_vector(7 downto 0);
        REG_data2xfbx   : in     vl_logic_vector(7 downto 0);
        ALU_c_out       : out    vl_logic;
        ALU_overflow    : out    vl_logic;
        ALU_less_than   : out    vl_logic;
        ALU_equal       : out    vl_logic;
        ALU_result      : out    vl_logic_vector(7 downto 0)
    );
end component_test;
