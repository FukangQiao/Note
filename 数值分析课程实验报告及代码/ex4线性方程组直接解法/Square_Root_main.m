clear
clc

A=[6 1 0;1 4 1;0 1 14];
B=[2 -1 0 0 0;-1 2 -1 0 0;0 -1 2 -1 0;0 0 -1 2 -1;0 0 0 -1 2];
f=[1;0;0;0;0];
b=[6;24;322];
n=length(b);
L=zeros(n);
Square_Root(A,b);
Catch_up(B,f);



