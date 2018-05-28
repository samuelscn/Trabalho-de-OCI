module somador_de_desvio (endereco_pc,clk,desvio,desvio_saida);
	input [31:0] endereco_pc;
	input [31:0] desvio;
	input clk;
	output reg [31:0] desvio_saida;
	always @(endereco_pc or desvio)begin
		desvio_saida = endereco_pc + desvio;
	end
endmodule
