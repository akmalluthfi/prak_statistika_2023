sm <- c(8, 7, 5, 7, 8, 7, 8, 6, 7, 5, 7, 8)
sk <- c(9, 7, 6, 8, 8, 7, 9, 7, 8, 7, 9, 8)

lm(formula = sk ~ sm)

relation <- lm(sk ~ sm)
print(summary(relation))

relation <- lm(sk ~ 0 + sm)
print(summary(relation))
