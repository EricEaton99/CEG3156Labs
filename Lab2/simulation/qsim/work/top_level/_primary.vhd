library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        reg1_data       : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        write_en        : in     vl_logic;
        reg1_adr        : in     vl_logic_vector(4 downto 0);
        reg2_adr        : in     vl_logic_vector(4 downto 0);
        write_adr       : in     vl_logic_vector(4 downto 0);
        write_data      : in     vl_logic_vector(31 downto 0);
        reg2_data       : out    vl_logic_vector(31 downto 0)
    );
end top_level;
