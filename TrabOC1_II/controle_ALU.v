module controle_ALU (Op_ALU, Campo_16_Bits, saida_alu_control);
	input [1:0] Op_ALU;
	input [15:0] Campo_16_Bits;
	output reg [3:0] saida_alu_control;
	
	always @ (Op_ALU or Campo_16_Bits )begin
		if(Op_ALU == 'b00)begin 
			saida_alu_control = 'b0010; 
		end
		if(Op_ALU == 'b01)begin 
			saida_alu_control = 'b0110; 
		end
		if(Op_ALU == 'b10 && Campo_16_Bits[5:0] == 'b100000)begin
			saida_alu_control = 'b0010; 
		end
		if(Op_ALU == 'b10 && Campo_16_Bits[5:0] == 'b100010)begin
			saida_alu_control = 'b0110; 
		end
		if(Op_ALU == 'b10 && Campo_16_Bits[5:0] == 'b100100)begin 
			saida_alu_control = 'b0000; 
		end
		if(Op_ALU == 'b10 && Campo_16_Bits[5:0] == 'b100101)begin 
			saida_alu_control = 'b0001; 
		end
		if(Op_ALU == 'b10 && Campo_16_Bits[5:0] == 'b101010)begin 
			saida_alu_control = 'b0111; 
		end
		if(Op_ALU == 'b10 && Campo_16_Bits[5:0] == 'b100111)begin 
			saida_alu_control = 'b1100; 
		end
	end
endmodule
	
	