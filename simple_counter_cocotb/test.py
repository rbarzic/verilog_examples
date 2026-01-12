import cocotb
import os
import pytest
from cocotb_tools.runner import get_runner

from typing import Dict

#######################

# Clean:
#     cocotb-clean -r

# Run:
#     pytest -v test.py

# Run in parallel:
#     pytest -n auto test.py

# Run specific test:
#     pytest -v -k test_name test.py

# Enable waveform dump:
# Dumpfile is placed in each tests
# sim_build subdirectory
#     COCOTB_VCD=1 pytest -v test.py

#######################

# In case the tests are launched from the top directory of the repository
# we can't use "."

import pathlib

current_dir = pathlib.Path(__file__).parent.resolve()


top_dir = current_dir.parent.parent


class TestClass:

    tests_dir = "."
    rtl_dir = "."
    tb_dir = "."
    module = "test_implementation"  # file with cocotb tests
    toplevel = "chip"  # top level verilog file
    # make_args = [" --timing "]
    # make_args = [" --timing "]
    force_compile = True  # ensures that defines are updated

    verilog_sources = [
        os.path.join(rtl_dir, "chip.v"),
        # os.path.join(
        #     top_dir, "ips/imported/lvl06to11v1cen40ulp/verilog/lvl06to11v1cen40ulp.v"
        # ),
        # os.path.join(
        #     top_dir,
        #     "sim/wrapper/ips/local/ulvrcoscv1cen40lp/verilog/ulvrcoscv1cen40lp.v",
        # ),
        # os.path.join(
        #     top_dir, "sim/wrapper/ips/local/ulvadcv1cen40ulp/verilog/ulvadcv1cen40ulp.v"
        # ),
    ]

    includes = [
        # f"{top_dir}/include/verilog",
        # f"{top_dir}/common/include",
        # f"{top_dir}/sim/wrapper",
        # f"{top_dir}/sim/verilog",
        # f"{top_dir}/ips/imported/ast/include/verilog",
    ]

    defines = {
        "COCOTB_SIM": 1,
        # "CHIP_COCOTB_VCD": 1,
        # "PRIMITIVE_DELAY": 2,
        # "DEBUG_PRIMITIVE_LIB_PARAMETER=1"
    }

    parameters: Dict = {
        # "TWINBIT_MEM_FILE": '"../../nvm32.mem"'
    }

    env_parameters: Dict = {
        # "TWINBIT_MEM_FILE": "../../nvm32.mem"
    }


    def run_test(self, testcase, extra_defines={},  extra_parameters={}, ):
        trace = False
        if bool(int(os.getenv("COCOTB_VCD", 0))):
            trace = True

        sim = os.getenv("SIM", "icarus")
        build_args = []
        if sim == "verilator":
            threads = int(os.getenv("THREADS", 1))
            coverage = int(os.getenv("COVERAGE", 0))
            build_args = [
                "--Wno-fatal",
                "--timing",
                "--error-limit",
                "1000",
                "-O3",  # not the O3 for gcc
                # "-CFLAGS",
                # "-O2",
            ]
            if threads > 1:
                build_args += ["--threads", "2"]
                print(f"-D- Using threading : {threads}")
            if coverage:
                build_args += ["--coverage"]
            if trace:
                build_args += ["--no-trace-top"]
        elif sim == "icarus":
            if trace:
                # enable $dumpfile/$dumpvars code in chip.v (only for icarus)
                self.defines.update({"CHIP_COCOTB_VCD": 1})

        else:
            pass


        self.runner = get_runner(sim)
        self.defines.update(extra_defines)
        self.parameters.update(extra_parameters)
        self.runner.build(
            sources=self.verilog_sources,
            hdl_toplevel=self.toplevel,
            always=True,
            defines=self.defines,
            includes=self.includes,
            verbose=True,
            build_args=build_args,
            build_dir=f"sim_build/{testcase}",
            waves=trace,
            parameters=self.parameters
        )

        self.runner.test(
            test_module=self.module,
            testcase=testcase,
            hdl_toplevel=self.toplevel,
            waves=trace,
            parameters=self.parameters
        )

    def test_simple_counter(self):

        self.run_test(
            "test_simple_counter",
            extra_parameters={"MAX_VALUE": 10}
        )



# Local Variables:
# eval: (blacken-mode)
# End:
#!/usr/bin/env python3
