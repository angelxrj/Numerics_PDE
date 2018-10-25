function [normU,normtheta]=comparison1(N, f)
[theta]=solexac1(N);
[B]=calculD(N+1,f);
[A]= calculMat1(N);
U=linsolve(A, B);
x=1/(N+1):1/(N+1):1;
plot(x,U,'r')
hold on
plot (x, theta, 'k')
xlabel('x_{i}') 
ylabel('u,\theta')
normU=norm(U);
normtheta=norm(theta);
legend('approximate solution u','exact solution \theta')
text(normU, normtheta,'normas')