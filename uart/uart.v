

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
   output [8:0] rx_data;
   output 	rx_error;


 

   reg [8:0] tx_reg;
   reg tx_parity; //the parity bit of tx package odd parity is used
   reg tx_done;
   reg [3:0]  tx_cnt;
   reg 	      tx_out;
   
   reg 	      rx_busy;
   reg [3:0]  rx_cnt; 	      
   reg [4:0]  rx_sample_cnt;
   reg [11:0] rx_package;
   reg 	      rx_parity;
   
   
   
 	      
   
   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg [8:0]		rx_data;
   reg			rx_error;
   // End of automatics

  /*AUTOWIRE*/

   parameter  IDLE         = 0;
   parameter  SHIFT_MODE   = 1;
   reg  tx_state;
   reg  rx_state;
   integer i;
   
   

   // UART TX Logic
   always@(reset or tx_enable or tx_done)
     begin: FSM_TX
	if (reset) 
	  tx_state <= IDLE;
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
	   tx_out <= 1'h1;
	   tx_parity <= 1'h0;
	   tx_done <= 1'h0;
	   	   
	end else if( tx_state == SHIFT_MODE) begin   
	   if (tx_cnt == 0) begin
	      tx_out <= 0;
	      tx_parity <= tx_parity;
	      tx_done <= tx_done;
	      
	   end else if (tx_cnt > 0 && tx_cnt < 10)begin
	      tx_out <= tx_reg[tx_cnt - 1];
	      tx_parity <=tx_parity^tx_reg[tx_cnt-1];
	      tx_done <= 0;
	      //tx_parity <= (rx_cnt > 1)? tx_parity^tx_reg[tx_cnt-1]:tx_parity;
	      	      
	      
	   end else if(tx_cnt == 10)begin
	      tx_out <= tx_parity;
	      tx_done <= 0;
	   end
	   else if (tx_cnt == 11) begin
	      tx_out <= 1;
	      tx_done <= 1;
	      rx_parity <= rx_parity;
	      
	      
	   end 
	end else begin
	   tx_out <= tx_out;
	   tx_done <= tx_done;
	   tx_parity <= tx_parity;
	   
	end // else: !if( tx_state == SHIFT_MODE)
     end // block: Transmision
   


   always@(posedge txclk or reset)
     begin: tx_counter
	if(reset) begin
	   tx_cnt = 4'h0;
	end else if ( tx_state==SHIFT_MODE)begin
	   if(tx_cnt < 11)
	     tx_cnt <= tx_cnt+1;
	   else if (tx_cnt == 12)
	     tx_cnt <= 0;
	   else
	     tx_cnt <= tx_cnt;
	end else
	  tx_cnt <= tx_cnt;
     end




//RX logic
  always@(reset or rx_busy)
     begin: FSM_RX
  	if (reset) 
  	  rx_state <= IDLE;
	else
	  
  	  case(rx_state)
  	    IDLE : begin
  	       if (rx_busy) begin
  		  rx_state <= SHIFT_MODE;
	       end
  	       else begin
  		  rx_state <= IDLE;
  	       end
  	    end 

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
   	   rx_cnt <=4'h0;
   	   rx_sample_cnt <= 5'h0;
	   rx_parity <= 1'h0;
	   rx_error <= 1'h0;
	   
	end else if ( rx_state==SHIFT_MODE && rx_cnt < 12 )begin
   	   if (rx_cnt == 0) begin
	      rx_parity <= 1'h0;
	      rx_error <= 1'h0;
	      
   	      if(rx_sample_cnt == 8)begin
   		 rx_cnt <= rx_cnt + 1;
		 rx_sample_cnt = 0;
	      end else begin
		 rx_cnt <= rx_cnt;
		 rx_sample_cnt = rx_sample_cnt + 1;
	      end
	      
	   end else if (rx_cnt < 12) begin // if (rx_cnt == 0)
	  
              if (rx_sample_cnt == 15) begin
		 rx_cnt <= rx_cnt + 1;
		 rx_sample_cnt = 0;
		 rx_parity <= (rx_cnt < 10)?rx_parity^rx_in:rx_parity;
		 rx_error <=(rx_cnt == 11)? (rx_parity == rx_package[10])?0:1:0;
		 
	      end else begin
		 rx_cnt <= rx_cnt;
		 rx_sample_cnt = rx_sample_cnt + 1;
		 rx_error <= rx_error;
		 rx_parity <= rx_parity;
		 
	      end
	      
	      
	   end else if (rx_state == IDLE) begin
	      rx_cnt <= 0;
	      rx_sample_cnt <= 0;
	      rx_error <= rx_error;
	      rx_parity <= rx_parity;
	      
	   end
        end // if ( rx_state==SHIFT_MODE && rx_cnt < 12 )
     end // block: rx_counter
   

   always @(posedge rxclk or reset ) 
     begin: rx_reader
	if(reset) begin
	   /*AUTORESET*/
	   // Beginning of autoreset for uninitialized flops
	   rx_busy <= 1'h0;
	   rx_data <= 9'h0;
	   //rx_error <= 1'h0;
	   rx_package <= 12'h0;
	   //rx_parity <= 1'h0;
	   // End of automatics
	   
	end else if (rx_busy == 0)begin
	   rx_data <= 9'h0;
	   //rx_error <=rx_error;
	   //rx_parity <= rx_error;
	   
	   
	   if (rx_in == 0) begin
	      rx_busy <= 1;
	      rx_package[rx_cnt] <= rx_in;
	      $display ("rx_cnt = %d",rx_cnt);
	      
	      
	   end else begin
	      rx_package <= 12'h0;
	      rx_busy <= 1'h0;
	   end
	   
	   
	end else if (rx_busy == 1)begin

	   if(rx_cnt  == 12)begin 
	      rx_busy <= 0;
	      rx_data <=rx_package[9:1];
	      rx_package <= rx_package;
	      //rx_parity <= rx_parity;
	      //rx_error <= (rx_parity == rx_package[10])?0:1;

	   end else begin
	      rx_package[rx_cnt] <= rx_in;
	      rx_busy <= rx_busy;
	      rx_data <= rx_data;

	      $display ("rx_cnt = %d",rx_cnt);
	   end // else: !if(rx_cnt  == 12)
       	end // if (rx_busy == 1)
     end // block: rx_reader
   
   

   // always @( rx_cnt or posedge reset )
   //   begin: error_detection
   // 	if(reset  == 1'b1) begin
   // 	   /*AUTORESET*/
   // 	   // Beginning of autoreset for uninitialized flops
   // 	   rx_error <= 1'h0;
   // 	   rx_parity <= 1'h0;
   // 	   // End of automatics
   // 	end else if (rx_cnt == 12)begin
	   
   // 	   for(i = 0; i<9; i++)begin
   // 	      rx_parity <= tx_parity^rx_package[i+1];
   // 	      rx_error <= (rx_parity == rx_package[10])?0:1;
   // 	   end
	   
   // 	end else begin
   // 	   rx_parity <= rx_parity;
   // 	   rx_error <= rx_error;
   // 	end // else: !if(rx_cnt  == 12)
	
   //   end // block: error_detection
   
   
   
   




   
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



