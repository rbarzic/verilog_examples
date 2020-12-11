

module uart (/*AUTOARG*/
   // Outputs
   tx_out,
   // Inputs
   reset, txclk, tx_enable, tx_data
   );

   

   /*AUTOINPUT*/
   input reset;
   input txclk;
   input tx_enable;
   input [8:0] tx_data;

   /*AUTOOUTPUT*/
   output tx_out;


   reg [8:0] tx_reg;
   reg [8:0] tx_reg;
   reg tx_ready; //Triggeres that the data packet is ready to be sent
   reg tx_parity; //the parity bit of tx package odd parity is used
   reg tx_done;
   reg tx_busy;
   reg [11:0] tx_package;
   reg [3:0]  tx_cnt;
   
 
   /*AUTOREG*/
   wire      tx_out;
  /*AUTOWIRE*/

   parameter [1:0] IDLE         = 2'b00;
   parameter [1:0] LOAD_MODE    = 2'b01;
   parameter [1:0] SHIFT_MODE   = 2'b10;
   reg [1:0] state;

   // UART TX Logic
always(@ tx_enable or tx_ready )
  begin: FSM
    
      
      case (state)
          IDLE:
            if(tx_enable)
              state   = LOAD_MODE;
              tx_reg  = tx_data
             else 
              state = IDLE;
            
          end

          LOAD_MODE:
          for (i = 0; i<10; i++) begin
            tx_parity xor tx_reg[i];
          end
          tx_package = {1'b0,tx_reg,tx_parity,1'b1};
          tx_ready = 1;
            
   

          SHIFT_MODE:

        default:begin 
          state <= IDLE;
        end 
      endcase

  end // block: FSM
   
   always@(posedge clk)
     begin: Transmision
	if(reset)begin
	   tx_out <= 0;
	   tx_busy<= 0;
	else begin
	   if(tx_ready && state == SEND)
             tx_out  <= tx_package[tx_cnt]
			tx_busy <= 1;
	   else
             tx_out <= tx_out;
           tx_busy<= tx_busy;
	end
	end

	always@(posedge clk)
	  begin: counter
	     if(reset) begin
		tx_cnt = 0;
	     end else if (tx_ready && state==SEND)begin
		if(tx_cnt < 10)
		  tx_cnt <= tx_cnt+1;
		else 
		  tx_cnt <= tx_cnt;
	     end else
	       tx_cnt <= tx_cnt;
	  end

   

endmodule // uart
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */



