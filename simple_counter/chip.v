module chip (/*AUTOARG*/
  // Outputs
  done_r,
  // Inputs
  rst_n, clk
  );
  parameter MAX_VALUE = 0;
  input rst_n;
  input clk;
  output done_r;
  
  /*AUTOINPUT*/
  /*AUTOOUTPUT*/
  
  /*AUTOREG*/
  /*AUTOWIRE*/

  reg [7:0] counter;
  reg       done_r;
  wire      rst_n;
  wire      clock;
  always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
      /*AUTORESET*/
      // Beginning of autoreset for uninitialized flops
      counter <= 8'h0;
      done_r <= 1'h0;
      // End of automatics
    end
    else begin
      if ((counter != MAX_VALUE) && !done_r) begin
        counter <= counter+1;
      end
      else begin
        done_r <= 1'b1;
      end                       
        
    end
  end
  
  



  
endmodule // chip
/*  
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
