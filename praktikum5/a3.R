library("combinat")

tmp <- t(xsimplex(3, 6))
p <- apply(tmp, MARGIN = 1, FUN = dmultinom, prob = c(36, 27, 37))

library(prob)
s <- probspace(tmp, probs = p)

prob_table <- xtabs(probs ~ X1 + X2, data = s)
round(prob_table, 3)

# Menggambarkan scatter plot 3 dimensi
library(scatterplot3d)
x <- t(as.matrix(expand.grid(0:6, 0:6)))
x <- x[, colSums(x) <= 6]
x <- rbind(x, 6 - colSums(x))
z <- round(apply(x, 2, function(x) dmultinom(x, prob = 1:3)), 3)
a <- data.frame(x = x[1, ], y = x[2, ], probability = z)
png(file = "./praktikum5/plots/scatterplot3d.png")
scatterplot3d(a, type = "h", lwd = 3, box = FALSE)
dev.off()
