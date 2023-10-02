# Menentukan mean, variansi, simpangan baku, dan peluang kumulatif
x <- c(0, 1, 2, 3)
f <- c(1 / 8, 3 / 8, 3 / 8, 1 / 8)
mu <- sum(x * f)
print(mu)

sigma2 <- sum((x - mu)^2 * f)
print(sigma2)

sigma <- sqrt(sigma2)
print(sigma)

fx <- cumsum(f)
print(fx)

# Menentukan mean, variansi, dan simpangan baku
library(distrEx)
x <- DiscreteDistribution(supp = 0:3, prob = c(1, 3, 3, 1) / 8)
print(E(x))
print(var(x))
print(sd(x))
