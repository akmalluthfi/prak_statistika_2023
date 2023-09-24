pulse <- read.csv("https://akmalluthfi.github.io/dataset/pulse.csv")

# Sajikan boxplot dari soal a
# a1
png(file = "./praktikum2/plots/boxplot_height_by_sex.png")
boxplot(Height ~ Sex,
  data = pulse,
  main = "Boxplot Height by Sex",
  xlab = "Sex",
  ylab = "Height"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_weight_by_sex.png")
boxplot(Weight ~ Sex,
  data = pulse,
  main = "Boxplot Weight by Sex",
  xlab = "Sex",
  ylab = "Weight"
)
dev.off()

# a2
png(file = "./praktikum2/plots/boxplot_pulse1_by_smokes.png")
boxplot(Pulse1 ~ Smokes,
  data = pulse,
  main = "Boxplot Pulse1 by Smokes",
  xlab = "Smokes",
  ylab = "Pulse1"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_pulse1_by_sex.png")
boxplot(Pulse1 ~ Sex,
  data = pulse,
  main = "Boxplot Pulse1 by Sex",
  xlab = "Sex",
  ylab = "Pulse1"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_pulse1_by_activity.png")
boxplot(Pulse1 ~ Activity,
  data = pulse,
  main = "Boxplot Pulse1 by Activity",
  xlab = "Activity",
  ylab = "Pulse1"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_pulse2_by_smokes.png")
boxplot(Pulse2 ~ Smokes,
  data = pulse,
  main = "Boxplot Pulse2 by Smokes",
  xlab = "Smokes",
  ylab = "Pulse2"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_pulse2_by_sex.png")
boxplot(Pulse2 ~ Sex,
  data = pulse,
  main = "Boxplot Pulse2 by Sex",
  xlab = "Sex",
  ylab = "Pulse2"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_pulse2_by_activity.png")
boxplot(Pulse2 ~ Activity,
  data = pulse,
  main = "Boxplot Pulse2 by Activity",
  xlab = "Activity",
  ylab = "Pulse2"
)
dev.off()
