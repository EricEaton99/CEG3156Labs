library verilog;
use verilog.vl_types.all;
entity top_level_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        op_sel          : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end top_level_vlg_sample_tst;
