library verilog;
use verilog.vl_types.all;
entity component_test_vlg_check_tst is
    port(
        ALU_c_out       : in     vl_logic;
        ALU_equal       : in     vl_logic;
        ALU_less_than   : in     vl_logic;
        ALU_overflow    : in     vl_logic;
        ALU_result      : in     vl_logic_vector(7 downto 0);
        ALU_zero        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end component_test_vlg_check_tst;
