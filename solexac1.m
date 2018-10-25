function [theta]=solexac1(N)
t=@(x)0.25*(x*(x+x*log(4)+2+log(16))-(2*(x+1)^2 *(log(x+1)))); theta=[]; 
h=1/(N+1);
for i=1:N
x_i= i*h;
theta=[theta; t(x_i)];
end