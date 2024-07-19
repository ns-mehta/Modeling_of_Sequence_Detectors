`timescale 1ns / 1ps


module Seq_Detector(
    input x, clk,
    output reg y
    );
    
    wire j1, k1, q1, j0, k0, q0;
    
    assign j1 = q0 && x;
    assign k1 = !x;
    assign j0 = x;
    assign k0 = q1 || x;
    
    JK_FlipFlop JK1(.J(j1), .K(k1), .clk(clk), .Q(q1), .reset(1'b0));
    JK_FlipFlop JK0(.J(j0), .K(k0), .clk(clk), .Q(q2), .reset(1'b0));
endmodule
