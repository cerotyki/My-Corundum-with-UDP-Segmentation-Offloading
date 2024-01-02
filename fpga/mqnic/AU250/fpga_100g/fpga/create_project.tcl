create_project -force -part xcu250-figd2104-2-e fpga
add_files -fileset sources_1 defines.v
add_files -fileset sources_1 ../rtl/fpga.v
add_files -fileset sources_1 ../rtl/fpga_core.v
add_files -fileset sources_1 ../rtl/debounce_switch.v
add_files -fileset sources_1 ../rtl/sync_signal.v
add_files -fileset sources_1 ../rtl/common/mqnic_interface.v
add_files -fileset sources_1 ../rtl/common/mqnic_port.v
add_files -fileset sources_1 ../rtl/common/cpl_write.v
add_files -fileset sources_1 ../rtl/common/cpl_op_mux.v
add_files -fileset sources_1 ../rtl/common/desc_fetch.v
add_files -fileset sources_1 ../rtl/common/desc_op_mux.v
add_files -fileset sources_1 ../rtl/common/queue_manager.v
add_files -fileset sources_1 ../rtl/common/cpl_queue_manager.v
add_files -fileset sources_1 ../rtl/common/event_mux.v
add_files -fileset sources_1 ../rtl/common/tx_scheduler_rr.v
add_files -fileset sources_1 ../rtl/common/tdma_scheduler.v
add_files -fileset sources_1 ../rtl/common/tx_engine.v
add_files -fileset sources_1 ../rtl/common/rx_engine.v
add_files -fileset sources_1 ../rtl/common/tx_checksum.v
add_files -fileset sources_1 ../rtl/common/rx_hash.v
add_files -fileset sources_1 ../rtl/common/rx_checksum.v
add_files -fileset sources_1 ../rtl/common/cmac_pad.v
add_files -fileset sources_1 ../lib/eth/rtl/ptp_clock.v
add_files -fileset sources_1 ../lib/eth/rtl/ptp_clock_cdc.v
add_files -fileset sources_1 ../lib/eth/rtl/ptp_ts_extract.v
add_files -fileset sources_1 ../lib/axi/rtl/axil_cdc.v
add_files -fileset sources_1 ../lib/axi/rtl/axil_cdc_rd.v
add_files -fileset sources_1 ../lib/axi/rtl/axil_cdc_wr.v
add_files -fileset sources_1 ../lib/axi/rtl/axil_interconnect.v
add_files -fileset sources_1 ../lib/axi/rtl/arbiter.v
add_files -fileset sources_1 ../lib/axi/rtl/priority_encoder.v
add_files -fileset sources_1 ../lib/axis/rtl/axis_adapter.v
add_files -fileset sources_1 ../lib/axis/rtl/axis_async_fifo.v
add_files -fileset sources_1 ../lib/axis/rtl/axis_fifo.v
add_files -fileset sources_1 ../lib/axis/rtl/axis_pipeline_register.v
add_files -fileset sources_1 ../lib/axis/rtl/axis_register.v
add_files -fileset sources_1 ../lib/axis/rtl/sync_reset.v
add_files -fileset sources_1 ../lib/pcie/rtl/pcie_us_axil_master.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_if_pcie_us.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_if_pcie_us_rd.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_if_pcie_us_wr.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_if_mux.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_if_mux_rd.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_if_mux_wr.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_psdpram.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_client_axis_sink.v
add_files -fileset sources_1 ../lib/pcie/rtl/dma_client_axis_source.v
add_files -fileset sources_1 ../lib/pcie/rtl/pcie_us_cfg.v
add_files -fileset sources_1 ../lib/pcie/rtl/pcie_us_msi.v
add_files -fileset sources_1 ../lib/pcie/rtl/pulse_merge.v
add_files -fileset constrs_1 ../fpga.xdc
add_files -fileset constrs_1 ../placement.xdc
add_files -fileset constrs_1 ../cfgmclk.xdc
add_files -fileset constrs_1 ../boot.xdc
add_files -fileset constrs_1 ../lib/axi/syn/vivado/axil_cdc.tcl
add_files -fileset constrs_1 ../lib/axis/syn/vivado/axis_async_fifo.tcl
add_files -fileset constrs_1 ../lib/axis/syn/vivado/sync_reset.tcl
add_files -fileset constrs_1 ../lib/eth/syn/vivado/ptp_clock_cdc.tcl
add_files -fileset constrs_1 ../../../../common/syn/vivado/tdma_ber_ch.tcl
source ../ip/pcie4_uscale_plus_0.tcl
source ../ip/cmac_usplus_0.tcl
source ../ip/cmac_usplus_1.tcl
source ../ip/cms.tcl
exit
