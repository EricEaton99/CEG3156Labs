package MIPS_RISK_SingleCycle_VARS is  
	constant isz_static : positive := 2;	--log2(isz/8);
	constant isz : positive := 32;	-- instruction size
	constant itsz : positive := 6;	-- instruction type size
	constant dsz : positive := 8;	-- data size
	constant dasz : positive := 3;	-- data address_b size
	constant absz : positive := 16;	-- address_b size
	constant ajsz : positive := 26;	-- address_b size
end MIPS_RISK_SingleCycle_VARS;