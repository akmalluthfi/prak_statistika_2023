x <- c(10.2, 9.8, 10.1, 10.0, 9.9, 9.8, 10.3, 10.2, 10.1, 9.7)
y <- c(10, 9.6, 9.4, 9.7, 9.5, 9.7, 9.6, 9.8, 10, 10.1)

summary(x)
summary(y)

var.test(x, y, alternative = "two.sided", conf.level = 0.95)
