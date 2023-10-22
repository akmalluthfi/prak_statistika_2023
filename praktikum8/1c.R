# ambil data berpasangan antara temperature dan pressure
data <- read.csv("https://akmalluthfi.github.io/dataset/pressure.csv")

# buat scatter plot
png(file = "./praktikum8/plots/temp_pres.png")
plot(data$temperature, data$pressure,
  main = "Diagram Pencar Temperature vs. Pressure",
  xlab = "Temperature",
  ylab = "Pressure"
)
dev.off()

# uji korelasi
cor.test(data$temperature, data$pressure)
