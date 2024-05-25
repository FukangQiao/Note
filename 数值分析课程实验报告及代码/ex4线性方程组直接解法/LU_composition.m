function [L,U] = LU_composition(A)

%   实现矩阵LU分解，L为单位下三角矩阵。U为上三角矩阵
n=length(A);
L=zeros(n);
U=zeros(n);
for i=1:n
   L(i,i)=1; 
end
%计算U、L
for r=1:n
    if r==1
        U(r,1:n)=A(r,1:n);
    end
    for i=r:n
       U(r,i)=A(r,i)-sum(L(r,1:r-1).*U(1:r-1,i)');      
    end
        %fprintf('第%d次分解后U为： \n',r)
       % disp(U)
    for i=r+1:n
        L(i,r)=(A(i,r)-sum(L(i,1:r-1).*U(1:r-1,r)'))/U(r,r);   
    end
       % fprintf('第%d次分解后L为： \n',r)
        %disp(L) 
end

end

