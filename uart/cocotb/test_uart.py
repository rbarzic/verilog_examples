import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ClockCycles, Combine
from cocotb.result import TestError, TestFailure, ReturnValue

import random # to generate random values of data

ns = 1000
CLK_PERIOD = 20 * ns


def clk(m):
    cocotb.fork(Clock(m.txcklk, CLK_PERIOD).start())

    
@cocotb.coroutine
async def rst(m):
    m.reset <= 1
    await Timer(CLK_PERIOD / 2)
    m.reset <= 0
    await Timer(CLK_PERIOD / 2)


@cocotb.test()
async def test_simple(dut):
    """ A dummy test"""
    
    cocotb.fork(Clock(dut.txclk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)            
    pass

# Local Variables:
# eval: (blacken-mode)
# End:
