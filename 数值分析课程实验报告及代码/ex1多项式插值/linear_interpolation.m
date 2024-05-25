clear
X=[0 1 2 3 4 5 6 7 8];
Y= [0.4 0.2 0.5 1.0 0.3 0.6 0.4 0.8 0.2];
h=0.01;%间隔
%基函数构造
Lk0=[];Lk1=[];xL=[];yL=[];
for k=1:length(X)-1
    x=X(k):h:X(k+1);
    xL=[xL,x];
    Lk0=(x-X(k+1))/(X(k)-X(k+1));
    Lk1=(x-X(k))/(X(k+1)-X(k));
    y=Lk0*Y(k)+Lk1*Y(k+1);
    yL=[yL,y];
    plot(x,Lk0,'r',x,Lk1,'b','linewidth',3);
    hold on;
    %axis([min(x) max(x) min(y) max(y)])
end