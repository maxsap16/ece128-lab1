`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 01:45:51 PM
// Design Name: 
// Module Name: Mux_8_1
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


module Mux_8_1(i, s, y);
    //these are the inputs
    input [7:0] i; 
    input [2:0] s;
    //this is the output
    output y;
    
    //this is for the negation of the switches (3 for 8)
    wire ns2, ns1, ns0;
    //this is for the changes after and/or
    wire y0, y1, y2, y3, y4, y5, y6, y7;
    
    //these are the nots
    not n0(ns0, s[0]);
    not n1(ns1, s[1]);
    not n2(ns2, s[2]);
    
    //these are the ands
    and a0(y0, i[0], ns2, ns1, ns0);
    and a1(y1, i[1], ns2, ns1, s[0]);
    and a2(y2, i[2], ns2, s[1], ns0);
    and a3(y3, i[3], ns2, s[1], s[0]);
    and a4(y4, i[4], s[2], ns1, ns0);
    and a5(y5, i[5], s[2], ns1, s[0]);
    and a6(y6, i[6], s[2], s[1], ns0);
    and a7(y7, i[7], s[2], s[1], s[0]);
    or o1(y, y0, y1, y2, y3, y4, y5, y6, y7);
    
    
endmodule

module Mux_8_1_tb;
    //this is the input use reg in testbench
    reg [7:0] i; 
    reg [2:0] s;
    //this is the output use wire in the testbench
    wire y;
    
  
    
    //these are tests for the module (0-7)
    Mux_8_1 uut(.i(i), .s(s), .y(y));
    initial begin
    
        #10 i = 8'b00000000;
        #10 i = 8'b00000001; s = 3'b000;
        #10 i = 8'b00000010;  s = 3'b001;
        #10 i = 8'b00000100; s = 3'b010;
        #10 i = 8'b00001000; s = 3'b011;
        #10 i = 8'b00010000; s = 3'b100;
        #10 i = 8'b00100000; s = 3'b101;
        #10 i = 8'b01000000; s = 3'b110;
        #10 i = 8'b10000000; s = 3'b111;
        #10 $stop;
    
    end
    
endmodule