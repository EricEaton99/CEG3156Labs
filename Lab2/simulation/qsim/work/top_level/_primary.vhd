library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        output_sys      : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        output_sel      : in     vl_logic_vector(2 downto 0)
    );
end top_level;
