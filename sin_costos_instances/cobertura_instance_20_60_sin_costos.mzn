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

constraint x15 + x2 + x13 + x1 + x18 + x14 >= 1;
constraint x4 >= 1;
constraint x1 + x9 + x2 + x19 >= 1;
constraint x13 + x19 >= 1;
constraint x2 + x19 + x9 + x16 + x13 + x12 + x7 >= 1;
constraint x9 >= 1;
constraint x10 + x6 + x7 + x1 + x16 + x11 + x3 >= 1;
constraint x17 + x11 + x5 + x19 + x13 + x10 + x1 >= 1;
constraint x14 + x12 + x6 + x2 >= 1;
constraint x8 + x14 + x1 >= 1;
constraint x17 + x2 >= 1;
constraint x10 + x5 + x11 + x2 + x4 + x3 + x7 >= 1;
constraint x2 + x8 + x14 + x7 + x5 + x12 + x3 + x17 >= 1;
constraint x6 + x3 + x14 >= 1;
constraint x5 + x9 + x13 >= 1;
constraint x12 + x19 + x18 >= 1;
constraint x1 + x13 + x10 + x8 + x14 + x9 + x6 >= 1;
constraint x9 + x13 + x12 + x16 + x1 + x20 + x7 + x19 >= 1;
constraint x3 + x7 + x13 + x10 + x11 >= 1;
constraint x12 + x1 + x5 + x14 >= 1;
constraint x14 + x6 + x4 + x11 + x12 + x1 >= 1;
constraint x13 + x6 + x19 + x20 + x16 + x11 + x18 >= 1;
constraint x14 + x15 + x6 + x17 + x3 >= 1;
constraint x3 + x15 + x14 + x16 + x2 >= 1;
constraint x15 + x9 + x13 + x7 + x20 >= 1;
constraint x2 + x10 + x1 + x16 + x8 + x19 + x4 >= 1;
constraint x9 + x5 >= 1;
constraint x2 + x3 + x18 + x4 + x5 + x9 >= 1;
constraint x7 + x17 + x5 >= 1;
constraint x10 + x3 + x13 + x5 + x1 + x11 >= 1;
constraint x18 + x10 + x20 + x4 + x2 + x19 >= 1;
constraint x3 + x15 + x5 >= 1;
constraint x12 + x10 + x19 + x18 + x20 >= 1;
constraint x18 >= 1;
constraint x4 + x11 >= 1;
constraint x12 >= 1;
constraint x16 + x8 + x10 + x20 + x18 + x17 >= 1;
constraint x19 >= 1;
constraint x5 + x4 >= 1;
constraint x5 + x2 + x19 + x12 + x20 + x14 + x4 >= 1;
constraint x6 + x7 + x11 >= 1;
constraint x9 + x18 >= 1;
constraint x10 + x1 + x6 + x20 + x12 >= 1;
constraint x5 + x2 + x3 + x1 + x16 + x15 + x11 >= 1;
constraint x1 + x16 + x19 >= 1;
constraint x18 + x4 + x9 + x17 + x8 + x20 >= 1;
constraint x2 + x1 + x13 + x18 >= 1;
constraint x20 + x3 + x19 + x4 >= 1;
constraint x10 >= 1;
constraint x19 + x15 + x9 + x12 >= 1;
constraint x2 + x15 >= 1;
constraint x17 >= 1;
constraint x3 >= 1;
constraint x12 >= 1;
constraint x6 + x17 + x7 + x5 + x19 + x10 + x18 + x1 >= 1;
constraint x13 + x20 + x19 + x18 + x15 >= 1;
constraint x7 + x8 + x13 + x19 + x6 >= 1;
constraint x16 + x1 >= 1;
constraint x12 + x15 + x3 + x5 + x1 + x2 >= 1;
constraint x10 + x13 + x7 >= 1;

constraint 1*x1 + 1*x2 + 1*x3 + 1*x4 + 1*x5 + 1*x6 + 1*x7 + 1*x8 + 1*x9 + 1*x10 + 1*x11 + 1*x12 + 1*x13 + 1*x14 + 1*x15 + 1*x16 + 1*x17 + 1*x18 + 1*x19 + 1*x20= fo;

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
