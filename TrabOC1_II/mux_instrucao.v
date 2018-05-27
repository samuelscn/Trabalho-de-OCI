module mux_instrucao(RegDst, register_rt, register_rd, register_write);
	input RegDst;
	input [4:0] register_rt;
	input [4:0] register_rd;
	output reg [4:0] register_write;

	always@(RegDst or register_rt or register_rd) begin
		if(RegDst == 0) begin
			register_write = register_rt;
		end
		if(RegDst == 1) begin
			register_write = register_rd;
		end
	end
endmodule