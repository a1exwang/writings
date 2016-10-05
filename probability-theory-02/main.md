## Homework 2

#### Problem 1

First, let us prove

\begin{equation} \label{eq1}
P(A+B) = P(A) + P(B) - P(AB)
\end{equation}


Proof.
$$
\begin{aligned}
A &= A\Omega  \\
  &= A(B+B^C) \\
  &= AB+AB^C \\
\end{aligned}
$$
and $$AB \cdot AB^C = \phi.$$ 
Hence
$$
\begin{aligned}
P(A) &= P(AB) + P(AB^C) \\
P(B) &= P(BA) + P(BA^C) \\
P(A) + P(B) - P(AB) &= P(AB) + P(AB^C) + P(BA^C) \\
\end{aligned}
$$
Also 
$$AB \cdot AB^C = AB \cdot BA^C = AB^C \cdot BA^C = \phi,$$
and 
$$AB+AB^C+BA^C = A+BA^C=A+B$$

Hence
$$P(A) + P(B) - P(AB) = P(A + B).$$

With equation (\ref{eq1}), we have
$$
\begin{aligned}
P(A + B + C) &= P((A+B) + C)  \\
  &= P(A+B) + P(C) - P(AC+BC) \\
  &= P(A) + P(B) - P(AB) + P(C) - (P(AC) + P(BC) - P(ABC)) \\ 
  &= P(A) + P(B) + P(C) - P(AB) - P(BC) - P(AC) + P(ABC). \\
\end{aligned}
$$

#### Problem 2

1. False.
  - if $A=B$ and $A\neq\Omega$, $P(A|B) = 1$, $P(A) < 1 < P(A|B)$

2. False.
  - $\Omega$ 投一次色子的点数, A为点数为${1,2,3}$, B为点数${2,3,4}$
  - $P(AB) = \frac{1}{3} \neq P(A)P(B) = \frac{1}{4}$
  - $P(A+B) = \frac{2}{3} \neq P(A)+P(B) = 1$

3. False
  - 如果 $C=\phi$, $A,B$取不独立的事件,上式成立但$A,B,C$不独立.

#### Problem 3

Proof. \newline
记重复该实验n次后事件A发生为事件B,
实验n次后至少发生了一次为事件C
$$
\begin{aligned}
P(B,n) &= (1-\epsilon)^{n-1}\epsilon \\
P(C,n) &= \sum^{k=1}_{n} P(B,k) \\
  &= (1-\epsilon) (1-(1-\epsilon)^{n+1}) \\
\lim_{n\to\infty} P(C, n) &= \lim_{n\to\infty} ((1-\epsilon) (1-(1-\epsilon)^{n+1})) \\
  &= 1
\end{aligned}
$$
#### Problem 4

记A为随机取一张, 上面为红色.
记B为随机去一张, 下面为黑色.
所求为$P(B|A)$

$$P(AB) = \frac{1}{3}$$
$$P(A) = \frac{2}{3}$$
$$P(B|A) = \frac{P(AB)}{P(A)} = \frac{1}{2}.$$

#### Problem 5
如果抓阄顺序是随机的那么公平.

#### Problem 6
设A为每部电梯至少有一个乘客
$$P(A^C)=\frac{3+3 \times 2^5}{3^5}$$
$$P(A)=1-P(A^C) = \frac{16}{27}.$$

#### Problem 7

记事件(1)为$A(m)$,(2)为$B(m)$, 
记$A_1(m)$到某次用完左边盒时,右边恰好有m支火柴, \newline
记$A_2(m)$到某次用完右边盒时,左边恰好有m支火柴,

类似的记$B_1(m), B_2(m)$.

当$m \neq 0$时
$$A = A_1(m) + A_2(m)$$
$$B = B_1(m) + B_2(m)$$
$$P(A_1(m)) = P(B_1(m))(1-p)$$
$$P(A_2(m)) = P(B_2(m)p$$

$$P(B_1(m)) = C_{2n-m}^n (1-p)^n p^{n-m}$$
$$P(B_2(m)) = C_{2n-m}^n (1-p)^{n-m} p^{n}$$
$$P(A_1(m)) = C_{2n-m}^n (1-p)^{n+1} p^{n-m}$$
$$P(A_2(m)) = C_{2n-m}^n (1-p)^{n-m} p^{n+1}$$
$$P(A(m)) = C_{2n-m}^n ((1-p)^{n-m} p^{n+1} + (1-p)^{n+1} p^{n-m})$$
$$P(B(m)) = C_{2n-m}^n ((1-p)^{n-m} p^{n} + (1-p)^{n} p^{n-m})$$

$$
\begin{aligned}
  f(m) &= \frac{P(A(m))}{P(B(m))} \\
  &= \frac{(1-p)^{n-m}p^{n+1} + (1-p)^{n+1} p^{n-m}}{(1-p)^{n-m} p^n + (1-p)^n p^{n-m}} \\
  &= \frac{(1-p)^{-m}p+(1-p)p^{-m}}{(1-p)^{-m} + p^{-m}} \\
  &= \frac{p + (\frac{1-p}{p})^m (1-p)}{1+(\frac{1-p}{p})^m} \\
\end{aligned}
$$
假设$P(A(m)) = P(B(m))$, 即$f(m) = 1$.
$$
\begin{aligned}
  p + \frac{1-p}{p}^m(1-p) &= 1 + \frac{1-p}{p}^m \\
  \frac{1-p}{p}^m &= 1 \\
  p &= \frac{1}{2} \\
\end{aligned}
$$
与条件矛盾, 故$P(A(m)) \neq P(B(m))$, 他们的值已经在上面给出.

当$m=0$时,
...
...


#### Problem 9
若$b >= 2$,
$$
\begin{aligned}
B_2 &= B_2(B_1+B_1^C) \\
   &= B_2B_1 + B_2B_1^C \\
P(B_2) &= P(B_2B_1 + B_2B_1^C) \\
  &= P(B_2B_1) + P(B_2B_1^C) \\
  &= P(B_2|B_1)P(B_1) + P(B_2|B_1^C)P(B_1^C) \\
  &= (\frac{a/(a+b)})^2 + \frac{b}{a+b} \cdot \frac{a+1}{a+b} \\
  &= \frac{a^2+ab+1}{(a+b)^2} .
\end{aligned}
$$
同理
$$
\begin{aligned}
P(B_3) &= P(B_3 | B_1 B_2)P(B_1 B_2) + \\
          &\qquad P(B_3 | B_1^C B_2)P(B_1^CB_2) + \\
          &\qquad P(B_3 | B_1^C B_2^C)P(B_1^CB_2^C) + \\
          &\qquad P(B_3 |B_1 B_2^C)P(B_1B_2^C) \\
      &= (\frac{a}{a+b})^3 + \frac{a+1}{a+b}(\frac{b(a+1)+ab}{(a+b)^2}) + \frac{a+2}{a+b} \cdot \frac{a(a+1)}{(a+b)^2}
\end{aligned}
$$

$$
\begin{aligned}
P(B_3|B_2) &= \frac{P(B_3B_2)}{P(B_2)} \\
  &= \frac{P(B_3 B_2(B_1+B_1^C))}{P(B_2)} \\
  &= \frac{P(B_3 B_2 B_1) + P(B_3B_2B_1^C)}{P(B_2)} \\
  &= \frac{P(B_3 | B_2 B_1)P(B_2 B_1) + P(B_3 |B_2 B_1^C)P(B_2B_1^C)}{P(B_2)} \\
  &= (\frac{a}{a+b})^3+(\frac{(a+1)^2 b}{(a+b)^3}) \cdot \frac{(a+b)^2}{a^2+ab+1} \\
  &= \frac{a^3+a^2b+ab+1}{(a+b)(a^2+ab+1)} 
\end{aligned}
$$

#### Problem 10.1

记A=随机抽一人为男人,
记B=随机抽一人为色盲.
$$
P(A) = 0.51, P(B|A) = 0.02, P(B|A^C) = 0.0025
$$
所求为$P(A|B)$.
$$
\begin{aligned}
P(A|B) &= \frac{P(AB)}{P(B)} \\
  &= \frac{P(B|A)P(A)}{P(BA) + P(BA^C)} \\
  &= \frac{0.02 \times 0.51}{0.02 \times 0.51 + P(B|A^C)P(A^C)} \\
  &\approx 89.3%.
\end{aligned}
$$

#### Problem 10.2
记A(n)为掷铜板n次出现正面, B(n)为在n的盒子中抽出一个球,抽到白球.
C为甲胜.
$$P(A(n)) = \frac{1}{2}^n$$
$$P(B(n)) = \frac{1}{n+1}$$
$$
\begin{aligned}
C &= A(1)B(1) + A(2)B(2) + ... + A(n)B(n) + ... \\
  &= \sum_{n=1}^{\infty} A(n)B(n) \\
  &= \sum_{n=1}^{\infty} \frac{1}{2}^n \cdot \frac{1}{1+n}\\
  &\leq \sum_{n=1}^{\infty} (\frac{1}{2})^n \cdot \frac{1}{2} \\
  &= \frac{1}{2}.
\end{aligned}
对乙有利.
$$
