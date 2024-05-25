function [xk,k] = seidel(A,b,x0,eps)
D=diag(diag(A));
U=triu(A,1);
L=tril(A,-1);
BG=-(D+L)\U;
fG=(D+L)\b;
xk=BG*x0+fG;
k=1;
while norm(xk-x0)>=eps
    x0=xk;
    fprintf("第%d次",k);
    xk=BG*x0+fG
    k=k+1;
     plot(k,xk(1),'b-o');
    hold on;
end

end

