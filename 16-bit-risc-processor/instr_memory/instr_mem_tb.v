`timescale 1ns / 1ps


module instr_mem_tb;
   
   reg [15:0] PCt;
   wire [15:0] instruction;
      

   /*AUTOREG*/
   /*AUTOWIRE*/

   instr_mem uut(
	      .PC(PCt),
	      .instruction(instruction)     
	      );
   
   

   initial
     begin

	PCt = 0;


	#1 PCt = 1;
	#1 PCt = 2;
	#1 PCt = 3;
	#1 PCt = 4;
	#1 PCt = 5;

	
	
	#5 $finish;
     end // initial begin


   
endmodule // select_tb
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
