function inverse_power_method(A,u0,n)
%反幂法
    p=1.2679;
    I = eye(3,3);
    v = pinv(A - p * I) * u0;
    u = v / norm(v, inf);
    for i=1:n
        u0 = u;
        v = pinv(A - p * I) * u0;
        u = v / norm(v, inf); 
    end
    lamda = p + 1 / norm(v, inf) ;
    fprintf('特征向量为：\n');
    disp(u);
   fprintf('特征值为： \n');
   disp(lamda)
end

