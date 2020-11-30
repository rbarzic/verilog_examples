import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge
from cocotb.result import TestError, TestFailure, ReturnValue

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

    # A little delay tomake the waveform more pleasant to look at
    await Timer(2 * ns)
    dut.rd_en <= 1
    dut.rd_cs <= 1
    result = 0x00
    await RisingEdge(dut.clk)
    for i in range(N):
        await RisingEdge(dut.clk)
        r = int(dut.data_out)
        result = result + (r << i*8)
        #print(hex(r))

    await Timer(2 * ns)
    dut.rd_en <= 0
    dut.rd_cs <= 0
    return result



@cocotb.coroutine
async def fifo_write(dut, wdata):
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
        dut.data_in = (wdata >> (i*8)) &0xFF
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

    wdata = 0xCDAEF789BE # The written data
    n = 5                # The number of write and read commands


    await fifo_write_multi(dut, wdata=wdata,N=n)

    await Timer(CLK_PERIOD)
    await Timer(CLK_PERIOD)

    rdata=  await fifo_read_multi(dut, N=n)

    dut._log.info(f"-I- rdata = {rdata}")

    # just for visual debug in the terminal
    rdata_hex = hex(int(rdata))
    

    r = int(rdata)
    if r != wdata:
        raise TestFailure(f"Error reading back FIFO : read {hex(r)}  write : {hex(wdata)}")

# Local Variables:
# eval: (blacken-mode)
# End:
