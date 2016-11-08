# Homework 6

### Problem 1
设f(t)的DTFT为$\tilde{F}(\omega)$.

$$
\begin{aligned}
  \tilde{F}(\omega) &= \frac{1}{T} \sum_{n=-\infty}^{\infty} F(\omega - n\omega_0) \\
  &= \sum_{n=-\infty}^{\infty} f(nT_s) e^{-j\omega 2\pi T_s}, T_s = \frac{2\pi}{\omega_0} \\
\end{aligned}
$$
带入$\omega = 0$得到
$$
  \sum_{n=-\infty}^{\infty} F(-n\omega_0) = T \sum_{k=-\infty}^{\infty} f(nT)
$$
即
$$
  T \sum_{k=-\infty}^{\infty} f(nT) = \sum_{n=-\infty}^{\infty} F(n\omega_0).
$$


### Problem 2
$$
\begin{aligned}
 & X(\omega) \cdot (X(\omega))^* = |X(\omega)|^2 \\
 & X(2\omega) \cdot e^{j\omega T_s} \\
 & X(\omega) \cdot (1-e^{-2j\omega T_s}) \\
 & X^2(\omega) \cdot e^{-j\omega T_s}.
\end{aligned}
$$

### Problem 3
$$
\begin{aligned}
  Y(\omega) &= \sum_{n=-\infty}^{\infty} y(n) e^{-j\omega nT_s} \\
  &= \sum_{kL=-\infty}^{\infty} y(kL) e^{-j\omega kLT_s} \\
  &= \sum_{k=-\infty}^{\infty} x(k) e^{-j(\omega k)LT_s} \\
  &= X(L\omega).
\end{aligned}
$$

### Problem 4
$x(n)$的4点DFT
$$
  \tilde{X_1}(0) = 1+2+3+4 = 10 \\
  \tilde{X_1}(1) = 1-2j-3+4j = 2j-2 \\
  \tilde{X_1}(2) = 1-2+3-4 = -2 \\
  \tilde{X_1}(3) = \tilde{X_1}(1)^* = -2j-2 \\
$$
$x(n)$的8点DFT(后面补0)
$$
\begin{aligned}
  & 10 \\
  & (1-\sqrt{2}) - (3\sqrt{2}+3)j \\
  & 2j-2 \\
  & (1+\sqrt{2}) + (3-3\sqrt{2})j \\
  & -2 \\
  & (1+\sqrt{2}) - (3-3\sqrt{2})j \\
  & -2j-2 \\
  & (1-\sqrt{2}) + (3\sqrt{2}+3)j. \\
\end{aligned}
$$

### Problem 5
设$f(t)$为该周期函数, $T$为该周期函数的周期, $T_s$为采样频率.
$$
  f(t) = \sum_{m=-M}^{M} F_m e^{j\frac{2m\pi}{T}t}
$$
因为符合采样定理, 即$\frac{1}{T_s} \geq 2\frac{M}{T}$.
, 所以在该周期内, 即$0 \leq t \leq T_s$时, 有
$$
\begin{aligned}
  \tilde{x}(k) &= \sum_{n=0}^{N-1} f(\frac{n}{N}T_s) e^{-j\frac{2\pi}{N}nk} \\
  &= \sum_{n=0}^{N-1} \sum_{m=-M}^{M} TF_m e^{j\frac{2\pi T_s}{NT}nm} e^{-j\frac{2\pi}{N}nk}  \\
  &= \sum_{n=0}^{N-1} \sum_{m=-M}^{M} TF_m e^{j\frac{2\pi}{N}n(\frac{T_s}{T}m-k)}.
\end{aligned}
$$

### Problem 6
因为
$$ e^{-j\frac{2\pi k}{N} (mN + n)} = e^{-j\frac{2\pi kn}{N}} $$
$$
\begin{aligned}
  \mbox{左边} &= \sum_{n=0}^{N-1} \sum_{m=0}^{r-1} x(mN+n) e^{-j\frac{2\pi kn}{N}} \\
  &= \sum_{n=0}^{N-1} \sum_{m=0}^{r-1} x(mN+n) e^{-j\frac{2\pi k}{N} (mN + n)} \\
  &= \sum_{l=0}^{L-1}  x(l) e^{-j\frac{2\pi k}{N} (l)}, l = mN + n \\
  &= \mbox{右边}.
\end{aligned}
$$

### Problem 7

$$
\begin{aligned}
  X(k) &= \sum_{m=0}^{\frac{N}{2} - 1} x(2m) e^{-j\frac{2\pi}{N}2mk} + \sum_{m=0}^{\frac{N}{2} - 1} x(2m+1) e^{-j\frac{2\pi}{N}(2m+1)k} \\
  &= \sum_{m=0}^{\frac{N}{2} - 1} g(m) e^{-j\frac{2\pi}{\frac{N}{2}}mk} + \sum_{m=0}^{\frac{N}{2} - 1} h(m) e^{-j\frac{2\pi}{\frac{N}{2}}mk} W_n^k \\
  &= G(k) + W_n^k \cdot H(k)
\end{aligned}
$$
