module multiple_clock_gen (/*AUTOARG*/
                           // Outputs
                           clk
                           );

   output reg [5:0] clk;
   
   real             period = 100.0;

   initial begin
      clk = 0;      
   end
   
   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   /*AUTOWIRE*/
   always #(period/2)  clk[0] = !clk[0];
   always #(period)     clk[1] = !clk[1];
   always #(period*2)   clk[2] = !clk[2];
   always #(period*4)   clk[3] = !clk[3];
   always #(period*8)   clk[4] = !clk[4];
   always #(period*16)  clk[5] = !clk[5];
   
endmodule // multiple_clock_gen
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 eval: (flymake-mode 1)
 eval: (ignore-errors (flycheck-mode -1))
 eval: (make-variable-buffer-local 'before-save-hook)
 eval: (add-hook 'before-save-hook 'verilog-indent-buffer)
 End:
 */
