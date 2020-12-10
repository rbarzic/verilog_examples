//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps
module testbench;


    //inputs
    reg reset;
    reg txclk;   
    reg ld_tx_data;   
    reg [7:0] tx_data; 
    reg tx_enable;    
    reg rxclk;
    reg uld_rx_data ; 
    reg rx_enable;    
    reg rx_in;

    //output
    wire tx_out;
    wire tx_empty;
    wire [7:0] rx_data;
    wire rx_empty;

    //internal varialbes
    reg [7:0] data = 10101010;
    integer i;
    integer j;
    //wire send;

    //instantiae the DUT
    uart uut(
.reset(reset)               ,
.txclk(txclk)               ,
.ld_tx_data(ld_tx_data)     ,
.tx_data(tx_data)           ,
.tx_enable (tx_enable)      ,
.tx_out (tx_out)            ,
.tx_empty(tx_empty)         ,
.rxclk       (rxclk)        ,
.uld_rx_data (uld_rx_data)  ,
.rx_data     (rx_data)      ,
.rx_enable   (rx_enable)    ,
.rx_in       (rx_in)        ,
.rx_empty    (rx_empty)
);




    task tx;
      begin
      @(posedge txclk) 
        ld_tx_data = 1;
      @(posedge txclk) 
        tx_enable = 1;
      end
    endtask

    task rx;
      begin
      @(posedge rxclk) 
        //rx_in = 0;
        rx_enable = 1;
        send_data(); 
      // @(posedge rxclk)
      //   uld_rx_data = 1;
      end
    endtask

    task send_data;
      begin
        for (i = 0;i<8 ;i++ ) begin
            rx_in = data[i];
          for (j =0 ; j<7 ;j++ ) begin
            @(posedge rxclk);
          end
          @(posedge rxclk);
          end
      end
        uld_rx_data = 1;

    endtask

      initial begin
        //initialize inputs
    
    txclk = 1;       // initial value of clock
    rxclk = 1;
    reset = 0;       // initial value of reset
    uld_rx_data = 0;
    #1 reset = 1;    // Assert the reset
    #1;  
     reset = 0;   // De-assert the reset
     rx_in = 0;
     tx_data = 7;
     tx();
     #2;
     rx();


   
     #2000  $finish;      // Terminate simulation
  end
       





  always begin
      #5 txclk = ~txclk;
  end

  always begin
      #10 rxclk = ~rxclk;
  end

          // Dump all nets to a vcd file called tb.vcd
  initial begin
     $display("-I- VCD dump started...");
     $dumpfile("uart_tb.vcd");
     $dumpvars(0,testbench);
  end

endmodule