

module uart (/*AUTOARG*/
   // Outputs
   tx_out, rx_data, rx_error,
   // Inputs
   reset, txclk, tx_enable, tx_load, tx_data, rxclk, rx_in
   );

   

   /*AUTOINPUT*/
   input reset;

   // TX
   input txclk;
   input tx_enable;
   input tx_load;
   input [8:0] tx_data;
   
   // RX
   input       rxclk;
   input       rx_in;
   

   /*AUTOOUTPUT*/
   output      tx_out;
   output      rx_data;
   output      rx_error;


 

   reg [8:0] tx_reg;
   reg tx_parity; //the parity bit of tx package odd parity is used
   reg tx_done;
   reg [3:0]  tx_cnt;
   reg 	      tx_out;
   
   reg 	      rx_busy;
   reg [3:0]  rx_cnt; 	      
   reg [4:0]  rx_sample_cnt;
 	      
   
   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg			rx_data;
   reg			rx_error;
 
   // End of automatics

  /*AUTOWIRE*/

   parameter  IDLE         = 0;
   parameter  SHIFT_MODE   = 1;
   reg  tx_state;
   reg  rx_state;
   

   // UART TX Logic
   always@(reset or tx_enable or tx_done)
     begin: FSM_TX
	if (reset) 
	  tx_state <=0;
	else
	  case(tx_state)
	    
	    IDLE : begin
	       if (tx_enable) begin
		  tx_state <= SHIFT_MODE;
		  tx_reg <= tx_data;
	       end
	       else begin
		  tx_state <= IDLE;
	       end
	    end // case: IDLE


	    SHIFT_MODE:begin
	       if (tx_done) 
		 tx_state <= IDLE;
	       else
		 tx_state <= SHIFT_MODE;
	    end // case: SHIFT_MODE
            
	    default: begin
	       tx_state <= IDLE;
	    end
	  endcase 
     end // block: FSM
   
 

   
   always@(posedge txclk or reset)
     begin: Transmision
	if(reset)begin
	   tx_out <= 1;
	   tx_parity <= 0;
	   tx_done <= 0;
	   
	   
	   
	end else if( tx_state == SHIFT_MODE) begin   
	   if (tx_cnt == 0) begin
	      tx_out <= 0;
	   end else if (tx_cnt > 0 && tx_cnt < 10)begin
	      tx_out <= tx_reg[tx_cnt - 1];
	      tx_parity <=tx_parity^tx_reg[tx_cnt-1];
	      
	   end else if(tx_cnt == 10)
	     tx_out <= tx_parity;
	   else if (tx_cnt == 11)begin
	      tx_out <= 0;
	      tx_done <= 1;
	   end
	end
     end // block: Transmision
   


   always@(posedge txclk or reset)
     begin: tx_counter
	if(reset) begin
	   tx_cnt = 0;
	end else if ( tx_state==SHIFT_MODE)begin
	   if(tx_cnt < 12)
	     tx_cnt <= tx_cnt+1;
	   else 
	     tx_cnt <= tx_cnt;
	end else
	  tx_cnt <= tx_cnt;
     end




//RX logic
  always@(reset or rx_busy)
     begin: FSM_RX
  	if (reset) 
  	  rx_state <= SHIFT_MODE;
//IDLE;
	
  	else
  	  case(rx_state)
  	    IDLE : begin
  	       if (rx_busy) begin
  		  rx_state <= SHIFT_MODE;
		  
  	       end
  	       else begin
  		  rx_state <= IDLE;
		  
  	       end

  	    end // case: IDLE


  	    SHIFT_MODE:begin
  	       if (!rx_busy) 
  		 rx_state <= IDLE;
  	       else
  		 rx_state <= SHIFT_MODE;
  	    end
            
  	    default: begin
  	       rx_state <= IDLE;
	       
  	    end
	    
  	  endcase 

     end // block: FSM

   
   always@(posedge rxclk)
     begin: rx_counter
   	if(reset) begin
   	   rx_cnt <= 0;
   	   rx_sample_cnt <= 0;
	   
   	end else if ( rx_state==SHIFT_MODE && rx_cnt < 12 )begin
   	   
	   if (rx_cnt == 0) begin
   	      if(rx_sample_cnt == 8)begin
   		 rx_cnt <= rx_cnt + 1;
		 rx_sample_cnt = 0;
	      end else begin
		 rx_cnt <= rx_cnt;
		 rx_sample_cnt = rx_sample_cnt + 1;
	      end
	      
	      
	   end else begin // if (rx_cnt == 0)
	      
	      
	      if (rx_sample_cnt == 16) begin
		 rx_cnt <= rx_cnt + 1;
		 rx_sample_cnt = 0;
	      end else begin
		 rx_cnt <= rx_cnt;
		 rx_sample_cnt = rx_sample_cnt + 1;
	      end 


	      
	      // else begin
	      // 	 rx_cnt <= rx_cnt;
	      // 	 rx_sample_cnt <= rx_sample_cnt + 1;
	      // end
	      
	      //   end else 
	      //      if(rx_cnt < 12)begin
	      //       if(rx_sample_cnt==16)
	      // 	rx_cnt <= rx_cnt+1;
	      //       rx_sample_cnt <= 0;
	      //    end else begin 
	      //       rx_cnt <= rx_cnt;
	      //       rx_sample_cnt <= rx_sample_cnt + 1;
	      //    end
	      // end
	      //else
	      
	   end // else: !if(rx_cnt == 0)
	end // if ( rx_state==SHIFT_MODE && rx_cnt < 12 )
     end // block: rx_counter
   


   
   // Dump all nets to a vcd file called tb.vcd
   initial begin
      $display("-I- VCD dump started...");
      $dumpfile("uart_tb.vcd");
      $dumpvars(0,uart_tb);
   end


endmodule // uart
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */



