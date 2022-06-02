% s1p1.m
fprintf('----This is result of s1p1----\n');

f = [12 9 10 11 12 8];
A = [0.4 1.1 1 0 0 0
    0 0 0 0.5 1.2 1.3];
b = [800; 900];
Aeq = [1 0 0 1 0 0
    0 1 0 0 1 0
    0 0 1 0 0 1];
beq = [400; 600; 500];
vlb = zeros(6, 1);
vub = [];
[x, fval] = linprog(f, A, b, Aeq, beq, vlb, vub)