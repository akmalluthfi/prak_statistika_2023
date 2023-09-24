library(prob)

s <- rolldie(2, makespace = TRUE)
head(s)

a <- subset(s, X1 == X2)
b <- subset(s, X1 + X2 >= 8)

Prob(a, given = b)
Prob(b, given = a)

Prob(s, X1 == X2, given = (X1 + X2 >= 8))
Prob(s, X1 + X2 >= 8, given = (X1 == X2))
