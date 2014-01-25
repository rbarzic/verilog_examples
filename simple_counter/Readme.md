# A very simple Verilog counter example using Icarus Verilog.


## Usage : 
 - 'make help' : Get a short description of available of Makefile target
 -  make comp  : compile files listed in the file vlist_tb.txt, generate executable 'tb'
 -  make run   : Launch the simulation
      It should display :
                VCD info: dumpfile tb.vcd opened for output.
                -I- Done !

 - make wave   : Launch gtkwave to examine waveforms saved in tb.vcd  
 


## Files 
 - tb.v : "Top-level" verilog file - the testbench
 - chip.v : the "Device-Under-Test" (DUT) - here a simple synchronous counter
 - clock_gen.v : a simple module to generate a clock
 - reset_generator.v : Create a synchronous reset from an asynchronous one
 - useful_tasks.v : contains tasks to help checking simulation results
 - Makefile : a standard GNU Makefile to compile and run the simulation
 - Readme.md : This file 





