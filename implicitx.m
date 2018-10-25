function [Up] = implicitx(N, g, p)%N is the number of partitions in x, g is the step 
%in time, p is the number of steps in time
h=0.5; A=zeros(N, N); c=50; pha=(c*g)/(2*h); 
    for i=1:N
        if (i==1)
        A(i,N)= A(i,N)-pha;     
        A(i,i)= A(i,i)+1; 
        A(i,i+1)= A(i,i+1)+pha; 
        end
        if(i<=N-1 && i>=2)
        A(i,i-1)= A(i,i-1)-pha;  
        A(i,i)=A(i,i)+1;
        A(i,i+1)= A(i,i+1)+pha; 
        else
            if (i==N)
             A(i,1)=A(i,1)+pha;
             A(i,i-1)=  A(i,i-1)-pha;     
             A(i,i)= A(i,i)+1; 
            end
        end   
    end
A;
U0=ind(100/3,200/3,N); X=[];
    for i=1:N
     x_i=(i)*h;
     X=[X,x_i]; 
    end
iA=inv(A);
Up=((iA^(p))*U0);
plot(X,Up);
xlabel('x')
ylabel('u(x,t)')
end

