
################################################################
# This is a generated script based on design: bd_fb99
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_fb99_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcu250-figd2104-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_fb99

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set s_axi_ctrl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {18} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.INSERT_VIP {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $s_axi_ctrl

  set satellite_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 satellite_uart ]


  # Create ports
  set aclk_ctrl [ create_bd_port -dir I -type clk aclk_ctrl ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {s_axi_ctrl} \
   CONFIG.ASSOCIATED_RESET {aresetn_ctrl} \
   CONFIG.INSERT_VIP {0} \
 ] $aclk_ctrl
  set aresetn_ctrl [ create_bd_port -dir I -type rst aresetn_ctrl ]
  set_property -dict [ list \
   CONFIG.INSERT_VIP {0} \
 ] $aresetn_ctrl
  set interrupt_host [ create_bd_port -dir O -type intr interrupt_host ]
  set_property -dict [ list \
   CONFIG.SENSITIVITY {LEVEL_HIGH} \
 ] $interrupt_host
  set qsfp0_int_l [ create_bd_port -dir I -from 0 -to 0 qsfp0_int_l ]
  set qsfp0_lpmode [ create_bd_port -dir O -from 0 -to 0 qsfp0_lpmode ]
  set qsfp0_modprs_l [ create_bd_port -dir I -from 0 -to 0 qsfp0_modprs_l ]
  set qsfp0_modsel_l [ create_bd_port -dir O -from 0 -to 0 qsfp0_modsel_l ]
  set qsfp0_reset_l [ create_bd_port -dir O -from 0 -to 0 qsfp0_reset_l ]
  set qsfp1_int_l [ create_bd_port -dir I -from 0 -to 0 qsfp1_int_l ]
  set qsfp1_lpmode [ create_bd_port -dir O -from 0 -to 0 qsfp1_lpmode ]
  set qsfp1_modprs_l [ create_bd_port -dir I -from 0 -to 0 qsfp1_modprs_l ]
  set qsfp1_modsel_l [ create_bd_port -dir O -from 0 -to 0 qsfp1_modsel_l ]
  set qsfp1_reset_l [ create_bd_port -dir O -from 0 -to 0 qsfp1_reset_l ]
  set satellite_gpio [ create_bd_port -dir I -from 3 -to 0 -type intr satellite_gpio ]
  set_property -dict [ list \
   CONFIG.PortWidth {4} \
   CONFIG.SENSITIVITY {EDGE_RISING} \
 ] $satellite_gpio

  # Create instance: shell_cmc_subsystem, and set properties
  set shell_cmc_subsystem [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_cmc_subsystem:2.2 shell_cmc_subsystem ]
  set_property -dict [ list \
   CONFIG.ENABLE_AXI_IC_PIPELINING {false} \
   CONFIG.HAS_EXTERNAL_M_AXILITE {false} \
   CONFIG.HAS_USB_UART {true} \
 ] $shell_cmc_subsystem

  # Create interface connections
  connect_bd_intf_net -intf_net s_axi_ctrl_net [get_bd_intf_ports s_axi_ctrl] [get_bd_intf_pins shell_cmc_subsystem/s_axi_ctrl_mgmt]
  connect_bd_intf_net -intf_net satellite_uart_net [get_bd_intf_ports satellite_uart] [get_bd_intf_pins shell_cmc_subsystem/satellite_uart]

  # Create port connections
  connect_bd_net -net aclk_ctrl_net [get_bd_ports aclk_ctrl] [get_bd_pins shell_cmc_subsystem/aclk_ctrl]
  connect_bd_net -net aresetn_ctrl_net [get_bd_ports aresetn_ctrl] [get_bd_pins shell_cmc_subsystem/aresetn_ctrl]
  connect_bd_net -net interrupt_host_net [get_bd_ports interrupt_host] [get_bd_pins shell_cmc_subsystem/interrupt_host]
  connect_bd_net -net qsfp0_int_l [get_bd_ports qsfp0_int_l] [get_bd_pins shell_cmc_subsystem/qsfp0_int_l]
  connect_bd_net -net qsfp0_lpmode [get_bd_ports qsfp0_lpmode] [get_bd_pins shell_cmc_subsystem/qsfp0_lpmode]
  connect_bd_net -net qsfp0_modprs_l [get_bd_ports qsfp0_modprs_l] [get_bd_pins shell_cmc_subsystem/qsfp0_modprs_l]
  connect_bd_net -net qsfp0_modsel_l [get_bd_ports qsfp0_modsel_l] [get_bd_pins shell_cmc_subsystem/qsfp0_modsel_l]
  connect_bd_net -net qsfp0_reset_l [get_bd_ports qsfp0_reset_l] [get_bd_pins shell_cmc_subsystem/qsfp0_reset_l]
  connect_bd_net -net qsfp1_int_l [get_bd_ports qsfp1_int_l] [get_bd_pins shell_cmc_subsystem/qsfp1_int_l]
  connect_bd_net -net qsfp1_lpmode [get_bd_ports qsfp1_lpmode] [get_bd_pins shell_cmc_subsystem/qsfp1_lpmode]
  connect_bd_net -net qsfp1_modprs_l [get_bd_ports qsfp1_modprs_l] [get_bd_pins shell_cmc_subsystem/qsfp1_modprs_l]
  connect_bd_net -net qsfp1_modsel_l [get_bd_ports qsfp1_modsel_l] [get_bd_pins shell_cmc_subsystem/qsfp1_modsel_l]
  connect_bd_net -net qsfp1_reset_l [get_bd_ports qsfp1_reset_l] [get_bd_pins shell_cmc_subsystem/qsfp1_reset_l]
  connect_bd_net -net satellite_gpio_net [get_bd_ports satellite_gpio] [get_bd_pins shell_cmc_subsystem/satellite_gpio]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs shell_cmc_subsystem/s_axi_ctrl_mgmt/Mem] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


