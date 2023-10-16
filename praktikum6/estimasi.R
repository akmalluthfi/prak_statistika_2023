# x adalah data pengukuran tegangan sebuah rangkaian
x <- c(10.2, 9.8, 10.1, 10.0, 9.9, 9.8, 10.3, 10.2, 10.1, 9.7)
n <- length(x)
print(x)
print(n)

# Estimasi mean populasi
mu <- sum(x) / n
print(mu)

# Estimasi variansi populasi
jum <- 0
for (i in 1:n) {
  jum <- jum + (x[i] - mu)^2
}
variansi1 <- jum / (n - 1)
print(variansi1)

# Estimasi variansi populasi menggunakan fungsi R
var(x)

# Estimasi proporsi populasi
y <- c(1, 1, 1, 0, 1, 1, 1, 1, 0, 1)
m <- length(y)
p <- sum(y) / m
print(p)

# Estimasi interval dari rata-rata, variansi diketahui
# asumsi variansi

z <- qnorm(0.975)
se <- 0.064

bb <- mu - z * se
ba <- mu + z * se
print(mu)
print(bb)
print(ba)

# Estimasi interval dari rata-rata,
# variansi tidak diketahui
# asumsi variansi = var(x)
t <- qt(0.975, n - 1)
bb <- mu - t * se
ba <- mu + t * se
print(mu)
print(bb)
print(ba)

# Estimasi interval untuk variansi
qb <- qchisq(0.975, n - 1)
qa <- qchisq(0.025, n - 1)
print(qb)
print(qa)

bb <- ((n - 1) * var(x)) / qb
ba <- ((n - 1) * var(x)) / qa
var(x)
print(bb)
print(ba)

# Estimasi interval selisi 2 mean, variansi diketahui
varpx1 <- 0.040
varpx2 <- 0.035
x1 <- c(10.2, 9.8, 10.1, 10.0, 9.9, 9.8, 10.3, 10.2, 10.1, 9.7)
x2 <- c(10.1, 10, 9.9, 9.8, 10.2, 10.3, 9.7, 9.9, 10, 10)
mu_x1 <- mean(x1)
mu_x2 <- mean(x2)
varx1 <- var(x1)
varx2 <- var(x2)
n1 <- length(x1)
n2 <- length(x2)
print(mu_x1)
print(mu_x2)
print(varx1)
print(varx2)
print(varpx1)
print(varpx2)

z <- qnorm(0.975)
d <- mu_x1 - mu_x2
bb <- (mu_x1 - mu_x2) - z * ((varpx1 / n1) + (varpx2 / n2))^0.5
ba <- (mu_x1 - mu_x2) + z * ((varpx1 / n1) + (varpx2 / n2))^0.5
print(d)
print(bb)
print(ba)

# Estimasi interval selisi 2 mean,
# variansi tidak diketahui
sp <- ((n1 - 1) * varx1 + (n2 - 1) * varx2) / (n1 + n2 - 2)
t <- qt(0.975, n1 + n2 - 2)
d <- mu_x1 - mu_x2
bb <- (mu_x1 - mu_x2) - t * sp * ((1 / n1) + (1 / n2))^0.5
ba <- (mu_x1 - mu_x2) + t * sp * ((1 / n1) + (1 / n2))^0.5
print(d)
print(bb)
print(ba)

# Estimasi interval kepercayaan perbandigan 2 variansi
ps <- varx1 / varx2
fb <- qf(0.025, n1 - 1, n2 - 1)
fa <- qf(0.975, n1 - 1, n2 - 1)
print(ps)
print(fb)
print(fa)

bb <- ps * fb
ba <- ps * fa
print(ps)
print(bb)
print(ba)

# Estimasi interval untuk proporsi
p <- 0.15
q <- (1 - p)
z <- qnorm(0.975)
bb <- p - z * (p * q / n)^0.5
ba <- p + z * (p * q / n)^0.5
print(p)
print(bb)
print(ba)

# Estimasi interval untuk selisih 2 proporsi
p1 <- 0.15
p2 <- 0.12
d <- p1 - p2
q1 <- (1 - p1)
q2 <- (1 - p2)
z <- qnorm(0.975)
bb <- d - z * ((p1 * q1 / n1) + (p2 * q2 / n2))^0.5
ba <- d + z * ((p1 * q1 / n1) + (p2 * q2 / n2))^0.5
print(d)
print(bb)
print(ba)
