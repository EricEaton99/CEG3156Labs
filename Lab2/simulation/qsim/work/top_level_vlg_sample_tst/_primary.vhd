library verilog;
use verilog.vl_types.all;
entity top_level_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        reg1_adr        : in     vl_logic_vector(4 downto 0);
        reg2_adr        : in     vl_logic_vector(4 downto 0);
        write_adr       : in     vl_logic_vector(4 downto 0);
        write_data      : in     vl_logic_vector(31 downto 0);
        write_en        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_level_vlg_sample_tst;
