function [normU,normtheta]=comparing(N, f)
[theta]=solexac(N);
[B]=calculD(N,f);
[A]= calculMat(N);
U=linsolve(A, B);
x=1/(N+1):1/(N+1):N/(N+1);
figure
plot(x,U,'r')
hold on
plot (x, theta, 'k')
xlabel('x_{i}') 
ylabel('u,\theta')
norin=norm(inv(A),inf)
normU=norm(U,inf);
normtheta=norm(theta, inf);
normm=log(norm(U-theta,inf))
legend('approximate solution u','exact solution \theta')
text(normU, normtheta,'normas')