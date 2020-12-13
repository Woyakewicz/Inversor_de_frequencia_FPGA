onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /controlador_PWM_tb/clk
add wave -noupdate /controlador_PWM_tb/clk_50M
add wave -noupdate -format Analog-Step -height 74 -max 1023.0 -min -1024.0 -radix decimal /controlador_PWM_tb/portadora_out
add wave -noupdate -format Analog-Step -height 74 -max 819.99999999999989 -radix decimal /controlador_PWM_tb/referencia_out
add wave -noupdate /controlador_PWM_tb/driver_1
add wave -noupdate /controlador_PWM_tb/driver_2
add wave -noupdate -expand -group senoid_60Hz /controlador_PWM_tb/controlador_PWM/senoid_60hz/clk_50
add wave -noupdate -expand -group senoid_60Hz /controlador_PWM_tb/controlador_PWM/senoid_60hz/rst
add wave -noupdate -expand -group senoid_60Hz /controlador_PWM_tb/controlador_PWM/senoid_60hz/referencia
add wave -noupdate -expand -group senoid_60Hz /controlador_PWM_tb/controlador_PWM/senoid_60hz/clk_27M
add wave -noupdate -expand -group senoid_60Hz /controlador_PWM_tb/controlador_PWM/senoid_60hz/clk_18k
add wave -noupdate -expand -group senoid_60Hz /controlador_PWM_tb/controlador_PWM/senoid_60hz/counter
add wave -noupdate -expand -group PWM /controlador_PWM_tb/controlador_PWM/PWM/clk
add wave -noupdate -expand -group PWM /controlador_PWM_tb/controlador_PWM/PWM/referencia
add wave -noupdate -expand -group PWM /controlador_PWM_tb/controlador_PWM/PWM/portadora
add wave -noupdate -expand -group PWM /controlador_PWM_tb/controlador_PWM/PWM/modulado
add wave -noupdate -expand -group portadora /controlador_PWM_tb/controlador_PWM/portador_triangular/clk
add wave -noupdate -expand -group portadora /controlador_PWM_tb/controlador_PWM/portador_triangular/rst
add wave -noupdate -expand -group portadora /controlador_PWM_tb/controlador_PWM/portador_triangular/portadora
add wave -noupdate -expand -group portadora /controlador_PWM_tb/controlador_PWM/portador_triangular/counter
add wave -noupdate -expand -group reset_init /controlador_PWM_tb/controlador_PWM/reset_init_blk/clk
add wave -noupdate -expand -group reset_init /controlador_PWM_tb/controlador_PWM/reset_init_blk/rst_out
add wave -noupdate -expand -group reset_init /controlador_PWM_tb/controlador_PWM/reset_init_blk/reset_count
add wave -noupdate -expand -group reset_init /controlador_PWM_tb/controlador_PWM/reset_init_blk/rst_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11620370 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {16777216 ns}
