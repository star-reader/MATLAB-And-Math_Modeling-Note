s = [1,1,2,2,3,3,4,4,4,5];
t = [2,3,4,5,4,7,5,6,7,6];
% 不要重复，如1-2和2-1不要重复
weights = [50,60,65,40,52,45,50,30,42,70];
G = graph(s,t,weights);
T = minspantree(G);

% 使用plot作图
p = plot(G, 'EdgeLabel',G.Edges.Weight, 'MarkerSize',8);
% 高亮图的节点和边
highlight(p,T,"EdgeColor","red", "LineWidth",3);