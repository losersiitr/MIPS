`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:			Pennsylvania State University
//					
// Engineer: 		Uffaz Nathaniel
//
// Create Date:		4/26/2013
// Design Name: 	Instruction Memory
// Module Name:     instruction_memory
// Project Name:	Processor
// Target Devices: 	N/A
// Tool versions:	N/A
// Description:		Describes an instruction memory
//
// Dependencies:	N/A
//
// Revision:		N/A
//
//
// Additional Comments: N/A
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module instruction_memory

(
	address,
	instruction
);
        //input port
	input [31:0] address;
	
        //output port
        output [31:0] instruction;

      
    //We have 256 (32 bit) locations where we can store the instructions which are to be executed and is given by instruction_memory
    reg	[31:0] instruction_memory [255:0];
	
    //The readmh function reads the hexadecimal numbers from the file program.mips and maps them into instruction_memory
    
	initial
	begin
		$readmemh("program.mips",instruction_memory);
	end
    
    //The assign instruction, gives the variable instruction the data which is present in the instruction_memory at one location out of the possible 256. 
    
	assign instruction = instruction_memory[address[9:2]];
	
 endmodule  



