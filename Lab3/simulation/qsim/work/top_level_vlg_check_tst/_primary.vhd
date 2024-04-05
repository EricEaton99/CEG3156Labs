library verilog;
use verilog.vl_types.all;
entity top_level_vlg_check_tst is
    port(
        IMEM_out        : in     vl_logic_vector(31 downto 0);
        output_sys      : in     vl_logic_vector(7 downto 0);
        PC_inc_EX       : in     vl_logic_vector(7 downto 0);
        PC_inc_ID       : in     vl_logic_vector(7 downto 0);
        PC_inc_MEM      : in     vl_logic_vector(7 downto 0);
        PC_next_WB      : in     vl_logic_vector(7 downto 0);
        REG_write_adr_WB: in     vl_logic_vector(2 downto 0);
        REG_write_outp_WB: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end top_level_vlg_check_tst;
