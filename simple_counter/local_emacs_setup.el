(setq verilog-ext-project-alist
      `(("simple_counter"
         :root ,(getenv "IC_PROJECT_TOP")
         :files (
                 ;;@begin[verilog_ext_file_list]
                 "chip.v"
                 "clock_gen.v"
                 "tb.v"
                 "chip.v"
                 "reset_generator.v"
                 ;;@end[verilog_ext_file_list]
                 
                 )
         :ignore-files ("src/uart/tb/fifo_generator_0_sim_netlist.v")
         :compile-cmd "make tb_top" ; command used to compile current project
         ;; `vhier' related properties
         :command-file "commands.f" ; vhier command file
         :lib-search-path nil)))
