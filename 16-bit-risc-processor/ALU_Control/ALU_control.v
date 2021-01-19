


module ALU_control (/*AUTOARG*/
   // Outputs
   ALUcnt,
   // Inputs
   ALUOp, Opcode
   );

   input[1:0] ALUOp;
   input [3:0] Opcode;
   
   output [2:0] ALUcnt;
   wire [5:0] 	ALUcont;
 	
 	 
   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg [2:0]		ALUcnt;
   // End of automatics
   /*AUTOWIRE*/
   assign ALUcont = {ALUOp,Opcode};
   

   always @(ALUcont)
     begin
	
	case(ALUcont)
	  6'b10xxxx: ALUcnt <= 3'b000; //ALU operation: ADD, instruction LW,SW
	  6'b01xxxx: ALUcnt <= 3'b001; //ALU operation: SUB, instruction : BEQ, BNQ
   	  6'b000010: ALUcnt <= 3'b000; //ALU operation: ADD, instruction : BEQD-type:ADD
	  6'b000011: ALUcnt <= 3'b001; //ALU operation: SUB, instruction : D-type:SUB
	  6'b000100: ALUcnt <= 3'b010; //ALU operation: INVERT, instruction : D-type:INVERT
	  6'b000101: ALUcnt <= 3'b011; //ALU operation: LSL, instruction : D-type:LSL
	  6'b000110: ALUcnt <= 3'b100; //ALU operation: LSR, instruction : D-type:LSR
	  6'b000111: ALUcnt <= 3'b101; //ALU operation: AND, instruction : D-type:AND
	  6'b001000: ALUcnt <= 3'b110; //ALU operation: OR , instruction : D-type:OR
	  6'b001001: ALUcnt <= 3'b111; //ALU operation: SLT, instruction : D-type:SLT

	  default:$display("out of range ALUcont value");
	     
	endcase 
	
     end
   

   
   // Dump all nets to a vcd file called tb.vcd
   initial begin
      $display("-I- VCD dump started...");
      $dumpfile("ALU_control.vcd");
      $dumpvars(0,ALU_control);
   end

endmodule
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */





