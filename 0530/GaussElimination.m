% 高斯消元法求解线性方程组Ax=b
function x = GaussElimination(A, b)
% Input A 系数矩阵，b 右端项
% Output x 是解

n = length(b);

for i=1:n-1
    for k=i+1:n
        for j=i+1:n
            if abs(A(i,i))<1e-6
                fprintf('主元A(%d,%d)太小，算法失败！', i, i);
                x=0;
                return;
            else
                A(k,j)=A(k,j)-A(i,j)*A(k,i)/A(i,i);
            end
        end
        b(k)=b(k)-b(i)*A(k,i)/A(i,i);
        A(k,i)=0;
    end
end


x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end
