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
