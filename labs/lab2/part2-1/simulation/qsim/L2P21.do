onerror {quit -f}
vlib work
vlog -work work L2P21.vo
vlog -work work L2P21.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.L2P21_vlg_vec_tst
vcd file -direction L2P21.msim.vcd
vcd add -internal L2P21_vlg_vec_tst/*
vcd add -internal L2P21_vlg_vec_tst/i1/*
add wave /*
run -all
