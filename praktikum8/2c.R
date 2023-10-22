# ambil data berpasangan antara temperature dan pressure
data <- read.csv("https://akmalluthfi.github.io/dataset/pressure.csv")

lm(formula = data$pressure ~ data$temperature)

relation <- lm(data$pressure ~ data$temperature)
print(summary(relation))

relation <- lm(data$pressure ~ 0 + data$temperature)
print(summary(relation))


x <- data$temperature
y <- log10(data$pressure)
lm(formula = y ~ x)

relation <- lm(y ~ x)
print(summary(relation))

x <- data$temperature
y <- log(data$pressure)
relation <- lm(y ~ x)
print(summary(relation))
