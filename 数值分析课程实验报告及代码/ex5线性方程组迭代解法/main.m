clear
clc
A = [8 -3 2;4 11 -1;6 3 12];
b = [20;33;36];
x0=[0,0,0]';
jacobi(A,b,x0,1.0e-7);
seidel(A,b,x0,1.0e-7);
