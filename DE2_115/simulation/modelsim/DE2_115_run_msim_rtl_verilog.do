transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/PWM.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/portadora.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/top {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/top/controlador_PWM.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/gerador_de_referencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/gerador_de_referencia/senoid.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/gerador_de_referencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/gerador_de_referencia/PLL_27MHz.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/gerador_de_referencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/gerador_de_referencia/gerador.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/divisor_de_frequencia {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/divisor_de_frequencia/clock_divisor.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/comparador {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/files/comparador/comparador.v}
vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/db {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/db/pll_27mhz_altpll.v}

vlog -vlog01compat -work work +incdir+D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/ZEDTCV_CyIII/TIE_block {D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/ZEDTCV_CyIII/TIE_block/Mux_Invert_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Mux_Invert_TB

do D:/VITOR/UFSC/Linse/inversor_de_frequencia/DE2_115/simulation/modelsim/wave_mux.do
