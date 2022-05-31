function [x, k] = SOR(A, b, x0, tol, w)
n=length(b);
x=zeros(n,1);
r=max(abs(b-A*x0));
k=0;
while (r>tol)&(k<500)
    for i=1:n
        sum=0;
        for j=1:n
            if j>i
                sum=sum+A(i,j)*x0(j);
            elseif j<i
                sum=sum+A(i,j)*x(j);
            end
        end
        x(i)=(1-w)*x0(i)+w*(b(i)-sum)/A(i,i);
    end
    r=max(abs(x-x0));
    x0=x;
    k=k+1;
    if k>=500
        fprintf('迭代次数达到上限')
        return;
    end
end
