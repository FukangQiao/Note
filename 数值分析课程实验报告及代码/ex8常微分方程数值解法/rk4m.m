function RK4=rk4m(f,a,b,ya,h)
M=ceil((b-a)/h);
T=zeros(1,M+1);
Y=zeros(1,M+1);
T=a:h:b;
Y(1)=ya;
for j=1:M
   f1=feval(f,T(j),Y(j));
   f2=feval(f,T(j)+h/2,Y(j)+h*f1/2);
   f3=feval(f,T(j)+h/2,Y(j)+h*f2/2);
   f4=feval(f,T(j)+h,Y(j)+h*f3);
   Y(j+1)=Y(j)+h*(f1+2*f2+2*f3+f4)/6;
end

RK4=[T' Y'];
figure;
%标准解
x=a:h:b;
u=sqrt(2*x+1);
plot(x,u,'-bo');
hold on;
%数值解
plot(T,Y,'-ro','Linewidth',2);
legend('Exact solution','Runge-Kutta method');
ylabel('y(x)');
xlabel('x');
%计算误差
error=abs(u-Y);
figure();
plot(x,error,'-o');
ylabel('Error');
xlabel('x');
legend('Runge-Kutta method');
