// Generic RAM model
`timescale 1ns/1ps


module ram (/*AUTOARG*/
  // Outputs
  read_data,
  // Inputs
  clock, addr, write_data, cs, we
  );
  parameter WORD_WIDTH = 16;
  
  parameter ADDR_WIDTH = 8;
  parameter RAM_SIZE = 1<< ADDR_WIDTH;

  localparam WORD_MSB = WORD_WIDTH-1;
  

  localparam ADDR_MSB = ADDR_WIDTH-1;

  input clock;
  input [ADDR_MSB:0] addr;
  input [WORD_MSB:0] write_data;
  
  input              cs;
  input              we;
  output [WORD_MSB:0] read_data;
 
  /*AUTOINPUT*/
  
  /*AUTOOUTPUT*/
  
  /*AUTOREG*/
  // Beginning of automatic regs (for this module's undeclared outputs)
  reg [WORD_MSB:0]      read_data;
  // End of automatics
  
  /*AUTOWIRE*/


  reg [WORD_MSB:0]     mem0 [0:RAM_SIZE-1];

  reg [ADDR_MSB:0] addr_latched;
  
  
  always @(posedge clock) begin
    if(cs) begin
      addr_latched <= addr;
    end
  end


  always @(posedge clock) begin
    #3;
    if(cs) 
      read_data <= mem0[addr_latched[ADDR_MSB:0]];
  end
  
  

  // Write

 always @(posedge clock) begin
   if(cs && we) begin
     $display("Memory write ");
     mem0[addr] <= write_data;
   end
 end



  
endmodule // ram
/*  
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
