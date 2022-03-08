% 2.6 5
x = -2:0.05:2;
y = -2:0.05:4;
[X, Y] = meshgrid(x,y);
Z = 2 * X.^2 + Y.^2;

subplot(1,2,1);
surf(X, Y, Z)

subplot(1,2,2);
mesh(X, Y, Z)