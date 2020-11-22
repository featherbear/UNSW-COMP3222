onerror {quit -f}
vlib work
vlog -work work L11P2.vo
vlog -work work L11P2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.L11P2_vlg_vec_tst
vcd file -direction L11P2.msim.vcd
vcd add -internal L11P2_vlg_vec_tst/*
vcd add -internal L11P2_vlg_vec_tst/i1/*
add wave /*
run -all
