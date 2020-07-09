`timescale 1ns/1ps
module tb (/*AUTOARG*/);

   

   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   /*AUTOWIRE*/

   wire 		led;
   wire			clk;			// From U_CLK of clock_gen.v
   wire			rst_n;			// From U_RST of reset_gen.v

   reg 			reset_a_n;		// To U_RST of reset_gen.v

   
    /* blinky AUTO_TEMPLATE(
     
     ); */
   blinky
     #(.LED_TAP(4))
     U_BLINKY (
	       .led			(led),
	       /*AUTOINST*/
	       // Inputs
	       .clk			(clk),
	       .rst_n			(rst_n));
   
   

    /* reset_gen AUTO_TEMPLATE(
     		    .reset_n		(rst_n),
     ); */
   reset_gen U_RST (
		    /*AUTOINST*/
		    // Outputs
		    .reset_n		(rst_n),		 // Templated
		    // Inputs
		    .reset_a_n		(reset_a_n),
		    .clk		(clk));
   
   
    /* clock_gen AUTO_TEMPLATE(
     ); */
   clock_gen U_CLK (
			   /*AUTOINST*/
		    // Outputs
		    .clk		(clk));
   
   
   initial begin
      $display("-I- Started !");
      reset_a_n = 1'b0;
      #100;
      reset_a_n = 1'b1;
    
      @(posedge led);
      @(posedge led);
      @(posedge led);
      @(posedge led);
      #10;      
      $display("-I- Done !");
      $finish;
   end

  // Dump all nets to a vcd file called tb.vcd
  initial begin
     $display("-I- VCD dump started...");
     $dumpfile("tb.vcd");
     $dumpvars(0,tb);
  end
   

   
endmodule // tb
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
