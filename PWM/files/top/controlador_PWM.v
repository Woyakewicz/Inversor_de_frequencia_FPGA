module controlador_PWM 
	#(
	parameter MAX = 2
	)
	(
		input clk_50,
		
		output [11:0] portadora_out,
		output [11:0] referencia_out,
		output driver_1,
		output driver_2
	);
	
	
	/******** initial reset ********/
	wire rst_ini;
	reset_init_blk reset_init_blk (
		.clk(clk_50),
		.rst_out(rst_ini)
	);

	wire rst = rst_ini;
	/*******************************/
	
	/******** Gerador de referencia ********/	
	wire [11:0] senoid;
	
	gerador senoid_60hz (
		.clk_50(clk_50),
		.rst(rst),
		.referencia(senoid)
	);
	/*******************************/	
	
	/******** Portador triangular ********/	
	wire [11:0] portadora;
	
	portadora portador_triangular(
		.clk(clk_50),
		.rst(rst),
		.portadora(portadora)
	);
	
	/******** modulação PWM ********/	
	wire modulado;
	PWM PWM(
		.clk(clk_50),
		.referencia(senoid),
		.portadora(portadora),
		.modulado(modulado)
	);
	
	/******** máquina de estados para dead time ********/
	
	reg [3:0] DEAD_TIME_SM;
	localparam INIT 					= 0;
	localparam COMPARE_1				= 1;
	localparam COUNTER_1				= 2;
	localparam CHANGE_1				= 3;
	localparam COMPARE_2				= 4;
	localparam COUNTER_2				= 5;
	localparam CHANGE_2				= 6;

	/**************************************************/
	
		reg driver1_reg;
		reg driver2_reg;
		
		reg [1:0] counter = 1'b0;
	
	  always @(posedge clk_50)
			if(rst)
			begin
				DEAD_TIME_SM <= INIT;
				driver1_reg <= 1'b0;
				driver2_reg <= 1'b0;
			end else
			begin
			case (DEAD_TIME_SM)
				INIT:
					begin
						driver1_reg <= modulado;
						DEAD_TIME_SM <= COMPARE_1;
					end
				
				COMPARE_1:
					if (driver1_reg != modulado)
					begin
						driver2_reg <= ~modulado;
						DEAD_TIME_SM <= COUNTER_1;
					end
				COUNTER_1:
					begin
					 if ((counter == MAX))
						begin
						counter <= 1'b0;
						DEAD_TIME_SM <= CHANGE_1;
					end else 
						counter <= counter + 1;
					end
					
				CHANGE_1:
					begin
						driver1_reg <= modulado;
						DEAD_TIME_SM <= COMPARE_2;
					end
				COMPARE_2:
					if (driver2_reg != ~modulado)
					begin
						driver1_reg <= modulado;
						DEAD_TIME_SM <= COUNTER_2;
					end
				COUNTER_2:
					begin
					 if ((counter == MAX))
						begin
						counter <= 1'b0;
						DEAD_TIME_SM <= CHANGE_2;
					end else 
						counter <= counter + 1;
					end
					
				CHANGE_2:
					begin
						driver2_reg <= ~modulado;
						DEAD_TIME_SM <= COMPARE_1;
					end
			endcase

	end
	
	
	assign driver_1 = driver1_reg;
	assign driver_2 = driver2_reg;
	assign portadora_out = portadora;
	assign referencia_out = senoid;
	
endmodule
