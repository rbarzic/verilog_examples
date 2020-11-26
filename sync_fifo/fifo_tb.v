//defines the time scale of simulation, it will run in steps
//of 1ns and has a precesion value of 1ps
`timescale 1ns / 1ps
module testbench;
    parameter DATA_WIDTH = 8;


    //inputs
    reg clk;   
    reg rst;   
    reg wr_cs; 
    reg rd_cs;    
    reg [DATA_WIDTH-1:0] data_in ; 
    reg rd_en;    
    reg wr_en;

    //output
    wire full;
    wire empty;
    wire [DATA_WIDTH-1:0] data_out;
    //instantiae the DUT
    syn_fifo uut(
        .clk(clk),
        .rst(rst),
        .wr_cs(wr_cs),
        .rd_cs(rd_cs),
        .data_in(data_in),
        .rd_en(rd_en),
        .wr_en(wr_en),
        .full(full),
        .empty(empty),
        .data_out(data_out)
    );




    task do_read;
      begin
        rd_cs = 1;
        rd_en = 1;
        #10;
        rd_cs = 0;
        rd_en = 0;

      end
    endtask

    task do_write;
      input [7:0] data;
      begin
        data_in = data;
        wr_cs = 1;
        wr_en = 1;
        #10;
        wr_cs = 0;
        wr_en = 0;

      end
    endtask

      initial begin
        //initialize inputs
    
    clk = 1;       // initial value of clock
    rst = 0;       // initial value of reset
    wr_en = 0;
    wr_cs = 0;
    rd_en = 0;
    rd_cs = 0;
     #5  rst = 1;    // Assert the reset
     #10;  
     rst = 0;   // De-assert the reset
     do_write(9);
     do_read();

    //  #10  wr_cs = 1;  // write chip select
    //  #10  rd_cs = 0;  // read chip select
    //  #10  rd_en = 0;  // read enable
    //  #10  data_in = 1;  // input datae
    //  #10  wr_en = 1;  // write enable
    //  #10  data_in = 2;
    //  #10  data_in = 3;
    //  #10  data_in = 4;
    //  #10  data_in = 5;
    //  #10  data_in = 6;
    //  #10  data_in = 7;
    //  #10  data_in = 8;
    //  #10  data_in = 9;
    //  #10  data_in = 10;
    //  #10  data_in = 11;
    //  #10  data_in = 12;
    //  #10  data_in = 13;
    //  #10  data_in = 14;
    //  #10  data_in = 15;
    //  #10  wr_en = 0;
    //  #15  rd_en = 1;
    //  #15  rd_cs = 1;  

     #50  $finish;      // Terminate simulation
  end
       





       always begin
            #5 clk = ~clk;
        end

          // Dump all nets to a vcd file called tb.vcd
  initial begin
     $display("-I- VCD dump started...");
     $dumpfile("tb.vcd");
     $dumpvars(0,testbench);
  end

endmodule