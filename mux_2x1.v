module mux_2x1 (
    input wire sel,
    input wire a,
    input wire b,
    output wire y
);
    assign y = (sel) ? b : a;
endmodule

