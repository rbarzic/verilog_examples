`timescale 1ns/1ps
module tb;


   reg idata;
   wire odata_r;
   
   chip  U_CHIP // We override the MAX_VALUE default value
     (
      /*AUTOINST*/
      // Outputs
      .odata_r				(odata_r),
      // Inputs
      .clk1				(clk1),
      .clk2				(clk2),
      .idata				(idata));

   clock_gen
     #(.period(33))
   U_CLK_GEN1 (.clk(clk1));
   clock_gen      
     #(.period(80)) 
   U_CLK_GEN2 (.clk(clk2));



   // Dump all nets to a vcd file called tb.vcd
   initial
     begin
	$dumpfile("tb.vcd");
	$dumpvars(0,tb);
     end

   // Start by pulsing the reset low for some nanoseconds
   initial begin
      idata = 1'b0;



      #1000;
      idata = 1'b1;
      #5000;
      idata = 1'b0;
      #5000;
      $display("-I- Done !");
      $finish;
   end


endmodule // tb
