module memoria_de_dados(ReadMem, WriteMem, clk, result_ALU, Read_data02, Exit_DataMem);
  input ReadMem,
        WriteMem,
        clk;
  input [31:0] result_ALU,
               Read_data02;
  output reg [31:0] Exit_DataMem;
  reg [31:0] memoria [0:31];

  initial begin
    memoria[0] = 1;
    memoria[1] = 2;
    memoria[2] = 3;
    memoria[3] = 4;
    memoria[4] = 5;
    memoria[6] = 7;
    memoria[7] = 8;
    memoria[8] = 9;
    memoria[9] = 10;
    memoria[10] = 11;
    memoria[11] = 12;
    memoria[13] = 14;
    memoria[14] = 15;
    memoria[15] = 16;
    memoria[16] = 17;
    memoria[17] = 18;
    memoria[18] = 19;
    memoria[20] = 21;
    memoria[21] = 22;
    memoria[22] = 23;
    memoria[23] = 24;
    memoria[24] = 25;
    memoria[25] = 26;
    memoria[26] = 27;
    memoria[27] = 28;
    memoria[28] = 29;
    memoria[29] = 30;
    memoria[30] = 31;
    memoria[31] = 32;
  end

  always@(posedge clk) begin
    if(ReadMem == 1) begin
      Exit_DataMem = memoria[result_ALU];
    end
    if(WriteMem == 1) begin
      memoria[result_ALU] = Read_data02;
    end
  end
endmodule
