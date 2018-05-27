module extensor_de_sinal(endereco_16bits, endereco_32bits);
	input [15:0] endereco_16bits;
	output reg [31:0] endereco_32bits;

	always@(endereco_16bits) begin
		endereco_32bits[15:0] = endereco_16bits;
		endereco_32bits[31:16] = {16 {constante_16bits[15]}};
	end
endmodule