module and(Branch, Zero, Result_AND);
  input Branch,
        Zero;
  output Result_AND;

  assign Result_AND = Branch & Zero;
endmodule
