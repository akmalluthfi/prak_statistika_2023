library("prob")

s <- rolldie(2, makespace = TRUE)

# Probabilitas bersama U dan V
s <- addrv(s, FUN = max, invars = c("X1", "X2"), name = "U")
s <- addrv(s, FUN = sum, invars = c("X1", "X2"), name = "V")
head(s)

# Probabilitas marginal U dan V
uv <- marginal(s, vars = c("U", "V"))
head(uv)

# Tabulasi distribusi peluang bersama U + V
xtabs(round(probs, 3) ~ U + V, data = uv)

# Probabilitas marginal U
marginal(uv, vars = "U")
# Probabilitas marginal V
marginal(uv, vars = "V")

temp <- xtabs(probs ~ U + V, data = uv)
# Probabilitas marjinal berdasarkan baris
rowSums(temp)

# Probabilitas marjinal berdasarkan kolom
colSums(temp)

# Ekspektasi bersama dan marjinal
# marginal
eu <- sum(s$U * s$probs)
ev <- sum(s$V * s$probs)
# bersama
euv <- sum(s$U * s$V * s$probs)
# covariansi (U,V)
print(euv - eu * ev)
