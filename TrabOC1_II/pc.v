module pc(clk,endereco_pc,prox_endereco);
	input clk;
	input [31:0] prox_endereco;
	output reg [31:0] endereco_pc;


	initial begin
		endereco_pc = 32'b00000000000000000000000000000000; /// endereço inicial é 0
	end
	always@( posedge clk ) begin
		endereco_pc = prox_endereco; ///recebe o endereço feito pelo cálculo
	end
endmodule
