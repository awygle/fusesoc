#Auto generated by FuseSoC
project new atlys_0
project set family spartan6
project set device xc6slx45
project set package csg324
project set speed -2
project set "Generate Detailed MAP Report" true
project set "Verilog Macros" "vlogdefine_bool=true|vlogdefine_int=42|vlogdefine_str=hello" -process "Synthesize - XST"
project set "Generics, Parameters" "vlogparam_bool=true|vlogparam_int=42|vlogparam_str="hello"" -process "Synthesize - XST"
project set "Verilog Include Directories" "../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog|../../../cores/atlys/rtl/verilog/include|../../../cores/atlys/rtl/verilog" -process "Synthesize - XST"
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_wb_biu.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_or1k_status_reg.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_jsp_biu.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_or1k_module.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/syncflop.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_crc32.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_jsp_module.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_top.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/bytefifo.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_or1k_biu.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_or1k_defines.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/syncreg.v
xfile add ../../../cores/adv_debug_sys/Hardware/adv_dbg_if/rtl/verilog/adbg_wb_module.v
lib_vhdl new libstorage_1
xfile add ../../../cache/libstorage_1.0/rtl/vhdl/suv/libstorage_pkg.vhd -lib_vhdl libstorage_1
xfile add ../../../cache/libstorage_1.0/rtl/vhdl/suv/dpram_generic.vhd -lib_vhdl libstorage_1
xfile add ../../../cache/libstorage_1.0/rtl/vhdl/suv/fifo_fwft_adapter.vhd -lib_vhdl libstorage_1
xfile add ../../../cache/libstorage_1.0/rtl/vhdl/suv/fifo_generic.vhd -lib_vhdl libstorage_1
xfile add ../../../cache/libstorage_1.0/rtl/vhdl/suv/fifo_fwft_generic.vhd -lib_vhdl libstorage_1
xfile add ../../../cores/atlys/rtl/verilog/orpsoc_top.v
xfile add ../../../cores/atlys/rtl/verilog/clkgen.v
xfile add ../../../cores/atlys/rtl/verilog/rom.v
xfile add ../../../cores/atlys/rtl/verilog/wb_intercon.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/ddr2_mig.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/infrastructure.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/iodrp_controller.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/iodrp_mcb_controller.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/mcb_raw_wrapper.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/mcb_soft_calibration_top.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/mcb_soft_calibration.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/mcb_ui_top.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/memc_wrapper.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/xilinx_ddr2_if.v
xfile add ../../../cores/atlys/rtl/verilog/xilinx_ddr2/xilinx_ddr2.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/convert_30to15_fifo.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/dcmspi.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/DRAM16XN.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/dvi_encoder.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/dvi_gen_top.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/encode.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/serdes_n_to_1.v
xfile add ../../../cores/atlys/rtl/verilog/dvi_gen/synchro.v
xfile add ../src/atlys_0/data/atlys.ucf
puts "Hi, I'm a backend TCL file"
project set top "orpsoc_top"

process run "Generate Programming File"
