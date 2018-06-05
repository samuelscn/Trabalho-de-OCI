module display (input wire clock, input wire [3:0] entrada, output reg [6:0] saida);

	always @ (*)
	begin
		case(entrada)
			0: saida = 7'b1000000;
			1: saida = 7'b1111001;
			2: saida = 7'b0100100;
			3: saida = 7'b0110000;
			4: saida = 7'b0011001;
			5: saida = 7'b0010010;
			6: saida = 7'b0000010;
			7: saida = 7'b1111000;
			8: saida = 7'b0000000;
			9: saida = 7'b0010000;
			10: saida = 7'b0001000;
			11: saida = 7'b1100000;
			12: saida = 7'b1000110;
			13: saida = 7'b1000010;
			14: saida = 7'b0100001;
			15: saida = 7'b0111000;
		endcase
	end

endmodule