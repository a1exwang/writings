# Homework 5

#### Problem 1
##### (a)
$$
\begin{aligned}
  F(\omega) &= \int_{-\infty}^{+\infty} e^{\frac{-t^2}{2}} e^{-j\omega t} dt \\
  &= \int_{-\infty}^{\infty} \sqrt{2} e^{-(\frac{t}{\sqrt{2}} + \frac{j\omega}{\sqrt{2}})^2 - \frac{\omega^2}{2}} d(\frac{t}{\sqrt{2}}) \\
  &= \sqrt{4\pi} e^{-\frac{\omega^2}{2}}
\end{aligned}
$$

##### (b)

$$
\begin{aligned}
  f_s(t) &= f(t) \cdot p(t) \\
  F(f_s(t)) &= F(f) * F(p)  \\
  = & (\sqrt{4\pi}e^{-\frac{\omega^2}{2}}) *
     (e^{-j\omega} + e^{-2j\omega} + e^{-3j\omega}) \\
  = & \sqrt{8\pi} e^{-j\omega} \int_{-\infty}^{+\infty}
      e^{-(\frac{t-j}{\sqrt{2}})^2-\frac{1}{2}} d(\frac{t}{\sqrt{2}}) +  \\
    & \sqrt{8\pi}e^{-2j\omega} \int_{-\infty}^{+\infty}
      e^{-(\frac{t-2j}{\sqrt{2}})^2-2} d(\frac{t}{\sqrt{2}}) + \\
    & \sqrt{8\pi}e^{-3j\omega} \int_{-\infty}^{+\infty}
      e^{-(\frac{t-3j}{\sqrt{2}})^2-\frac{9}{2}} d(\frac{t}{\sqrt{2}}) \\
  = & 4\pi(e^{-j\omega-\frac{1}{2}} + e^{-2j\omega - 2} + e^{-3j\omega - \frac{9}{2}})
\end{aligned}
$$

##### (c)

![$f(t), f_s(t)$](1.png)

#### Problem 2

##### (a)
$$
\begin{aligned}
  IFT(P(\omega)) = & \sqrt{2\pi} \int_{-\infty}^{+\infty}
  e^{-\frac{\omega^2}{2}}(\delta(\omega-2\pi) +\delta(\omega-4\pi) \delta(\omega-6\pi)) e^{j\omega t} d\omega \\
  = & \sqrt{2\pi} \int_{-\infty}^{+\infty}
  (e^{-\frac{(2\pi)^2}{2} + 2jt\pi}\delta(\omega-2\pi) +
  e^{-\frac{(4\pi)^2}{2} + 4jt\pi}\delta(\omega-4\pi) \\
  & + e^{-\frac{(6\pi)^2}{2} + 6jt\pi}\delta(\omega-6\pi)) d\omega \\
  = & 2\pi (e^{-\frac{(2\pi)^2}{2} + 2jt\pi} +
  e^{-\frac{(4\pi)^2}{2} + 4jt\pi} + e^{-\frac{(6\pi)^2}{2} + 6jt\pi})
\end{aligned}
$$

##### (b)

![$f(t)$](2.png)
