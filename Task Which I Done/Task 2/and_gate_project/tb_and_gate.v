`timescale 1ns / 1ps

module tb_and_gate;
    reg a, b;
    wire y;

    // Instantiate the AND gate
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        // Dump waveform to a VCD file
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_and_gate);

        // Apply all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
