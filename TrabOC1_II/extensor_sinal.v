module extensor (endereco16, endereco32);
	input [15:0] endereco16;
	output reg[31:0]endereco32;

	always @ (endereco16)begin
		endereco32[15:0] = endereco16[15:0];
		endereco32[31:16] = {16 {endereco16[15]}}; 

	end

endmodule
