x <- rnorm(1000, 10, 1.2^0.5)

png(file = "./praktikum4/plots/generate_Normal.png")
hist(x,
  main = "Pembangkitan Data Distribusi Normal ~ N(10,1.2)",
  col = "orange", border = "blue",
  xlab = "Var Random", ylab = "Frekwensi"
)
dev.off()

png(file = "./praktikum4/plots/PDFNormal1.png")
hist(x,
  prob = TRUE, xlab = "Var. X", ylab = "Kepadatan",
  ylim = c(0, 0.5),
  main = "Histogram dan Kurva Distribusi Normal"
)
dev.off()

png(file = "./praktikum4/plots/Normalbaku.png")
x <- seq(-3, 3, 0.05)
plot(x, dnorm(x, mean = 0, sd = 1))
dev.off()

png(file = "./praktikum4/plots/Normalbaku1.png")
x <- seq(-3, 3, 0.05)
plot(x, dnorm(x, mean = 0, sd = 1), type = "h")
dev.off()

png(file = "./praktikum4/plots/CDFNormalbaku1.png")
x <- seq(-3, 3, 0.05)
plot(x, pnorm(x, mean = 0, sd = 1), type = "h")
dev.off()
