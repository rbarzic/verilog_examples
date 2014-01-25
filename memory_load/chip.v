module chip (/*AUTOARG*/
  // Outputs
  read_data,
  // Inputs
  ram_addr, clk, cs
  );

  input [4:0] ram_addr;
  output [15:0] read_data;
  input         clk;
 
  input         cs; // Chip select



  
  
   /* ram AUTO_TEMPLATE(
    .addr              (ram_addr),
   
    .write_data        (16'd0), // we don't write to the RAM
    .we                (1'b0), // we don't write to the RAM
    .read_data                     (read_data[15:0]),
    .clock                         (clk),
    ); */
  ram #(
        .WORD_WIDTH(16),
        .ADDR_WIDTH(5) // 32 words
        )
  U_RAM (
             /*AUTOINST*/
         // Outputs
         .read_data                     (read_data[15:0]),       // Templated
         // Inputs
         .clock                         (clk),                   // Templated
         .addr                          (ram_addr),              // Templated
         .write_data                    (16'd0),                 // Templated
         .cs                            (cs),
         .we                            (1'b0));                  // Templated
  
  



  
endmodule // chip
/*  
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
