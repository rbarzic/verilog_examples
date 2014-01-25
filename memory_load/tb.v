`timescale 1ns/1ps
module tb;
`include "useful_tasks.v"  // some helper tasks

  reg rst_async; // asynchronous reset
  wire rst_n; // synchronous reset (falling edge)
  
  wire clk;

  reg [4:0] ram_addr;
  wire [15:0] read_data;

  
  /* chip  AUTO_TEMPLATE(
   .cs                                  (1'b1), // Continuous access to the RAM
   
   ); */
  chip  U_CHIP 
  (
   /*AUTOINST*/
   // Outputs
   .read_data                           (read_data[15:0]),
   // Inputs
   .ram_addr                            (ram_addr[4:0]),
   .clk                                 (clk),
   .cs                                  (1'b1));                  // Templated
  
   clock_gen U_CLK_GEN (
                          /*AUTOINST*/
                        // Outputs
                        .clk            (clk));
  
  
   
 
  
 

  task load_program_memory;
    reg [1024:0] filename;
    reg [15:0]   memory [31:0]; // 16-bitx32 memory
    integer      i;
    integer      dummy;
    begin

      filename = 0;
      dummy = $value$plusargs("memory=%s", filename);
      if(filename ==0) begin
        $display("WARNING! No content specified for program memory");
      end
      else begin
        $readmemh (filename, memory);
        for(i=0; i<(32); i=i+1) begin
          U_CHIP.U_RAM.mem0[i] = memory[i];
        end
      end
    end
  endtask // load_program_memory



  
  // Dump all nets to a vcd file called tb.vcd
  initial
    begin
      load_program_memory;
	$dumpfile("tb.vcd");
	$dumpvars(0,tb);
     end

  






  
  // Start by pulsing the reset low for some nanoseconds
  initial begin
    rst_async = 1'b0;
  

    
    #100;
    rst_async = 1'b1;
    @(posedge clk);
    @(negedge clk);
    ram_addr = 0;
    @(negedge clk);
    $display("-I- Ram output : %x",read_data);

    @(negedge clk);
    ram_addr = 1;
    @(negedge clk);
    $display("-I- Ram output : %x",read_data);

    
    
    $display("-I- Done !");
    $finish;
  end


endmodule // tb
