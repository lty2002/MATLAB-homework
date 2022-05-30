% p3.m

i = input('i = ');
years = 0;
money = 10000;
while money < 20000
    years = years + 1;
    money = money * (1 + i);
end
years, money