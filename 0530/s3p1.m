syms xx;
yy = sqrt(1+xx^2);
z0 = simplify(int(yy, xx, 0, 1))
z = double(z0);
z = vpa(z, 8)

x = 0:0.01:1;
y = sqrt(1 + x.^2);

z1 = trapz(y)*0.01;
z1 = vpa(z1,8)
err1 = z-z1;
err1 = vpa(err1,8)

z2 = quad('sqrt(1+x.^2)', 0, 1);
z2 = vpa(z2,8)
err2 = z-z2;
err2 = vpa(err2,8)

%    z0 =
%
%    log(2^(1/2) + 1)/2 + 2^(1/2)/2
%
%
%    z =
%
%    1.1477936
%
%
%    z1 =
%
%    1.1477995
%
%
%    err1 =
%
%    -0.0000058925639
%
%
%    z2 =
%
%    1.1477935
%
%
%    err2 =
%
%    0.000000038565491
