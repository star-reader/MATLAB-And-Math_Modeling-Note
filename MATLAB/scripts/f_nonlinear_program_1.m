addpath('..\functions\f\'); % 添加函数路径
[x, xVal] = fmincon('target',[10;5;5],[],[],[],[],[0;0;0],[],'condition');
disp(x);
disp(xVal);