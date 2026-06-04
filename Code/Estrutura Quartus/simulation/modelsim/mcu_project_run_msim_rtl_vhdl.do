transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/tiago/Downloads/001.MCU_ALU/001.MCU_ALU/alu.vhd}
vcom -93 -work work {C:/Users/tiago/Downloads/001.MCU_ALU/001.MCU_ALU/mcu_project.vhd}

vcom -93 -work work {C:/Users/tiago/Downloads/001.MCU_ALU/001.MCU_ALU/alu_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  alu_tb

add wave *
view structure
view signals
run -all
