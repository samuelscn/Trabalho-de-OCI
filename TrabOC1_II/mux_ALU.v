module mux_ALU(ALUSrc, register_rd, endereco_32bits, Read_data02);
  input ALUSrc;
  input [31:0] register_rd,
               endereco_32bits;
  output reg [31:0] Read_data02;

  always@(ALUSrc or register_rd or endereco_32bits) begin
    if(ALUSrc == 0) begin
      Read_data02 = register_rd;
    end
    if(ALUSrc == 1) begin
      Read_data02 = endereco_32bits;
    end
  end
endmodule
