%列选主元的高斯消去法
function [x]=gauss_pivot(A,b)
%Inpiut A是系数矩阵,b是右端项
%0utput x是解

n=length(b);
%消元过程
for i=1:n-1
    max=abs (A(i,i));
    m=i;
    for j=i+1:n
        if max<abs (A(i,j))
            max=abs (A(i, j));
            m=i;
        end
    end
    if m~=i
        for k=1:n
            c(k) =A(i,k) ;
            A(i, k) =A (m, k) ;
            A (m, k) =c(k);
        end
        t=b(i);
        b(i) =b(m) ;
        b (m) =t;
    end
    for k=i+1:n
        for j=i+1:n
            A(k, j) =A(k, j) -A(i, j)*A(k,i) /A(i,i) ;
        end
        b(k) =b (k)-b (i)*A(k,i)/A(i,i);
        A(k, i) =0;
    end
end

%回代过程
    x (n) =b (n) / A(n,n);
for i=n-1:-1:1
    sum = 0;
    for j=i+1:n
        sum=sum+A (i, j) *x(j);
    end
    x(i) = (b (i) -sum) /A(i,i);
end