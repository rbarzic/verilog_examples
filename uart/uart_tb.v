//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps

module uart_tb;

  
   reg reset;
   reg txclk;   
   reg [8:0] tx_data; 
   reg 	     tx_enable;
   reg 	     tx_load;

   reg 	     rxclk;
   reg [11:0] err_package;
   reg 	      rx_in;
   
  
   /*AUTOREG*/
    
   wire     tx_out;

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire [8:0]		rx_data;		// From U_uart of uart.v
   wire			rx_error;		// From U_uart of uart.v
   // End of automatics

   //parameters
   integer 		i;
   
    /* uart AUTO_TEMPLATE(
     ); */
   uart U_uart (
			   /*AUTOINST*/
		// Outputs
		.tx_out			(tx_out),
		.rx_data		(rx_data[8:0]),
		.rx_error		(rx_error),
		// Inputs
		.reset			(reset),
		.txclk			(txclk),
		.tx_enable		(tx_enable),
		.tx_load		(tx_load),
		.tx_data		(tx_data[8:0]),
		.rxclk			(rxclk),
		.rx_in			(tx_out));//read package fed from the transmitter of the UART
                //.rx_in			(rx_in)); //read package fed from testbench
   
   task tx;
      begin
	 @(posedge txclk)
	   tx_enable <= 1;
	 @(posedge txclk)
	   tx_load <= 1;
	 @(posedge txclk)
	   tx_enable <= 0;
	 @(posedge txclk)
	   tx_load <= 0;
      end
   endtask // tx

  
   task tx_err;
      begin
	 //err_package <= 12'b110000001110;
	 err_package <= 12'b100000001110;
	 
	 for( i = 0; i < 12;i++)begin
	    @(posedge txclk);
	    rx_in <= err_package[i];
	 end
      end
   endtask // tx_err



   initial begin
      //initialize inputs
      
      txclk = 1;       // initial value of clock
      rxclk = 1;
      reset = 0;       // initial value of reset
      rx_in <= 1;
      
      #1;  
      reset = 1; 
      #20;
      reset = 0;   // De-assert the reset
      for(i = 0;i < 9; i++)begin
      tx_data = 7+i;
      tx();
      #500;
      end
      //tx_data = 14;
      //tx();
      
      //tx_err();
         
      
      $finish;      // Terminate simulation
   end
       





   always begin
      #16 txclk = ~txclk;
   end


   always begin
      #1 rxclk = ~rxclk;
  end



   

endmodule // uart_tb
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */
