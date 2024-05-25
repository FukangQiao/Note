clear
clc
f = @(x) x./(4+x.^2);
%f = @(x) sin(x)/x;
a=1;b=2;n=6;
result_trapezoidal = compositeTrapezoidal(f, a, b, n);
fprintf('复合梯形的积分结果：%f\n', result_trapezoidal);
result_simpson = compositeSimpson(f, a, b, n);
fprintf('复合辛普森法的积分结果：%f\n', result_simpson);
result_romberg = rombergIntegration(f, a, b, n);
fprintf('龙贝格求积法的积分结果：%f\n', result_romberg);
true= 0.235001814622868;
for n_interval=1:1:20
   error1= compositeTrapezoidal(f, a, b, n_interval)-true;
   error2= compositeSimpson(f, a, b, n_interval)-true;
   error3= rombergIntegration(f, a, b, n_interval)-true;
   plot(n_interval,error1,'r-o','LineWidth',2);
   hold on;
    plot(n_interval,error2,'b-o','LineWidth',2);
    hold on;
    plot(n_interval,error3,'c-o','LineWidth',2);
    legend('Trapezoidal','Simpson','Romberg');
   
end

function result = compositeTrapezoidal(f, a, b, n)
    h = (b - a) / n;
    x = a:h:b;
    result = (h / 2) * (f(a) + 2 * sum(f(x(2:end-1))) + f(b));
end
function result = compositeSimpson(f, a, b, n)
    h = (b - a) / n;
    x = a:h:b;
    %n 是子区间的数量，它必须是偶数以确保每个小区间都有三个点。
    result = (h / 3) * (f(a) + 4 * sum(f(x(2:2:end-1))) + 2 * sum(f(x(3:2:end-2))) + f(b));
end

function result = rombergIntegration(f, a, b, max_iter)
    R = zeros(max_iter, max_iter);
    % 第一列，h=1 的情况
    h = b - a;
    R(1, 1) = (h / 2) * (f(a) + f(b));
    for i = 2:max_iter
        % 计算 h_i
        h = h / 2;
        % 计算新的列
        sum_term = 0;
        for k = 1:2^(i-2)
            sum_term = sum_term + f(a + (2*k-1) * h);
        end
        R(i, 1) = 0.5 * R(i-1, 1) + h * sum_term;
        % 计算剩余的列
        for j = 2:i
            R(i, j) = R(i, j-1) + (R(i, j-1) - R(i-1, j-1)) / (4^(j-1) - 1);
        end
    end
    % 返回最终结果
    result = R(max_iter, max_iter);
end

