


module ALU (/*AUTOARG*/
   // Outputs
   result, zero,
   // Inputs
   a, b, ALUCntrl
   );

   input [15:0] a;
   input [15:0] b;
   input [2:0] 	ALUCntrl;
   
   output [15:0] result;
   output 	 zero;
 	
 	 
   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg [15:0]		result;
   reg			zero;
   // End of automatics
   /*AUTOWIRE*/
   

   always @(a)
     begin

	
	//ADD
	//SUB
	//INVERT
	//LSL
	//LSR
	//AND
	//OR
	//SLT

	     
	 
	
     end
   

   
   // Dump all nets to a vcd file called tb.vcd
   initial begin
      $display("-I- VCD dump started...");
      $dumpfile("ALU.vcd");
      $dumpvars(0,ALU);
   end

endmodule
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */





