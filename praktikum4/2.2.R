x <- sample(0:1000, size = 100, replace = TRUE)
x <- x / 1000
print(x)

png(file = "./praktikum4/plots/generate_Uniform.png")
hist(x,
  main = "Pembangkitan Distribusi Uniform Kontinyu ~ U(0,1)",
  col = "green", border = "blue",
  xlab = "Var Random", ylab = "Frekwensi"
)
dev.off()
