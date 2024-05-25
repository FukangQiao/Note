x=-1:0.001:1; 
for n=0:1:5
   y=legendre(n,x);
   plot(x,y(1,:),'LineWidth',2);
   hold on;
end



