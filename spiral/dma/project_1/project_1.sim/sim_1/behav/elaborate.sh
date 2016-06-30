#!/bin/bash -f
xv_path="/edatools/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 87da305ade8b42509df358ca3b0e2e27 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_8 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_0_1 -L axi_data_fifo_v2_1_6 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_7 -L axi_protocol_converter_v2_1_7 -L axi_clock_converter_v2_1_6 -L blk_mem_gen_v8_3_1 -L axi_dwidth_converter_v2_1_7 -L unisims_ver -L unimacro_ver -L secureip --snapshot design_1_wrapper_behav xil_defaultlib.design_1_wrapper xil_defaultlib.glbl -log elaborate.log