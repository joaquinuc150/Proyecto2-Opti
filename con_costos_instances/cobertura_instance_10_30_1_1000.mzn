int: zonas = 30;
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

constraint x5 + x4 + x6 >= 1;
constraint x8 + x10 + x7 + x3 >= 1;
constraint x2 + x4 >= 1;
constraint x10 + x1 >= 1;
constraint x4 + x5 + x1 >= 1;
constraint x4 + x8 + x10 >= 1;
constraint x10 + x6 + x5 >= 1;
constraint x4 + x1 + x7 + x10 >= 1;
constraint x9 + x4 >= 1;
constraint x7 >= 1;
constraint x4 + x1 + x9 >= 1;
constraint x6 + x4 + x9 + x7 >= 1;
constraint x3 + x4 + x1 >= 1;
constraint x7 + x10 + x8 + x6 >= 1;
constraint x2 + x9 >= 1;
constraint x6 >= 1;
constraint x3 + x4 + x10 + x1 >= 1;
constraint x9 + x5 + x10 >= 1;
constraint x7 + x8 + x5 + x10 >= 1;
constraint x6 + x9 >= 1;
constraint x7 + x3 + x10 >= 1;
constraint x6 >= 1;
constraint x10 >= 1;
constraint x5 + x9 + x2 >= 1;
constraint x1 + x10 + x5 >= 1;
constraint x4 + x6 + x5 + x1 >= 1;
constraint x9 + x3 + x7 + x8 >= 1;
constraint x7 + x9 + x3 + x5 >= 1;
constraint x3 >= 1;
constraint x5 + x10 + x3 + x6 >= 1;

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
"\n"];