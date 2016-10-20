# Homework 4

## Problem 1

$$
\begin{aligned}
P &= \binom{6}{2} (\frac{1}{6})^2(\frac{5}{6})^4 \\
  &= 0.2010 \\
\lambda &= np = 1 \\
P_2(X=2) &= \frac{1}{e \cdot 2} \\
  &= 0.1840 \\
\end{aligned}
$$

## Problem 2
X=200人中惯用左手人数
A=200人至少有4个人为左手
$$
\begin{aligned}
  P(A) &= 1 - P(X=0) - P(X=1) - P(X=2) - P(X=3) \\
  &= 1 - (1-p)^200 - C_{200}^1 \cdot (1-p)^{199}p - C_{200}^2 \cdot (1-p)^{198}p^2 - C_{200}^3 \cdot (1-p)^{197}p^3 \\
  &= 0.1420 \\
\end{aligned}
$$

Poisson近似:
$$
Y \sim P(200*0.01), 1-P(Y=0)-P(Y=1)-P(Y=2)-P(Y=3) = 1-\frac{19}{3e^2} = 0.1429 \\
$$

## Problem 3

$X \sim P(\lambda)$, $Y$为昆虫的后代个数.
$$
\begin{aligned}
  P(Y=k) &= \sum_{i=k}^{\infty} (P(X=i) \cdot C_i^k p^k(1-p)^{i-k}) \\
  &= \sum_{i=k}^{\infty} (\frac{{\lambda}^i}{i!} \cdot e^{-\lambda} \cdot \frac{i!}{(i-k)!k!} \cdot p^k (1-p)^{i-k}) \\
  &= \frac{p^k e^{-\lambda}}{k!} \sum_{i=k}^{\infty} (\frac{{\lambda}^i}{(i-k)!} \cdot (1-p)^{i-k}) \\
  &= \frac{p^k e^{-\lambda}}{k!} \sum_{j=0}^{\infty} \frac{(\lambda(1-p))^j}{j!} , \mbox{\qquad(let $j = i - k$)} \\
  &= \frac{e^{-\lambda p} (\lambda p)^k}{k!}, \mbox{\qquad (as $\lim_n^{\infty} \sum_{i=0}^n \frac{x^n}{n!} = e^x$)} \\
\end{aligned}
$$

所以$Y \sim P(\lambda p)$.

## Problem 4
1. $P(X=m)$
$$
\begin{aligned}
  P(X=m) &= \frac{C_M^mC_{N-M}^{n-m}}{C_N^n} \\
\end{aligned}
$$
其中$0 \leq m \leq max(n,M)$.

2. 估计总鱼数
$\frac{nM}{m}$

3. 为求使$P(X=m)$最大的N, 记数列$a_N=P(X=m)$
$$
\begin{aligned}
  a_N &= P(X=m) = \frac{C_M^m C_{N-M}^{n-m}}{C_N^n} \\
  \frac{a_N}{a_{N-1}} &= \frac{(N-n)(N-M)}{N(N-M-n+m)} \\
\end{aligned}
$$
let $\frac{a_N}{a_{N-1}} > 1$.
$$
\begin{aligned}
  \frac{(N-n)(N-M)}{N(N-M-n+m)} &> 1 \\
  N^2 - (n+M)N + nM &> N^2 - (M+n-m)N \\
  nM &> mN \\
  N &< \frac{nM}{m} \\
\end{aligned}
$$

即, 当$N < \frac{nM}{m}, a_N$ 单调递增, 否则单调递减, 所以在$N=\frac{nM}{m}$, $a_N$有最大值.


## Problem 5
$$
\begin{aligned}
  P_1 &= \frac{1}{3} \\
  P_2 &= \frac{1}{3} \\
\end{aligned}
$$

## Problem 6
$$
\begin{aligned}
  P &= 1 - \int_{240}^{290} \frac{1}{10\sqrt{2\pi}} e^{-\frac{1}{2} (\frac{t-270}{10})^2} \\
  &= 1 - \frac{P(\delta t < 3\sigma)}{2} - \frac{P(\delta t < 2\sigma)}{2} \\
  &= 1 - 0.5 \times 0.9545 - 0.5 \times 0.9973 \\
  &= 2.41% \\
\end{aligned}
$$

## Problem 7
$$
\begin{aligned}
  P(A) &= \frac{29}{30} = 96.67% \\
  P(B) &= \frac{28}{30} = 93.33% \\
\end{aligned}
$$

## Problem 8
$$
\begin{aligned}
  g(x) &= P(X>25000 | X>15000) \\
  &= \frac{P(X>25000)}{P(X>15000)} \\
  &= \frac{1-\int_0^{25000} F(x)dx}{1-\int_0^{15000} F(x)dx} \\
\end{aligned}
$$

若F为均值为30000的指数分布的分布函数
$\lambda = \frac{1}{30000}$
$$
g(x) = e^{-\frac{1}{3}} = 0.7165
$$

## Problem 9
hw.R:
```
  #!/usr/bin/env R
  printf <- function(...) cat(sprintf(...))

  # X ~ N(100, 100)
  x <- rnorm(1000, 100, 10)

  printf("E(X) = %f\n", mean(x))
  printf("Var(X) = %f\n", var(x))


  y <- sample(x, 500, replace = T)

  printf("E(Y) = %f\n", mean(y))
  printf("Var(Y) = %f\n", var(y))

  jpeg("x.jpg")
  hist(x)
  dev.off()

  jpeg("y.jpg")
  hist(y)
  dev.off()
```

#### output
```
E(X) = 100.272482
Var(X) = 96.417618
E(Y) = 99.823288
Var(Y) = 95.695646
```

![x.jpg](x.jpg)
![y.jpg](y.jpg)
