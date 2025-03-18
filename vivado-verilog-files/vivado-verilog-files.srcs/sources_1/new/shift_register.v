`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 03:29:36 PM
// Design Name: 
// Module Name: shift_register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_register(input rst,Sin,clk,Load,output reg O);
reg [3:0]Q=4'b0000;

always@(posedge clk)
begin
if (rst)
begin
    Q<=4'b0000;
    O<=0;
    end
else if (Load)
   begin
   O<=Q[0];
   Q<={Sin,Q[3:1]};
   end


end

endmodule
