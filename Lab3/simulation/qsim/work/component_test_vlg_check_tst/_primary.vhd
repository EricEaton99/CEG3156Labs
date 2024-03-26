library verilog;
use verilog.vl_types.all;
entity component_test_vlg_check_tst is
    port(
        q               : in     vl_logic;
        q_not           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end component_test_vlg_check_tst;
