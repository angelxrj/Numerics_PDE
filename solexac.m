function [theta]=solexac(N)
t=@(x)-0.5*((1+x)^2)*log(1+x)+(2/3)*(x^2 + 2*x)*(log(2)); theta=[]; h=1/(N+1);
for i=1:N
x_i= i*h;
theta=[theta; t(x_i)];
end