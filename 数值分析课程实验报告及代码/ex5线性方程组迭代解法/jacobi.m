function [x,n] = jacobi(A,b,x0,eps)
%  求线性方程组的Jacobi迭代法
D = diag(diag(A));%求A的对角矩阵
L = -tril(A,-1);%求A的下三角矩阵
U = -triu(A,1);%求A的上三角矩阵
B = D\(L+U);
f = D\b;
x = B*x0+f;
n = 1;%迭代次数
while norm(x-x0)>=eps
    x0 = x;
    fprintf("第%d次",n);
    x = B*x0+f
    n = n+1;
    plot(n,x(1),'r-o');
    hold on;
  
end