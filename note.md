## 数据

### 获取数据

[国家数据 (stats.gov.cn)](https://data.stats.gov.cn/)

### 数据预处理

#### 缺失值

有些数据是null或空

缺失太多（e.g. 40%），把该指标直接删除

##### 最简单处理

最简单处理：均值、众数插补   =>   适用于**基数大、对个体精度要求不大**

![1](.\img\1.png)

##### Newton插值法

Newton插值法  => **追求函数值精准，而不关心变化**

![2](.\img\2.png)

##### 样条插值法

样条插值法  =>  **精度要求高、没有突变的数据**

![3](.\img\3.png)



#### 异常值

明显和其他数据差异很大

##### 正态分布3σ原则

![4](.\img\4.png)

##### 箱型图

![5](.\img\5.png)

找到异常后，按**缺失值**来处理

## 建模全过程

![6](.\img\6.png)

![7](.\img\7.png)

![8](.\img\8.png)

## 公式编辑

![9](.\img\9.png)

![10](.\img\10.png)

#### 三线表

1、表格第一行的上下设置横线，最后一行的下端设置横线 :
2、表的标题写在表的上方，且带有序号
3、写表的标题时，采用“插入题注”，表的序号会自动更新

![11](.\img\11.png)

#### 图表

![12](.\img\12.png)

# Matlab

**以下内容均在Matlab软件中完成**

- 引号、字符串、字符
- 矩阵运算
- 2D的四种图
- 3D图和子图
- Matlab导入数据+练习
- 数据预处理（缺失值和异常值）



# 算法

### 线性规划Linear program

**有限的条件下，获得最大的收益**

整数规划、零一规划

需要目标函数、约束条件均为**一次方**

**适用**：怎么安排？最大？最多？尽量多？

![14](.\img\14.png)

![15](F:\Learn_AI\Math_Modeling\img\15.png)

![16](.\img\16.png)

### 非线性规划 Nonlinear program

至少有一个变量不是一次方，使用fmincon函数

线性的可以直接写，非线性的需要单独写函数文件

**适用**：怎么安排？最大？最多？尽量多？收益**率**？**角度**？影院最佳视角？飞机飞行方向角幅度尽量小？有三角函数的？

![17](.\img\17.png)

### 多目标规划 multiobjective program

既要xxx，又要xxx

衡量每个目标完成情况、主观区分每个目标的重要性、使得整体完成情况尽量好

![18](.\img\18.png)

**目标：使负偏差越小越好**

![19](.\img\19.png)

![20](.\img\20.png)

![21](.\img\21.png)

最上面：目标函数，约束条件：绝对约束是必须满足的；目标约束是尽量满足的，均处理变成**等式**，根据符号的方向确定目标函数是d+还是d-

使用Matlab的fgoalattain函数求解，函数调用与非线性规划的一致

### 最短路径 shortest path

![22](.\img\22.png)

可以使用Dijkstra算法，Matlab中使用graphshortestpath函数

### 最小生成树 Minimum Spanning Tree

连同所有顶点，且总路径最小

最小生成树**可能不唯一**



![23](.\img\23.png)

![24](.\img\24.png)

![25](.\img\25.png)

### 灰色预测模型 grey prediction model

![26](.\img\26.png)

![27](.\img\27.png)

![28](.\img\28.png)

![29](.\img\29.png)

![30](.\img\30.png)

![31](.\img\31.png)

Matlab代码实现

### TOPSIS

![32](.\img\32.png)

![33](.\img\33.png)

适用：

- 提供了足够的评价指标和数据
- 数据已知，评论指标差异比较大

可以充分利用原始数据，避免主观性造成的复杂影响，无需数据检验
