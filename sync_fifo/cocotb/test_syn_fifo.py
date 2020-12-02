import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge
from cocotb.result import TestError, TestFailure, ReturnValue

import random # to generate random values of data

ns = 1000
CLK_PERIOD = 20 * ns


def clk(m):
    cocotb.fork(Clock(m.clock, CLK_PERIOD).start())


@cocotb.coroutine
async def rst(m):
    m.rst <= 1
    await Timer(CLK_PERIOD / 2)
    m.rst <= 0
    await Timer(CLK_PERIOD / 2)


@cocotb.coroutine
async def fifo_read(dut):
    if dut.empty == 1:
        raise TestFailure(f"The RAM is empty. No data to be read")
    # A little delay tomake the waveform more pleasant to look at
    await Timer(2 * ns)
    dut.rd_en <= 1
    dut.rd_cs <= 1
    await RisingEdge(dut.clk)
    # don't forget .value here
    # we read the value *before* the side effect of the
    # rising edge of the clock
    result = dut.data_out #.value
    await Timer(2 * ns)
    dut.rd_en <= 0
    dut.rd_cs <= 0

    return result

@cocotb.coroutine
async def fifo_read_multi(dut, N):
    if dut.empty == 1:
        raise TestFailure(f"The RAM is empty. No data to be read")
    # A little delay tomake the waveform more pleasant to look at
    await Timer(2 * ns)
    dut.rd_en <= 1
    dut.rd_cs <= 1
    result = 0x00
    result = [0]*N
    await RisingEdge(dut.clk)
    for i in range(N):
        await RisingEdge(dut.clk)
        r = int(dut.data_out)
        result [i] = r
        #print(hex(r))

    await Timer(2 * ns)
    dut.rd_en <= 0
    dut.rd_cs <= 0
    return result



@cocotb.coroutine
async def fifo_write(dut, wdata):
    if dut.full == 1:
        raise TestFailure("The RAM is full. No new data can be added")
    await Timer(5 * ns)
    dut.wr_en <= 1
    dut.wr_cs <= 1
    dut.data_in <= wdata
    await RisingEdge(dut.clk)
    await Timer(2 * ns)
    dut.wr_en <= 0
    dut.wr_cs <= 0

@cocotb.coroutine
async def fifo_write_multi(dut, wdata,N):
    await Timer(5 * ns)
    dut.wr_en <= 1
    dut.wr_cs <= 1
    for i in range(N):
        if dut.full == 1:
            raise TestFailure("The RAM is full. No new data can be added")
        dut.data_in = wdata[i] #(wdata >> (i*8)) &0xFF
        await RisingEdge(dut.clk)
    await Timer(2 * ns)
    dut.wr_en <= 0
    dut.wr_cs <= 0



@cocotb.test()
async def test_simple(dut):
    """ A very basic  test"""
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0
    
    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)

    wdata = 0xCA #FEBABE


    await fifo_write(dut, wdata=wdata)


    await Timer(CLK_PERIOD)
    await Timer(CLK_PERIOD)

    rdata=  await fifo_read(dut)

    dut._log.info(f"-I- rdata = {rdata}")

    # just for visual debug in the terminal
    rdata_hex = hex(int(rdata))
    

    r = int(rdata)
    if r != wdata:
        raise TestFailure(f"Error reading back FIFO : read {hex(r)}  write : {hex(wdata)}")


@cocotb.test()
async def test_Multi(dut):
    """ A test for multiple write and read operations """
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0
    
    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)

    # wdata = 0xCAFEBABE
    # n = 4  

    wdata = [0xCD, 0xAE, 0xF7, 0x89, 0xBE] # The written data
    n = 5                # The number of write and read commands


    await fifo_write_multi(dut, wdata=wdata,N=n)

    await Timer(CLK_PERIOD)
    await Timer(CLK_PERIOD)

    rdata=  await fifo_read_multi(dut, N=n)

    dut._log.info(f"-I- rdata = {rdata}")

    # just for visual debug in the terminal
    # rdata_hex = hex(int(rdata))
    

    # r = int(rdata)
    if rdata != wdata:
        raise TestFailure(f"Error reading back FIFO : read {r}  write : {wdata}")

@cocotb.test()
async def test_empty(dut):
    """ Test to read from an empty RAM"""
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0
    
    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)
    
    rdata=  await fifo_read(dut)

    dut._log.info(f"-I- rdata = {rdata}")

@cocotb.test()
async def test_full(dut):
    """ Test to write to a full RAM"""
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0

    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)

    await Timer(CLK_PERIOD)
    
    n = 15    # The number of write and read commands

    wdata = [0]*n

    # generating random messages to be written
    for i in range(n):
        wdata[i] = random.getrandbits(8)

    # for i in range (n):
    #     await fifo_write(dut, wdata=wdata[i])

    await fifo_write_multi(dut, wdata=wdata, N=n)

# Local Variables:
# eval: (blacken-mode)
# End:
