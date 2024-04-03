library verilog;
use verilog.vl_types.all;
entity top_level_vlg_check_tst is
    port(
        branch_offset   : in     vl_logic_vector(31 downto 0);
        IMEM_out        : in     vl_logic_vector(31 downto 0);
        output_sys      : in     vl_logic_vector(7 downto 0);
        rd2             : in     vl_logic_vector(7 downto 0);
        REG_write_outp  : in     vl_logic;
        write_data      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end top_level_vlg_check_tst;
