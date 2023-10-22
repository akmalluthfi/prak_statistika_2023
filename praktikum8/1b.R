# sm = skor motivasi
# sk = skor kinerja

sm <- c(8, 7, 5, 7, 8, 7, 8, 6, 7, 5, 7, 8)
sk <- c(9, 7, 6, 8, 8, 7, 9, 7, 8, 7, 9, 8)

# buat scatter plot
png(file = "./praktikum8/plots/kinerja.png")
plot(sk, sm,
  main = "Diagram Pencar Motivasi vs KInerja",
  xlab = "Skor Motivasi", ylab = "Skor Kinerja"
)
dev.off()

# lakukan uji korelasi
cor.test(sm, sk)
