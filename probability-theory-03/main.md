# Homework 3

#### Problem 1

- 记盒子的颜色为金银铜分别为事件$A_i, i=1,2,3, \sum_{i=1}^3 P(A_i) = 1, P(A_iA_j) = 0, for i \neq j$.
- 记球色为绿色为事件G

$$ 
\begin{aligned}
P(A_i | G) &= \frac{P(G|A_i) \cdot P(A_i)}{P(G)} \\
  &= \frac{P(G|A_i) \cdot P(A_i)}{\sum_j P(G|A_j) P(A_j)} \\
P(A_1 | G) &= \frac{10}{67}  \\
P(A_2 | G) &= \frac{48}{67} \\
P(A_3 | G) &= \frac{9}{57} \\
\end{aligned}
$$

#### Problem 2

- 设随机变量X为采用甲方案后患者患的病数,Y为采用乙方案后患者的病数.

$$
\begin{aligned}
P(X=0) &= P(AD_1+A^C)P(BD_2+B^C)P(CD_3+C^C) \\
  &= (0.7\times0.8 + 0.3)(0.2\times0.05+0.8)(0.1\times0.2+0.9) \\
  &= 0.86 \times 0.81 \times 0.92 \\
  &= 0.640872 \\
P(X=1) &= 0.86 \times 0.81 \times (1-0.92) + 0.86 \times (1-0.81) \times 0.92 + (1-0.86) \times 0.81 \times 0.92 \\
  &= 0.310384 \\
P(X=2) &= (1-0.86) \times (1-0.81) \times 0.92 + (1-0.86) \times 0.81 \times (1-0.92) + 0.86 \times (1-0.81) \times (1-0.92) \\
  &= 0.046616 \\
P(X=3) &= (1-0.86) \times (1-0.81) \times (1-0.92)
  &= 0.002128 \\
E(X) &= 0.310384 + 0.046616 \times 2 + 0.002128 \times 3 \\
  &= 0.41
\end{aligned}
$$
$$
\begin{aligned}
P(Y=0) &= (0.7\times0.7+0.3)(0.2\times0.4+0.8)(0.1\times0.1+0.9) \\
  &= 0.79 \times 0.88 \times 0.91 \\
  &= 0.632632 \\
P(Y=1) &= 0.79 \times 0.12 \times 0.91 + 0.79 \times 0.88 \times 0.09 + 0.21 \times 0.88 \times 0.91 \\
  &= 0.317 \\
P(Y=2) &= 0.21 \times 0.12 \times 0.91 + 0.79 \times 0.12 \times 0.09 + 0.21 \times 0.88 \times 0.09 \\
  &= 0.048096 \\
P(Y=3) &= 0.21 \times 0.12 \times 0.09 \\
  &= 0.002268 \\
E(Y) &= 0.42 \\
\end{aligned}
$$

因为$E(X) < E(Y)$, 即用方案得病数量的期望更小, 应该用甲方案.

#### Problem 3

- 记随机变量X为它答题的时间, $P(X < x) = 0.5$.

$$
P(X\geqslant1|X\geqslant0.75) = \frac{1 - P(X<1)}{1 - P(X<0.75)}=0.8
$$

#### Problem 4
1. (1)
$P(X=7 | X is odd) = \frac{P(X=7)}{P(X is odd)} = \frac{3}{11}$
2. (2)
$$ P(X=7) = \frac{1}{6} $$
记Y为反复掷色子直到X=7出现,掷的次数.
$$P(Y=y) = (1-P(X=7))^{y-1}P(X=7) = \frac{1-\frac{1}{6^{y-1}}}{6}$$
$$\lim_{y\to \infty} P(Y=y) = 1$$
与直觉相符.
3. (3)
记Z为X=7出现且X=8没出现掷的次数
$$
P(Z=n) = (1-P(X=7,8))^{n-1}P(X=7) = (\frac{25}{36})^{n-1} \frac{1}{6}
$$

#### Problem 5
$$
P(X=k) = (\frac{a}{a+b})^(k-1) \frac{b}{a+b}
$$

#### Problem 6
1. (1)证明
$$
\begin{aligned}
F(x) = P(X \leqslant x)
\end{aligned}
$$
