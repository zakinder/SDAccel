// *************************************************************************
//    ____  ____
//   /   /\/   /
//  /___/  \  /
//  \   \   \/    © Copyright 2016 Xilinx, Inc. All rights reserved.
//   \   \        This file contains confidential and proprietary
//   /   /        information of Xilinx, Inc. and is protected under U.S.
//  /___/   /\    and international copyright and other intellectual
//  \   \  /  \   property laws.
//   \___\/\___\
//
//
// *************************************************************************
//
// Disclaimer:
//
//       This disclaimer is not a license and does not grant any rights to
//       the materials distributed herewith. Except as otherwise provided in
//       a valid license issued to you by Xilinx, and to the maximum extent
//       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
//       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
//       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
//       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
//       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//       (2) Xilinx shall not be liable (whether in contract or tort,
//       including negligence, or under any other theory of liability) for
//       any loss or damage of any kind or nature related to, arising under
//       or in connection with these materials, including for any direct, or
//       any indirect, special, incidental, or consequential loss or damage
//       (including loss of data, profits, goodwill, or any type of loss or
//       damage suffered as a result of any action brought by a third party)
//       even if such damage or loss was reasonably foreseeable or Xilinx
//       had been advised of the possibility of the same.
//
// Critical Applications:
//
//       Xilinx products are not designed or intended to be fail-safe, or
//       for use in any application requiring fail-safe performance, such as
//       life-support or safety devices or systems, Class III medical
//       devices, nuclear facilities, applications related to the deployment
//       of airbags, or any other applications that could lead to death,
//       personal injury, or severe property or environmental damage
//       (individually and collectively, "Critical Applications"). Customer
//       assumes the sole risk and liability of any use of Xilinx products
//       in Critical Applications, subject only to applicable laws and
//       regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
// FILE AT ALL TIMES.
//
// *************************************************************************

`timescale 1 ns / 1 ps

module startup_wrapper # (
) (
   // Flash Interface Pins
   output wire [3:0] flash_DQ_I,
   input wire [3:0]  flash_DQ_O,
   input wire [3:0]  flash_DQ_tri_ctrl,
   input wire        flash_CS_N,
   input wire        flash_CS_N_tri_ctrl,
   input wire        flash_clk,
   output wire       startup_eos
);

   // STARTUPE3: STARTUP Block
   //            Kintex UltraScale
   // Xilinx HDL Language Template, version 2014.4

   STARTUPE3 #(
      .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
      .SIM_CCLK_FREQ(0.0)  // Set the Configuration Clock Frequency(ns) for simulation
   )
   STARTUPE3_inst (
      .CFGCLK(),       // 1-bit output: Configuration main clock output
      .CFGMCLK(),     // 1-bit output: Configuration internal oscillator clock output
      .DI(flash_DQ_I[3:0]),   // 4-bit output: Allow receiving on the D input pin
      .EOS(startup_eos),      // 1-bit output: Active-High output signal indicating the End Of Startup
      .PREQ(),           // 1-bit output: PROGRAM request to fabric output
      .DO(flash_DQ_O[3:0]),               // 4-bit input: Allows control of the D pin output
      .DTS(flash_DQ_tri_ctrl[3:0]),             // 4-bit input: Allows tristate of the D pin
      .FCSBO(flash_CS_N),         // 1-bit input: Contols the FCS_B pin for flash access
      .FCSBTS(flash_CS_N_tri_ctrl),       // 1-bit input: Tristate the FCS_B pin
      .GSR(1'b0),             // 1-bit input: Global Set/Reset input (GSR cannot be used for the port)
      .GTS(1'b0),             // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
      .KEYCLEARB(1'b1), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
      .PACK(1'b0),           // 1-bit input: PROGRAM acknowledge input
      .USRCCLKO(flash_clk),   // 1-bit input: User CCLK input
      .USRCCLKTS(1'b0), // 1-bit input: User CCLK 3-state enable input
      .USRDONEO(1'b0),   // 1-bit input: User DONE pin output control
      .USRDONETS(1'b0)  // 1-bit input: User DONE 3-state enable output
   );

endmodule
