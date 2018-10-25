%Consider the following vectors%
u=[1;-1;2]; v=[10;-1;3]; w=[5;-1;4];
%Determine 3*u, Euclidean norm of u, 2*u-v+5*w, 1-norm of 2*u-v+5*w, infinite norm of  w-4*v%
3*u
norm(u,2)
z=2*u-v+5*w
norm(z,1)
z=w-4*v; norm(z, Inf)
%Determine the angle between v and w% 
z1=(v')*w; z2=norm(v)*norm(w); 
z3=acos(z1/z2)
angle=rad2deg(z3)
%Let u and v be complex numbers%
u=complex(11,-7); v=complex(-1,3);
uc=conj(u); vc=conj(v); %conjugate of u and v respectively%
A=[u,v;uc,vc];
%Determine A*A and AA* with A defined as above%`
ctranspose(A)*A
A*ctranspose(A)
%Let's define the following vector u1,u2,u3,u4 as follows%
u1=[1;-3;3;5;4];u2=[0;1;2;4;3];u3=[2;-5;-1;-6;1];u4=[3;4;5;-2;0];
A1=[u1,u2,u3,u4]; %and A is the matrix formed by those vectors%
%Calculate the rank of A and the rank of A defining u4=[-3;11;4;13;4]%
rank(A)
u4=[-3;11;4;13;4]; A2=[u1,u2,u3,u4]; rank(A2)
%Determine the Kernel(A)%
Z1=null(A1)
Z2=null(A2)
%Let's define the following matrix%
A=[1,3,2;-5,3,1;-10,0,3;1,0,-2];   B=[NaN,-2,5;6,1,-1]; C=[1,2,3;3,1,2;2,3,1];
%Calculate AB, BA and AB'%
%Since multiplication for two matrices is defined on matrices with dimension
%nxp and pxm. Then we can only calculate the last one
ABT=A*B'
%For E:=AA', determine the inverse of E and verify E(E^-1)=I.
E=A*A'; 
identity=E*E^(-1)
%What is the meaning of x=E\b for b=[10,-1,3,4]'?
%Is the solution of the linear equations system with b as result vector and
%E the matrix of coefficients
 b=[10,-1,3,4]'; x=E\b
%Compare rcond(E) with eps
CN=rcond(E)
CP=CN-eps
Cp=CN/eps
%Determine eigenvalues and eigenvectors for E.
[V,D]=eig(E) %V is the matrix composed of column eigenvectors and D is the
%diagonal matrix composed of eigenvalues in its diagonal
%What is the spectral radius of E? The largest absolute eigenvalue 138.9060
%Consider the following matrices
A=[1,3,2;-5,5,1;-10,0,3;1,1,-2]; B=[1,-2,5,7;6,1,-1,3;1,-3,4,2];
%Determine uv, where u is the second column of A and v the last row of B
u=[3,5,0,1]; v=[1,-3,4,2]; uv1=u*v' 
uv2=u'*v 
%Conider C=AB. Explore the commands C(2:3,1:3), C(:,1:3), C(:), C([2 1],:)
C=A*B 
C(2:3,1:3) 
C(:,1:3)
C(:)
C([2 1],:)
%Explore E=A(2:3, 1:3), find(E>0), E(E>0)
E=A(2:3, 1:3)
find(E>0)
E(E>0)
%Use @(x) in order to make the functions 1(x) and 1/1-x
%Moreover, use the commands plot and explot in order to draw
%the previous functions in the interval [-2; 2].
L=@(x)1./(1-x);
x=-2:0.0001:2;
figure
ezplot(L,[-2,2]);
%It is pending the order: Use @(x) in order to make the functions 1(x)
%Use help plot in order to make the graphic
x=[1,2,3,4,5,6]; y=[16,22,21,0,5,13];
figure
plot(x ,y,'ok');
hold on
plot(x,y,'-k');
xlabel('eje x')
ylabel('eje y')
title('titulo', 'FontWeight', 'normal')
legend('data 1','data 2')
%Use load detail; colormap(gray); image(X); fliplr; flipud for the 
%figugure in the right{hand side:
figure 
C=[16,3,2,13;5,10,11,8;9,6,7,12;4,15,NaN,1];
A=[C,fliplr(C);flipud(C), fliplr(flipud(C))];
colormap(gray)
%this is pending
%Use peaks; surfl; shadind; inter; contour3; colormap in order to make the 
%figure in left hand side, and cylinder; sphere; axis for the right{hand side.
figure
z=peaks(50);
S=surfl(z);
hold on
contour3(z)
colormap gray 
shading interp
%%%%
clear x y z 
[x,y,z] = sphere
figure
surf(1.5*x,1.5*y,1.5*z)
hold on 
surf(1.5*x+5,1.5*y,1.5*z) % centered at (3,-2,0) 
surf(1.5*x-5,1.5*y,1.5*z)
surf(1.5*x,1.5*y-5,1.5*z) % centered at (3,-2,0) 
surf(1.5*x,1.5*y+5,1.5*z)
surf(1.5*x,1.5*y,1.5*z+5) % centered at (3,-2,0) 
surf(1.5*x,1.5*y,1.5*z-5)
hold on
[X,Y,Z] = cylinder(1);
surf(X,Y,Z*3+.5)
surf(X,Y,Z*3-3.5)
S1=surf(X,Y,Z*3+.5);
rotate(S1, [0 1 0], 90)
S2=surf(X,Y,Z*3-3.5);
rotate(S2, [0 1 0], 90)
S3=surf(X,Y,Z*3-3.5);
rotate(S3, [1 0 0], 90)
S4=surf(X,Y,Z*3-3.5);
rotate(S4, [1 0 0], 90)
S5=surf(X,Y,Z*3-3.5);
rotate(S5, [1 0 0], -90)
colormap(white)