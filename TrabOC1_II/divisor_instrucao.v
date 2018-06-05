module divisor_instrucao(instrucao, opcode, Reg_rs, Reg_rt, Reg_rd, constante_16bits, constante_26bits);//Modulo que irá decodificar os campos da instrução lida
	input [31:0] instrucao;
	output [5:0] opcode;
	output [4:0] Reg_rs, Reg_rt, Reg_rd;
	output [15:0] constante_16bits;
	output [25:0]constante_26bits;
	
       //Sempre que uma nova instrução é lida da memória, o valor de cada campo seu é atríbuido à saída correspondente
		assign opcode = instrucao[31:26];
		assign Reg_rs = instrucao [25:21];
		assign Reg_rt = instrucao [20:16];
		assign Reg_rd = instrucao [15:11];
		assign constante_16bits = instrucao[15:0];
		assign constante_26bits = instrucao[25:0];
endmodule
		