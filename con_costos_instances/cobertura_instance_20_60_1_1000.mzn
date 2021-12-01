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

constraint x19 + x16 + x5 + x13 + x12 + x11 + x15 >= 1;
constraint x6 + x20 + x5 + x1 + x2 >= 1;
constraint x3 + x20 + x10 + x8 >= 1;
constraint x18 + x7 >= 1;
constraint x9 + x2 + x5 + x3 >= 1;
constraint x19 + x17 + x20 >= 1;
constraint x19 + x1 + x8 + x2 + x11 >= 1;
constraint x13 + x12 + x10 + x16 + x1 + x15 + x6 >= 1;
constraint x7 + x14 + x13 + x5 + x6 + x12 + x16 >= 1;
constraint x4 + x5 + x13 + x9 + x11 + x18 >= 1;
constraint x8 + x1 + x12 + x9 + x3 >= 1;
constraint x3 + x16 + x12 + x14 + x2 + x4 + x18 + x11 >= 1;
constraint x3 + x4 >= 1;
constraint x9 + x20 >= 1;
constraint x11 >= 1;
constraint x20 + x9 + x16 + x3 + x8 + x5 + x7 >= 1;
constraint x13 + x14 + x4 + x12 + x7 + x19 >= 1;
constraint x12 + x4 + x8 + x3 >= 1;
constraint x18 + x12 + x4 + x20 + x11 + x15 >= 1;
constraint x3 + x8 + x13 + x15 + x12 + x1 + x14 + x19 >= 1;
constraint x20 + x4 + x1 + x3 + x2 + x15 + x5 + x10 >= 1;
constraint x8 + x14 + x19 + x5 + x9 + x10 >= 1;
constraint x18 + x10 + x2 + x14 >= 1;
constraint x2 + x6 + x13 >= 1;
constraint x20 + x13 >= 1;
constraint x13 + x1 + x8 + x11 + x10 + x6 >= 1;
constraint x19 + x20 + x15 + x10 >= 1;
constraint x15 + x10 + x13 + x9 + x7 + x14 >= 1;
constraint x12 + x6 >= 1;
constraint x12 + x3 + x6 + x2 >= 1;
constraint x6 + x19 + x4 + x16 + x5 >= 1;
constraint x2 + x4 + x11 + x9 + x3 + x12 >= 1;
constraint x7 + x11 >= 1;
constraint x2 + x8 + x1 + x17 >= 1;
constraint x2 + x15 + x1 + x5 >= 1;
constraint x18 + x8 >= 1;
constraint x14 + x18 >= 1;
constraint x20 >= 1;
constraint x4 + x16 + x5 + x11 >= 1;
constraint x3 + x9 + x8 + x1 + x11 + x16 >= 1;
constraint x10 + x14 + x19 + x8 + x2 + x18 >= 1;
constraint x10 + x12 + x15 + x13 >= 1;
constraint x9 + x2 >= 1;
constraint x2 + x13 + x20 + x10 + x5 >= 1;
constraint x15 + x6 >= 1;
constraint x10 + x4 >= 1;
constraint x6 + x9 + x4 + x1 + x2 + x12 + x3 + x7 >= 1;
constraint x8 + x20 >= 1;
constraint x15 + x6 >= 1;
constraint x7 + x1 + x3 + x20 >= 1;
constraint x9 + x1 + x11 + x12 >= 1;
constraint x4 + x19 + x10 + x3 + x1 + x2 + x16 >= 1;
constraint x14 + x12 + x7 + x5 + x17 + x8 >= 1;
constraint x17 >= 1;
constraint x4 + x3 + x5 + x20 + x9 + x6 + x8 >= 1;
constraint x6 + x5 + x7 + x15 + x2 + x10 + x16 >= 1;
constraint x8 + x1 + x6 + x5 + x4 >= 1;
constraint x5 + x17 + x15 + x16 + x12 + x1 + x11 >= 1;
constraint x6 + x3 + x7 + x10 + x12 + x8 + x4 >= 1;
constraint x20 + x18 >= 1;

solve minimize 873*x1 + 101*x2 + 386*x3 + 197*x4 + 323*x5 + 992*x6 + 915*x7 + 148*x8 + 829*x9 + 338*x10 + 728*x11 + 843*x12 + 79*x13 + 766*x14 + 652*x15 + 690*x16 + 987*x17 + 230*x18 + 699*x19 + 681*x20;

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
"\n Solucion Funcion Objetivo =", show(873*x1 + 101*x2 + 386*x3 + 197*x4 + 323*x5 + 992*x6 + 915*x7 + 148*x8 + 829*x9 + 338*x10 + 728*x11 + 843*x12 + 79*x13 + 766*x14 + 652*x15 + 690*x16 + 987*x17 + 230*x18 + 699*x19 + 681*x20)];