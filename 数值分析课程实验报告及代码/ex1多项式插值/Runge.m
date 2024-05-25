clear
clc
f=inline('1/(1+x^2)');
min=-5;max=5;
n=10;
%画出原本函数图像
x=min:0.01: max; 
y=1./(1+x.^2);
plot(x,y);
hold on

%等距节点
x11=min:(max-min)/n: max; 
y11=1./(1+x11.^2);
f11=lagrange_interpolation(x11, y11, x);
plot(x,f11);

%newton_divided_difference(f,min,max,n);
%lagrange_inter(f,min,max,n);

function newton_divided_difference( f, min_x, max_x, n )  
% 使用牛顿差商法插值  
%   f为原函数，min_x max_x定义了区间，n为多项式次数  
  
    %步骤1：求x,f,f[1],f[2]...f[n]  
    x = min_x : (max_x-min_x)/n : max_x; 
    for i = 1:1:n+1  
        y(i) = f(x(i));  
    end  
    a=[x',y'];  
    for i = 1:1:n  
        for j = 1:1:(n-i+1)  
            a(j,i+2) = (a(j+1,i+1)-a(j,i+1))/(a(j+i,1)-a(j,1));  
        end  
    end  
      
    %步骤2：画原始函数图像  
    figure(1);  
    STEP = 0.001;  
    x = min_x : STEP : max_x;  
    for i = 1:1:((max_x-min_x)/STEP+1)  
        y_1(i) = f(x(i));  
    end  
    plot(x,y_1,'r')  
      
    %步骤3：画插值函数图像  
    hold on  
    for i = 1:1:((max_x-min_x)/STEP+1)  
        y_2(i) = a(1,n+2);  
        for j = n:-1:1  
            y_2(i) = y_2(i) * (x(i) - a(j,1)) + a(1,j+1);  
        end  
    end  
    plot(x,y_2,'b')  
   hold off
      
    %步骤4：画误差图像  
    figure(2);  
    y_error = y_1 - y_2;  
    plot(x,y_error)  
end



% 定义拉格朗日插值函数
function result = lagrange_interpolation(x_data, y_data, x)
    n = length(x_data);
    result = 0;

    for i = 1:n
        term = y_data(i);

        for j = 1:n
            if i ~= j
                term = term .* (x - x_data(j)) / (x_data(i) - x_data(j));
            end
        end

        result = result + term;
    end
    
end
