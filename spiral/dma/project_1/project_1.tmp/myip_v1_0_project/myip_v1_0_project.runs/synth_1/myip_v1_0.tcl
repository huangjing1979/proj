# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z045ffg900-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/node003/work/proj/spiral/dma/project_1/project_1.tmp/myip_v1_0_project/myip_v1_0_project.cache/wt [current_project]
set_property parent.project_path /home/node003/work/proj/spiral/dma/project_1/project_1.tmp/myip_v1_0_project/myip_v1_0_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zc706:part0:1.2 [current_project]
set_property ip_repo_paths {
  /home/node003/work/proj/spiral/dma/ip_repo/myip_video_1.0
  /home/node003/work/proj/spiral/dma/ip_repo/myipnew_1.0
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0
  /home/node003/work/proj/spiral/dma/ip_repo/myipnew_1.0
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0
  /home/node003/work/proj/spiral/dma/ip_repo/axi_fft_1.0
} [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0/hdl/spiral_dft_size64_forward_8bfixunscaled_fullstream_radix2_streamwidth2_naturalinnaturalout.v
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0/hdl/fifo_buffer.v
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0/hdl/myip_v1_0_S00_AXI_LITE.v
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0/hdl/fft_wrapper.v
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0/hdl/myip_v1_0_M00_AXI_LITE.v
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0/hdl/myip_v1_0_M01_AXI.v
  /home/node003/work/proj/spiral/dma/ip_repo/myip_1.0/hdl/myip_v1_0.v
}
synth_design -top myip_v1_0 -part xc7z045ffg900-2
write_checkpoint -noxdef myip_v1_0.dcp
catch { report_utilization -file myip_v1_0_utilization_synth.rpt -pb myip_v1_0_utilization_synth.pb }
