module shift_left(endereco_32bits, endereco_deslocado);
  input [31:0] endereco_32bits;
  output reg [31:0] endereco_deslocado;

  always@(endereco_32bits) begin
    endereco_deslocado = endereco_32bits << 2;
  end
endmodule
