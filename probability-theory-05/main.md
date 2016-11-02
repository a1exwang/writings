# Homework 5

1. X为连续型随机变量
$$
\begin{aligned}
F(x) &= \int_{-\infty}^{x} f(t) dt \\
G(y) &= \int_{-\infty}^{x} h(t) dt \\
  &= P(Y < y) = P(g(X) < y) \\
  &= P(X < g^{-1}(y) \\
  &= F(g^{-1}(y)) \\
G'(y) &= h(y) \\
  &= f(g^{-1}(y)) \cdot \frac{1}{g'(g^{-1}(y))}
\end{aligned}
$$

2. $X\sim U(0,1)$

设$g(y)$是Y的pdf.
$$
\begin{aligned}
P(X < x) &= \int_{-\infty}^{x} f(t) dt = x \\
  &= P(Y > \frac{1}{x}) = 1-P(Y < \frac{1}{x}) \\
P(Y<y) &= 1 - \frac{1}{y} \\
g(y) &= 1 + \frac{1}{y^2} \\
\end{aligned}
$$

设$h(X) = Z, Z \sim Exponential(\lambda)$,不妨设h为单调函数
$$
\begin{aligned}
  P(Z < z) &= P(X < h^{-1}(z)) \\
  &= F(h^{-1}(z)) \\
1 - e^{-\lambda z} &= h^{-1}(z) \\
  h(z) &= -\frac{ln(1-x)}{\lambda}, x \in [0,1) \\
\end{aligned}
$$
端点的值不影响随机变量的分布函数, 故可以规定$X \in [0,1)$.

3. 

4. 随机变量X, Y
设cdf为f(x,y),
$$
\begin{aligned}
  \int_{a}^{b} \int_{c}^d f(x,y) dydx \\
  &= \int_{-\infty}^{b} \int_c^d f(x,y) dydx - \int_{-\infty}^a \int_c^d f(x,y) dydx \\
  &= \int_{-\infty}^b (\int_{-\infty}^d f(x,y)dydx) - (\int_{-\infty}^a (\int_{-\infty}^c f(x,y)dydx)) \\
  &= (F(b,d) - F(b,c)) - (F(a,d) - F(a,c)) \\
  &= F(b,d) - F(a,d) - F(b,c) + F(a,c).\\
\end{aligned}
$$

5. 随机从原点为圆心单位圆内取一点,
设f(x,y)为pdf,
$$
\begin{aligned}
  f(x,y) &= \frac{1}{\pi} \\
  F_y(x) &= \int_{-\infty}^{+\infty} f(x,y) dy \\
  &= 2\sqrt{1-x^2} \\
  F_x(y) &= \int_{-\infty}^{+\infty} f(x,y) dx \\
  &= 2\sqrt{1-y^2} \\
  P(R \leq r) &= P(x^2 + y^2 \leq r^2) \frac{1}{\pi} \\
  &= \iint_{x^2+y^2\leq r^2} f(x,y) dxdy \frac{1}{\pi} \\
  &= \frac{\iint_{x^2+y^2\leq r^2} dS}{\pi} \\
  &= r^2 \\
  E(R) &= \int_0^R r^2 \cdot r dr \\
  &= \frac{R^4}{4} \\
\end{aligned}
$$

6. 二元正态分布编辑密度的计算
$$
\begin{aligned}
  1
\end{aligned}
$$

7. $logY \sim N(a,\sigma^2)$
$$
\begin{aligned}
  P(logY < y) &= P(Y < e^y) \\
  &= F(y) \\
  P(Y < x) &= F(lnx) \\
  f(x) &= \frac{g(lnx)}{x} \\
  &= \frac{1}{x\sqrt{2\pi}\sigma} e^{\frac{(lnx-a)^2}{2\sigma^2}}
\end{aligned}
$$

8. 密度函数
$$
\begin{aligned}
  \iint{x^2+y^2 \leq 1} \frac{c}{1+x^2+y^2} dS  &= 1\\
  &= \iint{r^2 \leq 1} \frac{1}{1+r^2} rdrd\theta \\
  &= \pi ln2 c\\
  c = \frac{1}{\pi ln2} \\
\end{aligned}
$$

$$
\begin{aligned}
  f_y(x) &= tan(\sqrt(\frac{1-x^2}{1+x^2} \frac{c}{1+x^2})) \frac{2}{\pi ln2 (1+x^2)} \\
\end{aligned}
$$
f_x(y) 同理. 所以X,Y不独立

9. 

