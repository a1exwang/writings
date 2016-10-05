# Homework 2

#### Problem 1

$$
\begin{aligned}
f(t) &= sin(t)cos(2t) + 5cos(3t)sin(4t) \\
  &= \frac{1}{4i} \cdot ((e^{jt}-e^{-jt})(e^{2jt}+e^{-2jt}) + 5(e^{3jt}+e^{-3jt})(e^{4jt} - e^{-4jt})) \\
  &= \frac{-i}{4} (-5e^{-7it}-e^{-3it}-4e^{it}+4e^{it}+e^{3it}+5e^{7it}) \\
\end{aligned}
$$

$$
F_{-7} = \frac{5i}{4}, \\
F_{-3} = \frac{i}{4}, \\
F_{-1} = i, \\
F_1 = -i, \\
F_3 = -\frac{i}{4}, \\
F_7 = -\frac{5i}{4}. \\
$$

Hence
$$ f(t) = 2sin(t) + \frac{1}{2} sin(3t) + \frac{5}{2} sin(7t)$$

#### Problem 2

$$
\begin{aligned}
F(\omega) &= \int_{0}^{\tau} t e^{-j\omega t} dt
  + \int_{\tau}^{2\tau} \tau e^{-j\omega t} dt \\
  &= \frac{e^{-j\omega\tau}}{-j\omega} \tau - \frac{e^{-j\omega\tau}-1}{\omega^2} + \frac{j\tau}{\omega} (e^{-2j\omega\tau} - e^{-j\omega\tau}) \\
  &= \frac{1 - e^{j\omega\tau} + j\omega\tau e^{-2j\omega\tau}}{\omega^2} 
\end{aligned}
$$
