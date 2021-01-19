`timescale 1ns / 1ps


module ALU_control_tb;

   reg  [1:0] ALUOp;
   reg  [3:0] Opcode;
   wire [2:0] ALUcnt;
 
   
   /*AUTOREG*/
   /*AUTOWIRE*/

   ALU_control uut(
		   .ALUOp(ALUOp),
		   .Opcode(Opcode),
		   .ALUcnt(ALUcnt)
		   );
   


   initial
     begin
	ALUOp  = 2'b00;
	Opcode = 3'b000;

	#1;
	Opcode = 4'b0100;//SUB
	
	#1;
	ALUOp  = 2'b01;
	Opcode = 4'b0000;
		
        #1;
	ALUOp  = 2'b00;
 	Opcode = 4'b0111;


	
	#5 $finish;
     end // initial begin


   
endmodule
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
