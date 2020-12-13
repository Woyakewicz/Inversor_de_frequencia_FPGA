module PWM (
		input clk,
		
		input [11:0] referencia,
		input [11:0] portadora,
		
		output modulado
	);
	
	wire agb;
	comparador comparador(
			.dataa(referencia),
			.datab(portadora),
			.agb(agb)
	);
	
	assign modulado = agb;
	// ou somente um assign?
endmodule
	