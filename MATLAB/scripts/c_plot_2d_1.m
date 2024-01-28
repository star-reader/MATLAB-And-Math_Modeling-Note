x = 0:0.05:30;
y = sin(x);
z = cos(x);
plot(x,y, 'LineWidth',2)
xlabel('横轴标题')
ylabel('纵轴标题')
grid on
axis([0, 20, -1.5, 1.5]) % 坐标范围

plot(x,y,x,z,'LineWidth',1.4)

x = -3:0.5:3;
p = exp(-x.*x); % exp: 求e的n次幂 => 求e的x平方次幂
%y = x.*x;
bar(x,p);
barh(x,p);

theta = 0:0.01:2*pi;
% abs取绝对值或复数的模
radi = abs(sin(theta*7).*cos(theta*10));
polarplot(theta, radi); % 变量：角度、半径

x = randn(1000,1); % 生成1000行、1列的随机数矩阵（正态分布）
y = randn(1000,1);
scatter(x,y);
xlabel('横轴坐标');
ylabel('y轴坐标');