library verilog;
use verilog.vl_types.all;
entity component_test is
    port(
        q               : out    vl_logic;
        d               : in     vl_logic;
        clk             : in     vl_logic;
        preset          : in     vl_logic;
        clear           : in     vl_logic;
        en              : in     vl_logic;
        q_not           : out    vl_logic
    );
end component_test;
