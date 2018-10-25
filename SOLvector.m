function [B]=SOLvector(N) 
g=@(x)(x-(x^2));  B=[]; h=1/(N+1); M=N^2;

    for j=1:N
           if (j==1) 
           B=[B; 0];
            end
           if(j>1 && j<=N-1)
               B=[B;0];
           else
               if(j==N)
                  B=[B; g(h)*(1/(h^2))];
               end   
           end   
    end
    l=2;
         for i=2*N:N:M-N
         if(l>N+1)
         end    
         for j=(l*N)-N+1:l*N
            if (j==(l*N)-N+1)
            B=[B; 0];
            end
            if (j>=(l*N)-N+2 && j<=(l*N)-1)
            B=[B;0];
            else
                if(j==l*N)
                   x=(j/N)*h; 
                   B=[B; g(x)/(h^2)]; 
                end    
            end
         end 
         l=l+1;
         end 
    for j=M-N+1:M
           if (j==M-N+1) 
           B=[B; 0];
           end
           if(j>=M-N+2 && j<=M-1)
               B=[B;0];
           else
               if(j==M)
                  B=[B; g(N*h)*(1/(h^2))];
               end   
           end
    end

end
