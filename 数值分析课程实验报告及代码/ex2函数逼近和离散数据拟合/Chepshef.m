clear
clc
min=-5;max=5;
n=15;%分成15份
%画出原本的图像
x=min:0.01: max; 
y=1./(1+x.^2);
plot(x,y,'LineWidth',2);
hold on

%等距节点
x11=min:(max-min)/n: max; 
y11=1./(1+x11.^2);
f11=lagrange_interpolation(x11, y11, x);
plot(x,f11,'LineWidth',2);

%插值节点选切比雪夫节点
for k=0:1:n-1
    t(k+1)=cos(pi*(2*n-1-2*k)/2/n);
    x_chep(k+1)=5*t(k+1);
end
% x=min:0.01:max;
x21=x_chep;
y21=1./(1+x21.^2);
f21=lagrange_interpolation(x21, y21, x);
plot(x,f21,'LineWidth',2);
legend('原始数据','等距节点拟合','切比雪夫节点拟合');
% 定义拉格朗日插值函数
%x为插值结点
function result = lagrange_interpolation(x_data, y_data, x)
    n = length(x_data);
    result = 0;

    for i = 1:n
        temp = y_data(i);

        for j = 1:n
            if i ~= j
                temp = temp .* (x - x_data(j)) / (x_data(i) - x_data(j));
            end
        end

        result = result + temp;
    end
    
end
