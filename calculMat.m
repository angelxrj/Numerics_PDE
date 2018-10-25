
function [A]= calculMat(N)
L=@(x) 1+x; h=1/(N+1); A=zeros(N, N) ;
    for i=1:N
        x_i=(i)*h;
        if (i==1)
        A(i,i)= A(i,i)-(1/h)+(2*L(x_i)/(h^2));  
        A(i,i+1)= A(i,i+1) + 1/(h) - L(x_i)/(h^2);
        end
        if(i<=N-1 && i>=2)
        A(i,i-1)= 1*(-L(x_i)/(h^2));  
        A(i,i)= -(1/h)+(2*L(x_i)/(h^2));  
        A(i,i+1)= 1/(h) - L(x_i)/(h^2);
        else
            if (i==N)
             A(i,i-1)= 1*(-L(x_i)/(h^2));     
             A(i,i)= A(i,i)-(1/h)+(2*L(x_i)/(h^2)); 
            end
        end   
    end
end