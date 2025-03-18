`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Create Date: 03/11/2025 10:33:41 AM
// Design Name: 
// Module Name: D_flipflop
// Project Name: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_flipflop(output reg Q, Qn, input wire Pre, Clr, clk, D);

always @(posedge clk or posedge Pre or posedge Clr) 
begin
    if (Pre) begin
        Q <= 1;
        Qn <= 0;
    end 
    else if (Clr) begin
        Q <= 0;
        Qn <= 1;
    end 
    else begin
        Q <= D;
        Qn <= ~D;
    end
end

endmodule
