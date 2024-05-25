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


