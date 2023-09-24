pulse <- read.csv("https://akmalluthfi.github.io/dataset/pulse.csv")

hist(
  pulse$Height,
  main = "Histogram Pulse 1 berdasarkan Ran",
  xlab = "Pulse 1",
  ylab = "Ran",
)

hist(
  pulse$Pulse1,
  main = "Histogram Pulse 1 berdasarkan Ran",
  xlab = "Pulse 1",
  ylab = "Ran",
)
