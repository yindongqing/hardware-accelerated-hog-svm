
call C:/Xilinx/Vivado/2018.1/bin/xelab xil_defaultlib.apatb_xillybus_wrapper_top glbl -prj xillybus_wrapper.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver --initfile "C:/Xilinx/Vivado/2018.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s xillybus_wrapper 
call C:/Xilinx/Vivado/2018.1/bin/xsim --noieeewarnings xillybus_wrapper -tclbatch xillybus_wrapper.tcl

