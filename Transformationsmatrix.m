
clear all;
clc;

s1=sym('s1');
c1=sym('c1');
s2=sym('s2');
c2=sym('c2');
s3=sym('s3');
c3=sym('c3');
s4=sym('s4');
c4=sym('c4');
s5=sym('s5');
c5=sym('c5');
a1=sym('a1');
a2=sym('a2');
a3=sym('a3');
d1=sym('d1');
d5=sym('d5');
c23=sym('c23');
s23=sym('s23');
c234=sym('c234');
s234=sym('s234');

T_54 = [c5, -s5, 0, 0;...
        s5, c5, 0, 0;...
        0, 0, 1, d5;...
        0, 0, 0, 1];
T_43 = [-s4, 0, c4, 0;...
        c4, 0, s4, 0;...
        0, 1, 0, 0;...
        0, 0, 0, 1];
T_32 = [c3, -s3, 0, a3*c3;...
        s3, c3, 0, a3*s3;...
        0, 0, 1, 0;...
        0, 0, 0, 1];
T_21 = [c2, -s2, 0, a2*c2;...
        s2, c2, 0, a2*s2;...
        0, 0, 1, 0;...
        0, 0, 0, 1];
T_10 = [c1, 0, s1, a1*c1;...
        s1, 0, -c1, a1*s1;...
        0 1 0 d1;...
        0 0 0 1];
    
T_20 = T_10 * T_21;
T_30 = T_10 * T_21 * T_32;
T_40 = T_10 * T_21 * T_32 * T_43;
T_50 = T_10 * T_21 * T_32 * T_43 * T_54;

z0=[0;0;1];
p0=[0;0;0];
z1 = T_10(1:3,3);
p1 = T_10(1:3,4);
z2 = T_20(1:3,3);
p2 = T_20(1:3,4);
z3= T_30(1:3,3);
p3= T_30(1:3,4);
z4 = T_40(1:3,3);
p4 = T_40(1:3,4);
z5 = T_50(1:3,3);
p5 = T_50(1:3,4);

j1 = [cross(z0,(p5-p0));z0];
j2 = [cross(z1,(p5-p1));z1];
j3 = [cross(z2,(p5-p2));z2];
j4 = [cross(z3,(p5-p3));z3];
j5 = [cross(z4,(p5-p4));z4];