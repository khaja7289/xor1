import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def mux_2x1_test(dut):
    for sel in [0, 1]:
        for a in [0, 1]:
            for b in [0, 1]:
                expected_y = b if sel else a

                dut.sel <= sel
                dut.a <= a
                dut.b <= b
                await Timer(1, 'ns')

                assert dut.y == expected_y, f"MUX output error for sel={sel}, a={a}, b={b}"

