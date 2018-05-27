modulo Controle(Op_code, Op_ALU, RegDst, WriteReg, OrigALU, Branch_eq, Branch_ne, Jump, ReadMem, WriteMem, MemtoReg);
	input [5:0] Op_code;
	output reg [1:0] Op_ALU;
	output reg RegDst,
			   WriteReg,
			   OrigALU,
			   Branch,
			   Jump,
			   ReadMem,
			   WriteMem,
			   MemtoReg;
	always@(Op_code)begin
		if(Op_code == 'b000000)begin //Tipo R
			 Op_ALU = 'b10; RegDst = 1; OrigALU = 0; MemtoReg = 0; WriteReg = 1; ReadMem = 0; WriteMem = 0; Branch = 0; Jump = 0;
		end
		if(Op_code == 'b000101)begin //bne
			Op_ALU = 'b01; RegDst = 'bx; OrigALU = 0; MemtoReg = 'bx; WriteReg = 0; ReadMem = 0; WriteMem = 0; Branch = 1; Jump = 0;
		end
		if(Op_code == 'b001000)begin //addi
			Op_ALU = 'b00; RegDst = 0; OrigALU = 1; MemtoReg = 0; WriteReg = 1; ReadMem = 0; WriteMem = 0; Branch = 0; Jump = 0;
		end
		if(Op_code == 'b100011)begin	//lw
			Op_ALU = 'b00; RegDst = 0; OrigALU = 1; MemtoReg = 1; WriteReg = 1; ReadMem = 1; WriteMem = 0; Branch = 0; Jump = 0;
		end
		if(Op_code == 'b101011)begin	//sw
			Op_ALU = 'b00; RegDst = 'bx; OrigALU = 1; MemtoReg = 'bx; WriteReg = 0; ReadMem = 0; WriteMem = 1; Branch = 0; Jump = 0;
		end
		if(Op_code == 'b000010)begin	//jump
			Op_ALU = 'bxx; RegDst = 'bx; OrigALU = 'bx; MemtoReg = 'bx; WriteReg = 0; ReadMem = 0; WriteMem = 0; Branch = 0; Jump = 1;
		end
	end
endmodule
