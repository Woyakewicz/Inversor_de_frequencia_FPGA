transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/portadora.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/gerador_de_referencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/gerador_de_referencia/senoid.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/gerador_de_referencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/gerador_de_referencia/PLL_27MHz.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/gerador_de_referencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/gerador_de_referencia/gerador.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/divisor_de_frequencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/divisor_de_frequencia/clock_divisor.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/reset {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/reset/reset_init_blk.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/PWM.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/top {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/top/controlador_PWM.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/comparador {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/comparador/comparador.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/db {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/db/pll_27mhz_altpll.v}

vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/top {D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/files/top/controlador_PWM_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  controlador_PWM_tb

do D:/VITOR/UFSC/Linse/inversor_de_frequencia/PWM/simulation/modelsim/wave.do
