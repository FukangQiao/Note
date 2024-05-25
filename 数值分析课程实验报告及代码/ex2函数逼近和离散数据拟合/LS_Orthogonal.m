close all
clear
clc
%P76 正交多项式作最小二乘拟合
%数据准备
xi=[1 2 3 4 5];
yi=[4 4.5 6 8 8.5];
wi=[2 1 3 1 1];
plot(xi,yi,'-o','LineWidth',2);
hold on;
n = 3;            %拟合函数阶数
x = sym('x');     
m = length(xi);
P=zeros(n,m);     
 for i=1:m        %首先将P的第一行赋值为1
    P(1,i)=1;
end
for k=2:n+1       %根据公式计算
    alpha(k)=sum(wi(i).*xi.*P(k-1,:).^2)/sum(wi(i).*P(k-1,:).^2);
    if k>2
        beta(k)=sum(wi(i).*P(k-1,:).^2)/sum(wi(i).*P(k-2,:).^2);
    end
    for i=1:m     %计算在数据点xi(i)处Pk处的值
        if k>2
        P(k,i)=(xi(i)-alpha(k))*P(k-1,i)-beta(k)*P(k-2,i);
        else
           P(k,i)=(xi(i)-alpha(k))*P(k-1,i);
        end
    end
end
for k=1:n+1       %计算a*
    astar(k)=sum(wi(i).*yi.*P(k,:))/sum(wi(i).*P(k,:).^2);
end
p=cell(n,1);       %利用元胞数组存放P
p{1}=1;         
for k=2:n+1       %求出P1到Pk的表达式
    if k>2
        p{k}=(x-alpha(k))*p{k-1}-beta(k)*p{k-2};
    else
        p{k}=(x-alpha(k))*p{k-1};
    end
end
y = 0;
for k=1:n+1       %得出最终的拟合函数表达式
    y=y+astar(k)*p{k};
end
%画图
% plot(xi,yi,'--','LineWidth',2); hold on;
fplot(y, [0.5,5],'LineWidth',2);hold on;
legend('Original data','3次正交多项式拟合');


