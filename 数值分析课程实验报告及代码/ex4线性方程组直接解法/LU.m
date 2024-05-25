function [] = LU(A,b)
%LU计算解方程
tic
[L,U] = LU_composition(A);
n=length(A);
%求解Ly=b Ux=y
y(1)=b(1);
for i=2:n
    for k=1:i-1
        b(i)=b(i)-L(i,k)*y(k); 
    end
    y(i)=b(i);
end
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
   for k=n:-1:i+1
      y(i)=y(i)-U(i,k)*x(k);
   end
   x(i)=y(i)/U(i,i); 
   
end
%fprintf('X的解为\n')
%disp(x)
toc

end

