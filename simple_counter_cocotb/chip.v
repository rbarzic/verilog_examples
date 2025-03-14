module chip (/*AUTOARG*/
   // Outputs
   done_r, counter,
   // Inputs
   rst_n, clk
   );
  parameter MAX_VALUE = 0;
  input rst_n;
  input clk;
  output done_r;
  output reg [7:0] counter;
  /*AUTOINPUT*/
  /*AUTOOUTPUT*/

  /*AUTOREG*/
  /*AUTOWIRE*/


  reg       done_r;
  wire      rst_n;
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


 `ifdef CHIP_COCOTB_VCD
    initial
     begin
        $dumpfile("dump.vcd"); // Same name as for verilator
 	     $dumpvars(0,chip);
     end
 `endif






endmodule // chip
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
