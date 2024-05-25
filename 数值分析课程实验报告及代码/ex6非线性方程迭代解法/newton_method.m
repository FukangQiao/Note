function [root, iterations] = newton_method(f, df, x0, tolerance, max_iterations)

    iterations = 1;
    x = x0;
    while iterations < max_iterations
        % 牛顿法迭代公式
        x_new = x - f(x) / df(x);

        % 判断收敛
        if abs(x_new - x) < tolerance
            root = x_new;
            fprintf('第 %d 次, x=%.12f\n', iterations, root);
            return;
        end
        fprintf('第 %d 次, x=%.12f\n', iterations, x_new);
        x = x_new;
        iterations = iterations + 1;
    end
    
    
end
