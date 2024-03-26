library verilog;
use verilog.vl_types.all;
entity component_test_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic;
        en              : in     vl_logic;
        preset          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end component_test_vlg_sample_tst;
