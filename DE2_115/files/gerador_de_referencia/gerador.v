module gerador 
		#(
			parameter MAX = 299
			
		)
									
	(
		input clk_50,
		input rst,
		
		output [11:0] referencia
	);

	
	wire clk_27M;
	PLL_27MHz PLL27MHz (
		.inclk0(clk_50),   //  refclk.clk
		.areset(rst),      //   reset.reset
		.c0(clk_27M), // outclk0.clk
		.locked()    //  locked.export
	);
	
	
	wire clk_18k;
	clock_divisor #(
		.LOG_MIN(13),
		.RATE_DIVISOR(1500)
	)divisor
	(
		.clk_in(clk_27M),
		.rst(rst),
		
		.clk_out(clk_18k)
	);
	
	//contador 
	reg [8:0] counter = 1'b0;
	
	  always @(posedge clk_18k)
    if (counter == MAX)
      counter <= 1'b0;
    else 
      counter <= counter + 1;




	senoid senoid_60Hz (
		.address(counter),
		.clock(clk_50),
		.q(referencia)
	);
	
endmodule
