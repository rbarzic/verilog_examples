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

@cocotb.coroutine
async def tx(m,data):
    await Timer(2*ns)
    m.tx_data <= data
    await RisingEdge(m.txclk)
    m.tx_enable <= 1
    await RisingEdge(m.txclk)
    m.tx_load <= 1
    await RisingEdge(m.txclk)
    m.tx_enable <= 0
    await RisingEdge(m.txclk)
    m.tx_load <= 0
    while(m.tx_done==0):
        await Timer(2*ns)
        #print(str(m.tx_done))

    
@cocotb.test()
async def test_simple(dut):
    """ A dummy test"""
    
    cocotb.fork(Clock(dut.txclk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)            

    message = 0xCA
    
    await tx(dut,message)       
    #await Timer(100*CLK_PERIOD)  
    #print(dut.tx_done)
    pass

# Local Variables:
# eval: (blacken-mode)
# End:
