module monta_instrucao(instrucao, Op_code, Register_rs, Register_rt, Register_rd, Shamt, Endereco);
	input [31:0] instrucao;
	output [5:0] Op_code,
					 Funct;
	output [4:0] Register_rs,
					 Register_rt,
					 Register_rd,
					 Shamt;
	output [15:0] Endereco;
	
	assign	Op_code = instrucao[31:26];
	assign	Register_rs = instrucao[25:21];
	assign	Register_rt = instrucao[20:16];
	assign	Register_rd = instrucao[15:11];
	assign Shamt = instrucao[10:6];
	assign Funct = instrucao[5:0];
	assign Endereco = intrucao[15:0];
endmodule