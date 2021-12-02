int: zonas = 50;
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
var int: fo;

constraint x7 + x5 >= 1;
constraint x14 + x13 + x9 >= 1;
constraint x10 + x4 + x15 + x11 + x9 + x8 >= 1;
constraint x4 + x2 + x11 >= 1;
constraint x8 + x5 >= 1;
constraint x9 + x8 + x13 + x12 >= 1;
constraint x2 + x15 + x5 + x12 + x9 >= 1;
constraint x1 + x2 + x4 + x9 + x6 + x8 >= 1;
constraint x9 + x2 + x6 >= 1;
constraint x12 + x13 >= 1;
constraint x7 >= 1;
constraint x14 + x13 + x15 + x1 + x4 + x10 >= 1;
constraint x15 + x5 + x2 + x13 + x4 >= 1;
constraint x13 >= 1;
constraint x11 + x8 + x13 + x15 + x14 + x1 >= 1;
constraint x12 + x13 >= 1;
constraint x2 + x5 + x15 >= 1;
constraint x9 + x6 + x3 + x14 + x15 >= 1;
constraint x9 + x14 + x4 + x3 + x8 >= 1;
constraint x3 + x9 >= 1;
constraint x1 + x13 + x7 + x6 + x2 >= 1;
constraint x1 + x8 + x2 + x5 + x11 + x3 >= 1;
constraint x8 >= 1;
constraint x4 >= 1;
constraint x12 + x2 + x14 + x4 >= 1;
constraint x1 + x9 + x6 >= 1;
constraint x13 + x12 + x1 >= 1;
constraint x11 >= 1;
constraint x3 + x8 >= 1;
constraint x6 + x7 + x14 + x9 + x8 + x12 >= 1;
constraint x7 + x4 >= 1;
constraint x15 + x5 + x3 + x13 + x2 >= 1;
constraint x3 + x12 >= 1;
constraint x10 + x13 + x3 + x14 + x11 + x12 >= 1;
constraint x10 + x3 >= 1;
constraint x12 + x5 >= 1;
constraint x9 + x5 >= 1;
constraint x6 + x10 + x13 + x12 >= 1;
constraint x2 + x5 + x6 + x1 + x3 + x14 >= 1;
constraint x14 + x12 + x2 + x9 + x10 >= 1;
constraint x14 + x2 + x9 + x7 + x5 >= 1;
constraint x5 + x2 + x6 + x12 + x4 + x1 >= 1;
constraint x12 + x9 + x4 + x6 + x1 + x14 >= 1;
constraint x4 + x10 + x3 + x1 >= 1;
constraint x11 + x5 + x15 + x12 + x3 >= 1;
constraint x5 + x7 + x12 >= 1;
constraint x3 + x12 + x15 + x13 + x9 + x4 >= 1;
constraint x6 >= 1;
constraint x8 + x4 + x9 + x11 >= 1;
constraint x5 + x1 + x3 + x10 + x2 >= 1;

constraint 784*x1 + 852*x2 + 340*x3 + 269*x4 + 869*x5 + 489*x6 + 520*x7 + 486*x8 + 917*x9 + 802*x10 + 420*x11 + 479*x12 + 22*x13 + 288*x14 + 696*x15= fo;

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
"\n Solucion Funcion Objetivo =", show(fo)];
