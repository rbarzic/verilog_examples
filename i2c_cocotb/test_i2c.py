import cocotb
from cocotb.triggers import RisingEdge,FallingEdge, ReadOnly
from cocotb.clock import Clock, Timer



@cocotb.test()  # type: ignore
def test_1(dut):

    #falling_sda = FallingEdge(dut.sda)
    #falling_scl = FallingEdge(dut.scl)
    i = 0
    while True:

        dut._log.info(f"-I- Test started")
        cocotb.fork(Clock(dut.clk, 10).start())
        falling_sda = FallingEdge(dut.sda)
        falling_scl = FallingEdge(dut.scl)
   
 
        transition = yield [falling_sda, falling_scl]
        dut._log.info(f"-I- Transition detected !")
        if transition is falling_sda:
            dut._log.info(f"-I- SDA Falling edge ")
            if dut.scl.value == 1:
                dut._log.info(f"-I- Start condition detected")
        elif transition is falling_scl:
            dut._log.info(f"-I- SCL Falling edge ")
        else:
            dut._log.info(f"-I- Something went wrong ")
        dut._log.info(f"-I- Test Done")
        i += 1
        if i > 1:
            return
            
    
        
