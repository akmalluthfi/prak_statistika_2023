# Uji hipotesis untuk rata-rata (variansi tidak diketahui)
x <- c(10.2, 9.8, 10.1, 10.0, 9.9, 9.8, 10.3, 10.2, 10.1, 9.7)

t.test(x,
  alternative = "two.sided", mu = 10,
  conf.level = 0.95
)

t.test(x,
  alternative = "greater", mu = 10,
  conf.level = 0.95
)

mean(x)
sd(x)

t.test(x,
  alternative = "greater", mu = 9.5,
  conf.level = 0.95
)

x <- c(10.2, 9.8, 10.1, 10.0, 9.9, 9.8, 10.3, 10.2, 10.1, 9.7)
y <- c(10, 9.6, 9.4, 9.7, 9.5, 9.7, 9.6, 9.8, 10, 10.1)

summary(x)
summary(y)

t.test(x, y,
  alternative = "two.sided", paired = TRUE,
  conf.level = 0.95
)

t.test(x, y,
  alternative = "two.sided", paired = TRUE,
  conf.level = 0.9
)

t.test(x, y, alternative = "two.sided", conf.level = 0.95)
