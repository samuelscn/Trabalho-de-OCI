module mux_memoria_dados(MemtoReg, Exit_DataMem, ResultadoF_ALU, Write_Data);
  input MemtoReg;
  input [31:0] Exit_DataMem,
               ResultadoF_ALU;
  output reg [31:0] Write_Data;

  always@(MemtoReg or Exit_DataMem or ResultadoF_ALU) begin
    if(MemtoReg == 0) begin
      Write_Data = ResultadoF_ALU;
    end
    if(MemtoReg == 1) begin
      Write_Data = Exit_DataMem;
    end
  end
endmodule
