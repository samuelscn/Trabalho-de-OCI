	module somador_pc (endereco_pc,clk,proximo_endereco);
	input [31:0] endereco_pc;
	input clk;
	output reg [31:0] proximo_endereco;
	always@(endereco_pc) begin
		proximo_endereco = endereco_pc + 4;
	end
	endmodule
