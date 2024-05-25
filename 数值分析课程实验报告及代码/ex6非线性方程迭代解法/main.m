%牛顿迭代法
% 定义非线性方程函数和导数
f = @(x) x^3-x - 1;
df = @(x) 3 * x^2-1;
% 初始猜测值
x0 = 1.5;
% 收敛容限和最大迭代次数
tolerance = 1e-6;
max_iterations = 100;
% 调用牛顿法函数
[root, iterations] = newton_method(f, df, x0, tolerance, max_iterations);
% 显示结果
disp('估计的根:');
disp(root);
disp('迭代次数:');
disp(iterations);
