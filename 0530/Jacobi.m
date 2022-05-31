function [x, k]=Jacobi(A, b, x0, wc)
n=length(b);
k=0;
x=x0;
while max(abs(b-A*x0))>wc&k<=500
    for i=1:n
        sum=0;
        for j=1:n
            if j~=i
                sum=sum+A(i,j)*x0(j);
            end
        end
        x(i)=(b(i)-sum)/A(i,i);
    end
    x0=x;
    k=k+1;
    if k>500
        fprintf('迭代次数达到上限')
        return;
    end
end
