module chip (/*AUTOARG*/
   // Outputs
   out_b_r,
   // Inputs
   rst_a_n, rst_b_n, clk_a, clk_b, in_a
   );
   
   input rst_a_n;
   input rst_b_n;
   input clk_a;
   input clk_b;
   input in_a;
   output out_b_r;
  
  
  /*AUTOINPUT*/
  /*AUTOOUTPUT*/
  
  /*AUTOREG*/
  /*AUTOWIRE*/

   reg 	 in_a_r;
   reg 	 out_b_r;
   

   always @(posedge clk_a or negedge rst_a_n) begin
      if(rst_a_n == 1'b0) begin
	 /*AUTORESET*/
	 // Beginning of autoreset for uninitialized flops
	 in_a_r <= 1'h0;
	 // End of automatics
      end
      else begin
	 in_a_r <= in_a;	 
      end
   end



   always @(posedge clk_b or negedge rst_b_n) begin
      if(rst_b_n == 1'b0) begin
	 /*AUTORESET*/
	 // Beginning of autoreset for uninitialized flops
	 out_b_r <= 1'h0;
	 // End of automatics
      end
      else begin
	 out_b_r <= in_a_r;	 
      end
   end

   
  
  
endmodule // chip
/*  
 Local Variables:
 verilog-library-directories:(
 "."
 )
 eval: (flymake-mode 1)
 eval: (ignore-errors (flycheck-mode -1))
 End:
 */
