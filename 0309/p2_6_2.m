% 2.6 2
x = linspace(-1, 2, 500);
y = cos(tan(pi * x));

subplot(1,2,1);
plot(x, y)

subplot(1,2,2);
fplot('f2_6_2', [0.3, 0.7])