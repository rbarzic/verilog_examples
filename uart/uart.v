

module uart (/*AUTOARG*/
   // Outputs
   tx_out,
   // Inputs
   reset, txclk, tx_enable, tx_load, tx_data
   );

   

   /*AUTOINPUT*/
   input reset;
   input txclk;
   input tx_enable;
   input tx_load;
   input [8:0] tx_data;

   /*AUTOOUTPUT*/
   output tx_out;


   reg [8:0] tx_reg;
   reg tx_parity; //the parity bit of tx package odd parity is used
   reg tx_done;
   reg [3:0]  tx_cnt;
   reg 	      tx_out;
   
 
   /*AUTOREG*/

  /*AUTOWIRE*/

   parameter  IDLE         = 0;
   parameter  SHIFT_MODE   = 1;
   reg  state;   

   // UART TX Logic
   always@(reset or tx_enable or tx_done)
     begin: FSM
	if (reset) 
	  state <=0;
	
	else
	  case(state)
	    IDLE : begin
	       if (tx_enable) begin
		  state <= SHIFT_MODE;
		  tx_reg <= tx_data;
		  
	       end
	       else begin
		  state <= IDLE;
		  
	       end

	    end // case: IDLE


	    SHIFT_MODE:begin
	       if (tx_done) 
		 state <= IDLE;
	       else
		 state <= SHIFT_MODE;
	    end
            
	    default: begin
	       state <= IDLE;
	       
	    end
	    
	  endcase 

     end // block: FSM
   
 

   
   always@(posedge txclk)
     begin: Transmision
	if(reset)begin
	   tx_out <= 1;
	   state <= IDLE;
	   tx_parity <= 0;
	   
	   
	end else if( state == SHIFT_MODE) begin   
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
   


   always@(posedge txclk)
     begin: counter
	if(reset) begin
	   tx_cnt = 0;
	end else if ( state==SHIFT_MODE)begin
	   if(tx_cnt < 12)
	     tx_cnt <= tx_cnt+1;
	   else 
	     tx_cnt <= tx_cnt;
	end else
	  tx_cnt <= tx_cnt;
     end

   
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



