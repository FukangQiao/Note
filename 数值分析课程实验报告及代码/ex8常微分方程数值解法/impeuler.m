function  IME=impeuler(f,a,b,ya,h)
M=ceil((b-a)/h);
T=zeros(1,M+1);
Y=zeros(1,M+1);
T=a:h:b;
Y(1)=ya;
for j=1:M
   Yj=Y(j)+h*feval(f,T(j),Y(j));
   Y(j+1)=Y(j)+h*(feval(f,T(j),Y(j))+feval(f,T(j+1),Yj))/2;
end

IME=[T' Y'];
figure;
%标准解
x=a:h:b;
u=sqrt(2*x+1);
plot(x,u,'-bo');
hold on;
%数值解
plot(T,Y,'-ro','Linewidth',2);
ylabel('y(x)');
xlabel('x');
legend('Exact solution','Improved Euler method');
%计算误差
error=abs(u-Y);
figure();
plot(x,error,'-o');
ylabel('Error');
xlabel('x');
legend('Improved Euler method');
