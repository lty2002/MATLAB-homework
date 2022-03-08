% 2.6 1(4)
h = 100;
s = 0;
for i=1:10
    s = s + h;
	h = h / 2;
    fprintf("第%d次落地：s = %.3fm\n", i, s);
	fprintf("第%d次反弹：h = %.3fm\n", i, h);
    s = s + h;
end