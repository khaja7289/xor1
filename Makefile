SIM ?= icarus
TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES += $(PWD)/mux_2x1.v
VERILOG_SOURCES += $(PWD)/mux_test.v
TOPLEVEL = mux_test
MODULE = mux_2x1_test
include $(shell cocotb-config --makefiles)/Makefile.sim

