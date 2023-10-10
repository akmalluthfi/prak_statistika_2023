library(nortest)

berat <- c(71, 49, 60, 65, 75, 65, 56, 56, 68, 62, 60, 55, 49, 70, 63)
summary(berat)
png(file = "./praktikum5/plots/berat.png")
hist(berat, main = "Histogram Berat Badan (kg)", xlab = "Berat
(kg)", ylab = "Frekwensi", col = "green", border = "blue")
dev.off()

# Uji normalitas menggunakan Kolmogorov - Smirnov
lillie.test(berat)

# Uji normalitas menggunakan Chi Square (Khi – Kuadrat)
chisq.test(berat)

# Menghitung nilai kurtosis dengan metode moment
library(e1071)
m2 <- moment(berat, order = 2, center = TRUE)
m4 <- moment(berat, order = 4, center = TRUE)
print(m2)
print(m4)

kurtosis <- m4 / (m2^2)
kurtosis

# Menguji kenormalan data menggunakan Jarque - Bera
library(tseries)
jarque.bera.test(berat)

# Uji normalitas menggunakan QQ-Plot
png(file = "./praktikum5/plots/qqplot_norm_berat.png")
qqnorm(berat)
dev.off()

png(file = "./praktikum5/plots/qqplot_line_berat.png")
qqline(berat)
dev.off()
