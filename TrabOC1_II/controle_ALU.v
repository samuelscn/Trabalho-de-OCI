module controle_ALU (Op_ALU, Campo_16_Bits, saida_alu_control); //Unidade de controle da ALU, irá gerar o cógigo para operação da ALU
	input [1:0] Op_ALU;
	input [15:0] Campo_16_Bits;
	output reg [3:0] saida_alu_control;
	//Op_ALU; é gerado no módulo do controle de sinais. Campo_16_Bits equivale aos 16 bits menos significativos da instrução, será usado para analosar o campo funct
	
	always @ (Op_ALU; or Campo_16_Bits )begin //Bloco sensível aos sinais de entrada, ou seja, sempre que uma das entradas alterar, o que ocorre quando a instrução varia
		//Combase na análise do Op_ALU; gerado e o campo funct da isntrução, determina-se a operação a ser realizada na  ALU
		if(Op_ALU; == 'b00)begin //lw, sw, addi
			saida_alu_control = 'b0010; //add
		end
		if(Op_ALU; == 'b01)begin //beq, bne
			saida_alu_control = 'b0110; //subtract
		end
		if(Op_ALU; == 'b10 && Campo_16_Bits[5:0] == 'b100000)begin //Tipo R
			saida_alu_control = 'b0010; //add
		end
		if(Op_ALU; == 'b10 && Campo_16_Bits[5:0] == 'b100010)begin //Tipo R
			saida_alu_control = 'b0110; //subtract
		end
		if(Op_ALU; == 'b10 && Campo_16_Bits[5:0] == 'b100100)begin //Tipo R
			saida_alu_control = 'b0000; //and
		end
		if(Op_ALU; == 'b10 && Campo_16_Bits[5:0] == 'b100101)begin //Tipo R
			saida_alu_control = 'b0001; //or
		end
		if(Op_ALU; == 'b10 && Campo_16_Bits[5:0] == 'b101010)begin //Tipo R
			saida_alu_control = 'b0111; //set on less than
		end
		if(Op_ALU; == 'b10 && Campo_16_Bits[5:0] == 'b100111)begin //Tipo R
			saida_alu_control = 'b1100; //nor
		end
	end
endmodule
	
	