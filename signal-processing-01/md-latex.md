# Homework1
### Alex Wang 2014011367


#### Problem 1

$$
  u(t) = \left\{ \begin{array}{rcl}
          1 & t \geqslant 0 \\
          0 & t < 0
         \end{array}\right.
$$
$$
\begin{aligned}
  f(t) * u(t) &= \int^{+\infty}_{-\infty} f(t-\tau)u(\tau)d\tau \\
  &= \int^{+\infty}_0 f(t-\tau)u(\tau)d\tau \\
  &= \int^{+\infty}_0 f(t-\tau)d\tau \\
  &= \int^{-\infty}_t -f(x)dx \\
  &= \int^t_{-\infty} f(x)dx.
\end{aligned}
$$

#### Problem 2

###### First, let's prove equation \eqref{eq:eq1}
\begin{equation} \label{eq:eq1}
  f(t) * \delta(t - \sigma) = f(t + \sigma).
\end{equation}


According to Problem 1,
we knew that $f(t) * u(t) = \int^t_{-\infty} f(x)dx$.
So

$$
  f(t) * u(t) = \int^t_{-\infty} f(x)dx \\
$$
\begin{alignat*}{1}
  \Rightarrow & \frac{d(f(t) * u(t))}{dt} = \frac{\int^t_{-\infty} f(x)dx}{dt} \\
  \Rightarrow & f(t) * \delta(t) = f(t) \\
  \Rightarrow & f(t + \sigma) * \delta(t) = f(t + \sigma) \\
  \Rightarrow & f(t) * \delta(t - \sigma) = f(t + \sigma) \\
\end{alignat*}

$$
\begin{aligned}
  f(t) &= \sum_{n=1}^{\infty} f_0(t) * \delta(t-2n) \\
  &= \sum_{n=1}^{\infty} f_0(t+2n) \\
\end{aligned}
$$

$$
  f(t + 2) = \sum_{n=1}^{\infty} f_0(t+4) = f(t)
$$

So the f(t) has a period of $2$.

![Plot of f(x)](func.png)
