function [] = Gauss_L(A,b)

%  高斯列主元法
tic
n=length(b);%维数
zg=[A,b];%增广矩阵
for k=1:n-1
    [max_zg,index]=max(abs(zg(k:n,k)));%%第k列的k到n元素绝对值中的最大值（max_zg为值，index为第几行）
    if max_zg==0
        break;
    end
    C=zg(k,:);%k行元素
    %交换k行和最大元素的行
    zg(k,:)=zg(k+index-1,:);
    zg(k+index-1,:)=C;
    for i=k+1:n
        m=zg(i,k)/zg(k,k);
        zg(i,k:n+1)=zg(i,k:n+1)-m*zg(k,k:n+1);
        %disp(zg)
    end
    
end
%更新A、b的值
 A=zg(1:n,1:n);
 b=zg(1:n,n+1);
%回代计算
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
   x(i)=(b(i)-sum( A(i,i+1:n).*x(i+1:n)))/A(i,i);%公式
   
end
% fprintf('X(1)：')
% disp(x(1))
% fprintf('X(2)：')
% disp(x(2))
% fprintf('X(3)：')
% disp(x(3))
%disp(x)
toc

end
