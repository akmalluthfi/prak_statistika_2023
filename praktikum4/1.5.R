dnbinom(5, size = 7, prob = 0.5)

x <- seq(0, 30, by = 1)
# Create the Negative Binomial distribution.
y <- dnbinom(x, 50, 0.1)
# Give the chart file a name.
png(file = "./praktikum4/plots/dnbinom.png")
# Plot the graph for this sample.
plot(x, y)
# Save the file.
dev.off()

x <- seq(0, 30, by = 1)
# Create the negative binomial distribution.
cy <- pnbinom(x, 50, 0.1)
# Give the chart file a name.
png(file = "./praktikum4/plots/pnbinom.png")
# Plot the graph for this sample.
plot(x, cy)
# Save the file.
dev.off()
