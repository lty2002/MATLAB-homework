% 2.6 1(2)
a = [1 2 3 4 5;
    3 6 4 11 12;
    2 22 99 77 4;
    4 11 44 55 66]

max = a(1,1);
for i=1:4
    for j=1:5
        if a(i,j) >= max
            max = a(i,j);
        end
    end 
end
max