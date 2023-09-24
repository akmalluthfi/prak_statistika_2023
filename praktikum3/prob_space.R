# Sifat dan Aturan Ruang Probabilitas

library(prob)

l <- cards()
m <- urnsamples(l, size = 2)
n <- probspace(m)

Prob(n, all(rank == "A"))

# Guci berisi 10 bola, 7 merah, 3 hijau
l <- rep(c("red", "green"), times = c(7, 3))
m <- urnsamples(l, size = 3, replace = FALSE, ordered = TRUE)
n <- probspace(m)

Prob(n, isrep(n, "red", 3))
Prob(n, isrep(n, "red", 2))
Prob(n, isin(n, c("red", "green", "red"), ordered = TRUE))
Prob(n, isin(n, c("red", "green", "red")))
