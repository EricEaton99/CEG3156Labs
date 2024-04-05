library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        REG_write_outp_WB: out    vl_logic;
        clk             : in     vl_logic;
        global_reset    : in     vl_logic;
        PC_next_WB      : out    vl_logic_vector(7 downto 0);
        PC_inc_ID       : out    vl_logic_vector(7 downto 0);
        PC_inc_EX       : out    vl_logic_vector(7 downto 0);
        PC_inc_MEM      : out    vl_logic_vector(7 downto 0);
        IMEM_out        : out    vl_logic_vector(31 downto 0);
        output_sys      : out    vl_logic_vector(7 downto 0);
        output_sel      : in     vl_logic_vector(2 downto 0);
        REG_write_adr_WB: out    vl_logic_vector(2 downto 0)
    );
end top_level;
