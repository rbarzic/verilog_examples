import cocotb
from cocotb.triggers import RisingEdge,ReadOnly
from cocotb.clock import Clock, Timer

@cocotb.test()
def test_create_clock(dut):
    reset_time = Timer(5)
    dut.reset <= 0
    dut.enable <= 0
    dut.clock <= 0
    yield reset_time
    dut.reset <= 1

    cocotb.fork(Clock(dut.clock, 100).start())

    yield RisingEdge(dut.clock)
    yield Timer(5)
    dut.reset <= 0
    yield RisingEdge(dut.clock)
    dut.enable <= 1

    yield RisingEdge(dut.clock)
    yield Timer(90)
    dut.enable <= 0

    yield ReadOnly()

    yield RisingEdge(dut.clock)
