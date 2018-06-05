module mux_memoria_dados(MemtoReg, Exit_DataMem, result_ALU, Write_Data);
  input MemtoReg;
  input [31:0] Exit_DataMem,
               result_ALU;
  output reg [31:0] Write_Data;

  always@(MemtoReg or Exit_DataMem or result_ALU) begin
    if(MemtoReg == 0) begin
      Write_Data = result_ALU;
    end
    if(MemtoReg == 1) begin
      Write_Data = Exit_DataMem;
    end
  end
endmodule
