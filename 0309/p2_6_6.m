% 2.6 6

theta = linspace(0, 2 * pi);
% a = 2
rho = 2 * theta;
subplot(1,2,1);
polar(theta, rho);


% a = 1
rho = 1 * cos(3 * theta);
subplot(1,2,2);
polar(theta, rho);