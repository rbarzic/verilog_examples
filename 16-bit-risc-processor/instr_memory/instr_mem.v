


module instr_mem (/*AUTOARG*/
   // Outputs
   instruction,
   // Inputs
   PC
   );

   input [15:0] PC;
  
   
   output [15:0] instruction;

   reg [15:0] 	 memory [3:0];
 	 
   /*AUTOINPUT*/
   /*AUTOOUTPUT*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg [15:0]		instruction;
   // End of automatics
   /*AUTOWIRE*/

   integer 		data_file    ; // file handler
   integer 		scan_file    ; // file handler
   integer 		i = 0    ; // memory array index
   logic   signed [21:0] captured_data;
`define NULL 0    

   initial begin
      data_file = $fopen("instructions.prog", "r");
      if (data_file == `NULL) begin
	 $display("data_file handle was NULL");
	 $finish;
      end
      while(!$feof(data_file)) begin
         scan_file = $fscanf(data_file, "%b\n", captured_data); 
      	 memory[i] = captured_data;
      	 $display("memory = %b",memory[i]);
	 
      	 i = i + 1;
	 
      end
      
   end

   always @(PC) begin
      	 //scan_file = $fscanf(data_file, "%b\n", captured_data); 
      
      //if (scan_file) begin
	 instruction = memory[PC]; 
	 //instruction = captured_data;
	 
   	 //use captured_data as you would any other wire or reg value;
      //end
   end
   
   // always @ (PC) 
   //   begin

   // 	// case(PC)

   // 	// endcas
   // 	//$readmemh("instructions.prog",memory);
   // 	//$fdisplay("memory value = %d",memory[0][2]);
   // 	instruction <= memory[0];
	
      
   //   end
   // 

   
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





