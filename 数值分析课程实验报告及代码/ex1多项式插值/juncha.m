clear
clc
x=[0.4 0.55 0.65 0.8 0.9 1.05];
y=[0.41075 0.57815 0.69675 0.88811 1.02652 1.25382]; 

n=length(x);
difftable=zeros(n,n);
difftable(:,1)=y;

for j = 2:n
    for i = j:n
        difftable(i, j) = (difftable(i, j-1) - difftable(i-1, j-1)) / (x(i) - x(i-j+1));
    end
end
fprintf('xk\t');
fprintf('f(xk)\t\t');
fprintf('一阶均差\t\t');
fprintf('二阶均差\t\t');
fprintf('三阶均差\t\t');
fprintf('四阶均差\t\t');
fprintf('五阶均差\t\t');
 fprintf('\n');
% 打印差商表
for i = 1:n
   
    fprintf('x%d\t', i-1);
    for j = 1:i
        fprintf('%.6f\t', difftable(i, j));
    end
    fprintf('\n');
end
