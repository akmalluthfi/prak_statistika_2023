# Distribusi Normal Bivariate
library(mvtnorm)

x <- y <- seq(from = -3, to = 3, length.out = 30)
f <- function(x, y) {
  dmvnorm(cbind(x, y),
    mean = c(0, 0),
    sigma = diag(2)
  )
}
z <- outer(x, y, FUN = f)
png(file = "./praktikum5/plots/bivariate.png")
persp(x, y, z, theta = -30, phi = 30, ticktype = "detailed")
dev.off()

# Transformasi Bivariate dari Variabel Random
mu <- c(0, 0)
sigma <- diag(2)
f <- function(x, y) {
  dmvnorm(c(x, y), mean = mu, sigma = sigma)
}
png(file = "./praktikum5/plots/curve3d.png")
dev.off()
