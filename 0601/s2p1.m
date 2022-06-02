% s2p1.m
fprintf('----This is result of s2p1----\n');

dsolve('Dy=1+y^2')

dsolve('Dy=1+y^2', 'y(0)=1')