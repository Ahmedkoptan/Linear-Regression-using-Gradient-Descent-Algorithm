clear all
close all
clc
x=[3;1;0;4];y=[2;2;1;3];alpha=0.01;theta0=0;theta1=1.5;m=length(x);
for i=1:1:100000
    h_y_0=0;
    h_y_1=0;
    for j=1:1:m
        h_y_0=h_y_0+((theta0+(theta1*x(j))-y(j)));
        h_y_1=h_y_1+(((theta0+(theta1*x(j))-y(j)))*x(j));
    end
    temp0=theta0-(alpha*(1/m)*h_y_0);
    temp1=theta1-(alpha*(1/m)*h_y_1);
    theta0=temp0;
    theta1=temp1;
    if(i==2)
        theta0
        theta1
        h=theta0+theta1*6
    end
end
theta0
theta1