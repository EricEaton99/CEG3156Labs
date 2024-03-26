library verilog;
use verilog.vl_types.all;
entity top_level_vlg_check_tst is
    port(
        IMEM_out        : in     vl_logic_vector(31 downto 0);
        output_sys      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end top_level_vlg_check_tst;
