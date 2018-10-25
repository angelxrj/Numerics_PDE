function [U0]=ind(l1,l2,N)%N is the number of partitions in x, l2 is the lower limit
%l2 is the upper limit of Indicator function
U0=zeros(N,1);h=0.5;
for i=1:N
    x_i=i*h;
    if (x_i>=l1 && l2>=x_i)
        U0(i,1)=2;
    end
end
end