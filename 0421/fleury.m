function T = fleury(A,startp) %查找欧拉路，fleury算法，输入为邻接矩阵和起始点

[T,~] = fleury3(A,startp);
T = T';

function [T,sleds]=fleury3(A,startp)
    [m,n]=size(A);
    if m~=n     
        fprintf('there is sth wrong.\n');
        return;
    end

    temp=sum(A,1);
    tteds=sum(temp); % total nos edges 总边数
    sleds=0; %selected edges

    mtr = A;

%     startp = 1;
    eulerPath = startp;


    while sleds~=tteds  % 当sleds = tteds 时，表示所有的边已经进入到 eulerPath里面了
        
        listNp = find(mtr(startp,:)==1);  %列出与 startp 相通的点
        nosNgbr = length(listNp);         %计算 上述 点的个数
        if nosNgbr ==1,                   %没有其他选择情况下
            nextp = listNp(1);           
        else
            for i=1:length(listNp)        %依次判断是否是割边
                flag = isGeBian(mtr,startp,listNp(i));
                if flag~=1                
                    break;                %遇到第一条不是割边的边，即停止
                end
            end
            nextp = listNp(i);            %把这条边的终点记录下来
        end

        mtr(startp,nextp)=0;
        mtr(nextp,startp)=0;

        eulerPath = [eulerPath, nextp];   %把这条边的终点作为欧拉回路的下一个点
        startp = nextp;
        sleds = sleds+1;    
    end
    
    % 构建 T 矩阵，以便画图
    T = zeros(2,length(eulerPath)-1);
    for i=2:length(eulerPath)
        T(:,i-1) = [eulerPath(i-1);eulerPath(i)];
    end   
end


function flag=isGeBian(mtr,startp,nextp)
%判断 startp 与 nextp 两点之间连线是否割边

    mtr(startp, nextp) = 0;
    mtr(nextp, startp) = 0;
    
    % 通过队列，查看是否存在任意一条“其他”通道可以从startp 达到nextp 
    dui=[];
    dui=enqueue(dui,startp); 
    while ~isempty(dui)
        startp = dui(1);  %  top
        dui=pop(dui);        
        listp=find(mtr(startp,:)==1);
        if any(listp==nextp)   
            % 表示 存在 另外一条这样的通道， 所以flag =0 ,即startp 与 nextp 两点之间连线不是割边
            flag=0;
            return; 
        end
        dui=enqueue(dui,listp);
        mtr(startp,listp)=0;
    end    
    flag=1;
end

function dui=enqueue(dui,p) % 进栈
    if isempty(dui)
        dui = p;
    else
        dui = [dui,p];
    end
end
function dui=pop(dui)    % 出栈
    if length(dui)==1
        dui=[];
    else
        dui = dui(2:end);
    end
end
end
