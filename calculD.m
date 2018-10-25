function [B]=calculD(N,f) % f should be an anonymous function
L=@(x)1+x;  B=[]; h=1/(N+1);
for i=1:N
x_i= i*h;
B=[B; f(x_i)*L(x_i)];
end