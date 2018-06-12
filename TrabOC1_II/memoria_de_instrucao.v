module memoria_de_instrucao(endereco, instrucao);
	input [31:0] endereco;
	output reg [31:0] instrucao;

	reg [31:0] memoria [0:31];
	initial begin
		memoria[0] = 32'b00000010000100010100000000100000; //add $t0, $s0, $s1  (Saida = 4+5)
		memoria[4] = 32'b00000010000100100100100000100000; //add $t1, $s0, $s2  (Saida = 4+42)
		memoria[8] = 32'b00000010000100110101000000100000; //add $t2, $s0, $s3  (Saida = 4+46)
		memoria[12] = 32'b00000010001100000100000000100010; //sub $t0, $s1, $s0  (Saida = 5-4)
		memoria[16] = 32'b00000010010100000100100000100010; //sub $t1, $s2, $s0  (Saida = 42-4)
		memoria[20] = 32'b00000010011100000101000000100010; //sub $t2, $s3, $s0  (Saida = 46-4)
		memoria[24] = 32'b10001101000100000000000000001010; //lw $t0, 10($s0)  (Saida = 4)
		memoria[28] = 32'b10001101001100010000000000001010; //lw $t1, 10($s1)  (Saida = 5)
		memoria[31] = 32'b10001101010100100000000000001010; //lw $t2, 10($s2)  (Saida = 42)
	end

	always @(endereco) begin
		instrucao = memoria[endereco];
		if(endereco > 31) begin
			instrucao = memoria[31];
		end
	end
endmodule