module mux_desvio(Result_AND, Exit_ALU_Pc, Exit_ALU_Desvio, NewInput_Pc);
  input Result_AND;
  input [31:0] Exit_ALU_Desvio,
               Exit_ALU_Pc;
  output reg [31:0] NewInput_Pc;

  always@(Result_AND or Exit_ALU_Pc or Exit_ALU_Desvio) begin
    if(Result_AND == 0) begin
      NewInput_Pc = Exit_ALU_Pc;
    end
    if(Result_AND == 1) begin
      NewInput_Pc = Exit_ALU_Desvio;
    end
  end
endmodule
