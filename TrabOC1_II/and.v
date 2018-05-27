module mux_and(Branch, Reg_Zero, Exit_AND);
  input Branch,
        Reg_Zero;
  output Exit_AND;

  assign Exit_AND = Branch & Reg_Zero;

endmodule
