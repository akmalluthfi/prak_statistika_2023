hist(x)
hist(x)
eks <- function(n, lambda) {
  u <- runif(n)
  x <- -log(1 - u) / lambda
  return(x)
}

y1 <- eks(1000, 10)
y2 <- rexp(1000, 10)

png(file = "./praktikum4/plots/PDF_Eksp_InvTRans.png")
hist(y1,
  main = "Distribusi Eksponensial dengan lambda = 10 (Metode Invers Transform)",
  xlab = "x",
  col = "green",
  border = "blue"
)
dev.off()

png(file = "./praktikum4/plots/PDF_Eksp_bawaanR.png")
hist(y2,
  main = "Distribusi Eksponensial dengan lambda = 10 (fungsi di R)",
  xlab = "x", col = "green", border = "blue"
)
dev.off()

dx <- dexp(0:8, 10)
print(dx)

px <- pexp(0:8, 10)
print(px)

qx <- qexp(0:1, 10)
print(qx)

qx <- qexp(0:0.75, 10)
print(qx)

pexp(8, 1 / 5)

1 - pexp(8, 1 / 5)
