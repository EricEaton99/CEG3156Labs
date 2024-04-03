library verilog;
use verilog.vl_types.all;
entity component_test_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        instruction     : in     vl_logic_vector(31 downto 0);
        PC_inc          : in     vl_logic_vector(31 downto 0);
        REG_write_adr_inp: in     vl_logic_vector(2 downto 0);
        REG_write_data_inp: in     vl_logic_vector(7 downto 0);
        REG_write_inp   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end component_test_vlg_sample_tst;
