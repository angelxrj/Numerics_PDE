function A=coef(N)
h=1/(N+1);M=N^2; 
A=zeros(M, M);  
    for i=N:N:M
        if (i==N)
         for j=1:N
            if (j==1) 
               A(j,j)=A(j,j)+ 4;  
               A(j,j+1)=A(j,j+1) -1;
            end
            if (j<=N-1 && j>=2)
             A(j,j-1)=A(j,j-1) -1;  
             A(j,j)= A(j,j)+4;  
             A(j,j+1)= A(j,j+1)-1;
            else
                if (j==N)
                A(j,j-1)=A(j,j-1)-1;
                A(j,j)=A(j,j)+4;
                end 
            end   
         end
         for j=N+1:2*N
                for k=1:N
                    if(j-k==N)
                        A(k,j)=A(k,j)-1;
                    end
                end
         end 
        end
        if(i<=M-N && i>=2*N)
         for l=1:N-2 
           for j=(l+1)*N-N+1:(l+1)*N
             if (j==((l+1)*N)-N+1) 
               A(j,j)= 4;  
               A(j,j+1)= -1;
             end
             if (j<=(l+1)*N-1 && j>=(l+1)*N-N+2)
             A(j,j-1)= -1;  
             A(j,j)= 4;  
             A(j,j+1)= -1;
             else
                if (j==(l+1)*N)
                A(j,j-1)=-1;
                A(j,j)=4;
                end 
             end   
           end
           for j=l*N-N+1:l*N
                for k=(l+1)*N-N+1:(l+1)*N
                    if(abs(j-k)==N)
                        A(k,j)=-1;
                    end
                end
           end
           for j=(l+2)*N-N+1:(l+2)*N
             for k=(l+1)*N-N+1:(l+1)*N
                if(abs(j-k)==N)
                  A(k,j)=-1;
                end
             end
           end 
         end     
        else
            if (i==M)
             for j=M-N+1:M
             if (j==M-N+1) 
               A(j,j)= 4;  
               A(j,j+1)=-1;
             end
             if (j<=M-1 && j>=M-N+2)
             A(j,j-1)= -1;  
             A(j,j)= 4;  
             A(j,j+1)=-1;
             else
                if (j==M)
                A(j,j-1)=-1;
                A(j,j)=4;
                end  
             end   
             end
             for j=M-(2*N)+1:M-N
             for k=M-N+1:M
                    if(abs(j-k)==N)
                        A(k,j)=-1;
                    end
             end
             end
             end
            end
    end  
   A=(1/(h^2))*A;    
end