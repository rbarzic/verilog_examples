import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ClockCycles, Combine
from cocotb.result import TestError, TestFailure, ReturnValue

import random # to generate random values of data

ns = 1000
CLK_PERIOD = 20 * ns

ns_r = 16000
CLK_PERIOD_RX = 20 * ns_r

def clk_tx(m):
    cocotb.fork(Clock(m.txclk, CLK_PERIOD).start())

def clk_rx(m):
    cocotb.fork(Clock(m.rxclk, CLK_PERIOD_RX).start())
    
@cocotb.coroutine
async def rst(m):
    m.reset <= 1
    await Timer(CLK_PERIOD / 2)
    m.reset <= 0
    await Timer(CLK_PERIOD / 2)


@cocotb.coroutine
async def Is_tx_done(m):
    await Timer(2*ns)
    while((m.tx_enable or m.tx_load)==1):
        await Timer(2*ns)
    return m.tx_done
    
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
    #while (await Is_tx_done(m) == 0):
    #    await Timer(CLK_PERIOD)
    

@cocotb.coroutine
async def rx(m):
    await Timer(2*ns_r)
    while(await Is_tx_done(m) == 0):
        await RisingEdge (m.rxclk)
        m.rx_in <= m.tx_out
    return m.rx_data
    
    

@cocotb.test()
async def test_TX_Is_done(dut):
    """Tests that TX sets the tx_done register"""
    clk_tx(dut)

    await rst(dut)
    await Timer (CLK_PERIOD)

   
    message = 0x7B
    await tx(dut,message)

    is_done = await Is_tx_done(dut)
    if is_done == 1:
        raise TestFailure(f"Error: transmission has not started, and tx_done has been set")
    
    
    while( await Is_tx_done(dut)== 0):
        await Timer(CLK_PERIOD)

    is_done = await Is_tx_done(dut)
    if is_done == 0:
        raise TestFailure(f"Error: transmission is done, and tx_done hasn't been set")
    



    
@cocotb.test()
async def test_simple(dut):
    """ A dummy test"""
    
    clk_tx(dut)
    clk_rx(dut)
    
    await rst(dut)
    
    await Timer(CLK_PERIOD)            

    message = 0xCA
    TX = cocotb.fork( tx(dut,message))
    #RX = cocotb.fork(rx(dut))
    #await Combine(TX,RX)
    #await tx(dut,message)

    #wait for the TX to finish transmitting
    while( await Is_tx_done(dut)== 0):
        await Timer(CLK_PERIOD)

    pass

# Local Variables:
# eval: (blacken-mode)
# End:
