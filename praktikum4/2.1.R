f <- function(x) 3 * x^2
integrate(f, lower = 0.14, upper = 0.71)

library(distr)
f <- function(x) 3 * x^2
x <- AbscontDistribution(d = f, low1 = 0, up1 = 1)
p(x)(0.71) - p(x)(0.14)

library(distrEx)
E(x)
var(x)
3 / 8

# Membuat kurva fungsi kepadatan peluang
png(file = "./praktikum4/plots/kurvaPDF.png")
x <- seq(0, 5, 0.1)
y <- 3 / 125 * x^2
plot(x, y)
dev.off()

png(file = "./praktikum4/plots/kurvaPDF2.png")
x1 <- c(0, x, 5)
y1 <- c(0, y, 0)
plot(x1, y1)
polygon(x1, y1, col = "blue")
dev.off()
