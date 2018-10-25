function errorgraph(N)
norm1=[]; norm2=[]; norminf=[];h2=[]; cte=[]; h1=[]; 
for i=1:length(N)
     h=1/(N(i)+1);
     t4=@(x)(0.5*(0.575804 + log(1 + x)))+1/(12*(1+x));
     for k=1:N(i)
     cte=[cte, t4(k*h + h/2)];
     end
     normm=norm(cte, inf);
     A=calculMat(N(i));
     inA=norm(inv(A),inf);
     h2=[h2,log10((h^(1))*inA*normm)];
     B=calculD(N(i), @(x)1);
     U=linsolve(A,B);
     theta=solexac(N(i));
     error=U-theta;
     norm1=[norm1, log10((1/N(i))*(norm(error,1)))];
     norm2=[norm2,log10((1/sqrt(N(i)))*norm(error,2))];
     norminf=[norminf, log10((norm(error,inf)))];
     h1=[h1, log10(h^1)];
end
figure 
plot(N, (norm1), 'k+');
hold on
plot(N,(norm2), '*');
hold on
plot(N,(norminf),'x');
hold on
plot(N, h2, 'ro');
hold on 
plot (N, h1, 'gv');
