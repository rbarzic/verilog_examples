if {[catch {

# define run engine funtion
source [file join {/opt/latticesemi/radiant/1.1} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) 1
set para(prj_dir) "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k"
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- ledtest_ice40up5k_impl_1.vm ledtest_ice40up5k_impl_1.ldc
run_engine_newmsg synthesis -f "ledtest_ice40up5k_impl_1_lattice.synproj"
run_postsyn [list -a iCE40UP -p iCE40UP5K -t SG48 -sp High-Performance_1.2V -oc Industrial -top -keeprtl -w -o ledtest_ice40up5k_impl_1.udb ledtest_ice40up5k_impl_1.vm] "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/impl_1/ledtest_ice40up5k_impl_1.ldc"

} out]} {
   runtime_log $out
   exit 1
}
