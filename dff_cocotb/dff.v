module dff (/*AUTOARG*/
   // Outputs
   q,
   // Inputs
   clk, d, rst_n
   );

   input clk;
   input d;
   input rst_n;
   output q;
   
   

   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg			q;
   // End of automatics
   /*AUTOWIRE*/
   always @(posedge clk or negedge rst_n) begin
      if(rst_n == 1'b0) begin
	 /*AUTORESET*/
	 // Beginning of autoreset for uninitialized flops
	 q <= 1'h0;
	 // End of automatics
      end
      else begin
	 q <= d;	 
      end
   end


`ifdef COCOTB_SIM
   initial begin
      $dumpfile ("waveform.vcd");
      $dumpvars;
      #1;
   end

   // debug helper for cocotb only
   reg [7:0] dbg_count;
   initial begin
      dbg_count = 8'hFF;
      
   end
   
`endif


   

   
endmodule // dff
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
