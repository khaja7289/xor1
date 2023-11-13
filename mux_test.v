module mux_test(
    input wire sel,
    input wire a,
    input wire b,
    output wire y
);
mux_2x1 dut(
    .sel(sel),
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("mux_waveform.vcd");
    $dumpvars;
end
endmodule

