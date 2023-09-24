pipe <- read.csv("https://akmalluthfi.github.io/dataset/pipe.csv")

# a. Buat boxplot variabel week1, week2, week3 berdasarkan machine
png(file = "./praktikum2/plots/boxplot_week1_by_machine.png")
boxplot(Week.1 ~ Machine,
  data = pipe,
  main = "Boxplot Week 1 by Machine",
  xlab = "Machine",
  ylab = "Week 1"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_week2_by_machine.png")
boxplot(Week.2 ~ Machine,
  data = pipe,
  main = "Boxplot Week 2 by Machine",
  xlab = "Machine",
  ylab = "Week 2"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_week3_by_machine.png")
boxplot(Week.3 ~ Machine,
  data = pipe,
  main = "Boxplot Week 3 by Machine",
  xlab = "Machine",
  ylab = "Week 3"
)
dev.off()

# b. Buat boxplot variabel week1, week2, week3 berdasarkan operator
png(file = "./praktikum2/plots/boxplot_week1_by_operator.png")
boxplot(Week.1 ~ Operator,
  data = pipe,
  main = "Boxplot Week 1 by Operator",
  xlab = "Operator",
  ylab = "Week 1"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_week2_by_operator.png")
boxplot(Week.2 ~ Operator,
  data = pipe,
  main = "Boxplot Week 2 by Operator",
  xlab = "Operator",
  ylab = "Week 2"
)
dev.off()

png(file = "./praktikum2/plots/boxplot_week3_by_operator.png")
boxplot(Week.3 ~ Operator,
  data = pipe,
  main = "Boxplot Week 3 by Operator",
  xlab = "Operator",
  ylab = "Week 3"
)
dev.off()
