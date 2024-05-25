function   power_method(A,u0,n)
%幂法
    format long
    v = A * u0;
    u = v / norm(v,inf);%无穷范数相当于最大值
    i = 1;
    for i=1:n
        u0 = u;
        v = A * u0;
        u = v / norm(v,inf);
    end
    lamda=norm(v,inf); % 特征值
    fprintf('特征向量为：\n');
    disp(u);
   fprintf('特征值为： \n');
   disp(lamda);
end



