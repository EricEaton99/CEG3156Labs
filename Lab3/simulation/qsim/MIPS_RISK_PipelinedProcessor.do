onerror {exit -code 1}
vlib work
vlog -work work MIPS_RISK_PipelinedProcessor.vo
vlog -work work component_test2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.component_test_vlg_vec_tst -voptargs="+acc"
vcd file -direction MIPS_RISK_PipelinedProcessor.msim.vcd
vcd add -internal component_test_vlg_vec_tst/*
vcd add -internal component_test_vlg_vec_tst/i1/*
run -all
quit -f
