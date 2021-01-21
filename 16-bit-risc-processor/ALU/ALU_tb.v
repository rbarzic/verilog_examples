`timescale 1ns / 1ps


module ALU_tb;

   reg [15:0] a;
   reg [15:0] b;
   reg [2:0] 	ALUCntrl;
   
   wire [15:0] 	result;
   wire 	zero;
 
   
   /*AUTOREG*/
   /*AUTOWIRE*/

   ALU uut(
	   .a(a),
	   .b(b),
	   .ALUCntrl(ALUCntrl),
	   .result(result),
	   .zero(zero)
	   );
   


   initial
     begin
	a = 16'b0;
	b = 16'b0;
	ALUCntrl = 3'b0;

	#1; //ADD
	a = 16;
	b = 8;
	ALUCntrl = 3'b000;
	
	#1 ALUCntrl = 3'b001; //SUB
	#1 ALUCntrl = 3'b010; //INVERT
	#1 ALUCntrl = 3'b011; //LSL
	#1 ALUCntrl = 3'b100; //LSR
	#1 ALUCntrl = 3'b101; //AND
	#1 ALUCntrl = 3'b110; //OR
	#1 ALUCntrl = 3'b111; //SLT



	
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
