clear
clc
% f(x)=x^3-x-1;
x=1.5; % 初始值
esp=1e-6; % 迭代终止条件
n=100; % 最大迭代次数
y=zeros(n, 1);
format long
for t=1:n
    x=fun(x);
    y(t)=x;
    fprintf('第 %d 次迭代, x=%.12f\n', t, x);
    if t>1
        if abs(y(t)-y(t-1))<esp
            break;
        end
    end
end
 
function x=fun(x)
x=(x+1).^(1./3);  % p215迭代函数
end