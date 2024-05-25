function [] = Catch_up(A,f)
%追逐法
n=length(f);
a=diag(A,-1);
a=[0;a];
b=diag(A);
c=diag(A,1);
x=zeros(n,1);
y=zeros(n,1);
beta(1)=c(1)/b(1);
for i=2:n-1
   beta(i) =c(i)/(b(i)-a(i)*beta(i-1));
end

%Ly=f
y(1)=f(1)/b(1);
for i=2:n
   y(i) =(f(i)-a(i)* y(i-1))/(b(i)-a(i)*beta(i-1));
end
%Ux=y
x(n)=y(n);
for i=n-1:-1:1
   x(i) =y(i)-beta(i)*x(i+1);
end
disp(x)
end

