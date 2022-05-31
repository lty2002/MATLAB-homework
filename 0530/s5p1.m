A = [-4 1 1 1; 1 -4 1 1 ; 1 1 -4 1; 1 1 1 -4];
b = [1 1 1 1]';
x0 = [0 0 0 0]';

% Jacobi
[x, k] = Jacobi(A, b, x0, 1e-3)

% SOR
[x, k] = SOR(A, b, x0, 1e-3, 0.7)
[x, k] = SOR(A, b, x0, 1e-3, 1)
[x, k] = SOR(A, b, x0, 1e-3, 1.3)
