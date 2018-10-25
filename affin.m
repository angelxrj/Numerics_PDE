function [Up] = affin(N,u0, g, p)%N is the number of partitions in x, g is the step 
%in time, p is the number of steps in time, u0 is a anonymous func as
%initial conditions for ADE in Explicit 2terms scheme
h=0.5; A=zeros(N, N); c=50; k=30; pha=(c*g)/(2*h); phe=k*g/(h^(2));
    for i=1:N
        if (i==1)
        A(i,i)= A(i,i)+1-(2*phe);  
        A(i,i+1)= A(i,i+1) + phe - pha;
        end
        if(i<=N-1 && i>=2)
        A(i,i-1)= A(i,i-1)+ phe + pha;  
        A(i,i)=A(i,i)+ 1 - (2*phe);  
        A(i,i+1)=A(i,i+1)+ phe - pha;
        else
            if (i==N)
             A(i,i-1)=  A(i,i-1)+ phe +pha;     
             A(i,i)= A(i,i)+1-(2*phe); 
            end
        end   
    end
A;
U0=[]; F=[(phe+pha)*u0(0);zeros(N-2,1);(phe-pha)*u0(0)]; X=[];
    for i=1:N
     x_i=(i)*h;
     X=[X,x_i];
     U0=[U0; u0(x_i)];  
    end
U0;
S=0;
for j=0:p-1
    S=S+(A^(j))*F;
end
S;
Up=((A^(p))*U0) + S;
plot(X,Up);
end
