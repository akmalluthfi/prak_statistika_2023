# Prob. Data Hipergeometrik: N=250,D=17,n=5,x=3
dhyper(3, m = 17, n = 233, k = 5)

# Prob. Data Hipergeometrik: N=250,D=17,n=5,x=0,1,2,3,4
a <- data.frame(Pr = dhyper(0:4, m = 17, n = 233, k = 5))
rownames(a) <- 0:4
print(a)

# Prob. Data Hipergeometrik: N=233,D=17,n=5,x=5
dhyper(5, m = 17, n = 233, k = 5)

# P(X ≤ 2) = P(X = 0, 1, 2)
phyper(2, m = 17, n = 233, k = 5)

# P(X>1) = 1 - P(X ≤ 1) = 1 – {P(x = 0) + P(x = 1)}
phyper(1, m = 17, n = 233, k = 5, lower.tail = FALSE)

x <- seq(0, 7, by = 1)
# Create the hypergeometric distribution.
py <- dhyper(x, m = 30, n = 200, k = 7)
# Give the chart file a name.
png(file = "./praktikum4/plots/dhyper.png")
# Plot the graph for this sample.
plot(x, py,
  type = "h", main = "Distribusi Hypergeometrik",
  xlab = "m = 30, n = 200, k = 7", col = "blue"
)
# Save the file.
dev.off()

x <- seq(0, 7, by = 1)
# Create the hypergeometric distribution.
py <- phyper(x, m = 30, n = 200, k = 7)
# Give the chart file a name.
png(file = "./praktikum4/plots/p_hyper.png")
# Plot the graph for this sample.
plot(x, py)
# Save the file.
dev.off()

# PDF (peluang/density): P(x = 1)
dx <- dhyper(1, 3, 37, 5)
print(dx)

# P(x = 0, 1, 2, 3, 4, 5)
dx <- dhyper(0:5, 3, 37, 5)
print(dx)

# CDF (peluang kumulatif): P(X≤x, x = 0, 1, 2, 3, 4, 5)
px <- phyper(0:5, 3, 37, 5)
print(px)

# Kuantil
# P(X≤a) = 1, a = ?
qx <- qhyper(1, 3, 37, 5)
print(qx)

# P(X≤a) = 0.5, a = ?
qx <- qhyper(0.5, 3, 37, 5)
print(qx)

# P(X≤a) = 0.96, a = ?
qx <- qhyper(0.96, 3, 37, 5)
print(qx)

# Pembangkitan bilangan random Hipergeometrik sebanyak 10
# dengan N = 100, D = 5, n = 10
rx <- rhyper(10, 5, 95, 10)
print(rx)
