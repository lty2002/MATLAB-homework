% s3p2.m
fprintf('----This is result of s3p2----\n');

% 节点向量、节点处的函数值
xi = linspace(-5, 5, 100);
yi = 5./ (1 + xi.^2);

p1 = polyfit(xi, yi, 1)
p2 = polyfit(xi, yi, 2)
p3 = polyfit(xi, yi, 3)