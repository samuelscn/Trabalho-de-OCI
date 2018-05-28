module alu (data,saida_mux_registrador,saida_alu_control,zero,alu_resultado)
	input[31:0] data ;
	input [31:0]saida_mux_registrador;
	input [31:0]saida_alu_control;
	output reg [3:0] alu_resultado;
	output reg zero;
	always@(data1 or saida_mux_registrador or saida_alu_control) begin
		if( saida_alu_control == 'b0000) begin
			zero = 0;
			alu_resultado = (data1 & saida_mux_registrador);
		end
		if(saida_alu_control == 'b0001) begin
			zero = 0;
			alu_resultado = (data1 | saida_mux_registrador);
		end
		if(saida_alu_control == 'b0010) begin
			zero = 0;
			alu_resultado = (data1 + saida_mux_registrador);
		end
		if(saida_alu_control == 'b0110) begin
			alu_resultado = (data1 - saida_mux_registrador);
			if (alu_resultado == 0 ) begin
				zero = 1;
			end
		end
		if(saida_alu_control == 'b0111) begin
			alu_resultado = 1;
			if(data1<saida_mux_registrador) begin
			alu_resultado = 1;
			zero = 0;
			end
		end
		if(saida_alu_control == 'b1100) begin
			alu_resultado = ~(data1 | saida_mux_registrador);
			zero = 0;
		end
	end
endmodule
	