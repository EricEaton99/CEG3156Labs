library verilog;
use verilog.vl_types.all;
entity component_test_vlg_sample_tst is
    port(
        ALU_functxcfb   : in     vl_logic_vector(5 downto 0);
        ALU_opdfsgd     : in     vl_logic_vector(5 downto 0);
        ALU_shamtzf     : in     vl_logic_vector(4 downto 0);
        ALU_srcghtd     : in     vl_logic;
        PC_branch_offsesgdrt: in     vl_logic_vector(31 downto 0);
        REG_data1sg     : in     vl_logic_vector(7 downto 0);
        REG_data2xfbx   : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end component_test_vlg_sample_tst;
