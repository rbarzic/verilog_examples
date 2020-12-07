import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ClockCycles, Combine
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
async def Is_full(dut):
    if dut.full == 1:
        print("The fifo is full")
    return dut.full
    

@cocotb.coroutine
async def Is_empty(dut):
    if dut.empty == 1:
        print("The fifo is empty")
    return dut.empty

@cocotb.coroutine
async def fifo_read(dut):
    if await Is_empty(dut) != 1:
        # A little delay tomake the waveform more pleasant to look at
        await Timer(2 * ns)
        dut.rd_en <= 1
        dut.rd_cs <= 1
        await RisingEdge(dut.clk)
        # don't forget .value here
        # we read the value *before* the side effect of the
        # rising edge of the clock
        await Timer(2 * ns)
        result = dut.data_out.value
        dut.rd_en <= 0
        dut.rd_cs <= 0

        return result
    return 0

@cocotb.coroutine
async def fifo_read_multi(dut, N):
    
    # A little delay tomake the waveform more pleasant to look at
    await Timer(2 * ns)
    dut.rd_en <= 1
    dut.rd_cs <= 1
    result = []
    await RisingEdge(dut.clk)
    for i in range(N):
        if dut.empty != 1:
            await RisingEdge(dut.clk)
            r = int(dut.data_out.value)
            result.append(r)
    await Timer(2 * ns)
    dut.rd_en <= 0
    dut.rd_cs <= 0
    return result

@cocotb.coroutine
async def fifo_read_multi_clocks(dut, N):
    # A little delay tomake the waveform more pleasant to look at
    await Timer(2 * ns)
    dut.rd_en <= 1
    dut.rd_cs <= 1
    result = []
    #await RisingEdge(dut.clk)
    #if dut.empty != 1:
    for ir in range(N):
    #ir = 0
    #while True:
        if dut.empty != 1:
            cocotb.log.info(f"In read proc.")
            delay = random.randint(1, 9)
            await RisingEdge(dut.clk)
            dut.rd_en <= 0
            dut.rd_cs <= 0
            await FallingEdge(dut.clk)
            r = int(dut.data_out)
            result.append(r)
            await ClockCycles(dut.clk, delay)
            cocotb.log.info(f"Read: {r}.")
            cocotb.log.info(f"Random number of cycles read delay {delay}.")
            dut.rd_en <= 1
            dut.rd_cs <= 1
            #ir += 1
            print("read index " + str(ir))
            #if ir == N:
            #    break
    await Timer(2 * ns)
    dut.rd_en <= 0
    dut.rd_cs <= 0
    return result

@cocotb.coroutine
async def fifo_write(dut, wdata):
    if  Is_full != 1:
        await Timer(5 * ns)
        dut.wr_en <= 1
        dut.wr_cs <= 1
        dut.data_in <= wdata
        await RisingEdge(dut.clk)
        await Timer(2 * ns)
        dut.wr_en <= 0
        dut.wr_cs <= 0

@cocotb.coroutine
async def fifo_write_multi(dut, wdata):
    await Timer(5 * ns)
    N = len(wdata)
    dut.wr_en <= 1
    dut.wr_cs <= 1
    for i in range(N):
        if  dut.full != 1:
            dut.data_in = wdata[i] #(wdata >> (i*8)) &0xFF
            await RisingEdge(dut.clk)
    await Timer(2 * ns)
    dut.wr_en <= 0
    dut.wr_cs <= 0

@cocotb.coroutine
async def fifo_write_multi_clock(dut, wdata):
    await Timer(5 * ns)
    N = len(wdata)
    # dut.wr_en <= 1
    # dut.wr_cs <= 1
    for iw in range(N):
    #iw = 0
    #while True:
        if  dut.full != 1:
            cocotb.log.info(f"In write proc.")
            dut.wr_en <= 1
            dut.wr_cs <= 1
            delay = random.randint(1, 9)
            dut.data_in = wdata[iw] #(wdata >> (i*8)) &0xFF
            print(hex(wdata[iw]))
            await RisingEdge(dut.clk)
            dut.wr_en <= 0
            dut.wr_cs <= 0
            await FallingEdge(dut.clk)
            await ClockCycles(dut.clk, delay)
            cocotb.log.info(f"Write: {wdata[iw]}.")
            cocotb.log.info(f"Random number of cycles write delay {delay}.")
            #print(delay)
            #iw += 1
            print("write index " + str(iw))
            #if iw == N:
            #   break

    await Timer(5 * ns)
    dut.wr_en <= 0
    dut.wr_cs <= 0

'''
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
async def test_Multi_messages(dut):
    """ A test for multiple write and read operations """
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0
    
    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)

    # wdata = 0xCAFEBABE
    n = 5  

    wdata = [0xCD, 0xAE, 0xF7, 0x89, 0xBE] # The written data


    await fifo_write_multi(dut, wdata=wdata)

    await Timer(CLK_PERIOD)
    await Timer(CLK_PERIOD)

    rdata=  await fifo_read_multi(dut,N=n)

    dut._log.info(f"-I- rdata = {rdata}")

    # just for visual debug in the terminal
    # rdata_hex = hex(int(rdata))
    # print(rdata_hex)
    
    # r = int(rdata)
    if rdata != wdata:
        raise TestFailure(f"Error reading back FIFO : read {rdata}  write : {wdata}")

@cocotb.test()
async def test_empty(dut):
    """ Test the empty flag of the fifo"""
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0
    
    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)
    
    is_empty = await Is_empty(dut)

    if is_empty != 1:
        raise TestFailure(f"Error: FIFO isn't empty")


@cocotb.test()
async def test_full(dut):
    """ Test the full flage of the fifo"""
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0

    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)

    await Timer(CLK_PERIOD)
    
    n = 15    # The number of write and read commands
    wdata = []

    # generating random messages to be written
    for i in range(n):
        wdata.append(random.getrandbits(8))

    # for i in range (n):
    #     await fifo_write(dut, wdata=wdata[i])

    await fifo_write_multi(dut, wdata=wdata)

    is_full = await Is_full(dut)

    if is_full != 1:
        raise TestFailure(f"Error: FIFO is not full")
'''

@cocotb.test()
async def test_Multi_clocks(dut):
    """ A test for multiple write and read operations """
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0
    
    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)

    # wdata = 0xCAFEBABE
    n = 5  

    wdata = [0xCD, 0xAE, 0xF7, 0x89, 0xBE] # The written data


    await fifo_write_multi_clock(dut, wdata=wdata)

    await Timer(CLK_PERIOD)
    await Timer(CLK_PERIOD)

    rdata=  await fifo_read_multi_clocks(dut,N=n)

    dut._log.info(f"-I- rdata = {rdata}")

    # just for visual debug in the terminal
    # rdata_hex = hex(int(rdata))
    # print(rdata_hex)
    
    # r = int(rdata)
    if rdata != wdata:
        raise TestFailure(f"Error reading back FIFO : read {rdata}  write : {wdata}")


@cocotb.test()
async def test_pharallel_operation(dut):
    """ A test for multiple write and read operations """
    dut.rd_en = 0
    dut.wr_en = 0
    dut.rd_cs = 0
    dut.wr_cs = 0
    
    cocotb.fork(Clock(dut.clk, CLK_PERIOD).start())
    await rst(dut)
    
    await Timer(CLK_PERIOD)

    # wdata = 0xCAFEBABE
    n = 5  

    wdata = [0xCD, 0xAE, 0xF7, 0x89, 0xBE] # The written data

    cocotb.log.info(f"Test random read/write.")
    writer = cocotb.fork( fifo_write_multi_clock(dut, wdata=wdata))
    await Timer(CLK_PERIOD)
    reader = cocotb.fork(fifo_read_multi_clocks(dut,N=n))
    await Combine(reader, writer)

    #await ClockCycles(dut.clk, 1000)
    # dut._log.info(f"-I- rdata = {rdata}")

    # just for visual debug in the terminal
    # rdata_hex = hex(int(rdata))
    # print(rdata_hex)
    
    # r = int(rdata)
    # if rdata != wdata:
    #     raise TestFailure(f"Error reading back FIFO : read {rdata}  write : {wdata}")

# Local Variables:
# eval: (blacken-mode)
# End:
