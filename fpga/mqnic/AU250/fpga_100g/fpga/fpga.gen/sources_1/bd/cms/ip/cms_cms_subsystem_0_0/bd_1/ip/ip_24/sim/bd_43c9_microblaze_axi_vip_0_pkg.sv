///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package bd_43c9_microblaze_axi_vip_0_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter bd_43c9_microblaze_axi_vip_0_VIP_PROTOCOL           = 2;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter bd_43c9_microblaze_axi_vip_0_VIP_INTERFACE_MODE     = 1;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_ADDR_WIDTH         = 32;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_DATA_WIDTH         = 32;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_ID_WIDTH           = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_AWUSER_WIDTH       = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_ARUSER_WIDTH       = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_RUSER_WIDTH        = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_WUSER_WIDTH        = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_BUSER_WIDTH        = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_SUPPORTS_NARROW    = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_BURST          = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_LOCK           = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_CACHE          = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_REGION         = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_QOS            = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_PROT           = 1;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_WSTRB          = 1;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_BRESP          = 1;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_RRESP          = 1;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_ACLKEN         = 0;
      parameter bd_43c9_microblaze_axi_vip_0_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////

typedef axi_passthrough_agent #(bd_43c9_microblaze_axi_vip_0_VIP_PROTOCOL, 
                                bd_43c9_microblaze_axi_vip_0_VIP_ADDR_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_DATA_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_DATA_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_ID_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_ID_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_AWUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_WUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_BUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_ARUSER_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_RUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_SUPPORTS_NARROW, 
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_BURST,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_LOCK,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_CACHE,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_REGION,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_PROT,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_QOS,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_WSTRB,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_BRESP,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_RRESP,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_ARESETN) bd_43c9_microblaze_axi_vip_0_passthrough_t;

typedef axi_passthrough_mem_agent #(bd_43c9_microblaze_axi_vip_0_VIP_PROTOCOL, 
                                bd_43c9_microblaze_axi_vip_0_VIP_ADDR_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_DATA_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_DATA_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_ID_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_ID_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_AWUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_WUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_BUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_ARUSER_WIDTH,
                                bd_43c9_microblaze_axi_vip_0_VIP_RUSER_WIDTH, 
                                bd_43c9_microblaze_axi_vip_0_VIP_SUPPORTS_NARROW, 
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_BURST,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_LOCK,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_CACHE,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_REGION,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_PROT,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_QOS,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_WSTRB,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_BRESP,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_RRESP,
                                bd_43c9_microblaze_axi_vip_0_VIP_HAS_ARESETN) bd_43c9_microblaze_axi_vip_0_passthrough_mem_t;

///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      bd_43c9_microblaze_axi_vip_0_passthrough_t  bd_43c9_microblaze_axi_vip_0_passthrough;
//      initial begin : START_bd_43c9_microblaze_axi_vip_0_SLAVE
//        bd_43c9_microblaze_axi_vip_0_passthrough = new("bd_43c9_microblaze_axi_vip_0_passthrough", `bd_43c9_microblaze_axi_vip_0_PATH_TO_INTERFACE);
//        bd_43c9_microblaze_axi_vip_0_passthrough.start_master(); //passthrough in run time master mode
//        bd_43c9_microblaze_axi_vip_0_passthrough.start_slave(); //passthrough in run time slave mode
//      end


endpackage : bd_43c9_microblaze_axi_vip_0_pkg
