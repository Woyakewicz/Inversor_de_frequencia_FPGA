`timescale 1ns / 1ps
// gera os clocks para test bench e grava a saida

module controlador_PWM_tb (
);

	reg clk, rst;
	
	reg clk_50M,clk_4M,clk_390k,clk_18k, enb, fs, eof;
	reg wrt = 1'b1;
	
	wire [11:0] portadora_out;
	wire [11:0] referencia_out;
	wire	driver_1;
	wire	driver_2;
	
	integer file_out_portadora, file_out_senoid, file_out_driver1, file_out_driver2;
	integer file_out_signal, count, scan_file;


	controlador_PWM controlador_PWM 
	(
		.clk_50(clk_50M),
		
		.portadora_out(portadora_out),
		.referencia_out(referencia_out),
		.driver_1(driver_1),
		.driver_2(driver_2)
	);
	
	initial
	begin
	$display($time, " << Starting the Simulation >>");
	//$stop;
	clk_50M = 1'b0;
	rst = 1'b1;
	fs = 1'b0;
	clk_4M = 1'b0;
	clk_390k = 1'b0;
	clk_18k = 1'b0;
	
	#5000 rst = ~rst;
 

		
	file_out_portadora = $fopen("D:/Woyakewicz/inversor_de_frequencia/PWM/matlab/file_out_portadora.hex","w"); //"wb" pra pcm
	if (!file_out_portadora) $fatal(0,"Could not open file for writing");

	file_out_senoid = $fopen("D:/Woyakewicz/inversor_de_frequencia/PWM/matlab/file_out_senoid.hex","w");
	if (!file_out_senoid) $fatal(0,"Could not open file for writing");
	
	file_out_driver1 = $fopen("D:/Woyakewicz/inversor_de_frequencia/PWM/matlab/file_out_driver1.hex","w");
	if (!file_out_driver1) $fatal(0,"Could not open file for writing");
	
	file_out_driver2 = $fopen("D:/Woyakewicz/inversor_de_frequencia/PWM/matlab/file_out_driver2.hex","w");
	if (!file_out_driver2) $fatal(0,"Could not open file for writing");

	end

	always #1280 clk_390k = ~clk_390k;		
	always #27777 clk_18k = ~clk_18k;
	always #104 clk_4M = ~clk_4M;								// na verdade 4,8M
	always #10 clk_50M = ~clk_50M;							//alterado, alterar matlab


always @ (posedge clk_390k) begin

	if (wrt == 1'b1) $fdisplay(file_out_portadora, "%H", portadora_out);  // "short" para pcm
	else if (eof == 1'b1) begin
		$fclose(file_out_portadora);
		//$stop;
	end

end

always @ (posedge clk_18k) begin

	if (wrt == 1'b1) $fdisplay(file_out_senoid, "%H", referencia_out);
	else if (eof == 1'b1) begin
		$fclose(file_out_senoid);
		//$stop;
	end

end

always @ (posedge clk_390k) begin

	if (wrt == 1'b1) $fdisplay(file_out_driver2, "%H", driver_2);  // "short" para pcm
	else if (eof == 1'b1) begin
		$fclose(file_out_driver2);
		//$stop;
	end

end

always @ (posedge clk_390k) begin

	if (wrt == 1'b1) $fdisplay(file_out_driver1, "%H", driver_1);  // "short" para pcm
	else if (eof == 1'b1) begin
		$fclose(file_out_driver1);
		//$stop;
	end

end

//always @ (posedge clk_4M) begin
//
//	if (wrt == 1'b1) $fdisplay(1, "%H", cic_interp1);
//	else if (eof == 1'b1) begin
//		$fclose(file_out_interp1);
//		//$stop;
//	end
//
//end
//
//always @ (posedge clk_4M) begin
//
//	if (wrt == 1'b1) $fdisplay(file_out_interp2_i, "%H", cic_interp2_i);
//	else if (eof == 1'b1) begin
//		$fclose(file_out_interp2_i);
//		//$stop;
//	end
//
//end

endmodule









//`timescale 1ns / 1ps
//// gera os clocks para test bench e grava a saida
//
//module controlador_PWM_tb (
//);
//
//	reg clk, rst;
//	initial 
//	begin
//		clk = 0;
//		rst = 1;
//
//
//		#193;
//		rst = 0;
//	end
//	
//	always #20 clk = ~clk;
//
//	controlador_PWM controlador_PWM 
//	(
//		.clk_50(clk),
//		
//		.driver_1(driver_1),
//		.driver_2(driver_2)
//	);
//	
//endmodule
//	