n = [5, 10, 100];

% 节点向量、节点处的函数值
xi = linspace(-5, 5, n(3));
yi = 5./ (1 + xi.^2);

% 插值点
x = linspace(-5, 5, 100);

% 原函数
y0 = 5./ (1 + x.^2);

% lagrange插值
y1 = lagrange(xi, yi, x);

% 作图
plot(x, y0, 'm', x, y1, 'c');