function [] = Square_Root(A,b)

%   正定矩阵平方根法求解
tic
n=length(b);
L=zeros(n);
y=zeros(n);
x=zeros(n,1);
%Cholesky分解
    for j=1:n
        L(j,j)=sqrt(A(j,j)-sum(L(j,1:j-1)*L(j,1:j-1)'));
        for i=j+1:n
            L(i,j)=(A(i,j)-sum(L(i,1:j-1)*L(j,1:j-1)'))/L(j,j);
            %disp(L)
        end
    end
%求解Ly=b LTx=y
    for i=1:n
         y(i)=(b(i)- sum(L(i,1:i-1).*y(1:i-1)))/L(i,i);
    end
    U=L';
    for i=n:-1:1
            x(i)=(y(i)-sum(U(i,i+1:n)*x(i+1:n)))/L(i,i); 

    end   
   disp(x)
toc
end

