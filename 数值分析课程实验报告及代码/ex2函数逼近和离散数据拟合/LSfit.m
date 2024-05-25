close all
clear
clc
x=[1 2 3 4 5];
f=[4 4.5 6 8 8.5];
%最小二乘拟合 用线性模型
plot(x,f,'-o','LineWidth',2);
hold on;
p = polyfit(x,f,1);
f1 = polyval(p,x); 
plot(x,f1,'--','LineWidth',2) 
legend1=legend('Original data','Least-square fitting WITHOUT weights');
set(legend1,'Location','best');
%% 线性、带权拟合
figure();
plot(x,f,'-o','LineWidth',2);
hold on;
w=[2 1 3 1 1];%m=4,n=1
A=zeros(2);b=zeros(2,1);
A(1,1)=sum(w);
A(1,2)=sum(w.*x);
A(2,1)=sum(w.*x);
A(2,2)=sum(w.*x.*x);
b(1)=sum(w.*f);
b(2)=sum(w.*x.*f);
a=pinv(A)*b;
s1=a(1)+a(2)*x;
plot(x,s1,'LineWidth',2);
plot(x,f1,'--','LineWidth',2);
legend('Original data','Least-square fitting WITH weights','Least-square fitting WITHOUT weights');
p1 = poly2sym(a);
p1
%% 抛物线 、带权拟合
figure();
plot(x,f,'-o','LineWidth',2);
hold on;
w=[2 1 3 1 1];%m=4,n=2
n=2;
A=zeros(n+1);b=zeros(n+1,1);
A(1,1)=sum(w);
A(1,2)=sum(w.*x);
A(1,3)=sum(w.*x.*x);
A(2,1)=A(1,2);
A(2,2)=sum(w.*x.*x);
A(2,3)=sum(w.*x.*x.*x);
A(3,1)=A(1,3);
A(3,2)=A(2,3);
A(3,3)=sum(w.*x.^4);
b(1)=sum(w.*f);
b(2)=sum(w.*x.*f);
b(3)=sum(w.*x.^2.*f);
a=pinv(A)*b;
s2=a(1)+a(2)*x+a(3)*x.^2;
plot(x,s2,'LineWidth',2);
plot(x,f1,'--','LineWidth',2);
legend('Original data','Quadratic Least-square fitting WITH weights','Quadratic Least-square fitting WITHOUT weights');
p2 = poly2sym(a);
p2


