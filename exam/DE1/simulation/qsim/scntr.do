onerror {quit -f}
vlib work
vlog -work work scntr.vo
vlog -work work scntr.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.scntr_vlg_vec_tst
vcd file -direction scntr.msim.vcd
vcd add -internal scntr_vlg_vec_tst/*
vcd add -internal scntr_vlg_vec_tst/i1/*
add wave /*
run -all
