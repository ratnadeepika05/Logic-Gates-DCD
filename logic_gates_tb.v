module logic_gates_tb;

reg a, b;

wire and_y;
wire or_y;
wire not_a;
wire not_b;
wire nand_y;
wire nor_y;
wire xor_y;
wire xnor_y;

logic_gates uut(
    .a(a),
    .b(b),
    .and_y(and_y),
    .or_y(or_y),
    .not_a(not_a),
    .not_b(not_b),
    .nand_y(nand_y),
    .nor_y(nor_y),
    .xor_y(xor_y),
    .xnor_y(xnor_y)
);

initial begin
    $dumpfile("logic_gates.vcd");
    $dumpvars(0, logic_gates_tb);
end

initial begin
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
end

endmodule