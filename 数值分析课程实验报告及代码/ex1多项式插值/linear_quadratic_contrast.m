clear
X = [0 1 2 3 4 5 6 7 8];
Y = [0.4 0.2 0.5 1.0 0.3 0.6 0.4 0.8 0.2];
h = 0.01;
xQ=[];yQ=[];
for k = 1:length(X)-1
    x = X(k):h:X(k+1);
    lk = (x-X(k+1))/(X(k)-X(k+1));
    lk1 = (X(k)-x)/(X(k)-X(k+1));
    y = lk*Y(k) + lk1*Y(k+1);
    h1=plot(x,y,'red','linewidth',3);
    hold on;
    axis([min(X) max(X) min(Y) max(Y)])
    xlabel('X','fontsize',15);
    ylabel('Y','fontsize',15);
    set(gca,'xtick',min(X):max(X),'fontsize',15)
    %pause(0.5);
    hold on;
end

for k=1:2:length(X)-1
   x=X(k):h:X(k+2); %每隔h取一个x
   xQ=[xQ x];%定义全集x
   Lk0=(x-X(k+1)).*(x-X(k+2))/((X(k)-X(k+1)).*(X(k)-X(k+2)) );
   Lk1=(x-X(k)).*(x-X(k+2))/((X(k+1)-X(k)).*(X(k+1)-X(k+2)) );
   Lk2=(x-X(k)).*(x-X(k+1))/((X(k+2)-X(k)).*(X(k+2)-X(k+1)) );
   y=Lk0*Y(k)+Lk1*Y(k+1)+Lk2*Y(k+2);
   yQ=[yQ y];%定义全集x
   %plot(x,Lk0,'r',x,Lk1,'b',x,Lk2,'black','linewidth',3);
   h2=plot(x,y,'blue','linewidth',3);
   %pause(0.5);
   %legend('linear', 'quadratic');
   legend([h1, h2], {'\color{red}Linear', '\color{blue}Quadratic'});
end