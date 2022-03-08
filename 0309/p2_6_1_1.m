% 2.6 1(1)
a = [6 4 5 2 1 2 200 0 -2 9]
for i=1:length(a)
    for j=1:length(a)-i
       if a(j) >= a(j+1)
            t=a(j);
            a(j)=a(j+1);
            a(j+1)=t;
       end
    end
end
a