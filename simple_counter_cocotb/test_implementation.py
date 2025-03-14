import types
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, Timer
from cocotb.result import TestError, TestFailure, ReturnValue
from cocotb.utils import get_sim_time


ns = 1000
CLK_PERIOD = 40 * ns

@cocotb.coroutine
async def WaitForSignalLow(signal):
    """Asynchronously wait for a signal to be low"""
    if signal.value == 0:
        return
    await FallingEdge(signal)


@cocotb.coroutine
async def WaitForSignalHigh(signal):
    """Asynchronously wait for a signal to be high"""
    if signal.value == 1:
        return
    await RisingEdge(signal)


@cocotb.coroutine
async def rst_n(m):
    m.rst_n.value = 0
    await Timer(CLK_PERIOD / 2)
    m.rst_n.value = 1
    await Timer(CLK_PERIOD / 2)




@cocotb.coroutine
async def basic_setup(dut):

    cocotb.cocotb.start_soon(Clock(dut.clk, CLK_PERIOD).start())

    await rst_n(dut)

    dut._log.info("-D- Reset released")



@cocotb.test()
async def test_simple_counter(dut):
    """A very basic test"""

    await basic_setup(dut)

    await WaitForSignalHigh(dut.done_r)
    await RisingEdge(dut.clk)

    assert dut.counter.value == 10,  f"Incorrect counter value found : {dut.counter.value} - Expecting 10"

    await RisingEdge(dut.clk)
    dut._log.info("-I- Done !")


# Local Variables:
# eval: (blacken-mode)
# mode: python
# End:
