onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /gerador_tb/clk
add wave -noupdate /gerador_tb/rst
add wave -noupdate /gerador_tb/referencia
add wave -noupdate -expand -group gerador /gerador_tb/gerador/clk_50
add wave -noupdate -expand -group gerador /gerador_tb/gerador/rst
add wave -noupdate -expand -group gerador /gerador_tb/gerador/referencia
add wave -noupdate -expand -group gerador /gerador_tb/gerador/clk_27M
add wave -noupdate -expand -group gerador /gerador_tb/gerador/clk_18k
add wave -noupdate -expand -group gerador /gerador_tb/gerador/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {430 ps} 0}
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
WaveRestoreZoom {0 ps} {2097152 ns}
