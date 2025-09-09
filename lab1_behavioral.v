`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 02:49:30 PM
// Design Name: 
// Module Name: Mux_8_bee
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


module Mux_8_bee(y, i, s);
    //these are the inputs
    input [7:0] i; 
    input [2:0] s;
    //this is the output
    output reg y;

    always@(s or i)
    begin
        case(s)
            3'b000 : y = i[0];
            3'b001 : y = i[1];
            3'b010 : y = i[2];
            3'b011 : y = i[3];
            3'b100 : y = i[4];
            3'b101 : y = i[5];
            3'b110 : y = i[6];
            3'b111 : y = i[7];
            default : y = 1'bx;
        endcase
    end
endmodule