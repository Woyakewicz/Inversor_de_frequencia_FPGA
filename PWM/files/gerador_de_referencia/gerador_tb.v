`timescale 1ns / 1ps
// gera os clocks para test bench e grava a saida

module gerador_tb (
);

	reg clk, rst;
	initial 
	begin
		clk = 0;
		rst = 1;


		#193;
		rst = 0;
	end
	
	always #20 clk = ~clk;

	gerador gerador
	(
		.clk_50(clk),
		.rst(rst),
		
		.referencia(referencia)
		
	);
	
endmodule
	