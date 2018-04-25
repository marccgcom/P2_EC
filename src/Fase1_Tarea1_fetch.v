//: version "1.8.7"

module fetch(reset, clk, Inst, PCNext, PCNew);
//: interface  /sz:(420, 354) /bd:[ Li0>PCNew[31:0](181/354) Li1>reset(96/354) Li2>clk(262/354) Ro0<Inst[31:0](271/354) Ro1<PCNext[31:0](49/354) ]
supply0 w4;    //: /sn:0 {0}(258,62)(258,93)(257,93)(257,101){1}
input [31:0] PCNew;    //: /sn:0 {0}(241,139)(231,139)(231,138)(163,138){1}
output [31:0] Inst;    //: /sn:0 /dp:1 {0}(366,149)(468,149)(468,137)(574,137){1}
output [31:0] PCNext;    //: /sn:0 /dp:1 {0}(436,68)(541,68)(541,65)(551,65){1}
supply0 w1;    //: /sn:0 {0}(353,202)(353,195)(349,195)(349,176){1}
input clk;    //: /sn:0 {0}(139,189)(252,189)(252,177){1}
supply0 w2;    //: /sn:0 {0}(419,-6)(419,37)(421,37)(421,44){1}
input reset;    //: /sn:0 {0}(151,75)(247,75)(247,101){1}
wire w7;    //: /sn:0 {0}(421,92)(421,121){1}
wire [31:0] w0;    //: /sn:0 {0}(262,139)(289,139){1}
//: {2}(293,139)(310,139)(310,151)(331,151){3}
//: {4}(291,137)(291,52)(407,52){5}
wire [31:0] w3;    //: /sn:0 {0}(379,83)(405,83)(405,84)(407,84){1}
//: enddecls

  add g8 (.A(w3), .B(w0), .S(PCNext), .CI(w2), .CO(w7));   //: @(423,68) /sn:0 /R:1 /w:[ 1 5 0 1 0 ]
  rom Imemo (.A(w0), .D(Inst), .OE(w1));   //: @(349,150) /w:[ 3 0 1 ]
  register g3 (.Q(w0), .D(PCNew), .EN(w4), .CLR(reset), .CK(clk));   //: @(252,139) /sn:0 /R:1 /w:[ 0 0 1 1 1 ]
  //: input g2 (reset) @(149,75) /sn:0 /w:[ 0 ]
  //: input g1 (clk) @(137,189) /sn:0 /w:[ 0 ]
  //: dip g10 (w3) @(341,83) /sn:0 /R:1 /w:[ 0 ] /st:1
  //: output g6 (Inst) @(571,137) /sn:0 /w:[ 1 ]
  //: supply0 g7 (w4) @(258,56) /sn:0 /R:2 /w:[ 0 ]
  //: joint g9 (w0) @(291, 139) /w:[ 2 4 1 -1 ]
  //: supply0 g12 (w2) @(419,-12) /sn:0 /R:2 /w:[ 0 ]
  //: supply0 g5 (w1) @(353,208) /sn:0 /w:[ 0 ]
  //: output g11 (PCNext) @(548,65) /sn:0 /w:[ 1 ]
  //: input g0 (PCNew) @(161,138) /sn:0 /w:[ 1 ]

endmodule

module main;    //: root_module
wire w0;    //: /sn:0 {0}(83,405)(223,405)(223,430)(287,430){1}
wire [31:0] w3;    //: /sn:0 {0}(709,439)(837,439)(837,416){1}
wire [31:0] w2;    //: /sn:0 {0}(709,217)(724,217)(724,216)(738,216){1}
//: {2}(742,216)(827,216)(827,177){3}
//: {4}(740,214)(740,118)(144,118)(144,349)(287,349){5}
wire w5;    //: /sn:0 {0}(218,263)(253,263)(253,264)(287,264){1}
//: enddecls

  //: joint g4 (w2) @(740, 216) /w:[ 2 4 1 -1 ]
  //: switch g3 (w5) @(201,263) /sn:0 /w:[ 0 ] /st:1
  led g2 (.I(w2));   //: @(827,170) /sn:0 /w:[ 3 ] /type:2
  led g1 (.I(w3));   //: @(837,409) /sn:0 /w:[ 1 ] /type:2
  clock g5 (.Z(w0));   //: @(70,405) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  fetch g0 (.PCNew(w2), .reset(w5), .clk(w0), .Inst(w3), .PCNext(w2));   //: @(288, 168) /sz:(420, 354) /sn:0 /p:[ Li0>5 Li1>1 Li2>1 Ro0<0 Ro1<0 ]

endmodule