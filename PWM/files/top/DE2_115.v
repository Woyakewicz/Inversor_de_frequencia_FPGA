module DE2_115 
(
	/******* clock input *******/
	input CLOCK_50,
	

	/**** GPIO ****/
	output [2:0] GPIO 
	

);
	
	wire clk_50 = CLOCK_50;
	
	
	/********* Debouncer for switches **********/
	wire rst; // From Reset_init_blk

	
	/****** Initial Reset ******/
	wire rst_initial_50;
	reset_init_blk reset_init_blk_50
	(
		.clk(clk_50),
		
		.rst_out(rst_initial_50)
	);
	
	assign rst = rst_initial_50;
	
	wire [11:0] portadora_out;
	wire [11:0] referencia_out;
	wire driver_1;
	wire driver_2;
	

	controlador_PWM controlador_PWM
	(
		.clk_50(clk_50),
		.rst(rst),
		.portadora_out(portadora_out),
		.referencia_out(referencia_out),
		.driver_1(driver_1),
		.driver_2(driver_2),
	);
		
	 

	

	assign GPIO = {clk_50, driver_1, driver_2};	


	
	
	
endmodule 