
module uart (
reset          ,
clk            ,
ld_tx_data     ,
tx_data        ,
tx_enable      ,
tx_out         ,
tx_empty       ,
uld_rx_data    ,
rx_data        ,
rx_enable      ,
rx_in          ,
rx_empty
);

// Port declarations
input        reset          ;
input        clk            ;
input  [8:0] tx_data        ;
input        tx_enable      ;
output       tx_out         ;
input        uld_rx_data    ;
output [8:0] rx_data        ;
input        rx_enable      ;
input        rx_in          ;
output       rx_empty       ;

// Internal Variables 
//TX variables
reg [8:0] tx_reg;
reg tx_ready; //Triggeres that the data packet is ready to be sent
reg tx_parity; //the parity bit of tx package odd parity is used
reg tx_done;
reg tx_busy;
reg [11:0] tx_package;
reg [3:0] tx_cnt;

//TX states
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

    end 


  end


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


always@(posedge clk)
begin: UART_TX
  if(reset)
    state       <= IDLE;
    tx_reg      <= 9b'000000000;
    tx_parity   <= 0;
end else begin
  
  if
  
  if (tx_ready)begin
    for 
    //send
  end
  
  end

  end



// UART RX Logic




endmodule
