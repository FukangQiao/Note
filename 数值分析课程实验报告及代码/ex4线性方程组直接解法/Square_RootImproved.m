function [] = Square_RootImproved(A,b)
%改进的平方根法
tic
n=length(b);
D=zeros(n);
L=zeros(n);
T=L*D;
%L的主对角线元素为1
for i=1:n
   L(i,i)=1; 
end
D(1,1)=A(1,1);

for i=2:n
    for j=1:i-1
        T(i,j)=A(i,j)-sum(T(i,1:j-1).*L(j,1:j-1));
        L(i,1:i-1)=T(i,1:i-1)/D(1:i-1,1:i-1);
    end
    D(i,i)=A(i,i)-sum(T(i,1:i-1).*L(i,1:i-1));
    %disp(D)
    %disp(L)
end


%Ly=b DLT=y
x=zeros(n,1);
y=zeros(n,1);
y(1)=b(1);
for i=1:n
   y(i)=b(i)-sum(L(i,1:i-1)*y(1:i-1)); 
end
x(n)=y(n)/D(n,n);
for i=n-1:-1:1
   x(i)=y(i)/D(i,i)-sum(L(i+1:n,i).*x(i+1:n)); 
end
disp(x)
toc
end

