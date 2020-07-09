import cocotb
from cocotb.triggers import RisingEdge,ReadOnly
from cocotb.clock import Clock, Timer



@cocotb.test()  # type: ignore
def test_1(dut):
    reset_time = Timer(5)
    dut.rst_n <= 0
    dut.d <= 0
    dut.clk <= 0
    yield reset_time
    dut.rst_n <= 1

    cocotb.fork(Clock(dut.clk, 100).start())

    yield RisingEdge(dut.clk)
    yield Timer(5)
    dut.d <= 1
    yield RisingEdge(dut.clk)
    q_sampled = str(dut.q.value)
    dut._log.info(f"Q (sampled) 1= {q_sampled}")
    yield RisingEdge(dut.clk)
    yield Timer(5)
    dut.d <= 0
    yield RisingEdge(dut.clk)
    q_sampled = str(dut.q.value)
    dut._log.info(f"Q (sampled) 2 = {q_sampled}")
    yield ReadOnly()
    q_sampled = str(dut.q.value)
    dut._log.info(f"Q (sampled) 3 = {q_sampled}")
    yield RisingEdge(dut.clk)
    
    
