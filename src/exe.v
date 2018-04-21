//: version "1.8.7"

module ALU(Zero_signal, B, ALU_operation, A, ALU_result);
//: interface  /sz:(127, 166) /bd:[ Ti0>ALU_operation[3:0](64/127) Li0>A[31:0](46/166) Li1>B[31:0](108/166) Ro0<Zero(52/166) Ro1<ALU_result[31:0](106/166) ]
input [31:0] B;    //: /sn:0 {0}(415,270)(468,270){1}
//: {2}(472,270)(594,270){3}
//: {4}(598,270)(643,270){5}
//: {6}(647,270)(700,270)(700,302)(743,302){7}
//: {8}(645,272)(645,370)(720,370){9}
//: {10}(596,272)(596,392)(718,392){11}
//: {12}(470,268)(470,207)(471,207){13}
supply0 w7;    //: /sn:0 /dp:1 {0}(651,129)(651,110){1}
output [31:0] ALU_result;    //: /sn:0 /dp:1 {0}(1029,324)(1108,324){1}
//: {2}(1112,324)(1147,324)(1147,292)(1194,292){3}
//: {4}(1110,326)(1110,363)(1134,363){5}
input [31:0] A;    //: /sn:0 {0}(412,238)(610,238){1}
//: {2}(614,238)(659,238){3}
//: {4}(663,238)(708,238)(708,270)(743,270){5}
//: {6}(661,240)(661,365)(720,365){7}
//: {8}(612,236)(612,137)(637,137){9}
//: {10}(612,240)(612,387)(718,387){11}
supply0 w0;    //: /sn:0 {0}(757,243)(757,262){1}
supply0 w3;    //: /sn:0 /dp:1 {0}(552,145)(552,123){1}
supply0 [31:0] w20;    //: /sn:0 {0}(805,115)(805,119)(899,119){1}
input [3:0] ALU_operation;    //: /sn:0 {0}(428,544)(723,544)(723,543)(1016,543){1}
//: {2}(1017,543)(1078,543){3}
output Zero_signal;    //: /sn:0 /dp:1 {0}(1219,391)(1342,391)(1342,388)(1352,388){1}
supply0 [31:0] w5;    //: /sn:0 {0}(825,318)(857,318)(857,317)(867,317){1}
//: {2}(869,315)(869,314)(1000,314){3}
//: {4}(869,319)(869,320)(983,320){5}
//: {6}(987,320)(1000,320){7}
//: {8}(985,322)(985,327)(1000,327){9}
wire [31:0] w6;    //: /sn:0 {0}(567,169)(637,169){1}
wire [31:0] w16;    //: /sn:0 {0}(666,153)(818,153)(818,159){1}
//: {2}(818,160)(818,307)(1000,307){3}
wire Zero;    //: /sn:0 /dp:1 {0}(822,160)(915,160)(915,132){1}
wire w4;    //: /sn:0 {0}(757,310)(757,338){1}
wire [31:0] w18;    //: /sn:0 {0}(741,368)(793,368)(793,347)(1000,347){1}
wire [31:0] w12;    //: /sn:0 {0}(487,207)(512,207)(512,185)(538,185){1}
wire w19;    //: /sn:0 {0}(651,177)(651,197){1}
wire [2:0] w10;    //: /sn:0 {0}(1017,538)(1017,442)(1016,442)(1016,347){1}
wire w8;    //: /sn:0 {0}(552,193)(552,203)(565,203)(565,213){1}
wire [31:0] w17;    //: /sn:0 {0}(928,109)(990,109)(990,300)(1000,300){1}
wire w14;    //: /sn:0 {0}(1155,363)(1193,363)(1193,391)(1203,391){1}
wire [31:0] w2;    //: /sn:0 {0}(772,286)(800,286)(800,334)(1000,334){1}
wire [31:0] w11;    //: /sn:0 {0}(465,133)(465,153)(518,153){1}
//: {2}(522,153)(538,153){3}
//: {4}(520,151)(520,99)(899,99){5}
wire [31:0] w9;    //: /sn:0 {0}(739,390)(803,390)(803,340)(1000,340){1}
//: enddecls

  or g4 (.I0(A), .I1(B), .Z(w9));   //: @(729,390) /sn:0 /w:[ 11 11 0 ]
  //: joint g8 (A) @(612, 238) /w:[ 2 8 1 10 ]
  and g3 (.I0(A), .I1(B), .Z(w18));   //: @(731,368) /sn:0 /w:[ 7 9 0 ]
  //: supply0 g16 (w5) @(819,318) /sn:0 /R:3 /w:[ 0 ]
  not g17 (.I(w14), .Z(Zero_signal));   //: @(1209,391) /sn:0 /w:[ 1 0 ]
  add g26 (.A(w6), .B(A), .S(w16), .CI(w7), .CO(w19));   //: @(653,153) /sn:0 /R:1 /w:[ 1 9 0 0 0 ]
  or g2 (.I0(ALU_result), .Z(w14));   //: @(1145,363) /sn:0 /w:[ 5 0 ]
  //: joint g23 (B) @(470, 270) /w:[ 2 12 1 -1 ]
  //: joint g30 (w5) @(869, 317) /w:[ -1 2 1 4 ]
  //: joint g1 (A) @(661, 238) /w:[ 4 -1 3 6 ]
  //: supply0 g24 (w3) @(552,117) /sn:0 /R:2 /w:[ 1 ]
  mux g29 (.I0(w18), .I1(w9), .I2(w2), .I3(w5), .I4(w5), .I5(w5), .I6(w16), .I7(w17), .S(w10), .Z(ALU_result));   //: @(1016,324) /sn:0 /R:1 /w:[ 1 1 1 9 7 3 3 1 1 0 ] /ss:0 /do:0
  //: output g18 (Zero_signal) @(1349,388) /sn:0 /w:[ 1 ]
  //: supply0 g10 (w0) @(757,237) /sn:0 /R:2 /w:[ 0 ]
  led g25 (.I(w8));   //: @(565,220) /sn:0 /R:2 /w:[ 1 ] /type:0
  //: input g6 (B) @(413,270) /sn:0 /w:[ 0 ]
  //: joint g7 (B) @(645, 270) /w:[ 6 -1 5 8 ]
  //: joint g9 (B) @(596, 270) /w:[ 4 -1 3 10 ]
  //: joint g35 (w11) @(520, 153) /w:[ 2 4 1 -1 ]
  add g22 (.A(w12), .B(w11), .S(w6), .CI(w3), .CO(w8));   //: @(554,169) /sn:0 /R:1 /w:[ 1 3 0 0 0 ]
  //: joint g31 (w5) @(985, 320) /w:[ 6 -1 5 8 ]
  tran g33(.Z(Zero), .I(w16[31]));   //: @(816,160) /sn:0 /R:2 /w:[ 0 2 1 ] /ss:1
  //: input g12 (ALU_operation) @(426,544) /sn:0 /w:[ 0 ]
  led g28 (.I(w19));   //: @(651,204) /sn:0 /R:2 /w:[ 1 ] /type:0
  //: supply0 g34 (w20) @(805,109) /sn:0 /R:2 /w:[ 0 ]
  //: input g5 (A) @(410,238) /sn:0 /w:[ 0 ]
  led g11 (.I(w4));   //: @(757,345) /sn:0 /R:2 /w:[ 1 ] /type:0
  //: output g14 (ALU_result) @(1191,292) /sn:0 /w:[ 3 ]
  //: dip g21 (w11) @(465,123) /sn:0 /w:[ 0 ] /st:1
  not g20 (.I(B), .Z(w12));   //: @(477,207) /sn:0 /w:[ 13 0 ]
  mux g32 (.I0(w20), .I1(w11), .S(Zero), .Z(w17));   //: @(915,109) /sn:0 /R:1 /w:[ 1 5 1 0 ] /ss:0 /do:0
  //: joint g15 (ALU_result) @(1110, 324) /w:[ 2 -1 1 4 ]
  add g0 (.A(B), .B(A), .S(w2), .CI(w0), .CO(w4));   //: @(759,286) /sn:0 /R:1 /w:[ 7 5 0 1 0 ]
  //: supply0 g27 (w7) @(651,104) /sn:0 /R:2 /w:[ 1 ]
  tran g13(.Z(w10), .I(ALU_operation[2:0]));   //: @(1017,541) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:0

endmodule

module EXE(ALU_result, Zero_signal, data_read_2, data_read_1, INM32, PCNext, branch_target, ALU_operation);
//: interface  /sz:(185, 314) /bd:[ Ti0>ALU_operation[3:0](84/182) Li0>data_read_2[31:0](272/314) Li1>data_read_1[31:0](239/314) Li2>PCNext[31:0](91/314) Li3>INM32[31:0](126/314) Ro0<Zero_signal(242/314) Ro1<ALU_result[31:0](283/314) Ro2<branch_target[31:0](90/314) ]
output [31:0] ALU_result;    //: /sn:0 {0}(540,374)(679,374){1}
input [3:0] ALU_operation;    //: /sn:0 {0}(406,120)(464,120)(464,244){1}
input [31:0] data_read_2;    //: /sn:0 {0}(166,377)(387,377){1}
input [31:0] PCNext;    //: /sn:0 {0}(113,514)(431,514)(431,571)(441,571){1}
output Zero_signal;    //: /sn:0 {0}(540,308)(675,308){1}
output [31:0] branch_target;    //: /sn:0 /dp:1 {0}(470,587)(550,587)(550,586)(560,586){1}
input [31:0] INM32;    //: /sn:0 /dp:1 {0}(116,623)(431,623)(431,603)(441,603){1}
supply0 w5;    //: /sn:0 {0}(455,524)(455,563){1}
input [31:0] data_read_1;    //: /sn:0 {0}(170,301)(387,301){1}
wire w3;    //: /sn:0 /dp:1 {0}(455,647)(455,611){1}
//: enddecls

  led g8 (.I(w3));   //: @(455,654) /sn:0 /R:2 /w:[ 0 ] /type:0
  //: output g4 (ALU_result) @(676,374) /sn:0 /w:[ 1 ]
  //: output g3 (Zero_signal) @(672,308) /sn:0 /w:[ 1 ]
  //: input g2 (data_read_2) @(164,377) /sn:0 /w:[ 0 ]
  //: input g1 (data_read_1) @(168,301) /sn:0 /w:[ 0 ]
  //: input g10 (INM32) @(114,623) /sn:0 /w:[ 0 ]
  add g6 (.A(INM32), .B(PCNext), .S(branch_target), .CI(w5), .CO(w3));   //: @(457,587) /sn:0 /R:1 /w:[ 1 1 0 1 1 ]
  //: input g9 (PCNext) @(111,514) /sn:0 /w:[ 0 ]
  //: supply0 g7 (w5) @(455,518) /sn:0 /R:2 /w:[ 0 ]
  //: output g11 (branch_target) @(557,586) /sn:0 /w:[ 1 ]
  //: input g5 (ALU_operation) @(404,120) /sn:0 /w:[ 0 ]
  ALU g0 (.ALU_operation(ALU_operation), .B(data_read_2), .A(data_read_1), .ALU_result(ALU_result), .Zero_signal(Zero_signal));   //: @(388, 245) /sz:(151, 203) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Ro0<0 Ro1<0 ]

endmodule

module main;    //: root_module
wire [31:0] w6;    //: /sn:0 {0}(374,160)(364,160){1}
wire [31:0] w7;    //: /sn:0 {0}(167,196)(177,196){1}
wire [31:0] w4;    //: /sn:0 {0}(364,353)(431,353){1}
//: {2}(435,353)(455,353)(455,383)(473,383){3}
//: {4}(433,355)(433,432)(454,432){5}
wire [31:0] w0;    //: /sn:0 {0}(167,161)(177,161){1}
wire w3;    //: /sn:0 {0}(364,312)(418,312){1}
wire [31:0] w1;    //: /sn:0 {0}(46,342)(177,342){1}
wire [31:0] w2;    //: /sn:0 {0}(43,310)(107,310)(107,309)(177,309){1}
wire [3:0] w5;    //: /sn:0 {0}(261,15)(261,42)(263,42)(263,69){1}
//: enddecls

  led g4 (.I(w4));   //: @(461,432) /sn:0 /R:3 /w:[ 5 ] /type:3
  led g3 (.I(w4));   //: @(480,383) /sn:0 /R:3 /w:[ 3 ] /type:2
  led g2 (.I(w3));   //: @(425,312) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: dip g1 (w5) @(261,5) /sn:0 /w:[ 0 ] /st:0
  //: dip g6 (w2) @(5,310) /sn:0 /R:1 /w:[ 0 ] /st:0
  //: dip g7 (w1) @(8,342) /sn:0 /R:1 /w:[ 0 ] /st:0
  //: joint g5 (w4) @(433, 353) /w:[ 2 -1 1 4 ]
  EXE g0 (.ALU_operation(w5), .INM32(w7), .PCNext(w0), .data_read_1(w2), .data_read_2(w1), .branch_target(w6), .ALU_result(w4), .Zero_signal(w3));   //: @(178, 70) /sz:(185, 314) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Li2>1 Li3>1 Ro0<1 Ro1<0 Ro2<0 ]

endmodule
