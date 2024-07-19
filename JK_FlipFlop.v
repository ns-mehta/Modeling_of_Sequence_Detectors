`timescale 1ns / 1ps

module JK_FlipFlop(
    input J, K, clk, reset,
    output reg Q
    );
    
    always @(posedge clk or reset) begin
        if (reset) begin
            Q <= 1'b0;
        end else begin
            case ({J, K})
                2'b00: Q <= Q;
                2'b01: Q <= 1'b0;
                2'b10: Q <= 1'b1;
                2'b11: Q <= !Q;
                default: Q <= 1'bx;
            endcase
        end
     end
endmodule
