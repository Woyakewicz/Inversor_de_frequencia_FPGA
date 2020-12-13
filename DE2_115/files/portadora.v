module portadora 
	#(
	parameter MAX = 1023,
	parameter MIN = -1024
	)
	(
		input clk,
		input rst,
		
		output [11:0] portadora
	);
	
	
	
		//contador 
	reg [11:0] counter = MIN;
	
	  always @(posedge clk)
    if ((counter == MAX) ||(rst))
      counter <= MIN;
    else 
      counter <= counter + 1;
		
	assign portadora = counter;

endmodule
