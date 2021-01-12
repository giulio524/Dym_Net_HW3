clear all
close all
clc

alpha=0.01;

while alpha<=10
    
fimplicit(@(x,z)alpha*x+log(1-x)-log(1-z),[0,1],'LineWidth',2)
hold on
alpha=alpha+0.1;

end

%hold on
%fimplicit(@(x,z)0.5*x+log(1-x)-log(1-z),[0,1],'LineWidth',2)
%fimplicit(@(x,z)x+log(1-x)-log(1-z),[0,1],'-r','LineWidth',2)
%fimplicit(@(x,z)200*x+log(1-x)-log(1-z),[0,1],'-r','LineWidth',2)

grid on
grid minor

xl=xlabel('$\epsilon$','interpreter','latex')
yl=ylabel('$\bar{p}_{R}$','interpreter','latex')

xl.FontSize=20;
yl.FontSize=20;

txt = {'\alpha \in [0.01,10]'};
text(0.2,0.8,txt)