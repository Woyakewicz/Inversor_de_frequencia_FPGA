module Switch_debouncer_all
(
	input clk,
	input rst,
	
	input [17:0] SW,
	
	output [17:0] SW_debounced	
);
	
	reg [3:0] temp;
	genvar i;
	generate
	for (i = 0; i < 18 ; i = i + 1)
	begin: Switches
		Switch_debouncer
		(	.clk(clk),
			.rst(rst),
			.SW(SW[i]),
			.SW_debounced(SW_debounced[i]));
	end
	endgenerate
		
endmodule 