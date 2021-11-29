int: zonas = 60;
var 0..1 : x1;
var 0..1 : x2;
var 0..1 : x3;
var 0..1 : x4;
var 0..1 : x5;
var 0..1 : x6;
var 0..1 : x7;
var 0..1 : x8;
var 0..1 : x9;
var 0..1 : x10;
var 0..1 : x11;
var 0..1 : x12;
var 0..1 : x13;
var 0..1 : x14;
var 0..1 : x15;
var 0..1 : x16;
var 0..1 : x17;
var 0..1 : x18;
var 0..1 : x19;
var 0..1 : x20;

constraint x5 + x2 >= 1;
constraint x14 + x7 + x2 + x15 + x8 + x10 >= 1;
constraint x6 + x5 + x13 >= 1;
constraint x4 + x20 + x13 + x18 + x2 + x3 + x17 + x11 >= 1;
constraint x13 + x18 + x3 + x6 >= 1;
constraint x3 + x1 + x15 + x19 + x16 + x8 + x18 >= 1;
constraint x8 + x14 + x7 + x18 + x1 + x15 + x12 + x9 >= 1;
constraint x1 + x11 + x4 + x6 + x2 + x3 + x17 + x9 >= 1;
constraint x13 + x14 + x5 + x7 + x16 + x2 + x8 + x20 >= 1;
constraint x10 >= 1;
constraint x17 >= 1;
constraint x13 >= 1;
constraint x18 + x12 + x11 + x8 + x7 + x10 + x13 + x19 >= 1;
constraint x1 + x4 + x3 + x7 + x10 + x13 >= 1;
constraint x16 >= 1;
constraint x11 + x18 + x8 >= 1;
constraint x2 + x16 + x6 + x15 >= 1;
constraint x10 >= 1;
constraint x2 + x11 >= 1;
constraint x5 + x10 + x1 + x4 + x19 + x6 + x13 >= 1;
constraint x1 + x10 >= 1;
constraint x18 + x13 + x19 + x20 + x3 + x6 + x14 + x7 >= 1;
constraint x15 + x11 + x4 + x19 + x12 + x3 >= 1;
constraint x7 + x17 >= 1;
constraint x8 >= 1;
constraint x20 + x12 + x5 + x6 >= 1;
constraint x12 >= 1;
constraint x2 + x8 + x12 + x10 + x1 + x18 + x11 + x5 >= 1;
constraint x4 + x17 + x8 + x5 + x19 + x10 >= 1;
constraint x19 + x15 + x5 + x9 + x7 + x11 + x17 >= 1;
constraint x12 + x1 + x6 + x18 + x13 + x8 >= 1;
constraint x11 + x10 + x20 + x3 + x1 >= 1;
constraint x13 + x10 + x12 + x15 + x9 + x14 + x3 >= 1;
constraint x2 + x3 + x9 + x15 + x8 + x7 + x17 >= 1;
constraint x16 + x13 + x8 + x20 >= 1;
constraint x17 + x15 + x10 + x9 + x3 + x13 + x1 + x4 >= 1;
constraint x20 + x8 + x1 + x6 + x11 + x17 + x5 >= 1;
constraint x9 + x18 + x12 + x4 + x20 >= 1;
constraint x4 + x1 + x15 + x6 + x14 + x12 + x18 + x10 >= 1;
constraint x17 + x15 + x2 + x4 + x3 + x8 + x9 >= 1;
constraint x1 + x19 + x15 + x4 + x11 + x20 >= 1;
constraint x16 + x15 + x8 + x12 >= 1;
constraint x20 + x4 + x6 + x1 + x5 + x13 + x3 + x10 >= 1;
constraint x8 >= 1;
constraint x18 + x13 + x5 + x20 + x9 + x17 + x19 + x12 >= 1;
constraint x10 + x14 + x1 >= 1;
constraint x6 + x15 + x14 + x2 >= 1;
constraint x8 + x13 + x20 + x12 + x10 + x17 + x15 >= 1;
constraint x18 + x7 + x14 >= 1;
constraint x20 + x7 + x16 + x17 + x13 >= 1;
constraint x13 + x7 >= 1;
constraint x17 + x14 + x20 + x9 + x12 >= 1;
constraint x17 + x15 + x2 + x8 + x3 >= 1;
constraint x8 + x12 + x5 + x16 + x2 + x14 >= 1;
constraint x13 + x16 + x6 + x14 + x5 + x10 >= 1;
constraint x2 + x3 + x12 + x15 + x19 + x11 + x9 + x8 >= 1;
constraint x20 + x16 + x1 >= 1;
constraint x15 + x7 >= 1;
constraint x4 + x10 >= 1;
constraint x16 + x20 + x1 + x6 + x14 + x9 >= 1;

solve satisfy;

output ["\nx1=", show(x1), 
"\nx2=", show(x2), 
"\nx3=", show(x3), 
"\nx4=", show(x4), 
"\nx5=", show(x5), 
"\nx6=", show(x6), 
"\nx7=", show(x7), 
"\nx8=", show(x8), 
"\nx9=", show(x9), 
"\nx10=", show(x10), 
"\nx11=", show(x11), 
"\nx12=", show(x12), 
"\nx13=", show(x13), 
"\nx14=", show(x14), 
"\nx15=", show(x15), 
"\nx16=", show(x16), 
"\nx17=", show(x17), 
"\nx18=", show(x18), 
"\nx19=", show(x19), 
"\nx20=", show(x20), 
"\n"];