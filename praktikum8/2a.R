# regresi:
# pendapatan berpasangan dengan pengeluaran

pend <- c(5.2, 6.7, 4.3, 6.1, 8.2, 6.5, 4.1, 5.0, 7.5, 6.8)
peng <- c(3.6, 5.1, 4.0, 4.8, 5.8, 5.7, 3.9, 3.8, 6.1, 4.9)
lm(formula = peng ~ pend)

relation <- lm(peng ~ pend)
print(summary(relation))

relation <- lm(peng ~ 0 + pend)
print(summary(relation))
