// A simple led-blinking example to
// test FPGA flow
module blinky (/*AUTOARG*/
   // Outputs
   led,
   // Inputs
   clk, rst_n
   );

   input clk;
   input rst_n;

   output wire led;

   parameter COUNTER_BITS=32;   
   parameter LED_TAP = 26;
   
   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   /*AUTOWIRE*/

   reg [COUNTER_BITS-1:0] counter;


   always @(posedge clk or negedge rst_n) begin
      if(rst_n == 1'b0) begin
	 /*AUTORESET*/
	 // Beginning of autoreset for uninitialized flops
	 counter <= {COUNTER_BITS{1'b0}};
	 // End of automatics
      end
      else begin
	 counter <= counter + 1;	 
      end
   end

   
   assign led = counter[LED_TAP];   
   
endmodule // blinky
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
