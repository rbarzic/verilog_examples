[![Build Status](https://travis-ci.org/rbarzic/verilog_examples.svg?branch=master)](https://travis-ci.org/rbarzic/verilog_examples)

# verilog_examples


A few verilog examples to help students to start playing with Verilog
and the Icarus simulator.

Examples are made of several verilog files to illustrate real-world
usage of modules and module instantiations.

Examples use also heavily Emacs and its very powerful verilog-mode.

In all examples, the chip.v file represents the "device under test"
and tb.v the testbench file that uses it.


## simple_counter

A simple counter counting to a fixed value expressed as a
parameter. See Readme.md file under ./simple_counter for
compilation/simulation instructions.

## memory_load

Show how to load a RAM model with the content of a file


## Notes for Ubuntu users :
- you probably need to install the icarus compiler/simulator, gtkwave,
  and maybe a few extra stuff :

  `sudo aptitude install build-essential iverilog gtkwave`
