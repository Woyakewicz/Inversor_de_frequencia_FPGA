module DE2_115 
(
	/******* clock input *******/
	input CLOCK_50,
	
	/****** Switches ******/
	input [17:0] SW,

	/**** GPIO ****/
	output [12:0] GPIO 
	

);
	
	wire clk_50 = CLOCK_50;
	
	
	/********* Debouncer for switches **********/
	wire rst; // From Reset_init_blk
	wire [17:0] SW_debounced; 
	
	Switch_debouncer_all Switch_debouncer_all
	(
		.clk(clk_20),
		.rst(rst),
		
		.SW(SW),
		
		.SW_debounced(SW_debounced)	
	);
	

	
	/****** Initial Reset ******/
	wire rst_initial_50;
	reset_init_blk reset_init_blk_50
	(
		.clk(clk_50),
		
		.rst_out(rst_initial_50)
	);
	
	assign rst = rst_initial_50 || SW_debounced[0];
	
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
		
	 

	

	assign GPIO = {10'b0000000000, driver_2, driver_1, clk_50};	


	
	
	
endmodule 