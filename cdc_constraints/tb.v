`timescale 1ns/1ps
module tb;
  reg rst_async; // asynchronous reset
  wire rst_n; // synchronous reset (falling edge)


  chip  U_CHIP // We override the MAX_VALUE default value
  (
   /*AUTOINST*/
   // Outputs
   .out_b_r				(out_b_r),
   // Inputs
   .rst_a_n				(rst_a_n),
   .rst_b_n				(rst_b_n),
   .clk_a				(clk_a),
   .clk_b				(clk_b),
   .in_a				(in_a));


    /* clock_gen AUTO_TEMPLATE(
     .clk            (clk_a),
     ); */
   clock_gen U_CLK_GEN_A (
			   /*AUTOINST*/
			  // Outputs
			  .clk			(clk_a));	 // Templated
   
   
    /* clock_gen AUTO_TEMPLATE(
     .clk            (clk_b),
     ); */
   clock_gen U_CLK_GEN_B (
			   /*AUTOINST*/
			  // Outputs
			  .clk			(clk_b));	 // Templated
   
   

   

   /* reset_generator AUTO_TEMPLATE(
    .rst_n		(rst_a_n),
    .clk		(clk_a),
    ); */
  reset_generator U_RESET_GEN_A (
                          /*AUTOINST*/
				 // Outputs
				 .rst_n			(rst_a_n),	 // Templated
				 // Inputs
				 .clk			(clk_a),	 // Templated
				 .rst_async		(rst_async));

   /* reset_generator AUTO_TEMPLATE(
    .rst_n		(rst_b_n),
    .clk		(clk_b),
    ); */
  reset_generator U_RESET_GEN_B (
                          /*AUTOINST*/
				 // Outputs
				 .rst_n			(rst_b_n),	 // Templated
				 // Inputs
				 .clk			(clk_b),	 // Templated
				 .rst_async		(rst_async));


   

  // Dump all nets to a vcd file called tb.vcd
  initial
    begin
       $dumpfile("tb.vcd");
       $dumpvars(0,tb);
    end

  // Start by pulsing the reset low for some nanoseconds
  initial begin
     rst_async = 1'b0;
     #100;
     rst_async = 1'b1;
     #10000;
    $display("-I- Done !");
    $finish;
  end


endmodule // tb
