clear
clc
A=rand(1000,1000);
b=sum(A')';
Gauss(A,b);
Gauss_L(A,b);
LU(A,b);
function [] = Gauss(A,b)
% Gauss消元计算
tic
n=length(b);%维数
zg=[A,b];%增广矩阵

for i=1:n-1%第一行到n-1行计算系数
   for k=i+1:n%从第二行开始消元
       m=zg(k,i)/zg(i,i);%计算乘数
       %fprintf('第%d乘数大小：%d \n',i,m)
       zg(k,i:n+1)=zg(k,i:n+1)-m*zg(i,i:n+1);%公式
       %fprintf('第%d列为主元消元后： \n',i)
       %disp(zg);
   end
  
end
%更新A、b的值
 A=zg(1:n,1:n);
 b=zg(1:n,n+1);
%回代计算
x(n)=b(n)/A(n,n);
for k=n-1:-1:1
   x(k)=(b(k)-sum( A(k,k+1:n).*x(k+1:n)))/A(k,k);%公式
end
% fprintf('X(1)：')
% disp(x(1))
% fprintf('X(2)：')
% disp(x(2))
% fprintf('X(3)：')
% disp(x(3))
%disp(x)
toc
end
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
%disp(x)
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

