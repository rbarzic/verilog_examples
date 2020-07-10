module i2cmaster (/*AUTOARG*/
   // Outputs
   sda, scl,
   // Inputs
   clk
   );
   input wire clk;   
   output reg sda;
   output reg scl;
   
   

   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/

   initial begin
      sda = 1'b1;
      scl = 1'b1;
      # 10;

      // Start condition
      sda <= 1'b0;
      # 10;
      scl = 1'b0;
      # 10;
      sda = 1'b0;     
      # 10;
      scl = 1'b1;
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
