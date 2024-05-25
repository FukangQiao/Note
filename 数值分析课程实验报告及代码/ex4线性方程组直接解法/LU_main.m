clc
clear
% A=[1,2,3;2,5,2;3,1,5];
% b=[14;18;20];
b=[6;5;1];
A=[1,2,3;2,5,2;3,1,5];
LU(A,b);
function [] = LU(A,b)
%LU计算解方程
tic
[L,U] = LU_composition(A);
n=length(A);
%求解Ly=b Ux=y
y(1)=b(1);
for i=2:n
    for k=1:i-1
        b(i)=b(i)-L(i,k)*y(k); 
    end
    y(i)=b(i);
end
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
   for k=n:-1:i+1
      y(i)=y(i)-U(i,k)*x(k);
   end
   x(i)=y(i)/U(i,i); 
   
end
disp("LU");
disp(x)
toc

end
function [L,U] = LU_composition(A)

%   实现矩阵LU分解，L为单位下三角矩阵。U为上三角矩阵
n=length(A);
L=zeros(n);
U=zeros(n);
for i=1:n
   L(i,i)=1; 
end
%计算U、L
for r=1:n
    if r==1
        U(r,1:n)=A(r,1:n);
    end
    for i=r:n
       U(r,i)=A(r,i)-sum(L(r,1:r-1).*U(1:r-1,i)');      
    end
        %fprintf('第%d次分解后U为： \n',r)
       % disp(U)
    for i=r+1:n
        L(i,r)=(A(i,r)-sum(L(i,1:r-1).*U(1:r-1,r)'))/U(r,r);   
    end
       % fprintf('第%d次分解后L为： \n',r)
        %disp(L) 
end

end


