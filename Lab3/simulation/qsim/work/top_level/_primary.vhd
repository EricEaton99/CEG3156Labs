library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        REG_write_outp  : out    vl_logic;
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        write_data      : out    vl_logic_vector(7 downto 0);
        rd2             : out    vl_logic_vector(7 downto 0);
        branch_offset   : out    vl_logic_vector(31 downto 0);
        IMEM_out        : out    vl_logic_vector(31 downto 0);
        output_sys      : out    vl_logic_vector(7 downto 0);
        output_sel      : in     vl_logic_vector(2 downto 0)
    );
end top_level;
