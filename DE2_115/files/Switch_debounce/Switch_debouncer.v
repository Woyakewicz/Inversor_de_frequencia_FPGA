module Switch_debouncer
(
	input clk,
	input rst,
	input SW,
	output SW_debounced
);
	
	/******* Detect change *******/
	reg counter_active; // From Counter blk
	reg SW_reg;
	reg SW_reg2;
	always @(posedge clk)
	begin
		SW_reg <= SW;
		SW_reg2 <= SW_reg;
	end
	
	wire SW_change = SW_reg2 ^ SW_reg;

	
	/******* Counter blk *******/
	localparam MAX_VALUE = 1000000;
	
	reg [23:0] counter;
	always @(posedge clk)
		if (rst)
		begin 
			counter_active <= 0;
			counter <= 0;
		end else if (counter_active)
			if (counter == MAX_VALUE - 1)
			begin
				counter <= 0;
				counter_active <= 0;
			end else
				counter <= counter + 24'd1;
		else if (SW_change)
			counter_active <= 1;
			
	
	/******* SW_debounced *******/
	reg SW_new;
	always @(posedge clk)
		if (rst || (counter == MAX_VALUE - 1))
			SW_new <= SW;
			
	assign SW_debounced = SW_new;
	
endmodule 