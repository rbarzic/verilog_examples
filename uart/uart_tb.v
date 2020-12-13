//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps

module uart_tb;

  
   reg reset;
   reg txclk;   
   reg [8:0] tx_data; 
   reg 	     tx_enable;
   reg 	     tx_load;
  
   /*AUTOREG*/
    
   wire     tx_out;

   /*AUTOWIRE*/

    /* uart AUTO_TEMPLATE(
     ); */
   uart U_uart (
			   /*AUTOINST*/
		// Outputs
		.tx_out			(tx_out),
		// Inputs
		.reset			(reset),
		.txclk			(txclk),
		.tx_enable		(tx_enable),
		.tx_load		(tx_load),
		.tx_data		(tx_data[8:0]));
   
   task tx;
      begin
	 @(posedge txclk)
	   tx_enable <= 1;
	 @(posedge txclk)
	   tx_load <= 1;
	 

      end
   endtask // tx




   initial begin
      //initialize inputs
      
      txclk = 1;       // initial value of clock
      reset = 0;       // initial value of reset
      #1;  
      reset = 1;
      
      #10;
      reset = 0;   // De-assert the reset
      tx_data = 7;
      tx();
   
      
      #2000  $finish;      // Terminate simulation
   end
       





   always begin
      #5 txclk = ~txclk;
   end

/* -----\/----- EXCLUDED -----\/-----
   always begin
      #10 rxclk = ~rxclk;
  end
 -----/\----- EXCLUDED -----/\----- */


   

endmodule // uart_tb
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
