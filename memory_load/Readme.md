# Loading a memory with the content of a file

  Inside chip.v, a generic synchronous RAM model (32x16-bit)is instanciated. This memory is loaded with the content of the file test.vmem at startup by using the task "load_program_memory", that itself uses the system task $readmemh.

The file name is actually not hard-coded  in the testbench but passed as an argument to the simulator ( +memory= on the vvp command line, $value$plusargs in tb.v)

## Usage : 
 - 'make help' : Get a short description of available of Makefile target
 -  make comp  : compile files listed in the file vlist_tb.txt, generate executable 'tb'
 -  make run   : Launch the simulation
      It should display :
                VCD info: dumpfile tb.vcd opened for output.
                -I- Ram output : cafe
                -I- Ram output : babe
                -I- Done !

 - make wave   : Launch gtkwave to examine waveforms saved in tb.vcd  
 


## Files 
 - tb.v : "Top-level" verilog file - the testbench
 - chip.v : the "Device-Under-Test" (DUT) - here a 16-bit ram block
 - ram.v : a generic synchronous sram model
 - test.vmem : RAM content
 - clock_gen.v : a simple module to generate a clock
 - useful_tasks.v : contains tasks to help checking simulation results
 - Makefile : a standard GNU Makefile to compile and run the simulation
 - Readme.md : This file 





