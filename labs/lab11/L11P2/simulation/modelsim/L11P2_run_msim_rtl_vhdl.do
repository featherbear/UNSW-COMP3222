transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/build/files/components/addSubUnit_carry.vhd}
vcom -93 -work work {/build/labs/lab11/L11P2/memory_block.vhd}
vcom -93 -work work {/build/files/components/regne.vhd}
vcom -93 -work work {/build/files/components/incDecUnit.vhd}
vcom -93 -work work {/build/files/components/twoPortNMux.vhd}
vcom -93 -work work {/build/labs/lab11/L11P2/rightShiftAdder.vhd}
vcom -93 -work work {/build/labs/lab11/L11P2/L11P2.vhd}

