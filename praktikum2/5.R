bears <- read.csv("https://akmalluthfi.github.io/dataset/bears.csv")

# a Buat summary variabel Head.L, Head.W, Neck.G, Chest.G, dan Weight.
print(summary(bears$Head.L))
print(summary(bears$Head.W))
print(summary(bears$Neck.G))
print(summary(bears$Chest.G))
print(summary(bears$Weight))

# Buat matrix plot variabel Head.L, Head.W, Neck.G, Chest.G, dan Weight.
png(file = "./praktikum2/plots/matrixplot.png")
pairs(~ Head.L + Head.W + Neck.G + Chest.G + Weight,
  data = bears,
  main = "Scatterplot Matrix"
)
dev.off()
