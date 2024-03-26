library verilog;
use verilog.vl_types.all;
entity top_level_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        output_sel      : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end top_level_vlg_sample_tst;
