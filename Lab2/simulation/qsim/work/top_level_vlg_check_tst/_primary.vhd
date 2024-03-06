library verilog;
use verilog.vl_types.all;
entity top_level_vlg_check_tst is
    port(
        reg1_data       : in     vl_logic_vector(31 downto 0);
        reg2_data       : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end top_level_vlg_check_tst;
