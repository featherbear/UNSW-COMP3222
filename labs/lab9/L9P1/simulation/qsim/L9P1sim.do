onerror {quit -f}
vlib work
vlog -work work L9P1sim.vo
vlog -work work L9P1sim.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.L9P1proc_vlg_vec_tst
vcd file -direction L9P1sim.msim.vcd
vcd add -internal L9P1proc_vlg_vec_tst/*
vcd add -internal L9P1proc_vlg_vec_tst/i1/*
add wave /*
run -all
