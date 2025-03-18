`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 02:23:38 PM
// Design Name: 
// Module Name: up_down_counter_behaviour_model
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


module up_down_counter_behaviour_model(input [3:0] d_in,input clk,rst,ld,ud,output reg [3:0]Q );
    
always@(posedge clk)
begin
if (rst)
Q<=4'b0000;
else if(ld)
Q<=d_in;
else if(ud)
Q<=Q+1;
else if(!ud)
Q<=Q-1;


end
    
endmodule
