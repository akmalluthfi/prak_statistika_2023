x <- 1:10
y <- 8:12
y %in% x

isin(x, y)

x <- 1:10
y <- c(3, 3, 7)
all(y %in% x)
isin(x, y)

isin(x, c(3, 4, 5), ordered = TRUE)
isin(x, c(3, 5, 4), ordered = TRUE)

s <- rolldie(4)
subset(s, isin(s, c(2, 2, 6), ordered = TRUE))
