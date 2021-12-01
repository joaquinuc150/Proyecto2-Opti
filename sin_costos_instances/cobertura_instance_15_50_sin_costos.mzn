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

constraint x2 + x10 + x6 + x1 + x13 >= 1;
constraint x5 + x1 + x3 + x13 + x4 + x15 >= 1;
constraint x15 + x13 + x14 >= 1;
constraint x5 + x4 + x12 + x3 >= 1;
constraint x9 + x7 + x13 + x1 >= 1;
constraint x13 + x11 + x9 >= 1;
constraint x6 + x13 >= 1;
constraint x7 + x3 + x13 + x11 >= 1;
constraint x9 + x5 + x3 >= 1;
constraint x6 + x8 + x15 + x10 >= 1;
constraint x7 + x2 + x11 >= 1;
constraint x11 + x8 >= 1;
constraint x8 + x7 + x10 >= 1;
constraint x8 + x10 + x11 >= 1;
constraint x11 + x1 + x9 + x7 + x2 + x5 >= 1;
constraint x11 + x12 + x14 + x1 + x6 >= 1;
constraint x8 >= 1;
constraint x6 + x9 + x4 + x8 + x13 >= 1;
constraint x14 >= 1;
constraint x1 + x4 + x8 + x10 >= 1;
constraint x14 + x8 + x15 >= 1;
constraint x2 + x11 + x9 + x8 + x3 + x15 >= 1;
constraint x6 + x11 + x12 + x9 + x10 + x3 >= 1;
constraint x10 + x8 + x9 >= 1;
constraint x9 + x3 + x1 + x7 + x14 + x5 >= 1;
constraint x5 + x11 + x6 >= 1;
constraint x3 >= 1;
constraint x9 + x7 + x1 >= 1;
constraint x8 + x1 + x13 + x6 + x2 >= 1;
constraint x15 + x11 + x12 + x5 >= 1;
constraint x12 + x11 + x5 + x8 >= 1;
constraint x12 + x15 + x14 + x5 + x2 >= 1;
constraint x14 + x13 + x5 + x9 + x8 >= 1;
constraint x3 >= 1;
constraint x6 >= 1;
constraint x14 + x3 >= 1;
constraint x11 + x4 + x3 + x15 + x7 >= 1;
constraint x8 >= 1;
constraint x13 + x1 + x8 + x5 + x11 + x7 >= 1;
constraint x9 + x6 >= 1;
constraint x1 + x8 >= 1;
constraint x4 + x9 + x11 + x14 + x8 + x2 >= 1;
constraint x9 + x2 + x8 + x1 + x11 >= 1;
constraint x11 >= 1;
constraint x15 + x8 >= 1;
constraint x4 + x8 + x6 + x3 + x11 + x15 >= 1;
constraint x12 + x5 + x14 + x10 + x2 + x3 >= 1;
constraint x13 >= 1;
constraint x12 + x15 + x4 + x2 >= 1;
constraint x1 + x8 + x13 >= 1;

solve minimize 1*x1 + 1*x2 + 1*x3 + 1*x4 + 1*x5 + 1*x6 + 1*x7 + 1*x8 + 1*x9 + 1*x10 + 1*x11 + 1*x12 + 1*x13 + 1*x14 + 1*x15;

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
"\n Solucion Funcion Objetivo =", show(1*x1 + 1*x2 + 1*x3 + 1*x4 + 1*x5 + 1*x6 + 1*x7 + 1*x8 + 1*x9 + 1*x10 + 1*x11 + 1*x12 + 1*x13 + 1*x14 + 1*x15)];