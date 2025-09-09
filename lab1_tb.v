module Mux_8_ds_tb;

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