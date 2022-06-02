% s1p2.m
fprintf('----This is result of s1p2----\n');

x0 = [1; 1];
A = [2 3; 1 4];
b = [6; 5];
Aeq = [];
beq = [];
vlb = [0; 0];
vub = [];
[x, fval] = fmincon('f_for_s1p2', x0, A, b, Aeq, beq, vlb, vub)