% 2.6 7

theta=-pi:0.01:pi;
rho=1-sin(theta);
subplot(1,2,1);
grid on;
polar(theta, rho);


t=-4:0.1:4;
[X,Y]=meshgrid(t,t);
Z=X.^2-Y.^2;
subplot(1,2,2);
grid on;
surf(X,Y,Z)