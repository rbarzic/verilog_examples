`define NULL 0    

module instr_mem (/*AUTOARG*/
   // Outputs
   instruction,
   // Inputs
   PC, fill
   );

   input [15:0] PC;
   input 	fill;
   
   
   output [15:0] instruction;

   //------------Internal Veriables-----------
   //reg [15:0] 	 memory [3:0];
   reg [15:0] 	 instruction_in;
   reg [15:0] 	 instruction_addrs;
   
 		 
   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   wire [15:0] 	 instruction;
   
   // End of automatics
   /*AUTOWIRE*/

   
   //------------Parameters-----------
   parameter DATA_WIDTH = 16;
   parameter ADDR_WIDTH = 16; 
   integer 		data_file    ; // file handler
   integer		scan_file    ; // file handler
   integer 		i = 0    ; // memory array index
   logic   signed [21:0] captured_data;



   initial begin

      data_file = $fopen("instructions.prog", "r");
      if (data_file == `NULL) begin
	 $display("data_file handle was NULL");
	 $finish;
      end
  
   end


   //----- a process to fill the instruction memory with instructions
   //----- from text file
   always @(fill) begin

      //while(!$feof(data_file)) begin
      if(!$feof(data_file)) begin

         scan_file = $fscanf(data_file, "%b\n", captured_data);
      	 instruction_in <= captured_data;
	 instruction_addrs <= i;
	 //memory[i] <= captured_data;
      	 //$display("memory = %b",memory[i-1]);
	 
      	 i = i + 1;
	 
      end
      
   end


   
 
   ram_dp_ar_aw #(DATA_WIDTH,ADDR_WIDTH)DP_RAM (
						.address_0 (instruction_addrs) , // address_0 input 
						.data_0    (instruction_in)    , // data_0 bi-directional
						//.data_0    (captured_data)    , // data_0 bi-directional
						.cs_0      (1'b1)      , // chip select
						.we_0      (1'b1)      , // write enable
						.oe_0      (1'b0),        // output enable
						.address_1 (PC) , // address_q input
						//.data_1    (data_ram)   , // data_1 bi-directional
						.data_1    (instruction)   , // data_1 bi-directional
						.cs_1      (1'b1)      , // chip select
						.we_1      (1'b0)       , // Read enable
						.oe_1      (1'b1)        // output enable
						);     
   // Dump all nets to a vcd file called tb.vcd
   initial begin
      $display("-I- VCD dump started...");
      $dumpfile("instr_mem.vcd");
      $dumpvars(0,instr_mem);
   end

endmodule // select
/*
 Local Variables:
 verilog-library-directories:(
 "."
 )
 End:
 */





