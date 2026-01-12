# Specification: Fix cocotb verification support and update to cocotb 2.0

## Overview

This task upgrades the project's cocotb-based verification environment from cocotb 1.x to cocotb 2.0.1, fixing deprecated APIs and patterns that are causing compatibility issues. The project is a simple Verilog counter with a Python-based cosimulation testbench using cocotb. The migration involves removing deprecated decorators, updating import statements, fixing logging calls, and modernizing the runner API parameters.

## Workflow Type

**Type**: Feature

**Rationale**: This is a feature implementation task because it involves upgrading to a major new version (2.0) of a dependency, requiring multiple coordinated changes across test files. While the existing tests are broken (suggesting a bugfix), the root cause is an API version mismatch requiring migration work, which classifies this as feature implementation. The changes span multiple files and involve learning new APIs.

## Task Scope

### Services Involved
- **test_implementation.py** (primary) - Contains deprecated cocotb 1.x coroutine decorators and imports
- **test.py** (integration) - Contains deprecated runner build parameters

### This Task Will:
- [ ] Remove all `@cocotb.coroutine` decorators from async functions (4 instances)
- [ ] Delete deprecated imports: `TestError`, `TestFailure`, `ReturnValue` from `cocotb.result`
- [ ] Replace `dut._log` calls with `cocotb.log` (2 instances)
- [ ] Fix redundant module reference: `cocotb.cocotb.start_soon` → `cocotb.start_soon`
- [ ] Update `runner.build()` parameters: `verilog_sources=` → `sources=`, remove deprecated `vhdl_sources=[]`
- [ ] Verify tests pass with cocotb 2.0.1

### Out of Scope:
- No changes to Verilog RTL files (chip.v, clock_gen.v, reset_generator.v, tb.v, useful_tasks.v)
- No changes to Makefile (used for Icarus Verilog, not cocotb)
- No new test cases or functionality added
- No migration beyond cocotb 2.0.1 (e.g., not targeting 2.1.0 or later)

## Service Context

### test_implementation.py

**Tech Stack:**
- Language: Python 3.6+ (cocotb 2.0 supports 3.6.2–3.13)
- Framework: cocotb (upgrading from 1.x to 2.0.1)
- Dependencies: cocotb, pytest

**Entry Point:** `test_implementation.py`

**How to Run:**
```bash
pytest -v test.py
# Or specific test:
pytest -v -k test_simple_counter test.py
# Enable waveform dump:
COCOTB_VCD=1 pytest -v test.py
```

**Port:** None (cosimulation with local simulator)

### test.py

**Tech Stack:**
- Language: Python 3.6+
- Framework: pytest + cocotb.runner
- Purpose: Test harness that builds Verilog and runs cocotb tests

**Entry Point:** `test.py` (TestClass.test_simple_counter)

**How to Run:**
```bash
make test_simple_counter
# Or directly:
pytest -v -k test_simple_counter test.py
```

## Files to Modify

| File | Service | What to Change |
|------|---------|---------------|
| `test_implementation.py` | test_implementation | Remove 4 `@cocotb.coroutine` decorators (lines 12, 20, 28, 38) |
| `test_implementation.py` | test_implementation | Remove deprecated imports: `TestError, TestFailure, ReturnValue` (line 5) |
| `test_implementation.py` | test_implementation | Replace `dut._log.info()` with `cocotb.log.info()` (lines 45, 61) |
| `test_implementation.py` | test_implementation | Fix `cocotb.cocotb.start_soon` → `cocotb.start_soon` (line 41) |
| `test.py` | test_runner | Update `runner.build()` call: `verilog_sources=` → `sources=`, remove `vhdl_sources=[]` (lines 128-129) |

## Files to Reference

These files show patterns to follow:

| File | Pattern to Copy |
|------|----------------|
| `test_implementation.py` | Current async/await pattern - keep function signatures, only remove decorators |
| `test.py` | Current test harness structure - preserve pytest integration |

## Patterns to Follow

### Async Coroutine Pattern (cocotb 2.0)

From cocotb 2.0 documentation:

```python
# OLD (cocotb 1.x):
@cocotb.coroutine
async def my_function(dut):
    await Timer(1, units='ns')

# NEW (cocotb 2.0):
async def my_function(dut):
    await Timer(1, units='ns')
```

**Key Points:**
- Simply remove the `@cocotb.coroutine` decorator
- Keep `async def` - Python's native async keyword
- All triggers (`Timer`, `RisingEdge`, `FallingEdge`) work the same way

### Logging Pattern (cocotb 2.0)

```python
# OLD (cocotb 1.x):
dut._log.info("message")
dut._log.warning("message")
dut._log.error("message")

# NEW (cocotb 2.0):
import cocotb
cocotb.log.info("message")
cocotb.log.warning("message")
cocotb.log.error("message")
```

**Key Points:**
- `_log` attribute on handles is now private
- Use `cocotb.log` module-level logger instead
- Same log levels available: debug, info, warning, error

### Task Scheduling Pattern (cocotb 2.0)

```python
# OLD (cocotb 1.x):
cocotb.fork(clock.start())

# NEW (cocotb 2.0):
cocotb.start_soon(clock.start())
```

**Key Points:**
- `cocotb.fork()` is removed, use `start_soon()`
- `start_soon()` schedules tasks to run "soon", not immediately
- For immediate execution, use `await NullTrigger()` if needed

### Runner Build Parameters (cocotb 2.0)

```python
# OLD (cocotb 1.x):
runner.build(
    verilog_sources=file_list,
    vhdl_sources=[],
    hdl_toplevel="top",
    ...
)

# NEW (cocotb 2.0):
runner.build(
    sources=file_list,  # Combined parameter for both Verilog and VHDL
    hdl_toplevel="top",
    ...
)
```

**Key Points:**
- `verilog_sources` and `vhdl_sources` are deprecated
- Use single `sources` parameter for both
- Empty lists can be omitted entirely

## Requirements

### Functional Requirements

1. **Remove Deprecated Coroutine Decorators**
   - Description: Remove all `@cocotb.coroutine` decorators from async functions
   - Files affected: test_implementation.py (lines 12, 20, 28, 38)
   - Acceptance: No `@cocotb.coroutine` decorators in codebase, functions remain async

2. **Remove Deprecated Imports**
   - Description: Delete unused imports from `cocotb.result`: `TestError`, `TestFailure`, `ReturnValue`
   - Files affected: test_implementation.py (line 5)
   - Acceptance: No imports from `cocotb.result`, code still functions

3. **Update Logging Calls**
   - Description: Replace `dut._log.info()` with `cocotb.log.info()`
   - Files affected: test_implementation.py (lines 45, 61)
   - Acceptance: Logging works correctly with new API

4. **Fix Module Reference**
   - Description: Change `cocotb.cocotb.start_soon()` to `cocotb.start_soon()`
   - Files affected: test_implementation.py (line 41)
   - Acceptance: Clock starts properly

5. **Update Runner Parameters**
   - Description: Change `verilog_sources=` to `sources=`, remove `vhdl_sources=[]`
   - Files affected: test.py (lines 128-129)
   - Acceptance: Build succeeds with new parameters

### Edge Cases

1. **start_soon() scheduling** - `start_soon()` schedules tasks for "soon" execution, not immediately. If immediate execution is needed, use `await NullTrigger()` first.

2. **CancelledError** - Attempting to catch `CancelledError` can cause `RuntimeError` in cocotb 2.0. Don't catch this exception unless you re-raise it.

3. **Python version compatibility** - cocotb 2.0.1 supports Python 3.6.2–3.13. Ensure Python 3.6+ is available.

4. **Simulator compatibility** - Different simulators (Icarus, Verilator, Questa) may have varying support for cocotb 2.0 features.

## Implementation Notes

### DO
- Keep all `async def` function signatures - only remove decorators
- Preserve all function logic and behavior
- Use `cocotb.log.info()` as direct replacement for `dut._log.info()`
- Test with `pytest -v test.py` after all changes
- Consider using `pip install cocotb==2.0.1` to pin the version

### DON'T
- Don't change `async def` to regular `def` - functions must remain async
- Don't remove unused imports selectively - remove the whole line if all imports from `cocotb.result` are unused
- Don't use `cocotb.fork()` - it's been removed
- Don't access `dut._log` - it's now private
- Don't upgrade beyond cocotb 2.0.1 in this task

## Development Environment

### Start Services

```bash
# Install cocotb 2.0.1
pip install cocotb==2.0.1 pytest

# Run the test
make test_simple_counter
# Or:
pytest -v -k test_simple_counter test.py
```

### Service URLs
- No web services - this is a hardware verification project

### Required Environment Variables
- `SIM` - Simulator to use (default: "icarus", options: "verilator", "questa")
- `COCOTB_VCD` - Set to 1 to enable waveform dump (optional)
- `THREADS` - Number of threads for Verilator (default: 1)

## Success Criteria

The task is complete when:

1. [ ] All `@cocotb.coroutine` decorators removed from test_implementation.py
2. [ ] No imports from `cocotb.result` remain
3. [ ] All logging uses `cocotb.log` instead of `dut._log`
4. [ ] `cocotb.start_soon()` used correctly (not `cocotb.cocotb.start_soon`)
5. [ ] Runner uses `sources=` parameter instead of `verilog_sources=`
6. [ ] `pytest -v test.py` runs without errors
7. [ ] Test output shows: "-I- Done !" and counter value assertion passes
8. [ ] No deprecation warnings related to cocotb APIs

## QA Acceptance Criteria

**CRITICAL**: These criteria must be verified by the QA Agent before sign-off.

### Unit Tests
| Test | File | What to Verify |
|------|------|----------------|
| `test_simple_counter` | `test_implementation.py` | Counter counts from 0 to 10, `done_r` signal goes high, final assertion passes |

### Integration Tests
| Test | Services | What to Verify |
|------|----------|----------------|
| Full test flow | pytest + cocotb + Verilog simulator | Test harness builds Verilog, launches cocotb, runs async test, passes assertion |

### End-to-End Tests
| Flow | Steps | Expected Outcome |
|------|-------|------------------|
| Run cocotb test | 1. `pytest -v test.py` | Test passes with output: "-I- Done !" and counter value 10 |
| Enable waveform | 1. `COCOTB_VCD=1 pytest -v test.py` | Test passes and VCD file generated in `sim_build/test_simple_counter/` |
| Clean and rebuild | 1. `make clean` 2. `pytest -v test.py` | Test passes, no stale artifacts |

### Browser Verification (if frontend)
| Page/Component | URL | Checks |
|----------------|-----|--------|
| N/A | N/A | This is a hardware verification project with no web interface |

### Database Verification (if applicable)
| Check | Query/Command | Expected |
|-------|---------------|----------|
| N/A | N/A | No database in this project |

### QA Sign-off Requirements
- [ ] All unit tests pass (`pytest -v test.py` exits with code 0)
- [ ] No cocotb deprecation warnings in output
- [ ] No Python import errors
- [ ] Counter value assertion passes (asserts `dut.counter.value == 10`)
- [ ] All coroutine functions properly defined without decorators
- [ ] Logging output visible ("-D- Reset released", "-I- Done !")
- [ ] Code follows established patterns (async/await, cocotb.log)
- [ ] Makefile target `test_simple_counter` works
