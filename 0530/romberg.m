function [I, T]=romberg(fun, a, b, n, Eps)

if nargin<5
    Eps=1e-6;
end
m=1;
h=(b-a);
err=1;
j=0;
T=zeros(4,4);
T(1,1)=h*(limit(fun,a)+limit(fun,b))/2;
while ((err>Eps) & (j<n)) | (j<4)
    j=j+1;
    h=h/2;
    s=0;
    for p=1:m
        x0=a+h*(a*p-1);
        s=s+limit(fun,x0);
    end
    T(j+1,1)=T(j,1)/2+h*s;
    m=2*m;
    for k=1:j
        T(j+1,k+1)=T(j+1,k)+(T(j+1,k)-T(j,k))/(4^k-1);
    end
    err=abs(T(j,j)-T(j+1,k+1));
end
I=T(j+1,j+1);
if nargout==1
    T=[];
end
