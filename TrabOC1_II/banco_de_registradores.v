module banco_registrador(RegWrite ,Numero_Reg1, Numero_Reg2, Numero_Reg_Escrita, Dado_escrita, clk, Valor_Reg1, Valor_Reg2); //Unidade do bando de registradores do MIPS
	input clk, RegWrite;
	input [4:0] Numero_Reg1, Numero_Reg2, Numero_Reg_Escrita; //numeração dos registradores de leitura recebidos como entrada e do registardor para escrita
	input [31:0] Dado_escrita; 
	output reg [31:0]Valor_Reg1; //Valor do da saída correspondente ao registrador da numeração recebida 
	output reg [31:0]Valor_Reg2; //Valor da saída correspondente ao registrador da numeração recebida

	reg [31:0] registradores [0:31]; //Banco de registradores do MIPS contendo 32 registradores de 32 bits
	initial begin //Inicialização dos registradores
		registradores[0] = 0;
		registradores[1] = 5;
		registradores[2] = 15;
		registradores[3] = 20;
		registradores[4] = 25;
		registradores[5] = 10;
		registradores[6] = 2;
		registradores[7] = 12;
		registradores[8] = 16;
		registradores[9] = 30;
		registradores[10] = 24;
		registradores[11] = 22;
		registradores[12] = 32;
		registradores[13] = 35;
		registradores[14] = 40;
		registradores[15] = 3;
		registradores[16] = 4;
		registradores[17] = 5;
		registradores[18] = 6;
		registradores[19] = 46;
		registradores[20] = 44;
		registradores[21] = 45;
		registradores[22] = 50;
		registradores[23] = 52;
		registradores[24] = 54;
		registradores[25] = 56;
		registradores[26] = 58;
		registradores[27] = 60;
		registradores[28] = 62;
		registradores[29] = 64;
		registradores[30] = 66;
		registradores[31] = 68;
	end
	
	always @ (posedge clk)begin //Sensível à sunida de clock
		if(RegWrite == 1)begin //Se for uma instrução de escrita na memória, o sinal de controle indica que o valor contido nos dados de escrita será escrito no registrador equivalente
			registradores[Numero_Reg_Escrita] = Dado_escrita;
		end
	end
	
	always@(Numero_Reg1 or Numero_Reg2 or registradores[Numero_Reg1] or registradores[Numero_Reg2])begin //Sensível às entradas, ou seja, sempre que houver variação do número dos registradores informados ou alteração dos valores dos memsos
		Valor_Reg1 = registradores[Numero_Reg1]; //Liga o valor dos registradores correspondentes à numeração recebida do código da isntrução às saídas
		Valor_Reg2 = registradores[Numero_Reg2];
	end
	
endmodule
		