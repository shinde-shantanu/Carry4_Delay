// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Sep 29 16:08:27 2019
// Host        : shantanu-Inspiron-5577 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/shantanu/TIFR/carry4_delay/carry4_delay.sim/sim_1/synth/timing/xsim/sim_gen_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module top
   (CO1,
    CO2,
    CO3,
    CO4,
    O1,
    O2,
    O3,
    O4,
    CYINIT);
  output [3:0]CO1;
  output [3:0]CO2;
  output [3:0]CO3;
  output [3:0]CO4;
  output [3:0]O1;
  output [3:0]O2;
  output [3:0]O3;
  output [3:0]O4;
  input CYINIT;

  wire [3:0]CO1;
  wire [3:0]CO1_OBUF;
  wire [3:0]CO2;
  wire [3:0]CO2_OBUF;
  wire [3:0]CO3;
  wire [3:0]CO3_OBUF;
  wire [3:0]CO4;
  wire [3:0]CO4_OBUF;
  wire CYINIT;
  wire CYINIT_IBUF;
  wire [3:0]O1;
  wire [3:0]O1_OBUF;
  wire [3:0]O2;
  wire [3:0]O2_OBUF;
  wire [3:0]O3;
  wire [3:0]O3_OBUF;
  wire [3:0]O4;
  wire [3:0]O4_OBUF;

initial begin
 $sdf_annotate("sim_gen_time_synth.sdf",,,,"tool_control");
end
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst1
       (.CI(1'b0),
        .CO(CO1_OBUF),
        .CYINIT(CYINIT_IBUF),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O1_OBUF),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst2
       (.CI(CO1_OBUF[3]),
        .CO(CO2_OBUF),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O2_OBUF),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst3
       (.CI(CO2_OBUF[3]),
        .CO(CO3_OBUF),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O3_OBUF),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst4
       (.CI(CO3_OBUF[3]),
        .CO(CO4_OBUF),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O4_OBUF),
        .S({1'b1,1'b1,1'b1,1'b1}));
  OBUF \CO1_OBUF[0]_inst 
       (.I(CO1_OBUF[0]),
        .O(CO1[0]));
  OBUF \CO1_OBUF[1]_inst 
       (.I(CO1_OBUF[1]),
        .O(CO1[1]));
  OBUF \CO1_OBUF[2]_inst 
       (.I(CO1_OBUF[2]),
        .O(CO1[2]));
  OBUF \CO1_OBUF[3]_inst 
       (.I(CO1_OBUF[3]),
        .O(CO1[3]));
  OBUF \CO2_OBUF[0]_inst 
       (.I(CO2_OBUF[0]),
        .O(CO2[0]));
  OBUF \CO2_OBUF[1]_inst 
       (.I(CO2_OBUF[1]),
        .O(CO2[1]));
  OBUF \CO2_OBUF[2]_inst 
       (.I(CO2_OBUF[2]),
        .O(CO2[2]));
  OBUF \CO2_OBUF[3]_inst 
       (.I(CO2_OBUF[3]),
        .O(CO2[3]));
  OBUF \CO3_OBUF[0]_inst 
       (.I(CO3_OBUF[0]),
        .O(CO3[0]));
  OBUF \CO3_OBUF[1]_inst 
       (.I(CO3_OBUF[1]),
        .O(CO3[1]));
  OBUF \CO3_OBUF[2]_inst 
       (.I(CO3_OBUF[2]),
        .O(CO3[2]));
  OBUF \CO3_OBUF[3]_inst 
       (.I(CO3_OBUF[3]),
        .O(CO3[3]));
  OBUF \CO4_OBUF[0]_inst 
       (.I(CO4_OBUF[0]),
        .O(CO4[0]));
  OBUF \CO4_OBUF[1]_inst 
       (.I(CO4_OBUF[1]),
        .O(CO4[1]));
  OBUF \CO4_OBUF[2]_inst 
       (.I(CO4_OBUF[2]),
        .O(CO4[2]));
  OBUF \CO4_OBUF[3]_inst 
       (.I(CO4_OBUF[3]),
        .O(CO4[3]));
  IBUF CYINIT_IBUF_inst
       (.I(CYINIT),
        .O(CYINIT_IBUF));
  OBUF \O1_OBUF[0]_inst 
       (.I(O1_OBUF[0]),
        .O(O1[0]));
  OBUF \O1_OBUF[1]_inst 
       (.I(O1_OBUF[1]),
        .O(O1[1]));
  OBUF \O1_OBUF[2]_inst 
       (.I(O1_OBUF[2]),
        .O(O1[2]));
  OBUF \O1_OBUF[3]_inst 
       (.I(O1_OBUF[3]),
        .O(O1[3]));
  OBUF \O2_OBUF[0]_inst 
       (.I(O2_OBUF[0]),
        .O(O2[0]));
  OBUF \O2_OBUF[1]_inst 
       (.I(O2_OBUF[1]),
        .O(O2[1]));
  OBUF \O2_OBUF[2]_inst 
       (.I(O2_OBUF[2]),
        .O(O2[2]));
  OBUF \O2_OBUF[3]_inst 
       (.I(O2_OBUF[3]),
        .O(O2[3]));
  OBUF \O3_OBUF[0]_inst 
       (.I(O3_OBUF[0]),
        .O(O3[0]));
  OBUF \O3_OBUF[1]_inst 
       (.I(O3_OBUF[1]),
        .O(O3[1]));
  OBUF \O3_OBUF[2]_inst 
       (.I(O3_OBUF[2]),
        .O(O3[2]));
  OBUF \O3_OBUF[3]_inst 
       (.I(O3_OBUF[3]),
        .O(O3[3]));
  OBUF \O4_OBUF[0]_inst 
       (.I(O4_OBUF[0]),
        .O(O4[0]));
  OBUF \O4_OBUF[1]_inst 
       (.I(O4_OBUF[1]),
        .O(O4[1]));
  OBUF \O4_OBUF[2]_inst 
       (.I(O4_OBUF[2]),
        .O(O4[2]));
  OBUF \O4_OBUF[3]_inst 
       (.I(O4_OBUF[3]),
        .O(O4[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
