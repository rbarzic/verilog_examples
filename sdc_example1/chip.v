module chip (/*AUTOARG*/
   // Outputs
   odata_r,
   // Inputs
   clk1, clk2, idata
   );

   input wire clk1;
   input wire clk2;

   input wire idata;
   output reg odata_r;
   

   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   /*AUTOWIRE*/

   reg idata_clk1_r;
   reg odata_m;
   
   
   always @(posedge clk1 ) begin
      idata_clk1_r <= idata;	 
   end


   always @(posedge clk2) begin
      odata_m <= idata_clk1_r;
      odata_r <= odata_m;
      
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
