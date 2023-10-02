diff(ppois(c(47, 50), lambda = 50))

x <- seq(0, 100, by = 1)
# Create the poisson distribution.
y <- dpois(x, lambda = 30)
# Give the chart file a name.
png(file = "./praktikum4/plots/dpois.png")
# Plot the graph for this sample.
plot(x, y)
# Save the file.
dev.off()

x <- seq(0, 100, by = 1)
y <- dpois(x, lambda = 30)
png(file = "./praktikum4/plots/dpois1.png")
plot(x, y,
  type = "h", main = "Distribusi Poisson",
  xlab = "lambda = 30", col = "blue"
)
dev.off()

x <- seq(0, 100, by = 1)
# Create the Poisson distribution.
cy <- ppois(x, lambda = 30)
# Give the chart file a name.
png(file = "./praktikum4/plots/ppois.png")
# Plot the graph for this sample.
plot(x, cy)
# Save the file.
dev.off()

x <- seq(0, 100, by = 1)
cy <- ppois(x, lambda = 30)
png(file = "./praktikum4/plots/cpois.png")
plot(x, cy,
  type = "h",
  main = "lambda = 30", col = "blue"
)
dev.off()
