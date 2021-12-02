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
var int: fo;

constraint x11 + x16 + x5 >= 1;
constraint x4 + x10 + x9 + x12 + x20 + x14 + x8 + x2 >= 1;
constraint x20 + x17 + x12 + x5 + x10 >= 1;
constraint x6 + x7 + x14 >= 1;
constraint x10 + x11 + x15 + x2 + x13 + x1 + x16 + x12 >= 1;
constraint x16 + x8 + x4 + x6 + x17 + x3 >= 1;
constraint x20 + x7 + x17 + x4 + x9 + x19 >= 1;
constraint x16 + x9 >= 1;
constraint x15 + x7 + x9 + x16 >= 1;
constraint x5 + x20 + x8 + x13 >= 1;
constraint x13 >= 1;
constraint x3 + x7 + x16 + x1 + x15 + x9 + x17 + x10 >= 1;
constraint x9 + x12 + x2 + x14 + x11 + x6 + x13 + x1 >= 1;
constraint x14 + x7 + x5 >= 1;
constraint x19 + x15 + x8 + x13 + x5 >= 1;
constraint x16 >= 1;
constraint x3 + x11 + x12 + x8 >= 1;
constraint x5 + x13 + x3 + x20 + x16 + x14 + x2 >= 1;
constraint x2 + x13 + x15 + x5 + x18 >= 1;
constraint x4 >= 1;
constraint x15 + x18 + x11 + x4 + x13 + x1 + x14 + x2 >= 1;
constraint x15 + x19 + x7 + x2 + x18 >= 1;
constraint x17 + x19 + x20 + x5 + x9 >= 1;
constraint x1 + x2 + x13 + x20 + x9 + x15 + x7 + x19 >= 1;
constraint x16 + x3 + x6 + x13 >= 1;
constraint x20 >= 1;
constraint x16 + x18 >= 1;
constraint x14 + x2 + x17 + x8 + x11 >= 1;
constraint x3 + x14 + x6 + x19 + x8 + x7 + x9 + x11 >= 1;
constraint x4 + x5 + x10 + x7 + x15 >= 1;
constraint x9 + x8 + x4 + x17 + x16 + x11 + x6 + x18 >= 1;
constraint x9 + x12 + x18 + x7 + x8 + x14 + x6 >= 1;
constraint x12 + x16 + x10 >= 1;
constraint x10 + x4 + x11 + x18 >= 1;
constraint x9 + x19 + x13 + x8 + x12 >= 1;
constraint x10 + x14 + x16 >= 1;
constraint x19 + x13 >= 1;
constraint x6 + x14 + x19 + x10 + x15 + x20 + x9 >= 1;
constraint x18 + x5 + x4 + x6 + x9 + x11 + x2 >= 1;
constraint x4 + x18 + x14 >= 1;
constraint x9 + x19 + x17 + x8 + x14 + x15 + x16 >= 1;
constraint x1 + x2 + x6 + x7 + x20 + x8 + x3 >= 1;
constraint x15 + x2 >= 1;
constraint x18 >= 1;
constraint x17 + x8 + x3 + x6 + x19 + x5 >= 1;
constraint x13 + x2 + x5 + x1 >= 1;
constraint x1 + x13 + x8 >= 1;
constraint x13 + x19 + x20 + x11 + x12 + x1 + x7 + x9 >= 1;
constraint x12 + x14 >= 1;
constraint x3 + x17 + x16 >= 1;
constraint x10 + x16 + x13 + x19 + x14 + x5 + x18 >= 1;
constraint x15 + x3 + x4 + x12 + x2 + x1 + x11 + x18 >= 1;
constraint x14 + x11 + x9 >= 1;
constraint x12 + x9 + x16 + x13 + x11 >= 1;
constraint x19 + x3 + x4 + x15 >= 1;
constraint x10 >= 1;
constraint x4 + x8 >= 1;
constraint x17 + x13 + x7 >= 1;
constraint x14 >= 1;
constraint x15 + x5 + x11 + x2 >= 1;

constraint 711*x1 + 284*x2 + 345*x3 + 395*x4 + 88*x5 + 997*x6 + 395*x7 + 112*x8 + 89*x9 + 202*x10 + 975*x11 + 152*x12 + 502*x13 + 143*x14 + 296*x15 + 919*x16 + 100*x17 + 614*x18 + 861*x19 + 815*x20= fo;

solve minimize fo;

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
"\n Solucion Funcion Objetivo =", show(fo)];
