module deslocamento(endereco, end_deslocado);
  input [31:0] endereco;
  output reg [31:0] end_deslocado;

  always@(endereco) begin
    end_deslocado = endereco << 2;
  end
endmodule
