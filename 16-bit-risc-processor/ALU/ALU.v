


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
   //reg			zero;
   // End of automatics
   /*AUTOWIRE*/
   

   always @(*)
     begin

	case(ALUCntrl)
	  3'b000 : result <= a + b;//ADD
	  3'b001 : result <= a - b;//SUB
	  3'b010 : result <= ~a;   //INVERT
	  3'b011 : result <= a<<b; //LSL
	  3'b100 : result <= a>>b; //LSR
	  3'b101 : result <= a&b ; //AND
       	  3'b110 : result <= a|b;  //OR
	  3'b111 : result <= (a<b) ? 16'b1: 16'b0; //SLT
	  
	  default: $display("unrecognized control signal");
	endcase 	 
	
     end
   
   assign zero = (result == 16'b0)?1'b1: 1'b0;
   
   
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





