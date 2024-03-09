library verilog;
use verilog.vl_types.all;
entity top_level is
    port(
        zero            : out    vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        op_sel          : in     vl_logic_vector(2 downto 0);
        c_out           : out    vl_logic;
        overflow        : out    vl_logic;
        result          : out    vl_logic_vector(31 downto 0)
    );
end top_level;
