batteries <- read.csv("https://akmalluthfi.github.io/dataset/batteries.csv")

# a. Buat summay FlashRecov dengan VoltsAfter
print(summary(batteries$FlashRecov))
print(summary(batteries$VoltsAfter))

# b. Buat scatter plot FlashRecov (Y) dengan VoltAfter (X)
png(file = "./praktikum2/plots/scatter_volts_vs_flash.png")
plot(
  x = na.omit(batteries$VoltsAfter),
  y = na.omit(batteries$FlashRecov),
  main = "FlashRecov vs VoltAfter",
  xlab = "VoltAfter",
  ylab = "FlashRecov",
)
dev.off()

# c Buat boxplot FlashRecov berdasarkan cycles.
png(file = "./praktikum2/plots/boxplot_flash_by_cycles.png")
boxplot(VoltsAfter ~ Cycles,
  data = batteries,
  main = "Boxplot VoltsAfter by Cycles",
  xlab = "Cycles",
  ylab = "VoltsAfter"
)
dev.off()
