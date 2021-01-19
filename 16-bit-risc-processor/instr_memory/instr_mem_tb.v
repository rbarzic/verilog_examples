`timescale 1ns / 1ps


module instr_mem_tb;
   
   reg [15:0] PCt;
   reg 	      fill;
   
   wire [15:0] instruction;
      

   /*AUTOREG*/
   /*AUTOWIRE*/

   instr_mem uut(
		 .fill(fill),
		 .PC(PCt),
		 .instruction(instruction)     
		 );
   
   

   initial
     begin

	//PCt = 0;
	fill = 0;

	//fill the instruction memory with the instruction form prog file
	#1 fill = 1;
	#1 fill = 0;
	#1 fill = 1;
	#1 fill = 0;

	#1 PCt = 0;
	#1 PCt = 1;
	#1 PCt = 2;
	#1 PCt = 3;

	
	
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
