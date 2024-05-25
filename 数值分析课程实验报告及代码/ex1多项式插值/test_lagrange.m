% 示例数据
x_data = [1, 2, 3, 4];
y_data = [5, 3, 2, 7];

% 要进行插值的点
x_interp = 2.5;

% 使用拉格朗日插值函数计算插值结果
y_interp = lagrange_interpolation(x_data, y_data, x_interp);

% 显示结果
fprintf('在 x = %.2f 处的拉格朗日插值结果为 y = %.2f\n', x_interp, y_interp);

% 绘制原始数据和插值结果
figure;
plot(x_data, y_data, 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b', 'LineWidth', 2);
hold on;
plot(x_interp, y_interp, 'rx', 'MarkerSize', 10, 'LineWidth', 2);
xlabel('x');
ylabel('y');
legend('原始数据', '拉格朗日插值点', 'Location', 'best');
grid on;

% 定义拉格朗日插值函数
function result = lagrange_interpolation(x_data, y_data, x)
    n = length(x_data);
    result = 0;

    for i = 1:n
        term = y_data(i);

        for j = 1:n
            if i ~= j
                term = term * (x - x_data(j)) / (x_data(i) - x_data(j));
            end
        end

        result = result + term;
    end
end

