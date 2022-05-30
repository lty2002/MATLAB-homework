function y = lagrange(xi,yi,x)
%函数功能：拉格朗日插值法的MATLAB实现
%参数说明：xi，节点向量；yi，节点处的函数值
%        x，插值点；y，计算出的插值
m = length(xi);
n = length(yi);
p = length(x);

if m~=n 
    error('数据输入有误，请重新输入！');
end
s = 0;
for k = 1:n
    t = ones(1,p);
    for j = 1:n
        if j~=k
            t = t.*(x-xi(j))/(xi(k)-xi(j));
        end
    end
    s = s+t*yi(k);
end
y=s;
