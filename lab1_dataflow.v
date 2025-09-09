`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 03:29:27 PM
// Design Name: 
// Module Name: Mux_8_ds
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


module Mux_8_ds(i, s, y);
    //these are the inputs
    input [7:0] i; 
    input [2:0] s;
    //this is the output
    output y;
    
    //this is the way to code for the data flow type
    assign y = (~s[2] & ~s[1] & ~s[0] & i[0]) | (~s[2] & ~s[1] & s[0] & i[1]) | (~s[2] & s[1] & ~s[0] & i[2]) | (~s[2] & s[1] & s[0] & i[3]) 
    | (s[2] & ~s[1] & ~s[0] & i[4]) | (s[2] & ~s[1] & s[0] & i[5]) | (s[2] & s[1] & ~s[0] & i[6]) | (s[2] & s[1] & s[0] & i[7]);
endmodule