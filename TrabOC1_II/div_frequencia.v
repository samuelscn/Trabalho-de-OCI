module div_frequencia (input wire clk, output reg clock = 0);

	reg [31:0] cont = 0;

	always @ (posedge clk)
	begin
		cont = cont + 1;
		
		if(cont == 50000000)
		begin
			clock = ~clock;
			cont = 0;
		end
	end

endmodule
