

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
   reg tx_ready; //Triggeres that the data packet is ready to be sent
   reg tx_parity; //the parity bit of tx package odd parity is used
   reg tx_done;
   reg tx_busy;
   reg [11:0] tx_package;
   reg [3:0]  tx_cnt;
   reg 	      tx_out;
   
 
   /*AUTOREG*/

  /*AUTOWIRE*/

   parameter [1:0] IDLE         = 2'b00;
   parameter [1:0] LOAD_MODE    = 2'b01;
   parameter [1:0] SHIFT_MODE   = 2'b10;
   reg [1:0] state;   

   // UART TX Logic
always@(tx_enable or tx_ready )
  begin: FSM    
     case(state)
       IDLE : begin
	  if (tx_enable) begin
	     state <= LOAD_MODE;
	     tx_reg <= tx_data;
	     
	  end
	  else begin
	     state <= IDLE;
	     
	  end

       end // case: IDLE
       LOAD_MODE: begin

	  tx_package = {1'b0,tx_reg,tx_parity,1'b1};
	  tx_ready = 1;
	     
	 	  
       end // case: LOAD_MODE

       SHIFT_MODE:begin
  
       end
           
       default: begin
	  state <= IDLE;
	  
       end
     endcase 


 

  end // block: FSM
   
   always@(posedge txclk)
     begin: Transmision
	if(reset)begin
	   tx_out <= 0;
	   tx_busy<= 0;
	   state <= IDLE;
	   
	end else if(tx_ready && state == SHIFT_MODE) begin
	   
           tx_out  <= tx_package[tx_cnt];
           tx_busy <= 1;
	end else begin
	   
           tx_out <= tx_out;
           tx_busy<= tx_busy;
	end
     end

   always@(posedge txclk)
     begin: counter
	if(reset) begin
	   tx_cnt = 0;
	end else if (tx_ready && state==SHIFT_MODE)begin
	   if(tx_cnt < 10)
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



