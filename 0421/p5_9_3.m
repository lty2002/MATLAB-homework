% 5.9 3

a =[0 1 Inf Inf Inf Inf Inf Inf
    1 0 3 2 Inf Inf Inf Inf
    Inf 3 0 Inf 1 Inf Inf Inf
    Inf 2 Inf 0 Inf Inf 2 Inf
    Inf Inf 1 Inf 0 6 2 Inf
    Inf Inf Inf Inf 6 0 Inf 3
    Inf Inf Inf 2 2 Inf 0 4
    Inf Inf Inf Inf Inf 3 4 0];

book=[1,0,0,0,0,0,0,0];
dfs_for_5_9_3(1,1,0,book(1),book,8,a);
