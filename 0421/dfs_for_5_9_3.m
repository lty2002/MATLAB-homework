% dfs_for_5_9_3.m
function [] = dfs_for_5_9_3(pos, before, distance, step, steps, target, mat)
%
if pos==target
    steps = [[1,2,3,4,5,6,7,8],
        steps]
    fprintf("\ttime: %d\n", distance);
end

for j=1:8
    if j == pos
        continue
    end
    if steps(j) ~= 0
        continue
    end
    if mat(pos,j) < Inf
        three=3;
        if pos==1||pos==3||(before==1&&j==3)||(before==3&&j==6)||(before==4&&j==8)
            three=0;
        end
        steps(j)=step+1;
        dfs_for_5_9_3(j,pos,distance+mat(pos,j)+three,steps(j),steps,target,mat);
        steps(j)=0;
    end
end
