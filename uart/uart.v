
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
input        ld_tx_data     ;
input  [8:0] tx_data        ;
input        tx_enable      ;
output       tx_out         ;
output       tx_empty       ;
input        uld_rx_data    ;
output [8:0] rx_data        ;
input        rx_enable      ;
input        rx_in          ;
output       rx_empty       ;

// Internal Variables 


// UART RX Logic


// UART TX Logic


endmodule
