function meshi(N)
    x=[]; y=[]; G=[]; g=@(l)l*(1-l); h=1/(N+1);
    for j=1:N
    for k=1:N
        x=[x;j*h];
        y=[y;k*h];
    end
    end
    for j=h:h:1-h
        G=[G; g(j)];
    end
    p=[];
    for j=1:N:N^2-N+1
        p=[p;x(j)];
    end
figure
A=coef(N);
B=SOLvector(N);
U=linsolve(A,B);
plot3(x,y,U,'*')
hold on
l=ones(N,1);
j=zeros(N,1);
plot3(p,l,G,'+')
hold on
plot3(p,j,j,'o')
hold on
plot3(j,p,j,'o')
hold on 
plot3(l,p,j,'o')
xlabel('x_h')
ylabel('y_h') 
zlabel('u_h') 
title('Solution of LaPlace equation with Dirichlet condition')
legend('u_{h} at x\in\Omega','g(x)=x(x+1) at x\in \delta\Omega and y=1','u(0,y)=(1,y)=u(x,0)=0 at (x,y)\in [0,1]x[0,1]','Location', 'northeast')
figure
plot3(x,y,U,'*')
hold on
l=ones(N,1);
j=zeros(N,1);
plot3(p,l,G,'+')
hold on
plot3(p,j,j,'o')
hold on
plot3(j,p,j,'o')
hold on 
plot3(l,p,j,'o')
hold on
plot3(p,l,G,'r+')
view(-180,0)
xlabel('x_h')
ylabel('y_h') 
zlabel('u_h') 
title('Solution of LaPlace equation with Dirichlet condition')
legend('u_{h} at x\in\Omega','g(x)=x(x+1) at x\in \delta\Omega and y=1','u(0,y)=(1,y)=u(x,0)=0 at (x,y)\in [0,1]x[0,1]','Location', 'northeast')
end