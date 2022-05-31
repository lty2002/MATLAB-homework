A = [3 1 6;2 1 3;1 0 1];
b = [2 7 3];

% 高斯消去法
x = GaussElimination(A, b)

% 列主元消去法
x = gauss_pivot(A, b)

% MATLAB自带方法
x = (A\b')'
