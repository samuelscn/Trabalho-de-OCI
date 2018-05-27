module memoria_de_instrucao(endereco, instrucao);
	input [31:0] endereco;
	output reg [31:0] instrucao;

	reg [31:0] memoria [0:31];
	initial begin
		memoria[0] = 32'b00000010000100010100000000100000;
	end

	always @(endereco) begin
		instrucao = memoria[endereco];
		if(endereco > 31) begin
			instrucao = memoria[31];
		end
	end
endmodule