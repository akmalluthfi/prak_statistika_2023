library(prob)

# Kejadian bebas
s <- tosscoin(10, makespace = TRUE)
a <- subset(s, isrep(s, vals = "T", nrep = 10))
1 - Prob(a)

# Independensi dan Percobaan Berulang
iidspace(c("H", "T"), ntrials = 3, probs = c(0.7, 0.3))

# Variabel random
s <- rolldie(3, nsides = 4, makespace = TRUE)
s <- addrv(s, U = X1 - X2 + X3)
head(s)
Prob(s, U > 6)

# Menyediakan fungsi
s <- addrv(s, FUN = max, invars = c("X1", "X2", "X3"), name = "V")
s <- addrv(s, FUN = sum, invars = c("X1", "X2", "X3"), name = "W")
head(s)

# Distribusi marginal
marginal(s, vars = "V")
marginal(s, vars = c("V", "W"))
