import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ClockCycles, Combine
from cocotb.result import TestError, TestFailure, ReturnValue

import random # to generate random values of data


ns_r = 1000
CLK_PERIOD_RX = 20 * ns_r

ns_t = 16000
CLK_PERIOD_TX = 20 * ns_t


def clk_tx(m):
    cocotb.fork(Clock(m.txclk, CLK_PERIOD_TX).start())

def clk_rx(m):
    cocotb.fork(Clock(m.rxclk, CLK_PERIOD_RX).start())
    
@cocotb.coroutine
async def rst(m):
    m.reset <= 1
    await Timer(CLK_PERIOD_TX / 2)
    m.reset <= 0
    await Timer(CLK_PERIOD_TX / 2)


@cocotb.coroutine
async def Is_tx_done(m):
    #while((m.tx_enable or m.tx_load)==1):
    #    await Timer(2*ns_t)
    return m.tx_done

@cocotb.coroutine
async def Is_rx_busy(m):
    return m.rx_busy
    
@cocotb.coroutine
async def tx_init(m,data):
    await Timer(2*ns_t)
    m.tx_data <= data
    await RisingEdge(m.txclk)
    m.tx_enable <= 1
    await RisingEdge(m.txclk)
    m.tx_load <= 1
    await RisingEdge(m.txclk)
    m.tx_enable <= 0
    await RisingEdge(m.txclk)
    m.tx_load <= 0
    await RisingEdge(m.txclk)
    m._log.info("TX_init:TX has been initiated")

    #return m.tx_out
    
@cocotb.coroutine
async def tx(m,data):
    await Timer(2*ns_t)
    await tx_init(m,data)
    while( await Is_tx_done(m)== 0):
        await RisingEdge(m.txclk)
    m._log.info("TX:The sent message is %d" % (m.tx_data))

    
@cocotb.coroutine
async def rx(m):
    await Timer(2*ns_r)
    while( (await Is_rx_busy(m) == 1) or (await Is_tx_done(m) == 0) ):
        #await Timer (ns_r)
        package =int(m.tx_out)
        m.rx_in <= package
        await RisingEdge (m.rxclk)
    m._log.info("RX:The received message is %d" % (m.rx_data))
    return m.rx_data
    

@cocotb.coroutine
async def rx_from_data(m,r_package):
    await Timer(2*ns_r)
    i = 0
    package = r_package
    d_in = package & (1 << i)
    print(d_in)
    m.rx_in <= int(d_in)
    i += 1
    await RisingEdge (m.txclk)
    while( (await Is_rx_busy(m) == 1) ):
        #await Timer (ns_r)
        d_in = package & (1 << i)
        m.rx_in <= int(d_in >> i)
        i += 1
        await RisingEdge (m.txclk)
    m._log.info("RX:The received message is %d" % (m.rx_data))
    return m.rx_data






        
@cocotb.test()
async def test_TX_Is_done(dut):
    """Tests that TX sets the tx_done register"""
    clk_tx(dut)

    await rst(dut)
    await Timer (CLK_PERIOD_TX)

   
    message = 0x7B
    await tx_init(dut,message)

    is_done = await Is_tx_done(dut)
    print(is_done)
    assert is_done == False, "%s not %d at after initiating the transmission" % (dut.tx_done._path, False)

    #if is_done == 1:
    #    raise TestFailure(f"Error: transmission has not started, and tx_done has been set")
    
    
    while( await Is_tx_done(dut)== 0):
        await Timer(CLK_PERIOD_TX)

    is_done = await Is_tx_done(dut)
    assert is_done == True, "%s not %d at after finishing the transmission" % (dut.tx_done._path, False)
    
    #if is_done == 0:
    #    raise TestFailure(f"Error: transmission is done, and tx_done hasn't been set")
    



    
@cocotb.test()
async def test_simple(dut):
    """ test the package transmission"""
    
    clk_tx(dut)
    clk_rx(dut)
    
    await rst(dut)
    
    await Timer(CLK_PERIOD_TX)   

    message = 0xCA
    RX = cocotb.fork(rx(dut))
    TX = cocotb.fork( tx(dut,message))
    await Combine(TX,RX)
    #await tx(dut,message)

    #wait for the TX to finish transmitting
    #while( await Is_tx_done(dut)== 0):
     #   await Timer(CLK_PERIOD)
    sent_message = hex(int(dut.tx_data))
    received_message = hex(int( dut.rx_data))
    
    assert sent_message == received_message, "%s (%h) is not equal to %s(%h) " % (dut.tx_data._path,dut.tx_data, dut.rx_data._path,dut.rx_data)

    transmission_error = dut.rx_error

    assert transmission_error == False, "%s not %d at after receiving the package" % (dut.rx_error._path, False)
    
    #if dut.rx_error == 1:
    #    raise TestFailure(f"Error: Error in the parity of received package")
    

@cocotb.test()
async def test_error(dut):
    clk_tx(dut)
    clk_rx(dut)

    await rst(dut)

    await Timer(CLK_PERIOD_RX)

    package =  0b100000001110
    await rx_from_data(dut,package)

    error_sig = dut.rx_error

    assert error_sig  == True, " The receiver didn't detect the error in the package (%s is not True) " % (dut.rx_error._path)

        
# Local Variables:
# eval: (blacken-mode)
# End:
