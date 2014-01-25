`timescale 1ns/1ps
module tb;
`include "useful_tasks.v"  // some helper tasks

  reg rst_async; // asynchronous reset
  wire rst_n; // synchronous reset (falling edge)
  wire done_r;
  wire clk;

  parameter TOP_COUNTER_VALUE = 42;


  
  chip #(.MAX_VALUE(TOP_COUNTER_VALUE)) U_CHIP // We override the MAX_VALUE default value 
  (
   /*AUTOINST*/
   // Outputs
   .done_r                              (done_r),
   // Inputs
   .rst_n                               (rst_n),
   .clk                                 (clk));
  
   clock_gen U_CLK_GEN (
                          /*AUTOINST*/
                        // Outputs
                        .clk            (clk));
  
  
   /* reset_generator AUTO_TEMPLATE(
    ); */
  reset_generator U_RESET_GEN (
                          /*AUTOINST*/
                               // Outputs
                               .rst_n           (rst_n),
                               // Inputs
                               .clk             (clk),
                               .rst_async       (rst_async));
  
 

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
    @(posedge done_r); // wait for done signal to rise
    check_8bits(tb.U_CHIP.counter,TOP_COUNTER_VALUE); // then check counter value (see useful_tasks.v)
    
    $display("-I- Done !");
    $finish;
  end


endmodule // tb
