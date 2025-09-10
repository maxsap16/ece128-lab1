# ece128-lab1
### Project Description
The goal for this project is to design and implement an 8-to-1 multiplexer(MUX) while also gaining practical experience with different styles of Verilog modeling. The Verilog source code is to be expressed in three different ways: Structural, Behavioral, and Dataflow modeling. Based on the source code design and port mapping, the 8-to-1 MUX is then to be programmed on an FPGA board with toggleable switches so that the design can be observed physically in real time with real input.

### Instructions for Simulation and FPGA Implementation
1. After the source code and testbench files are written, run the synthesis of your code to make sure there are no errors.
2. Then, locate the dropdown on the left that allows you to run a behavioral simulation of your project. Observe the waveform diagram generated, and make sure the output matches what is expected given the input and selector bits.
3. If everything is correct, create your pin assignments between the variables in your module(s) and the board in the constraints file.
4. Generate the bitsream, open the hardware manager, and load the bitstream file into your FPGA board.
5. When the implementation is loaded, start to alter the switches to test your design and observe how the multiplexer functions.
